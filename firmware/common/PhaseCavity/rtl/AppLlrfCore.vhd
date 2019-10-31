-------------------------------------------------------------------------------
-- Title      : System Generator core wrapper
-------------------------------------------------------------------------------
-- File       : AppLlrfCore.vhd
-- Author     : Larry Ruckman  <ruckman@slac.stanford.edu>
-- Company    : SLAC National Accelerator Laboratory
-- Created    : 2016-02-25
-- Last update: 2019-10-15
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
      diagnValids    : out slv       (31 downto 0);
      diagnStrobe    : out sl;
      -- Waveform interface
      --wfAddr         : out slv11Array(1 downto 0);
      --wfData         : in  slv32Array(1 downto 0);
      
      -- Timing recovered clock divider
      --clkDivide      : out slv(15 downto 0);
      --
      adcValid       : in  Slv6Array(1 downto 0):=(others => (others =>'0'));
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
   
   signal jesdRstL    : sl;
   signal axiRstL     : sl;
   
   signal adc357      : Slv16VectorArray(1 downto 0, 5 downto 0);
   signal adcValid357 : SlVectorArray   (1 downto 0, 5 downto 0);
   signal adcValid204 : Slv6Array (1 downto 0);

   signal i0in357     : Slv18Array(5 downto 0);
   signal q0in357     : Slv18Array(5 downto 0);
   signal i1in357     : Slv18Array(3 downto 0);
   signal q1in357     : Slv18Array(3 downto 0);
   
   signal i0out357    : Slv18Array(5 downto 0);
   signal q0out357    : Slv18Array(5 downto 0);
   signal i1out357    : Slv18Array(3 downto 0);
   signal q1out357    : Slv18Array(3 downto 0);
   
   signal i0in185     : Slv36Array(5 downto 0);
   signal q0in185     : Slv36Array(5 downto 0);
   signal i1in185     : Slv36Array(3 downto 0);
   signal q1in185     : Slv36Array(3 downto 0);
   
   signal i0out185    : Slv36Array(5 downto 0);
   signal q0out185    : Slv36Array(5 downto 0);
   signal i1out185    : Slv36Array(3 downto 0);
   signal q1out185    : Slv36Array(3 downto 0);

   signal i0out       : slv(17 downto 0);
   signal q0out       : slv(17 downto 0);
   
   signal dacHs357       : slv(15 downto 0) := (others => '0');
   signal dacHsValid357  : sl := '0';

   signal dacHs185       : slv(31 downto 0) := (others => '0');
   signal dacHsValid185  : sl := '0';

   signal dacLs204      : Slv16Array(2 downto 0) := (others => (others => '0'));
   signal dacLsValid204 : sl := '0';

   signal dacLs185      : Slv16Array(2 downto 0) := (others => (others => '0'));
   signal dacLsValid185 : sl := '0';

   signal dspClk204 : sl := '0';
   signal dspRst204 : sl := '0';

   -- Demod I/Q 357MHz interface
   signal ddcValid357   : sl := '0';
   signal ddcI357       : slv(17 downto 0) := (others => '0'); -- Fix18_17
   signal ddcQ357       : slv(17 downto 0) := (others => '0'); -- Fix18_17
   signal ddcChannel357 : slv(3 downto 0) := (others => '0');  -- UInt4
   signal ddcSync357    : sl := '0';
   signal ddcTlast357   : sl := '0';

   -- Demod I/Q 204MHz interface
   signal ddcValid204   : sl := '0';
   signal ddcI204       : slv(17 downto 0) := (others => '0'); -- Fix18_17
   signal ddcQ204       : slv(17 downto 0) := (others => '0'); -- Fix18_17
   signal ddcChannel204 : slv(3 downto 0) := (others => '0');  -- UInt4
   signal ddcSync204    : sl := '0';
   signal ddcTlast204   : sl := '0';
   
   -- Demod I/Q 204MHz interface
   signal ddcValid185   : sl := '0';
   signal ddcI185       : slv(17 downto 0) := (others => '0'); -- Fix18_17
   signal ddcQ185       : slv(17 downto 0) := (others => '0'); -- Fix18_17
   signal ddcChannel185 : slv(3 downto 0) := (others => '0');  -- UInt4
   signal ddcSync185    : sl := '0';
   signal ddcTlast185   : sl := '0';
   signal ddcWr         : sl;
   
   -- Demod AmpPhase 357MHz interface
   signal amp357             : slv(17 downto 0) := (others => '0'); -- Fix18_17
   signal phase357           : slv(17 downto 0) := (others => '0'); -- Fix18_17
   signal phaseAmpValid357   : sl := '0';
   signal phaseAMpChannel357 : slv(3 downto 0) := (others => '0');  -- UInt4
   signal phaseAmpSync357    : sl := '0';
   signal phaseAmpTlast357   : sl := '0';

   -- Demod AmpPhase 357MHz interface
   signal amp185             : slv(17 downto 0) := (others => '0'); -- Fix18_17
   signal phase185           : slv(17 downto 0) := (others => '0'); -- Fix18_17
   signal phaseAmpValid185   : sl := '0';
   signal phaseAMpChannel185 : slv(3 downto 0) := (others => '0');  -- UInt4
   signal phaseAmpSync185    : sl := '0';
   signal phaseAmpTlast185   : sl := '0';
   signal phaseAmpWr         : sl := '0';

   -- Demod AmpPhase 204MHz interface
   signal amp204             : slv(17 downto 0) := (others => '0'); -- Fix18_17
   signal phase204           : slv(17 downto 0) := (others => '0'); -- Fix18_17
   signal phaseAmpValid204   : sl := '0';
   signal phaseAMpChannel204 : slv(3 downto 0) := (others => '0');  -- UInt4
   signal phaseAmpSync204    : sl := '0';
   signal phaseAmpTlast204   : sl := '0';

   signal debug204      : slv(31 downto 0) := (others => '0');
   signal debugValid204 : sl := '0';
   signal debugSync204  : sl := '0';

   signal debug185      : slv(31 downto 0) := (others => '0');
   signal debugValid185 : sl := '0';
   signal debugSync185  : sl := '0';

   signal adcHsSync         : sampleDataVectorArray(1 downto 0, 5 downto 0);
   signal dacLsSync         : Slv16Array(2 downto 0);
   signal dacLs16bit        : Slv16Array(2 downto 0);
   signal debugSync         : Slv32VectorArray(1 downto 0, 3 downto 0);
   signal debugValidsSync   : slv(7 downto 0);
   signal debugValids_s     : slv(7 downto 0);
   signal debugvalid_s      : sl;
   signal daqtrig           : sl;
   signal trigDaqOutSync    : sl;
   signal trigDaqOut_s      : slv(7 downto 0);
   signal dstrobe           : sl;
   signal modelReg          : Slv32Array(0 downto 0);
   signal trigRateOut       : SlVectorArray(3 downto 0,31 downto 0);
   signal trigRateOutV      : Slv32Array(3 downto 0);
   
   signal trigPulseSync    : slv(NUM_OF_TRIG_PULSES_G-1 downto 0);
   signal trigPulseSyncPos : slv(NUM_OF_TRIG_PULSES_G-1 downto 0);
