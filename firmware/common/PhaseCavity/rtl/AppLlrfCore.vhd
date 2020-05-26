-------------------------------------------------------------------------------
-- Title      : System Generator core wrapper
-------------------------------------------------------------------------------
-- File       : AppLlrfCore.vhd
-- Author     : Larry Ruckman  <ruckman@slac.stanford.edu>
-- Company    : SLAC National Accelerator Laboratory
-- Created    : 2016-02-25
-- Last update: 2020-05-25
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

use work.StdRtlPkg.all;
use work.AxiLitePkg.all;
use work.AxiStreamPkg.all;
use work.Jesd204bPkg.all;
use work.AmcCarrierPkg.all;
use work.EthMacPkg.all;
use work.SsiPkg.all;
use work.LlrfPkg.all;

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

   signal diagnDataV : slv(1023 downto 0);
   signal diagnSevrV : slv(63 downto 0);
   
   constant DEBUG_C : boolean := false;

   component ila_0
     port ( clk    : in sl;
            probe0 : in slv(255 downto 0) );
   end component;

begin

   GEN_DEBUG : if DEBUG_C generate
     U_ILA : ila_0
       port map ( clk                    => jesdClk(1),
                  probe0(255 downto   0) => (others=>'0') );
   end generate;
   
   axiRstL <= not axiRst;
   
   ---------------------
   -- AXI-Lite Crossbar
   ---------------------
   U_XBAR : entity work.AxiLiteCrossbar
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

   U_DSP_CLK : entity work.ClockManagerUltraScale
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
   U_TimingTrigSync: entity work.SynchronizerOneShot
     generic map (
       TPD_G         => TPD_G,
       PULSE_WIDTH_G => 1 )
     port map (
       clk       => jesdClk2x(1),
       rst       => jesdRst2x(1),
       dataIn    => trigPulse(0),
       dataOut   => trigPulseSync(0) );
      
   U_TimingRstSync: entity work.SynchronizerOneShot
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
   U_SyncAdc : entity work.LlrfSync
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

   U_Sync204 : entity work.DdcSync
     port map (
       wr_clk => jesdClk2x(1),
       wr_ddc => af357,
       rd_clk => dspClk204,
       rd_ddc => af204 );

   SYNC_DAC_LS : for i in 2 downto 0 generate
      SYNC_DAC : entity work.SynchronizerFifo
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
   U_LlrfDemod : entity work.llrfdemod
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

      U_SlowDacControl : entity work.slowdaccontrol
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

      U_LlrfUpconvert : entity work.llrfupconvert
        port map (
         dsp_clk          => jesdClk2x(1),
	 amp              => af357.i_or_a,
	 phase            => af357.q_or_f,
	 phaseampvalid(0) => af357.valid,
	 phaseampchannel  => af357.channel,
	 phaseamptlast(0) => af357.tLast,
         seti             => iout357,
         setq             => qout357,
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

   U_MODEL : entity work.example_stub
     port map (
       dsp_clk                => dspClk204,
       dsp_rst                => dspRst204,
       gateway_in             => (others=>'0'),
       gateway_in2            => trigPulseSync(1 downto 1),
       -- demodulator output
       ddcchannel             => iq204.channel,
       ddci                   => iq204.i_or_a,
       ddcq                   => iq204.q_or_f,
       ddcsync(0)             => iq204.sync,
       amp                    => af204.i_or_a,
       phase                  => af204.q_or_f,
       phaseampchannel        => af204.channel,
       phaseampsync(0)        => af204.sync,
       -- DaqMux input
       debugvalid             => debug204_valid,
       debugdata              => debug204_data,
       debugsync(0)           => debug204_sync,
       -- diagnostic bus input
       diagnclk               => diagnClk,
       diagnrst               => diagnRst,
       diagndata              => diagnDataV,
       diagnfixed             => diagnFixed,
       diagnsevr              => diagnSevrV,
       diagnsync              => diagnStrobe,
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

   -- Need to translate debug waveforms to jesdClk(0) domain
   GEN_DAQ : for i in 7 downto 0 generate
     debug204(i).valid <= debug204_valid(i);
     debug204(i).data  <= debug204_data(32*i+31 downto 32*i);
     debug204(i).sync  <= debug204_sync;
     U_SYNC_DEBUG : entity work.SynchronizerFifo
       generic map (
         TPD_G             => TPD_G,
         ADDR_WIDTH_G      => 10,
         DATA_WIDTH_G      => 33)
       port map (
         rst               => '0',
         -- Write Ports (wr_clk domain)
         wr_clk            => dspClk204,
         wr_en             => debug204(i).valid,
         din(31 downto 0)  => debug204(i).data,
         din(32)           => debug204(i).sync,
         -- Read Ports (rd_clk domain)
         rd_clk            => jesdClk(0),
         valid             => debug185(i).valid,
         dout(31 downto 0) => debug185(i).data,
         dout(32)          => debug185(i).sync );

     debug      (i/4, i mod 4) <= debug185(i).data;
     debugValids(i/4)(i mod 4) <= debug185(i).valid;

     diagn    (i) <= diagnDataV(32*i+31 downto 32*i);
     diagnSevr(i) <= diagnSevrV(2*i+1 downto 2*i);
   end generate;
   trigDaqOut (0)      <= debug185(0).sync;
   trigDaqOut (1)      <= debug185(4).sync;
   
   streamMaster <= AXI_STREAM_MASTER_INIT_C;
   
-- TODO tie to dsp core 
   trigMode <= "10";
   rfSwitch <= '1';
     
end mapping;

