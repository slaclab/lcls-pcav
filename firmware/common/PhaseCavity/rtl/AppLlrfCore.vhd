-------------------------------------------------------------------------------
-- Title      : System Generator core wrapper
-------------------------------------------------------------------------------
-- File       : AppLlrfCore.vhd
-- Author     : Larry Ruckman  <ruckman@slac.stanford.edu>
-- Company    : SLAC National Accelerator Laboratory
-- Created    : 2016-02-25
-- Last update: 2023-05-18
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
--   JesdClkx2 is 351   MHz  ( 378 * beam rate )
--   JesdClk   is 175.5 MHz
--   12/21     is 200.6 MHz  ( 216 * beam rate )
--   LO        is 2771  MHz
--   IF        is  171  MHz
-------------------------------------------------------------------------------
-- This file is part of 'LCLS2 LLRF Development'.
-- It is subject to the license terms in the LICENSE.txt file found in the 
-- top-level directory of this distribution and at: 
--    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html. 
-- No part of 'LCLS2 LLRF Development', including this file, 
-- may be copied, modified, propagated, or distributed except according to 
-- the terms contained in the LICENSE.txt file.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


library surf;
use surf.StdRtlPkg.all;
use surf.AxiLitePkg.all;
use surf.AxiStreamPkg.all;
use surf.Jesd204bPkg.all;
use surf.EthMacPkg.all;
use surf.SsiPkg.all;

library amc_carrier_core;
use amc_carrier_core.AmcCarrierPkg.all;
use amc_carrier_core.AppTopPkg.all;

library xil_defaultlib;
use xil_defaultlib.LlrfPkg.all;

entity AppLlrfCore is
   generic (
      TPD_G                : time     := 1 ns;
      AXI_BASE_ADDR_G      : slv(31 downto 0);
      NUM_OF_TRIG_PULSES_G : positive := 8
   );
   port (
      -- 
      jesdClk        : in  slv(1 downto 0);
      jesdRst        : in  slv(1 downto 0);
      
      jesdClk2x      : in  slv(1 downto 0);
      jesdRst2x      : in  slv(1 downto 0);
      
      -- Timing pulse trigger
      -- Note: Asynchronous
      trigPulse      : in  slv(NUM_OF_TRIG_PULSES_G-1 downto 0);
      trigDaqOut     : out slv(1 downto 0);
      
      -- JESD ADC
      adcHs          : in  sampleDataVectorArray(1 downto 0, 5 downto 0);
      adcHsValid     : in  Slv6Array(1 downto 0):=(others => (others =>'0'));
      -- High speed DAC
      dacHs          : out slv(31 downto 0);
      dacHsValid     : out sl;
      -- Low speed DAC
      dacLs          : out Slv32Array(2 downto 0);
      dacLsValid     : out slv       (2 downto 0);
      -- Debug ports (DaqMux input)
      debug          : out sampleDataVectorArray(1 downto 0, 3 downto 0);
      debugValids    : out Slv4Array(1 downto 0);
      -- Diagnostic ports (diagnosticBus)
      diagnClk       : out sl;
      diagnRst       : out sl;
      diagn          : out Slv32Array(31 downto 0);
      diagnFixed     : out slv       (31 downto 0);
      diagnSevr      : out Slv2Array (31 downto 0);
      diagnStrobe    : out sl;
      --
      rfSwitch       : out sl;

      -- LLRF Mode Select
      trigMode       : out slv(1 downto 0);
            
      -- DacSigCtrl
      dacSigCtrl     : out   DacSigCtrlArray      (1 downto 0);
      dacSigStatus   : in    DacSigStatusArray    (1 downto 0);
      dacSigValids   : in    Slv7Array            (1 downto 0);
      dacSigValues   : in    sampleDataVectorArray(1 downto 0, 6 downto 0);

      -- AXI-Lite Port
      axiClk         : in  sl;
      axiRst         : in  sl;
      axiReadMaster  : in  AxiLiteReadMasterType;
      axiReadSlave   : out AxiLiteReadSlaveType;
      axiWriteMaster : in  AxiLiteWriteMasterType;
      axiWriteSlave  : out AxiLiteWriteSlaveType;

      -- Streaming debug port
      streamClk      : in  sl;
      streamRst      : in  sl;
      streamMaster   : out AxiStreamMasterType;
      streamSlave    : in  AxiStreamSlaveType );
end AppLlrfCore;

