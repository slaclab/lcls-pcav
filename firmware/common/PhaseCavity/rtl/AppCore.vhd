-------------------------------------------------------------------------------
-- File       : AppCore.vhd
-- Company    : SLAC National Accelerator Laboratory
-- Created    : 2017-02-04
-- Last update: 2025-03-06
-------------------------------------------------------------------------------
-- Description: Application Core's Top Level
--
-- Note: Common-to-Application interface defined in HPS ESD: LCLSII-2.7-ES-0536
--
-------------------------------------------------------------------------------
-- This file is part of 'LCLS2 AMC Carrier Firmware'.
-- It is subject to the license terms in the LICENSE.txt file found in the
-- top-level directory of this distribution and at:
--    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html.
-- No part of 'LCLS2 AMC Carrier Firmware', including this file,
-- may be copied, modified, propagated, or distributed except according to
-- the terms contained in the LICENSE.txt file.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


library surf;
use surf.StdRtlPkg.all;
use surf.AxiStreamPkg.all;
use surf.AxiLitePkg.all;
use surf.EthMacPkg.all;
use surf.jesd204bpkg.all;

library lcls_timing_core;
use lcls_timing_core.TimingPkg.all;

library amc_carrier_core;
use amc_carrier_core.AmcCarrierPkg.all;
use amc_carrier_core.AppTopPkg.all;

library xil_defaultlib;
use xil_defaultlib.AppOpts.all;

library unisim;
use unisim.vcomponents.all;