--   signal adcValidSync     : Slv6Array(1 downto 0);

   constant DEMOD_INDEX_C     : natural := 0;
   constant UPCONVERT_INDEX_C : natural := 1;
   constant PLL_INDEX_C       : natural := 2;
   constant MODEL_INDEX_C     : natural := 3;
   constant STREAM_INDEX_C    : natural := 4;
   constant NUM_MASTERS_C     : natural := 5;
   
   --  AxiLiteCrossbar
   constant AXI_XBAR_CONFIG_C : AxiLiteCrossbarMasterConfigArray(NUM_MASTERS_C-1 downto 0) := genAxiLiteConfig( NUM_MASTERS_C, AXI_BASE_ADDR_G, 16, 12);

   signal readMaster  : AxiLiteReadMasterArray (AXI_XBAR_CONFIG_C'range);
   signal readSlave   : AxiLiteReadSlaveArray  (AXI_XBAR_CONFIG_C'range);
   signal writeMaster : AxiLiteWriteMasterArray(AXI_XBAR_CONFIG_C'range);
   signal writeSlave  : AxiLiteWriteSlaveArray (AXI_XBAR_CONFIG_C'range);

   --
   signal dspRstN         : sl; -- async
   signal dacoutvalid     : slv( 0 downto 0);
   signal amp             : slv(16 downto 0);
   signal ddcchannel      : slv( 2 downto 0);
   signal ddci1           : slv(16 downto 0);
   signal ddcq1           : slv(16 downto 0);
   signal ddcsync         : slv( 0 downto 0);
   signal ddctlast        : slv( 0 downto 0);
   signal ddcvalid        : slv( 0 downto 0);

   signal userDacControl    : slv(15 downto 0) := (others=>'0');
   signal userdaccontrol204 : slv(15 downto 0) := (others=>'0');

   signal trigPulse204    : slv(NUM_OF_TRIG_PULSES_G-1 downto 0);

   constant SLAVE_AXI_CONFIG_C : AxiStreamConfigType := (
     TSTRB_EN_C    => false,
     TDATA_BYTES_C => 4,
     TDEST_BITS_C  => 0,
     TID_BITS_C    => 0,
     TKEEP_MODE_C  => TKEEP_NORMAL_C,
     TUSER_BITS_C  => 2,
     TUSER_MODE_C  => TUSER_NORMAL_C);
   
   type RegType is record
     count    : slv       (23 downto 0);
     data     : Slv32Array(31 downto 0);
   end record;

   constant REG_INIT_C : RegType := (
     count    => (others=>'0'),
     data     => (others=>(others=>'0')) );

   signal r    : RegType := REG_INIT_C;
   signal rin  : RegType;

   constant GEN_MODEL_C : boolean := false;

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

   -- DSP clock is 357*12/21 = 204 MHz (TMUX all 12 channels)
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
   SYNC_TRIG :
   for i in NUM_OF_TRIG_PULSES_G-1 downto 0 generate      
     U_TimingTrigSync: entity work.TimingTrigSync
       generic map (
         TPD_G => TPD_G)
       port map (
         clk       => jesdClk  (1),
         rst       => jesdRst  (1),
         clk2x     => jesdClk2x(1),
         rst2x     => jesdRst2x(1),
         trig_i    => trigPulse(i),
         trig_o    => trigPulseSync(i),
         trigPos_o => trigPulseSyncPos(i));

   end generate SYNC_TRIG;
      
   ---------------------------
   -- SYNC Inputs to Bay1 clk
   ---------------------------
   SYNC_ADC :
   for i in 5 downto 0 generate
     SYNC_ADC_BAY : for j in 1 downto 0 generate
       -- Synchronize to Bay1 clk2x
       U_Jesd32bTo16b: entity work.Jesd32bTo16b
         generic map (
           TPD_G => TPD_G)
         port map (
           wrClk    => jesdClk(j),
           wrRst    => jesdRst(j),
           validIn  => '1',
           dataIn   => adcHs(j, i),
           rdClk    => jesdClk2x(1),
           rdRst    => jesdRst2x(1),
           validOut => adcValid357(j, i),
           dataOut  => adc357(j, i));
     end generate SYNC_ADC_BAY;
   end generate SYNC_ADC;
         
   U_SYNC_DAC : entity work.Jesd16bTo32b
      generic map (
         TPD_G => TPD_G)
      port map (
         wrClk    => jesdClk2x(1),
	 wrRst    => jesdRst2x(1),
	 validIn  => dacHsValid357,
	 dataIn   => dacHs357,
	 rdClk    => jesdClk(1),
	 rdRst    => jesdRst(1),
	 validOut => dacHsValid185,
	 dataOut  => dacHs185);

   dacHs      <= dacHs185;
   dacHsValid <= dacHsValid185;

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
       sync(0)               => trigPulse(0),
       -- DDC I/Q interface (jesdClk2x domain)
       ddci                  => ddcI357,
       ddcq                  => ddcQ357,
       ddcvalid(0)           => ddcValid357,
       ddcchannel            => ddcChannel357,
       ddcsync(0)            => ddcSync357,
       ddctlast(0)           => ddcTlast357,
       -- Phase/Amp interface (jesdClk2x domain)
       amp                   => amp357,
       phase                 => phase357,
       phaseampchannel       => phaseAmpChannel357,
       phaseampsync(0)       => phaseAmpSync357,
       phaseamptlast(0)      => phaseAmpTlast357,
       phaseampvalid(0)      => phaseAmpValid357,
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
	 phaseAmpValid(0) => phaseAmpValid204,
	 ampIn            => amp204,
	 phaseIn          => phase204,
	 phaseAmpChannel  => phaseAmpChannel204,
	 userDacControl   => userdaccontrol204,
	 dacbay0_0        => dacLs204(0),
	 dacbay0_1        => dacLs204(1),
	 dacbay0_2        => dacLs204(2),
	 dacValid(0)      => dacLsValid204,
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
	 amp              => amp357,
	 phase            => phase357,
	 phaseampvalid(0) => phaseAmpValid357,
	 phaseampchannel  => phaseAmpChannel357,
	 phaseamptlast(0) => phaseAmpTlast357,
         seti             => i0out357(0),
         setq             => q0out357(0),
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

   U_SYNC_PHASEAMP : entity work.SynchronizerFifo
     generic map (
       TPD_G             => TPD_G,
       DATA_WIDTH_G      => 42)
     port map (
       rst               => '0',
       -- Write Ports (wr_clk domain)
       wr_clk            => jesdClk2x(1),
       wr_en             => phaseAmpValid357,
       din(17 downto  0) => amp357,
       din(35 downto 18) => phase357,
       din(39 downto 36) => phaseAmpChannel357,
       din(40)           => phaseAmpTlast357,
       din(41)           => phaseAmpSync357,
       -- Read Ports (rd_clk domain)
       rd_clk            => dspClk204,
       valid             => phaseAmpValid204,
       dout(17 downto  0)=> amp204,
       dout(35 downto 18)=> phase204,
       dout(39 downto 36)=> phaseAmpChannel204,
       dout(40)          => phaseAmpTlast204,
       dout(41)          => phaseAmpSync204 );


   SYNC_DAC_LS : for i in 2 downto 0 generate
      SYNC_DAC : entity work.SynchronizerFifo
         generic map (
            TPD_G        => TPD_G,
            DATA_WIDTH_G => 16)
         port map (
            rst    => '0',
            -- Write Ports (wr_clk domain)
            wr_clk => dspClk204,
            wr_en  => dacLsValid204,
            din    => dacLs204(i),
            -- Read Ports (rd_clk domain)
            rd_clk => jesdClk(0),
            dout   => dacLs185(i));
      -- output assignment
      -- combine both into 32-bit word
      dacLs(i)      <= dacLs185(i) & dacLs185(i);
      dacLsValid(i) <= '1';
   end generate SYNC_DAC_LS;
   
   NOGEN_MODEL : if not GEN_MODEL_C generate

     U_TrigRate : entity work.SyncTrigRateVector
       generic map ( COMMON_CLK_G   => true,
                     ONE_SHOT_G     => true,
                     REF_CLK_FREQ_G => 156.25E+6,
                     WIDTH_G        => 4 )
       port map ( trigIn(0)    => trigPulse(0),
                  trigIn(1)    => phaseAmpSync357,
                  trigIn(2)    => phaseAmpSync204,
                  trigIn(3)    => dstrobe,
                  trigRateOut  => trigRateOut,
                  locClk       => axiClk,
                  refClk       => axiClk );

     trigRateOutV(0) <= muxSlVectorArray(trigRateOut, 0);
     trigRateOutV(1) <= muxSlVectorArray(trigRateOut, 1);
     trigRateOutV(2) <= muxSlVectorArray(trigRateOut, 2);
     trigRateOutV(3) <= muxSlVectorArray(trigRateOut, 3);
     
     U_AxiLiteRegs : entity work.AxiLiteRegs
       generic map ( NUM_WRITE_REG_G => 1,
                     NUM_READ_REG_G  => 4 )
       port map ( axiClk         => axiClk,
                  axiClkRst      => axiRst,
                  axiReadMaster  => readMaster (MODEL_INDEX_C),
                  axiReadSlave   => readSlave  (MODEL_INDEX_C),
                  axiWriteMaster => writeMaster(MODEL_INDEX_C),
                  axiWriteSlave  => writeSlave (MODEL_INDEX_C),
                  writeRegister  => modelReg,
                  readRegister   => trigRateOutV );

     diagnRst <= modelReg(0)(0);

     U_FRAMER : entity work.llrfFramer
       port map (
         clk                => dspClk204,
	 phaseAmpValidIn(0) => phaseAmpValid204,
	 ampIn              => amp204,
	 phaseIn            => phase204,
	 phaseAmpChannelIn  => phaseAmpChannel204,
	 syncIn(0)          => phaseAmpSync204,
	 --outputs
	 debug              => debug204,
	 debugValid(0)      => debugValid204,
	 syncOut(0)         => debugSync204);

     U_SYNC_DEBUG : entity work.SynchronizerFifo
       generic map (
         TPD_G             => TPD_G,
         DATA_WIDTH_G      => 33)
       port map (
         rst               => '0',
         -- Write Ports (wr_clk domain)
         wr_clk            => dspClk204,
         wr_en             => debugValid204,
         din(31 downto 0)  => debug204,
         din(32)           => debugSync204,
         -- Read Ports (rd_clk domain)
         rd_clk            => jesdClk(0),
	 valid             => debugValid185,
         dout(31 downto 0) => debug185,
	 dout(32)          => debugSync185);

     debug(0, 0)       <= debug185;
     debugValids(0)(0) <= debugValid185;
     trigDaqOut(0)     <= debugSync185;

     diagnValids       <= (others=>'0');
     dstrobe           <= phaseAmpTlast204 and phaseAmpSync204;
     diagnStrobe       <= dstrobe;
     diagnClk          <= dspClk204;
   end generate;

   streamMaster <= AXI_STREAM_MASTER_INIT_C;
   
   comb : process ( r, jesdRst, dstrobe ) is
     variable v : RegType;
     variable j : integer;
   begin
     v := r;

     if dstrobe = '1' then
       v.count := r.count+1;
     end if;
       
     for i in 0 to 31 loop
       v.data(i) := toSlv(i,4) & r.count;
     end loop;

     if jesdRst(0) = '1' then
       v := REG_INIT_C;
     end if;
     
     rin <= v;

     diagn <= r.data;
   end process;

   seq : process ( dspClk204 ) is
   begin
     if rising_edge(dspClk204) then
       r <= rin;
     end if;
   end process;

-- TODO tie to dsp core 
   trigMode <= "10";
   rfSwitch <= '1';
     
end mapping;