architecture mapping of AppLlrfCore is
   
   signal dspClk204 : sl := '0';
   signal dspRst204 : sl := '0';
   signal dspRstN   : sl; -- async

   signal jesdRstL    : sl;
   signal axiRstL     : sl;
   
   signal adc357      : Slv16VectorArray(1 downto 0, 5 downto 0);
   signal adcValid357 : SlVectorArray   (1 downto 0, 5 downto 0);
   signal adcValid204 : Slv6Array (1 downto 0);

   signal iout357  : slv(17 downto 0) := (others=>'0');
   signal qout357  : slv(17 downto 0) := (others=>'0');
   
   signal dacHs357       : slv(15 downto 0) := (others => '0');
   signal dacHsValid357  : sl := '0';

   signal dacLs204      : LsDacType;
   signal dacLs185      : LsDacType;

   -- Demod I/Q 357MHz interface
   signal iq357 : DdcType;
   signal iq204 : DdcType;
   signal af357 : DdcType;
   signal af204 : DdcType;

   signal trigPulseSync    : slv(NUM_OF_TRIG_PULSES_G-1 downto 0);

   signal userDacControl    : slv(15 downto 0) := (others=>'0');
   signal userdaccontrol204 : slv(15 downto 0) := (others=>'0');
   
   --
   --  AxiLiteCrossbar
   --
   constant DEMOD_INDEX_C     : natural := 0;
   constant UPCONVERT_INDEX_C : natural := 1;
   constant PLL_INDEX_C       : natural := 2;
   constant MODEL_INDEX_C     : natural := 3;
   constant STREAM_INDEX_C    : natural := 4;
   constant NUM_MASTERS_C     : natural := 5;
   
   constant AXI_XBAR_CONFIG_C : AxiLiteCrossbarMasterConfigArray(NUM_MASTERS_C-1 downto 0) := genAxiLiteConfig( NUM_MASTERS_C, AXI_BASE_ADDR_G, 16, 12);

   signal readMaster  : AxiLiteReadMasterArray (AXI_XBAR_CONFIG_C'range);
   signal readSlave   : AxiLiteReadSlaveArray  (AXI_XBAR_CONFIG_C'range);
   signal writeMaster : AxiLiteWriteMasterArray(AXI_XBAR_CONFIG_C'range);
   signal writeSlave  : AxiLiteWriteSlaveArray (AXI_XBAR_CONFIG_C'range);

   constant SLAVE_AXI_CONFIG_C : AxiStreamConfigType := (
     TSTRB_EN_C    => false,
     TDATA_BYTES_C => 4,
     TDEST_BITS_C  => 0,
     TID_BITS_C    => 0,
     TKEEP_MODE_C  => TKEEP_NORMAL_C,
     TUSER_BITS_C  => 2,
     TUSER_MODE_C  => TUSER_NORMAL_C);

   signal debug204_valid : slv(7 downto 0);
   signal debug204_data  : slv(32*8-1 downto 0);
   signal debug204_sync  : sl;
   signal debug204 : DdcFrameArray(7 downto 0);
   signal debug185 : DdcFrameArray(7 downto 0);

   signal idiagnStrobe  : sl;
   signal idiagnSevr    : Slv2Array(31 downto 0);
   signal diagn18       : Slv18Array(31 downto 0);

   signal iSigGen : slv(17 downto 0);
   signal qSigGen : slv(17 downto 0);
   
   type RegType is record
     sync    : sl;
     strobe  : sl;
     sevr    : Slv2Array(31 downto 0);
     count   : slv(3 downto 0);
     valid   : sl;
   end record;

   constant REG_INIT_C : RegType := (
     sync    => '0',
     strobe  => '0',
     sevr    => (others=>"11"),
     count   => (others=>'0'),
     valid   => '0' );

   signal r   : RegType := REG_INIT_C;
   signal rin : RegType;
   
   constant DEBUG_C : boolean := false;

   component ila_0
     port ( clk    : in sl;
            probe0 : in slv(255 downto 0) );
   end component;

   constant APP_TEST_C : boolean := false;
   
begin

   GEN_DEBUG : if DEBUG_C generate
     U_ILA : ila_0
       port map ( clk                    => dspClk204,
                  probe0(0)              => iq204.sync,
                  probe0(4 downto 1)     => iq204.channel,
                  probe0(5)              => debug204_valid(0),
                  probe0(37 downto  6)   => debug204_data(31 downto 0),
                  probe0(38)             => idiagnStrobe,
                  probe0(56 downto 39)   => diagn18(0),
                  probe0(70 downto 57)   => (others=>'0'),
                  probe0(71)             => '0',
                  probe0(73 downto 72)   => idiagnSevr(0),
                  probe0(91 downto 74)   => iq204.i_or_a,
                  probe0(109 downto 92)  => iq204.q_or_f,
                  probe0(110)            => af204.sync,
                  probe0(255 downto 111) => (others=>'0') );
   end generate;

   GEN_DIAGN : for i in 0 to 31 generate
     diagn(i) <= resize(diagn18(i),32);
   end generate;
   
   axiRstL <= not axiRst;
   
   ---------------------
   -- AXI-Lite Crossbar
   ---------------------
   U_XBAR : entity surf.AxiLiteCrossbar
     generic map (
       TPD_G              => TPD_G,
       NUM_SLAVE_SLOTS_G  => 1,
       NUM_MASTER_SLOTS_G => AXI_XBAR_CONFIG_C'length,
       MASTERS_CONFIG_G   => AXI_XBAR_CONFIG_C)
     port map (
       axiClk              => axiClk,
       axiClkRst           => axiRst,
       sAxiWriteMasters(0) => axiWriteMaster,
       sAxiWriteSlaves (0) => axiWriteSlave,
       sAxiReadMasters (0) => axiReadMaster,
       sAxiReadSlaves  (0) => axiReadSlave,
       mAxiWriteMasters    => writeMaster,
       mAxiWriteSlaves     => writeSlave,
       mAxiReadMasters     => readMaster,
       mAxiReadSlaves      => readSlave);      

   U_DSP_CLK : entity surf.ClockManagerUltraScale
     generic map (
       BANDWIDTH_G        => "HIGH",
       CLKIN_PERIOD_G     => 2.801,
       NUM_CLOCKS_G       => 1,
       DIVCLK_DIVIDE_G    => 7,
       CLKFBOUT_MULT_F_G  => 23.5,
       CLKOUT0_DIVIDE_F_G => 5.875)
     port map (
       clkIn           => jesdClk2x(1),
       rstIn           => jesdRst2x(1),
       clkOut(0)       => dspClk204,
       rstOut(0)       => dspRst204,
       locked          => open);

   ----------------------
   -- SYNC Timing pulse
   ----------------------
   U_TimingTrigSync: entity surf.SynchronizerOneShot
     generic map (
       TPD_G         => TPD_G,
       PULSE_WIDTH_G => 1 )
     port map (
       clk       => jesdClk2x(1),
       rst       => jesdRst2x(1),
       dataIn    => trigPulse(0),
       dataOut   => trigPulseSync(0) );
      
   U_TimingRstSync: entity surf.SynchronizerOneShot
     generic map (
       TPD_G         => TPD_G,
       PULSE_WIDTH_G => 1 )
     port map (
       clk       => dspClk204,
       rst       => dspRst204,
       dataIn    => trigPulse(1),
       dataOut   => trigPulseSync(1) );
      
   ---------------------------
   -- SYNC Inputs to Bay1 clk
   ---------------------------
   U_SyncAdc : entity xil_defaultlib.LlrfSync
     port map (
       jesdClk     => jesdClk,
       jesdRst     => jesdRst,
       adcValidIn  => adcHsValid,
       adcIn       => adcHs,
       dacValidOut => dacHsValid,
       dacOut      => dacHs,
       --
       jesdClk2x   => jesdClk2x,
       jesdRst2x   => jesdRst2x,
       adcValidOut => adcValid357,
       adcOut      => adc357,
       dacValidIn  => dacHsValid357,
       dacIn       => dacHs357 );

   U_SyncAF204 : entity xil_defaultlib.DdcSync
     port map (
       wr_clk => jesdClk2x(1),
       wr_ddc => af357,
       rd_clk => dspClk204,
       rd_ddc => af204 );

   U_SyncIQ204 : entity xil_defaultlib.DdcSync
     port map (
       wr_clk => jesdClk2x(1),
       wr_ddc => iq357,
       rd_clk => dspClk204,
       rd_ddc => iq204 );

   SYNC_DAC_LS : for i in 2 downto 0 generate
      SYNC_DAC : entity surf.SynchronizerFifo
         generic map (
            TPD_G        => TPD_G,
            DATA_WIDTH_G => 16)
         port map (
            rst    => '0',
            -- Write Ports (wr_clk domain)
            wr_clk => dspClk204,
            wr_en  => dacLs204.valid,
            din    => dacLs204.data(i),
            -- Read Ports (rd_clk domain)
            rd_clk => jesdClk(0),
            dout   => dacLs185.data(i));
      -- output assignment
      -- combine both into 32-bit word
      dacLs(i)      <= dacLs185.data(i) & dacLs185.data(i);
      dacLsValid(i) <= '1';
   end generate SYNC_DAC_LS;
   
   -----------
   -- DSP Core
   -----------
   U_LlrfDemod : entity xil_defaultlib.llrfdemod
     port map (
       -- Clock and Resets
       dsp_clk               => jesdClk2x(1),
--            dspcore_aresetn       => dspRstN,
       -- ADC Channels
       adc0_0                => adc357(0, 0),
       adc0_1                => adc357(0, 1),
       adc0_2                => adc357(0, 2),
       adc0_3                => adc357(0, 3),
       adc0_4                => adc357(0, 4),
       adc0_5                => adc357(0, 5),
       adc1_0                => adc357(1, 0),
       adc1_1                => adc357(1, 1),
       adc1_2                => adc357(1, 2),
       adc1_3                => adc357(1, 3),
       adc1_4                => adc357(1, 4),
       adc1_5                => adc357(1, 5),
       sync(0)               => trigPulseSync(0),
       -- DDC I/Q interface (jesdClk2x domain)
       ddci                  => iq357.i_or_a,
       ddcq                  => iq357.q_or_f,
       ddcvalid(0)           => iq357.valid,
       ddcchannel            => iq357.channel,
       ddcsync(0)            => iq357.sync,
       ddctlast(0)           => iq357.tLast,
       -- Phase/Amp interface (jesdClk2x domain)
       amp                   => af357.i_or_a,
       phase                 => af357.q_or_f,
       phaseampchannel       => af357.channel,
       phaseampsync(0)       => af357.sync,
       phaseamptlast(0)      => af357.tLast,
       phaseampvalid(0)      => af357.valid,
       -- AXI-Lite Interface
       axi_lite_clk           => axiClk,
       axi_lite_aresetn       => axiRstL,
       axi_lite_s_axi_awaddr  => writeMaster(DEMOD_INDEX_C).awaddr(11 downto 0),
       axi_lite_s_axi_awvalid => writeMaster(DEMOD_INDEX_C).awvalid,
       axi_lite_s_axi_wdata   => writeMaster(DEMOD_INDEX_C).wdata,
       axi_lite_s_axi_wstrb   => writeMaster(DEMOD_INDEX_C).wstrb,
       axi_lite_s_axi_wvalid  => writeMaster(DEMOD_INDEX_C).wvalid,
       axi_lite_s_axi_bready  => writeMaster(DEMOD_INDEX_C).bready,
       axi_lite_s_axi_araddr  => readMaster (DEMOD_INDEX_C).araddr(11 downto 0),
       axi_lite_s_axi_arvalid => readMaster (DEMOD_INDEX_C).arvalid,
       axi_lite_s_axi_rready  => readMaster (DEMOD_INDEX_C).rready,
       axi_lite_s_axi_awready => writeSlave (DEMOD_INDEX_C).awready,
       axi_lite_s_axi_wready  => writeSlave (DEMOD_INDEX_C).wready,
       axi_lite_s_axi_bresp   => writeSlave (DEMOD_INDEX_C).bresp,
       axi_lite_s_axi_bvalid  => writeSlave (DEMOD_INDEX_C).bvalid,
       axi_lite_s_axi_arready => readSlave  (DEMOD_INDEX_C).arready,
       axi_lite_s_axi_rdata   => readSlave  (DEMOD_INDEX_C).rdata,
       axi_lite_s_axi_rresp   => readSlave  (DEMOD_INDEX_C).rresp,
       axi_lite_s_axi_rvalid  => readSlave  (DEMOD_INDEX_C).rvalid );

      U_SlowDacControl : entity xil_defaultlib.slowdaccontrol
        port map (
         dsp_clk          => dspClk204,
	 phaseAmpValid(0) => af204.valid,
	 ampIn            => af204.i_or_a,
	 phaseIn          => af204.q_or_f,
	 phaseAmpChannel  => af204.channel,
	 userDacControl   => userdaccontrol204,
	 dacbay0_0        => dacLs204.data(0),
	 dacbay0_1        => dacLs204.data(1),
	 dacbay0_2        => dacLs204.data(2),
	 dacValid(0)      => dacLs204.valid,
	 -- AXI-Lite Interface (axi_lite_clk domain)
         axi_lite_clk           => axiClk,
         axi_lite_aresetn       => axiRstL,
         axi_lite_s_axi_awaddr  => writeMaster(PLL_INDEX_C).awaddr(11 downto 0),
         axi_lite_s_axi_awvalid => writeMaster(PLL_INDEX_C).awvalid,
         axi_lite_s_axi_wdata   => writeMaster(PLL_INDEX_C).wdata,
         axi_lite_s_axi_wstrb   => writeMaster(PLL_INDEX_C).wstrb,
         axi_lite_s_axi_wvalid  => writeMaster(PLL_INDEX_C).wvalid,
         axi_lite_s_axi_bready  => writeMaster(PLL_INDEX_C).bready,
         axi_lite_s_axi_araddr  => readMaster (PLL_INDEX_C).araddr(11 downto 0),
         axi_lite_s_axi_arvalid => readMaster (PLL_INDEX_C).arvalid,
         axi_lite_s_axi_rready  => readMaster (PLL_INDEX_C).rready,
         axi_lite_s_axi_awready => writeSlave (PLL_INDEX_C).awready,
         axi_lite_s_axi_wready  => writeSlave (PLL_INDEX_C).wready,
         axi_lite_s_axi_bresp   => writeSlave (PLL_INDEX_C).bresp,
         axi_lite_s_axi_bvalid  => writeSlave (PLL_INDEX_C).bvalid,
         axi_lite_s_axi_arready => readSlave  (PLL_INDEX_C).arready,
         axi_lite_s_axi_rdata   => readSlave  (PLL_INDEX_C).rdata,
         axi_lite_s_axi_rresp   => readSlave  (PLL_INDEX_C).rresp,
         axi_lite_s_axi_rvalid  => readSlave  (PLL_INDEX_C).rvalid);

      U_LlrfUpconvert : entity xil_defaultlib.llrfupconvert
        port map (
         dsp_clk          => jesdClk2x(1),
	 amp              => af357.i_or_a,
	 phase            => af357.q_or_f,
	 phaseampvalid(0) => af357.valid,
	 phaseampchannel  => af357.channel,
	 phaseamptlast(0) => af357.tLast,
         seti             => iSigGen,
         setq             => qSigGen,
	 dacout           => dacHs357,
         dacoutvalid(0)   => dacHsValid357,
         --  AXI-Lite Interface
         axi_lite_clk           => axiClk,
         axi_lite_aresetn       => axiRstL,
         axi_lite_s_axi_awaddr  => writeMaster(UPCONVERT_INDEX_C).awaddr(11 downto 0),
         axi_lite_s_axi_awvalid => writeMaster(UPCONVERT_INDEX_C).awvalid,
         axi_lite_s_axi_wdata   => writeMaster(UPCONVERT_INDEX_C).wdata,
         axi_lite_s_axi_wstrb   => writeMaster(UPCONVERT_INDEX_C).wstrb,
         axi_lite_s_axi_wvalid  => writeMaster(UPCONVERT_INDEX_C).wvalid,
         axi_lite_s_axi_bready  => writeMaster(UPCONVERT_INDEX_C).bready,
         axi_lite_s_axi_araddr  => readMaster (UPCONVERT_INDEX_C).araddr(11 downto 0),
         axi_lite_s_axi_arvalid => readMaster (UPCONVERT_INDEX_C).arvalid,
         axi_lite_s_axi_rready  => readMaster (UPCONVERT_INDEX_C).rready,
         axi_lite_s_axi_awready => writeSlave (UPCONVERT_INDEX_C).awready,
         axi_lite_s_axi_wready  => writeSlave (UPCONVERT_INDEX_C).wready,
         axi_lite_s_axi_bresp   => writeSlave (UPCONVERT_INDEX_C).bresp,
         axi_lite_s_axi_bvalid  => writeSlave (UPCONVERT_INDEX_C).bvalid,
         axi_lite_s_axi_arready => readSlave  (UPCONVERT_INDEX_C).arready,
         axi_lite_s_axi_rdata   => readSlave  (UPCONVERT_INDEX_C).rdata,
         axi_lite_s_axi_rresp   => readSlave  (UPCONVERT_INDEX_C).rresp,
         axi_lite_s_axi_rvalid  => readSlave  (UPCONVERT_INDEX_C).rvalid );

   iSigGen             <= resize(dacSigValues(1,0)(15 downto 0),18);
   qSigGen             <= resize(dacSigValues(1,1)(15 downto 0),18);
   dacSigCtrl(0).start <= (others => '0');
   dacSigCtrl(1).start <= (others => trigPulseSync(0));
   
   GEN_TEST : if APP_TEST_C generate
     U_APP : entity xil_defaultlib.AppTestModel
       port map (
         clk             => dspClk204,
         rst             => dspRst204,
         sync            => iq204.sync,
         i0              => (others=>(others=>'0')),
         q0              => (others=>(others=>'0')),
         -- Phase/Amp 
         amp             => af204.i_or_a,
         phase           => af204.q_or_f,
         phaseampchannel => af204.channel,
         phaseampvalid   => af204.valid,
         phaseampsync    => af204.sync,
         -- DDC I/Q
         ddcchannel      => iq204.channel,
         ddci            => iq204.i_or_a,
         ddcq            => iq204.q_or_f,
         ddcvalid        => iq204.valid,
         ddcsync         => iq204.sync,
         --  DaqMux interface
         daqtrig         => open,
         debug(0,0)      => debug204_data( 31 downto   0),
         debug(0,1)      => debug204_data( 63 downto  32),
         debug(0,2)      => debug204_data( 95 downto  64),
         debug(0,3)      => debug204_data(127 downto  96),
         debug(1,0)      => debug204_data(159 downto 128),
         debug(1,1)      => debug204_data(191 downto 160),
         debug(1,2)      => debug204_data(227 downto 192),
         debug(1,3)      => debug204_data(255 downto 228),
         debugvalid(0)   => debug204_valid(3 downto 0),
         debugvalid(1)   => debug204_valid(7 downto 4),
         -- 
         seti            => open,
         setq            => open,
         userdaccontrol  => open,
         rfSwitch        => open,
         -- Diagnostic ports (diagnosticBus)
         diagnClk        => diagnClk,
         diagnRst        => diagnRst,
         diagn           => diagn,
         diagnValids     => open,
--         diagnStrobe     => idiagnStrobe,
         -- AXI-Lite Port
         axiClk          => axiClk,
         axiRst          => axiRst,
         axiReadMaster   => readMaster (MODEL_INDEX_C),
         axiReadSlave    => readSlave  (MODEL_INDEX_C),
         axiWriteMaster  => writeMaster(MODEL_INDEX_C),
         axiWriteSlave   => writeSlave (MODEL_INDEX_C) );
     diagnFixed  <= (others=>'1');
     idiagnSevr   <= (others=>"00");
--     diagnStrobe <= idiagnStrobe;
   end generate;

   GEN_MODEL : if not APP_TEST_C generate
     U_MODEL : entity xil_defaultlib.example_stub
       port map (
         dsp_clk                => dspClk204,
         ddcchannel             => iq204.channel,
         ddci                   => iq204.i_or_a,
         ddcq                   => iq204.q_or_f,
         ddcsync(0)             => iq204.sync,
         amp                    => af204.i_or_a,
         phase                  => af204.q_or_f,
         phaseampchannel        => af204.channel,
         phaseampsync(0)        => af204.sync,
         -- DaqMux input
         wfdata_0               => debug204_data(32*0+31 downto 32*0),
         wfvalid_0(0)           => debug204_valid(0),
         wfdata_1               => debug204_data(32*1+31 downto 32*1),
         wfvalid_1(0)           => debug204_valid(1),
         wfdata_2               => debug204_data(32*2+31 downto 32*2),
         wfvalid_2(0)           => debug204_valid(2),
         wfdata_3               => debug204_data(32*3+31 downto 32*3),
         wfvalid_3(0)           => debug204_valid(3),
         wfdata_4               => debug204_data(32*4+31 downto 32*4),
         wfvalid_4(0)           => debug204_valid(4),
         wfdata_5               => debug204_data(32*5+31 downto 32*5),
         wfvalid_5(0)           => debug204_valid(5),
         wfdata_6               => debug204_data(32*6+31 downto 32*6),
         wfvalid_6(0)           => debug204_valid(6),
         wfdata_7               => debug204_data(32*7+31 downto 32*7),
         wfvalid_7(0)           => debug204_valid(7),
         -- diagnostic bus input
--       diagnclk(0)            => diagnClk,
--         diagnsync(0)           => idiagnStrobe,
         diag1data              => diagn18   (0),
         diag1fixed(0)          => diagnFixed(0),
         diag1sevr              => idiagnSevr(0),
         diag2data              => diagn18   (1),
         diag2fixed(0)          => diagnFixed(1),
         diag2sevr              => idiagnSevr(1),
         diag3data              => diagn18   (2),
         diag3fixed(0)          => diagnFixed(2),
         diag3sevr              => idiagnSevr(2),
         diag4data              => diagn18   (3),
         diag4fixed(0)          => diagnFixed(3),
         diag4sevr              => idiagnSevr(3),
         diag5data              => diagn18   (4),
         diag5fixed(0)          => diagnFixed(4),
         diag5sevr              => idiagnSevr(4),
         diag6data              => diagn18   (5),
         diag6fixed(0)          => diagnFixed(5),
         diag6sevr              => idiagnSevr(5),
         diag7data              => diagn18   (6),
         diag7fixed(0)          => diagnFixed(6),
         diag7sevr              => idiagnSevr(6),
         diag8data              => diagn18   (7),
         diag8fixed(0)          => diagnFixed(7),
         diag8sevr              => idiagnSevr(7),
         diag9data              => diagn18   (8),
         diag9fixed(0)          => diagnFixed(8),
         diag9sevr              => idiagnSevr(8),
         diag10data              => diagn18   (9),
         diag10fixed(0)          => diagnFixed(9),
         diag10sevr              => idiagnSevr(9),
         diag11data              => diagn18   (10),
         diag11fixed(0)          => diagnFixed(10),
         diag11sevr              => idiagnSevr(10),
         diag12data              => diagn18   (11),
         diag12fixed(0)          => diagnFixed(11),
         diag12sevr              => idiagnSevr(11),
         diag13data              => diagn18   (12),
         diag13fixed(0)          => diagnFixed(12),
         diag13sevr              => idiagnSevr(12),
         diag14data              => diagn18   (13),
         diag14fixed(0)          => diagnFixed(13),
         diag14sevr              => idiagnSevr(13),
         diag15data              => diagn18   (14),
         diag15fixed(0)          => diagnFixed(14),
         diag15sevr              => idiagnSevr(14),
         diag16data              => diagn18   (15),
         diag16fixed(0)          => diagnFixed(15),
         diag16sevr              => idiagnSevr(15),
         diag17data              => diagn18   (16),
         diag17fixed(0)          => diagnFixed(16),
         diag17sevr              => idiagnSevr(16),
         diag18data              => diagn18   (17),
         diag18fixed(0)          => diagnFixed(17),
         diag18sevr              => idiagnSevr(17),
         diag19data              => diagn18   (18),
         diag19fixed(0)          => diagnFixed(18),
         diag19sevr              => idiagnSevr(18),
         diag20data              => diagn18   (19),
         diag20fixed(0)          => diagnFixed(19),
         diag20sevr              => idiagnSevr(19),
         diag21data              => diagn18   (20),
         diag21fixed(0)          => diagnFixed(20),
         diag21sevr              => idiagnSevr(20),
         diag22data              => diagn18   (21),
         diag22fixed(0)          => diagnFixed(21),
         diag22sevr              => idiagnSevr(21),
         diag23data              => diagn18   (22),
         diag23fixed(0)          => diagnFixed(22),
         diag23sevr              => idiagnSevr(22),
         diag24data              => diagn18   (23),
         diag24fixed(0)          => diagnFixed(23),
         diag24sevr              => idiagnSevr(23),
         diag25data              => diagn18   (24),
         diag25fixed(0)          => diagnFixed(24),
         diag25sevr              => idiagnSevr(24),
         diag26data              => diagn18   (25),
         diag26fixed(0)          => diagnFixed(25),
         diag26sevr              => idiagnSevr(25),
         diag27data              => diagn18   (26),
         diag27fixed(0)          => diagnFixed(26),
         diag27sevr              => idiagnSevr(26),
         diag28data              => diagn18   (27),
         diag28fixed(0)          => diagnFixed(27),
         diag28sevr              => idiagnSevr(27),
         diag29data              => diagn18   (28),
         diag29fixed(0)          => diagnFixed(28),
         diag29sevr              => idiagnSevr(28),
         diag30data              => diagn18   (29),
         diag30fixed(0)          => diagnFixed(29),
         diag30sevr              => idiagnSevr(29),
         diag31data              => diagn18   (30),
         diag31fixed(0)          => diagnFixed(30),
         diag31sevr              => idiagnSevr(30),
         -- register bus
         axi_lite_clk           => axiClk,
         axi_lite_aresetn       => axiRstL,
         axi_lite_s_axi_awaddr  => writeMaster(MODEL_INDEX_C).awaddr(11 downto 0),
         axi_lite_s_axi_awvalid => writeMaster(MODEL_INDEX_C).awvalid,
         axi_lite_s_axi_wdata   => writeMaster(MODEL_INDEX_C).wdata,
         axi_lite_s_axi_wstrb   => writeMaster(MODEL_INDEX_C).wstrb,
         axi_lite_s_axi_wvalid  => writeMaster(MODEL_INDEX_C).wvalid,
         axi_lite_s_axi_bready  => writeMaster(MODEL_INDEX_C).bready,
         axi_lite_s_axi_araddr  => readMaster (MODEL_INDEX_C).araddr(11 downto 0),
         axi_lite_s_axi_arvalid => readMaster (MODEL_INDEX_C).arvalid,
         axi_lite_s_axi_rready  => readMaster (MODEL_INDEX_C).rready,
         axi_lite_s_axi_awready => writeSlave (MODEL_INDEX_C).awready,
         axi_lite_s_axi_wready  => writeSlave (MODEL_INDEX_C).wready,
         axi_lite_s_axi_bresp   => writeSlave (MODEL_INDEX_C).bresp,
         axi_lite_s_axi_bvalid  => writeSlave (MODEL_INDEX_C).bvalid,
         axi_lite_s_axi_arready => readSlave  (MODEL_INDEX_C).arready,
         axi_lite_s_axi_rdata   => readSlave  (MODEL_INDEX_C).rdata,
         axi_lite_s_axi_rresp   => readSlave  (MODEL_INDEX_C).rresp,
         axi_lite_s_axi_rvalid  => readSlave  (MODEL_INDEX_C).rvalid );
     diagnClk <= dspClk204;
     diagnRst <= dspRst204;
     --diagnStrobe         <= idiagnStrobe;
     --diagnStrobe <= iq204.sync;
   end generate;
   
   U_DIAGNSTROBE : entity surf.SynchronizerOneShot
     generic map (
       TPD_G         => TPD_G )
     port map (
       clk      => dspClk204,
       dataIn   => trigPulse(1),
       dataOut  => idiagnStrobe );

   GEN_TRIG : for i in 1 downto 0 generate
     U_TimingRstSync: entity surf.SynchronizerOneShot
       generic map (
         TPD_G         => TPD_G,
         PULSE_WIDTH_G => 1 )
       port map (
         clk       => jesdClk(i),
         rst       => jesdRst(i),
         dataIn    => trigPulse(2),
         dataOut   => trigDaqOut(i) );
   end generate;

-- Need to translate debug waveforms to jesdClk(0) domain
   GEN_DAQ : for i in 7 downto 0 generate
--     debug204(i).valid <= debug204_valid(i);
     debug204(i).valid <= r.valid;
     debug204(i).data  <= debug204_data(32*i+31 downto 32*i);
     U_SYNC_DEBUG : entity surf.SynchronizerFifo
       generic map (
         TPD_G             => TPD_G,
         ADDR_WIDTH_G      => 10,
         DATA_WIDTH_G      => 32)
       port map (
         rst               => '0',
         -- Write Ports (wr_clk domain)
         wr_clk            => dspClk204,
         wr_en             => debug204(i).valid,
         din(31 downto 0)  => debug204(i).data,
         -- Read Ports (rd_clk domain)
         rd_clk            => jesdClk(i/4),
         valid             => debug185(i).valid,
         dout(31 downto 0) => debug185(i).data );

     debug      (i/4, i mod 4) <= debug185(i).data;
     debugValids(i/4)(i mod 4) <= debug185(i).valid;
   end generate;

   streamMaster <= AXI_STREAM_MASTER_INIT_C;
   
-- TODO tie to dsp core 
   trigMode <= "10";
   rfSwitch <= '1';

   comb : process (r, dspRst204, idiagnStrobe, iq204, idiagnSevr) is
     variable v : RegType;
   begin
     v := r;
     v.strobe := '0';

     v.valid := '0';
     v.count := r.count + 1;

     if iq204.sync = '1' or r.count=toSlv(11,4) then
       v.valid := '1';
       v.count := (others=>'0');
     end if;
     
     if iq204.sync = '1' then
       v.sync := '1';
     end if;

     if idiagnStrobe = '1' then
       v.strobe := '1';
       if r.sync = '1' then
         v.sevr   := idiagnSevr;
         v.sync   := '0';
       else
         v.sevr := (others=>"11");
       end if;
     end if;

     if dspRst204='1' then
       v := REG_INIT_C;
     end if;

     rin <= v;

     diagnStrobe <= r.strobe;
     diagnSevr   <= r.sevr;
   end process comb;

   seq : process (dspClk204) is
   begin
     if rising_edge(dspClk204) then
       r <= rin;
     end if;
   end process seq;
   
end mapping;