entity AppCore is
   generic (
      TPD_G              : time                    := 1 ns;
      SIM_SPEEDUP_G      : boolean                 := false;
      SIMULATION_G       : boolean                 := false;
      AXI_BASE_ADDR_G    : slv(31 downto 0)        := x"80000000";
      RF_INTERLOCK_RTM_G : boolean                 := false;
      JESD_USR_DIV_G     : natural);
   port (
      -- Clocks and resets
      jesdClk             : in    slv(1 downto 0);
      jesdRst             : in    slv(1 downto 0);
      jesdClk2x           : in    slv(1 downto 0);
      jesdRst2x           : in    slv(1 downto 0);
      jesdUsrClk          : in    slv(1 downto 0);
      jesdUsrRst          : in    slv(1 downto 0);
      -- DaqMux/Trig Interface (timingClk domain)
      freezeHw            : out   slv(1 downto 0);
      timingTrig          : in    TimingTrigType;
      trigHw              : out   slv(1 downto 0);
      trigCascBay         : in    slv(1 downto 0);
      -- JESD SYNC Interface (jesdClk[1:0] domain)
      jesdSysRef          : out   slv(1 downto 0);
      jesdRxSync          : in    slv(1 downto 0);
      jesdTxSync          : out   Slv7Array(1 downto 0);
      -- ADC/DAC/Debug Interface (jesdClk[1:0] domain)
      adcValids           : in    Slv7Array(1 downto 0);
      adcValues           : in    sampleDataVectorArray(1 downto 0, 6 downto 0);
      dacValids           : out   Slv7Array(1 downto 0);
      dacValues           : out   sampleDataVectorArray(1 downto 0, 6 downto 0);
      debugValids         : out   Slv4Array(1 downto 0);
      debugValues         : out   sampleDataVectorArray(1 downto 0, 3 downto 0);
      -- DAC Signal Generator Interface
      -- If SIG_GEN_LANE_MODE_G = '0', (jesdClk[1:0] domain)
      -- If SIG_GEN_LANE_MODE_G = '1', (jesdClk2x[1:0] domain)
      dacSigCtrl          : out   DacSigCtrlArray(1 downto 0);
      dacSigStatus        : in    DacSigStatusArray(1 downto 0);
      dacSigValids        : in    Slv7Array(1 downto 0);
      dacSigValues        : in    sampleDataVectorArray(1 downto 0, 6 downto 0);
      -- AXI-Lite Interface (axilClk domain) [0x8FFFFFFF:0x80000000]
      axilClk             : in    sl;
      axilRst             : in    sl;
      axilReadMaster      : in    AxiLiteReadMasterType;
      axilReadSlave       : out   AxiLiteReadSlaveType;
      axilWriteMaster     : in    AxiLiteWriteMasterType;
      axilWriteSlave      : out   AxiLiteWriteSlaveType;
      ----------------------
      -- Top Level Interface
      ----------------------
      -- Timing Interface (timingClk domain)
      timingClk           : in    sl;
      timingRst           : in    sl;
      timingBus           : in    TimingBusType;
      timingPhy           : out   TimingPhyType;
      timingPhyClk        : in    sl;
      timingPhyRst        : in    sl;
      -- Diagnostic Interface (diagnosticClk domain)
      diagnosticClk       : out   sl;
      diagnosticRst       : out   sl;
      diagnosticBus       : out   DiagnosticBusType;
      -- Backplane Messaging Interface  (axilClk domain)
      obBpMsgClientMaster : out   AxiStreamMasterType;
      obBpMsgClientSlave  : in    AxiStreamSlaveType;
      ibBpMsgClientMaster : in    AxiStreamMasterType;
      ibBpMsgClientSlave  : out   AxiStreamSlaveType;
      obBpMsgServerMaster : out   AxiStreamMasterType;
      obBpMsgServerSlave  : in    AxiStreamSlaveType;
      ibBpMsgServerMaster : in    AxiStreamMasterType;
      ibBpMsgServerSlave  : out   AxiStreamSlaveType;
      -- Application Debug Interface (axilClk domain)
      obAppDebugMaster    : out   AxiStreamMasterType;
      obAppDebugSlave     : in    AxiStreamSlaveType;
      ibAppDebugMaster    : in    AxiStreamMasterType;
      ibAppDebugSlave     : out   AxiStreamSlaveType;
      -- MPS Concentrator Interface (ref156MHzClk domain)
      mpsObMasters        : in    AxiStreamMasterArray(14 downto 0);
      mpsObSlaves         : out   AxiStreamSlaveArray(14 downto 0);
      -- Misc. Interface
      ipmiBsi             : in    BsiBusType;
      gthFabClk           : in    sl;
      ethPhyReady         : in    sl;
      -----------------------
      -- Application Ports --
      -----------------------
      -- AMC's JTAG Ports
      jtagPri             : inout Slv5Array(1 downto 0);
      jtagSec             : inout Slv5Array(1 downto 0);
      -- AMC's FPGA Clock Ports
      fpgaClkP            : inout Slv2Array(1 downto 0);
      fpgaClkN            : inout Slv2Array(1 downto 0);
      -- AMC's System Reference Ports
      sysRefP             : inout Slv4Array(1 downto 0);
      sysRefN             : inout Slv4Array(1 downto 0);
      -- AMC's Sync Ports
      syncInP             : inout Slv4Array(1 downto 0);
      syncInN             : inout Slv4Array(1 downto 0);
      syncOutP            : inout Slv10Array(1 downto 0);
      syncOutN            : inout Slv10Array(1 downto 0);
      -- AMC's Spare Ports
      spareP              : inout Slv16Array(1 downto 0);
      spareN              : inout Slv16Array(1 downto 0);
      -- RTM's Low Speed Ports
      rtmLsP              : inout slv(53 downto 0);
      rtmLsN              : inout slv(53 downto 0);
      -- RTM's High Speed Ports
      rtmHsRxP            : in    sl;
      rtmHsRxN            : in    sl;
      rtmHsTxP            : out   sl := '0';
      rtmHsTxN            : out   sl := '1';
      -- RTM's Clock Reference
      genClkP             : in    sl;
      genClkN             : in    sl);
end AppCore;

architecture mapping of AppCore is

  constant AMC0_INDEX_C      : natural := 0;
  constant AMC1_INDEX_C      : natural := 1;
  constant RTM_INDEX_C       : natural := 2;
  constant WAVEFORM_INDEX_C  : natural := 3;
  --constant WAVEFORM_INDEX_C  : natural := 4;
  constant SYSGEN_INDEX_C    : natural := 5;
  constant MMCM_DRP_INDEX_C  : natural := 6;
  constant BSSS_INDEX_C      : natural := 7;
  constant BLD_INDEX_C       : natural := 8;
  constant NUM_AXI_MASTERS_C : natural := 9;

  constant AXI_CONFIG_C : AxiLiteCrossbarMasterConfigArray(NUM_AXI_MASTERS_C-1 downto 0) := genAxiLiteConfig(NUM_AXI_MASTERS_C, AXI_BASE_ADDR_G, 28, 24);  -- [0x8FFFFFFF:0x80000000]

  signal axilReadMasters  : AxiLiteReadMasterArray (NUM_AXI_MASTERS_C-1 downto 0);
  signal axilReadSlaves   : AxiLiteReadSlaveArray  (NUM_AXI_MASTERS_C-1 downto 0);
  signal axilWriteMasters : AxiLiteWriteMasterArray(NUM_AXI_MASTERS_C-1 downto 0);
  signal axilWriteSlaves  : AxiLiteWriteSlaveArray (NUM_AXI_MASTERS_C-1 downto 0);

  -- Internal dac/adc signals
   signal s_dacHs        : slv(31 downto 0);
   signal s_dacLs        : Slv32Array(2 downto 0);
   signal s_adcValues    : sampleDataVectorArray(1 downto 0, 5 downto 0);
   signal s_adcValids    : Slv6Array(1 downto 0);

   signal s_fpgaInterlock : sl := '0';

   -----------------Timing--------------------------
   constant TRIG_SIZE_C : integer := 6;
   signal s_trigPulse   : slv((TRIG_SIZE_C/2)-1 downto 0);
   signal s_trigStrobe  : slv((TRIG_SIZE_C/2)-1 downto 0);
   signal s_trigIndex   : slv((TRIG_SIZE_C/2)-1 downto 0);
   signal s_trigMode    : slv(1 downto 0);
   signal s_trigClock   : sl;
   signal s_trigRst     :  sl;
   signal s_trigLocked  : sl;
   signal s_clkDivide   : slv(15 downto 0);
   signal s_cleanClk    : slv(1 downto 0);
   signal s_cleanRst    : slv(1 downto 0);
   signal s_dOut        : slv(15 downto 0);
   signal s_clkOut      : slv(15 downto 0);
   signal s_timingClk2x : sl;
   signal s_timingClk2x_locked : sl;

   -----------------Waveform BRAM--------------------------
   constant WF_ADDR_WIDTH_C : positive := 11; --ite(DSP_CLK_2X_G, 11, 10);  -- 2048 Samples
   constant WF_DATA_WIDTH_C : positive := 32; --ite(DSP_CLK_2X_G, 16, 32);  -- 2048 Samples

   signal s_wfAddr : slv11Array(1 downto 0);
   signal s_wfData : slv32Array(1 downto 0);

   signal s_debugValids         :   Slv4Array(1 downto 0);
   signal s_debugValues         :   sampleDataVectorArray(1 downto 0, 3 downto 0);
   
   signal s_procValids         :   Slv4Array(1 downto 0) := (others=>(others=>'0'));
   signal s_procValues         :   sampleDataVectorArray(1 downto 0, 3 downto 0);
   
   constant  IODELAY_GROUP_C                        : string := "APP_DELAY_GROUP";
   attribute IODELAY_GROUP                          : string;
   attribute IODELAY_GROUP of U_IDELAYCTRL : label is IODELAY_GROUP_C;

   signal diagnClk             : sl;
   signal diagnRst             : sl;
   signal diagnAck             : sl;
   signal diagnDepth           : slv(3 downto 0);
   signal diagnBus, diagnBusQ, diagnBusO  : DiagnosticBusType := DIAGNOSTIC_BUS_INIT_C;
   signal timingMessage        : TimingMessageType;
   signal timingMessageSlv     : slv(TIMING_MESSAGE_BITS_C-1 downto 0);
   signal timingMessageSlvO    : slv(TIMING_MESSAGE_BITS_C-1 downto 0);
   signal timingMessageStrobe  : sl;
   
   signal streamMaster         : AxiStreamMasterType;
   signal streamSlave          : AxiStreamSlaveType;
   
begin

    -- We want to see DAC values on DaqMux
   dacValids <= (others => (others => '1'));
   dacValues(0,0) <= s_dacLs(0);
   dacValues(0,1) <= s_dacLs(1);
   dacValues(0,2) <= s_dacLs(2);
   dacValues(0,3) <= s_dacHs;
   dacValues(0,4) <= (others => '0');
   dacValues(0,5) <= (others => '0');
   dacValues(0,6) <= (others => '0');
   dacValues(1,0) <= s_dacLs(0);
   dacValues(1,1) <= s_dacLs(1);
   dacValues(1,2) <= s_dacLs(2);
   dacValues(1,3) <= s_dacHs;
   dacValues(1,4) <= (others => '0');
   dacValues(1,5) <= (others => '0');
   dacValues(1,6) <= (others => '0');

   GEN_ADC_SIGNALS :
   for i in 5 downto 0 generate
      s_adcValues(0,i) <= adcValues(0,i);
      s_adcValues(1,i) <= adcValues(1,i);
   end generate GEN_ADC_SIGNALS;

   s_adcValids(0) <= adcValids(0)(5 downto 0);
   s_adcValids(1) <= adcValids(1)(5 downto 0);

   diagnosticBus  <= diagnBusO;

   ---------------------
   -- AXI-Lite Crossbar
   ---------------------
   U_XBAR : entity surf.AxiLiteCrossbar
      generic map (
         TPD_G              => TPD_G,
         NUM_SLAVE_SLOTS_G  => 1,
         NUM_MASTER_SLOTS_G => NUM_AXI_MASTERS_C,
         MASTERS_CONFIG_G   => AXI_CONFIG_C)
      port map (
         axiClk              => axilClk,
         axiClkRst           => axilRst,
         sAxiWriteMasters(0) => axilWriteMaster,
         sAxiWriteSlaves(0)  => axilWriteSlave,
         sAxiReadMasters(0)  => axilReadMaster,
         sAxiReadSlaves(0)   => axilReadSlave,
         mAxiWriteMasters    => axilWriteMasters,
         mAxiWriteSlaves     => axilWriteSlaves,
         mAxiReadMasters     => axilReadMasters,
         mAxiReadSlaves      => axilReadSlaves);

   --------------------
   -- LCLS ACCEL/STBY Trigger MUX
   --------------------
   GEN_TRIG_MUX : for i in (TRIG_SIZE_C/2)-1 downto 0 generate
      U_TimingTrigMux: entity xil_defaultlib.TimingTrigMux
      generic map (
         TPD_G => TPD_G)
      port map (
         recClk         => timingClk,
         recRst         => timingRst,
         mode_i         => s_trigMode,
         strobe_i       => timingBus.strobe,
         trig_i         => timingTrig.trigPulse((2*i+1) downto 2*i),
         trig_o         => s_trigPulse(i),
         trigStrobe_o   => s_trigStrobe(i),
         trigIndex_o    => s_trigIndex(i));
   end generate GEN_TRIG_MUX;


   ----------------
   -- IQ Axi lite BRAM waveforms
   ----------------
   GEN_WAVEFORMS : for i in 1 downto 0 generate
      -- Dual port RAM accessible from axiLite
      -- waveform input to the System Generator
      U_Waveform : entity surf.AxiDualPortRam
         generic map (
            TPD_G        => TPD_G,
            --BRAM_EN_G    => true,
            --REG_EN_G     => true,
            --MODE_G       => "write-first",
            ADDR_WIDTH_G => WF_ADDR_WIDTH_C,
            DATA_WIDTH_G => WF_DATA_WIDTH_C,
            INIT_G       => "0")
         port map (
            -- Axi clk domain
            axiClk         => axilClk,
            axiRst         => axilRst,
            axiReadMaster  => axilReadMasters (WAVEFORM_INDEX_C+i),
            axiReadSlave   => axilReadSlaves  (WAVEFORM_INDEX_C+i),
            axiWriteMaster => axilWriteMasters(WAVEFORM_INDEX_C+i),
            axiWriteSlave  => axilWriteSlaves (WAVEFORM_INDEX_C+i),

            -- Sysgen clk domain
            clk  => jesdClk(1),
            rst  => jesdRst(1),
            en   => '1',
            addr => s_wfAddr(i),
            dout => s_wfData(i));
   end generate GEN_WAVEFORMS;

   ----------------
   -- SYSGEN Module
   ----------------
   U_SysGen : entity xil_defaultlib.AppLlrfCore
      generic map (
         TPD_G                => TPD_G,
         AXI_BASE_ADDR_G      => AXI_CONFIG_C(SYSGEN_INDEX_C).baseAddr,
         NUM_OF_TRIG_PULSES_G => s_trigPulse'length )
      port map(
         -- JESD Interface
         jesdClk     => jesdClk,
         jesdRst     => jesdRst,
         jesdClk2x   => jesdClk2x,
         jesdRst2x   => jesdRst2x,
         adcHs       => s_adcValues,
         adcHsValid  => s_adcValids,
         dacHs       => s_dacHs,
         dacLs       => s_dacLs,
         debug       => s_debugValues,
         debugValids => s_debugValids,
         diagnClk    => diagnClk,
         diagn       => diagnBus.data,
         diagnFixed  => diagnBus.fixed,
         diagnSevr   => diagnBus.sevr,
         diagnStrobe => diagnBus.strobe,
         rfSwitch       => s_fpgaInterlock,
         trigPulse      => s_trigPulse,
         trigDaqOut     => trigHw,
         trigMode       => s_trigMode,

         -- DacSigCtrl
         dacSigCtrl     => dacSigCtrl,
         dacSigStatus   => dacSigStatus,
         dacSigValids   => dacSigValids,
         dacSigValues   => dacSigValues,
      
         -- AXI-Lite Port
         axiClk         => axilClk,
         axiRst         => axilRst,
         axiReadMaster  => axilReadMasters (SYSGEN_INDEX_C),
         axiReadSlave   => axilReadSlaves  (SYSGEN_INDEX_C),
         axiWriteMaster => axilWriteMasters(SYSGEN_INDEX_C),
         axiWriteSlave  => axilWriteSlaves (SYSGEN_INDEX_C),

         -- Streaming port
         streamClk      => '0',
         streamRst      => '1',
         streamMaster   => open,
         streamSlave    => AXI_STREAM_SLAVE_FORCE_C );

   GEN_LCLS_I : if APP_TIMING_MODE_C = 1 generate
     V2FV1 : entity lcls_timing_core.EvrV2FromV1
       port map ( clk       => timingClk,
                  disable   => '0',
                  timingIn  => timingBus,
                  timingOut => timingMessage );
     
     U_Strobe : entity surf.SlvDelay
       generic map (
         TPD_G   => TPD_G,
         DELAY_G => 1 )
       port map (
         clk      => timingClk,
         rst      => timingRst,
         delay    => "0",
         din (0)  => timingBus.strobe,
         dout(0)  => timingMessageStrobe );

     streamMaster                 <= AXI_STREAM_MASTER_INIT_C;
   end generate;
     
   GEN_LCLS_II : if APP_TIMING_MODE_C = 2 generate
     timingMessage       <= timingBus.message;
     timingMessageStrobe <= timingBus.strobe;
     
     streamMaster                 <= AXI_STREAM_MASTER_INIT_C;
   end generate;

   timingMessageSlv <= toSlv(timingMessage);

   --  Capture timing message at full fiducial rate
   V2FIFO : entity surf.SynchronizerFifo
     generic map ( DATA_WIDTH_G  => TIMING_MESSAGE_BITS_C )
     port map    ( rst           => diagnRst,
                   -- Write Ports (wr_clk domain)
                   wr_clk        => timingClk,
                   wr_en         => timingMessageStrobe,
                   din           => timingMessageSlv,
                   -- Read Ports (rd_clk domain)
                   rd_clk        => diagnClk,
                   dout          => timingMessageSlvO );

   diagnBus.timingMessage <= toTimingMessageType(timingMessageSlvO);

   --
   --  This is an application-specific stream ("bstream") to maintain
   --  consistency with the NC IOC, which predates the core BSA/BSSS/BLD support
   --
   BSSS : entity xil_defaultlib.BsssWrapper
     generic map ( NUM_EDEFS_G => 1 )
     port map (
       -- Diagnostic data interface
       diagnosticClk   => diagnClk,
       diagnosticRst   => diagnRst,
       diagnosticBus   => diagnBusQ,
       -- AXI Lite interface
       axilClk         => axilClk,
       axilRst         => axilRst,
       axilReadMaster  => axilReadMasters (BSSS_INDEX_C),
       axilReadSlave   => axilReadSlaves  (BSSS_INDEX_C),
       axilWriteMaster => axilWriteMasters(BSSS_INDEX_C),
       axilWriteSlave  => axilWriteSlaves (BSSS_INDEX_C),
       -- Timing ETH MSG Interface (axilClk domain)
       ethClk          => axilClk,
       ethRst          => axilRst,
       ibEthMsgMaster  => streamMaster,
       ibEthMsgSlave   => streamSlave,
       obEthMsgMaster  => obBpMsgServerMaster,
       obEthMsgSlave   => obBpMsgServerSlave );

   diagnosticClk <= diagnClk;
   diagnosticRst <= diagnRst;
   -- diagnosticBus <= diagnBus;

   U_APP_DBUS : entity xil_defaultlib.AppDiagnBus
     port map (
       clk                 => diagnClk,
       rst                 => diagnRst,
       dbus                => diagnBusQ,
--       clkO                => diagnosticClk,
--       rstO                => diagnosticRst,
       dbusO               => diagnBusO,
       -- AXI Lite interface
       axilClk             => axilClk,
       axilRst             => axilRst,
       axilReadMaster      => axilReadMasters (BLD_INDEX_C),
       axilReadSlave       => axilReadSlaves  (BLD_INDEX_C),
       axilWriteMaster     => axilWriteMasters(BLD_INDEX_C),
       axilWriteSlave      => axilWriteSlaves (BLD_INDEX_C) );

   U_DBUS_INSERT : entity xil_defaultlib.DiagnBusInsert
     generic map (
       FIFO_ADDR_WIDTH_G => 4) -- expect results within 16 us
     port map (
      -- Timing interface
      timingClk       => timingClk,
      timingRst       => timingRst,
      timingStrobe    => timingBus.strobe,
      timingMessage   => timingBus.message,
      trigger         => s_trigPulse(0),  -- prompt trigger indicating diagnosticBusI
                                          -- is expected for this timing frame
      -- Diagnostic data interface
      diagnosticClk   => diagnClk,
      diagnosticRst   => diagnRst,
      diagnosticBusI  => diagnBus,        -- delayed processing results;
                                          -- timingMessage is ignored/overwritten
      diagnosticBusO  => diagnBusQ ); -- full rate output

       
   -- Clock trigger divider - LCLS I  recovered timing clock*(3/21)
   -- Clock trigger divider - LCLS II recovered timing clock*(9/100)
   U_ClockManager : entity surf.ClockManagerUltraScale
     generic map (
       TPD_G              => 1 ns,
       TYPE_G             => "MMCM",
       INPUT_BUFG_G       => false,
       FB_BUFG_G          => true,
       NUM_CLOCKS_G       => 1,
       BANDWIDTH_G        => "OPTIMIZED",
       CLKIN_PERIOD_G     => ite(APP_TIMING_MODE_C=1,8.403,5.385),
       DIVCLK_DIVIDE_G    => ite(APP_TIMING_MODE_C=1,1    ,5),
       CLKFBOUT_MULT_F_G  => ite(APP_TIMING_MODE_C=1,10.0 ,31.50),
       CLKOUT0_DIVIDE_F_G => ite(APP_TIMING_MODE_C=1,70.0 ,70.0),
       CLKOUT0_PHASE_G    => 0.0,
       CLKOUT0_RST_HOLD_G => 32
       )
     port map (
       clkIn     => timingClk,
       rstIn     => timingRst,
       clkOut(0) => s_trigClock,
       rstOut(0) => s_trigRst,
       locked    => s_trigLocked,
       -- AXI-Lite Port
       axilClk         => axilClk,
       axilRst         => axilRst,
       axilReadMaster  => AXI_LITE_READ_MASTER_INIT_C,
       axilReadSlave   => open,
       axilWriteMaster => AXI_LITE_WRITE_MASTER_INIT_C,
       axilWriteSlave  => open
       );

   axilReadSlaves  (MMCM_DRP_INDEX_C) <= AXI_LITE_READ_SLAVE_INIT_C;
   axilWriteSlaves (MMCM_DRP_INDEX_C) <= AXI_LITE_WRITE_SLAVE_INIT_C;
   
   -----------------------
   -- AMC BAY[0] Interface
   -----------------------
   U_AMC0 : entity amc_carrier_core.AmcMrLlrfDownConvertCore
      generic map (
         TPD_G            => TPD_G,
         AXI_BASE_ADDR_G  => AXI_CONFIG_C(AMC0_INDEX_C).baseAddr)
      port map (
         -- JESD SYNC Interface
         jesdClk         => jesdClk(0),
         jesdRst         => jesdRst(0),
         jesdSysRef      => jesdSysRef(0),
         jesdRxSync      => jesdRxSync(0),
         -- DAC Interface (jesdClk domain)
         dacValues(0)    => s_dacLs(0)(15 downto 0),
         dacValues(1)    => s_dacLs(1)(15 downto 0),
         dacValues(2)    => s_dacLs(2)(15 downto 0),
         -- AXI-Lite Interface
         axilClk         => axilClk,
         axilRst         => axilRst,
         axilReadMaster  => axilReadMasters (AMC0_INDEX_C),
         axilReadSlave   => axilReadSlaves  (AMC0_INDEX_C),
         axilWriteMaster => axilWriteMasters(AMC0_INDEX_C),
         axilWriteSlave  => axilWriteSlaves (AMC0_INDEX_C),
         -----------------------
         -- Application Ports --
         -----------------------
         -- AMC's JTAG Ports
         jtagPri         => jtagPri(0),
         jtagSec         => jtagSec(0),
         -- AMC's FPGA Clock Ports
         fpgaClkP        => fpgaClkP(0),
         fpgaClkN        => fpgaClkN(0),
         -- AMC's System Reference Ports
         sysRefP         => sysRefP(0),
         sysRefN         => sysRefN(0),
         -- AMC's Sync Ports
         syncInP         => syncInP(0),
         syncInN         => syncInN(0),
         syncOutP        => syncOutP(0),
         syncOutN        => syncOutN(0),
         -- AMC's Spare Ports
         spareP          => spareP(0),
         spareN          => spareN(0));

   -----------------------
   -- AMC BAY[1] Interface
   -----------------------
   U_AMC1 : entity amc_carrier_core.AmcMrLlrfUpConvertCore
      generic map (
         TPD_G              => TPD_G,
         IODELAY_GROUP_G    => IODELAY_GROUP_C,
         AXI_BASE_ADDR_G    => AXI_CONFIG_C(AMC1_INDEX_C).baseAddr,
         TIMING_TRIG_MODE_G => TRUE)  -- Clock will be outpout on timingTrig port
      port map (
         -- JESD SYNC Interface
         jesdClk         => jesdClk(1),
         jesdRst         => jesdRst(1),
         jesdClk2x       => jesdClk2x(1),
         jesdRst2x       => jesdRst2x(1),
         jesdSysRef      => jesdSysRef(1),
         jesdRxSync      => jesdRxSync(1),
         -- DAC Interface (jesdClk domain)
         dacValues       => s_dacHs,
         recClk          => timingClk,
         recRst          => timingRst,
         -- Interlock and trigger
         timingTrig      => s_trigClock,
         fpgaInterlock   => s_fpgaInterlock,
         -- AXI-Lite Interface
         axilClk         => axilClk,
         axilRst         => axilRst,
         axilReadMaster  => axilReadMasters (AMC1_INDEX_C),
         axilReadSlave   => axilReadSlaves  (AMC1_INDEX_C),
         axilWriteMaster => axilWriteMasters(AMC1_INDEX_C),
         axilWriteSlave  => axilWriteSlaves (AMC1_INDEX_C),
         -----------------------
         -- Application Ports --
         -----------------------
         -- AMC's JTAG Ports
         jtagPri         => jtagPri(1),
         jtagSec         => jtagSec(1),
         -- AMC's FPGA Clock Ports
         fpgaClkP        => fpgaClkP(1),
         fpgaClkN        => fpgaClkN(1),
         -- AMC's System Reference Ports
         sysRefP         => sysRefP(1),
         sysRefN         => sysRefN(1),
         -- AMC's Sync Ports
         syncInP         => syncInP(1),
         syncInN         => syncInN(1),
         syncOutP        => syncOutP(1),
         syncOutN        => syncOutN(1),
         -- AMC's Spare Ports
         spareP          => spareP(1),
         spareN          => spareN(1));

--   ----------------
--   -- RTM Interface
--   ----------------
   U_RTM : entity amc_carrier_core.RtmDigitalDebugV2
     generic map (
       TPD_G            => TPD_G,
       REG_DOUT_EN_G    => x"FF", -- '1' = registered, '0' = unregistered
       REG_DOUT_MODE_G  => x"F0", -- If registered enabled, '1' = clk output, '0' = data output
       DIVCLK_DIVIDE_G  => 1,
       CLKFBOUT_MULT_G  => 6,
       CLKOUT0_DIVIDE_G => 6,
       CLKOUT1_DIVIDE_G => 3)         -- drives the RTM's jitter clean input clock port
     port map (
       -- Digital I/O interface
       dout            => s_dOut(7 downto 0),
       cout            => s_dOut(7 downto 0),
       din             => open,
       -- Clock jitter cleaner
       recClkIn        => timingClk,
       recRstIn        => timingRst,
       recClkOut       => s_cleanClk,
       recRstOut       => s_cleanRst,
       cleanClkOut     => open,
       cleanClkLocked  => s_timingClk2x_locked,
       -- AXI-Lite Interface
       axilClk         => axilClk,
       axilRst         => axilRst,
       axilReadMaster  => axilReadMasters (RTM_INDEX_C),
       axilReadSlave   => axilReadSlaves  (RTM_INDEX_C),
       axilWriteMaster => axilWriteMasters(RTM_INDEX_C),
       axilWriteSlave  => axilWriteSlaves (RTM_INDEX_C),
       -----------------------
       -- Application Ports --
       -----------------------
       -- RTM's Low Speed Ports
       rtmLsP          => rtmLsP,
       rtmLsN          => rtmLsN,
       -- RTM's Clock Reference
       genClkP         => genClkP,
       genClkN         => genClkN);
   s_dOut(7 downto 0) <= s_cleanClk(0) & s_cleanClk(1) & "0" & "0" & s_trigPulse(0) & s_trigPulse(2) & s_trigPulse(1) & s_timingClk2x_locked;

   --------------------
   -- Common IDELAYCTRL
   --------------------
   U_IDELAYCTRL : IDELAYCTRL
      generic map (
         SIM_DEVICE => "ULTRASCALE")
      port map (
         RDY    => open,
         REFCLK => jesdClk2x(1),
         RST    => jesdRst2x(1));

   debugValues <= s_debugValues;
   debugValids <= s_debugValids;
   
   --------------------------
   -- Terminate usued outputs
   --------------------------
   obBpMsgClientMaster <= AXI_STREAM_MASTER_INIT_C;
   ibBpMsgClientSlave  <= AXI_STREAM_SLAVE_FORCE_C;

   --obBpMsgServerMaster <= AXI_STREAM_MASTER_INIT_C;
   ibBpMsgServerSlave  <= AXI_STREAM_SLAVE_FORCE_C;

   obAppDebugMaster <= AXI_STREAM_MASTER_INIT_C;
   ibAppDebugSlave  <= AXI_STREAM_SLAVE_FORCE_C;

   mpsObSlaves <= (others => AXI_STREAM_SLAVE_FORCE_C);
   timingPhy   <= TIMING_PHY_INIT_C;

   freezeHw <= (others => '0');


end mapping;
