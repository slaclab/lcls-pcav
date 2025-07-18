-------------------------------------------------------------------------------
-- File       : Lcls2PCavRtmEth.vhd
-- Company    : SLAC National Accelerator Laboratory
-- Created    : 2017-02-04
-- Last update: 2025-06-06
-------------------------------------------------------------------------------
-- Description: Firmware Target's Top Level
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


library surf;
use surf.StdRtlPkg.all;
use surf.AxiStreamPkg.all;
use surf.SsiPkg.all;
use surf.AxiLitePkg.all;

library lcls_timing_core;
use lcls_timing_core.TimingPkg.all;

library amc_carrier_core;
use amc_carrier_core.AmcCarrierPkg.all;
use amc_carrier_core.AppTopPkg.all;

entity Lcls2PCavRtmEth is
   generic (
      TPD_G        : time := 1 ns;
      BUILD_INFO_G : BuildInfoType);
   port (
      -----------------------
      -- Application Ports --
      -----------------------
      -- AMC's JESD Ports
      jesdRxP          : in    Slv7Array(1 downto 0);
      jesdRxN          : in    Slv7Array(1 downto 0);
      jesdTxP          : out   Slv7Array(1 downto 0);
      jesdTxN          : out   Slv7Array(1 downto 0);
      jesdClkP         : in    Slv3Array(1 downto 0);
      jesdClkN         : in    Slv3Array(1 downto 0);
      -- AMC's JTAG Ports
      jtagPri          : inout Slv5Array(1 downto 0);
      jtagSec          : inout Slv5Array(1 downto 0);
      -- AMC's FPGA Clock Ports
      fpgaClkP         : inout Slv2Array(1 downto 0);
      fpgaClkN         : inout Slv2Array(1 downto 0);
      -- AMC's System Reference Ports
      sysRefP          : inout Slv4Array(1 downto 0);
      sysRefN          : inout Slv4Array(1 downto 0);
      -- AMC's Sync Ports
      syncInP          : inout Slv4Array(1 downto 0);
      syncInN          : inout Slv4Array(1 downto 0);
      syncOutP         : inout Slv10Array(1 downto 0);
      syncOutN         : inout Slv10Array(1 downto 0);
      -- AMC's Spare Ports
      spareP           : inout Slv16Array(1 downto 0);
      spareN           : inout Slv16Array(1 downto 0);
      -- RTM's Low Speed Ports
      rtmLsP           : inout slv(53 downto 0);
      rtmLsN           : inout slv(53 downto 0);
      -- RTM's High Speed Ports
      rtmHsRxP         : in    sl;
      rtmHsRxN         : in    sl;
      rtmHsTxP         : out   sl;
      rtmHsTxN         : out   sl;
      -- RTM's Clock Reference 
      genClkP          : in    sl;
      genClkN          : in    sl;
      ----------------
      -- Core Ports --
      ----------------   
      -- Common Fabricate Clock
      fabClkP          : in    sl;
      fabClkN          : in    sl;
      -- Ethernet Ports
      ethRxP           : in    slv(3 downto 0);
      ethRxN           : in    slv(3 downto 0);
      ethTxP           : out   slv(3 downto 0);
      ethTxN           : out   slv(3 downto 0);
      ethClkP          : in    sl;
      ethClkN          : in    sl;
      -- Backplane MPS Ports
      mpsClkIn         : in    sl;
      mpsClkOut        : out   sl;
      mpsBusRxP        : in    slv(14 downto 1);
      mpsBusRxN        : in    slv(14 downto 1);
      mpsTxP           : out   sl;
      mpsTxN           : out   sl;
      -- LCLS Timing Ports
      timingRxP        : in    sl;
      timingRxN        : in    sl;
      timingTxP        : out   sl;
      timingTxN        : out   sl;
      timingRefClkInP  : in    sl;
      timingRefClkInN  : in    sl;
      timingRecClkOutP : out   sl;
      timingRecClkOutN : out   sl;
      timingClkSel     : out   sl;
      timingClkScl     : inout sl;
      timingClkSda     : inout sl;
      -- Crossbar Ports
      xBarSin          : out   slv(1 downto 0);
      xBarSout         : out   slv(1 downto 0);
      xBarConfig       : out   sl;
      xBarLoad         : out   sl;
      -- Secondary AMC Auxiliary Power Enable Port
      enAuxPwrL        : out   sl;
      -- IPMC Ports
      ipmcScl          : inout sl;
      ipmcSda          : inout sl;
      -- Configuration PROM Ports
      calScl           : inout sl;
      calSda           : inout sl;
      -- DDR3L SO-DIMM Ports
      ddrClkP          : in    sl;
      ddrClkN          : in    sl;
      ddrDm            : out   slv(7 downto 0);
      ddrDqsP          : inout slv(7 downto 0);
      ddrDqsN          : inout slv(7 downto 0);
      ddrDq            : inout slv(63 downto 0);
      ddrA             : out   slv(15 downto 0);
      ddrBa            : out   slv(2 downto 0);
      ddrCsL           : out   slv(1 downto 0);
      ddrOdt           : out   slv(1 downto 0);
      ddrCke           : out   slv(1 downto 0);
      ddrCkP           : out   slv(1 downto 0);
      ddrCkN           : out   slv(1 downto 0);
      ddrWeL           : out   sl;
      ddrRasL          : out   sl;
      ddrCasL          : out   sl;
      ddrRstL          : out   sl;
      ddrAlertL        : in    sl;
      ddrPg            : in    sl;
      ddrPwrEnL        : out   sl;
      ddrScl           : inout sl;
      ddrSda           : inout sl;
      -- SYSMON Ports
      vPIn             : in    sl;
      vNIn             : in    sl);
end Lcls2PCavRtmEth;

architecture top_level of Lcls2PCavRtmEth is

   -- Custom routes for Gen2 AMC
   constant JESD_TX_ROUTES_C : AppTopJesdRouteType := (
      0 => 2,
      1 => 3,
      2 => 0,
      3 => 1,
      4 => 4,
      5 => 5,
      6 => 6);

   -- AXI-Lite Interface (axilClk domain)
   signal axilClk              : sl;
   signal axilRst              : sl;
   signal axilReadMaster       : AxiLiteReadMasterType;
   signal axilReadSlave        : AxiLiteReadSlaveType;
   signal axilWriteMaster      : AxiLiteWriteMasterType;
   signal axilWriteSlave       : AxiLiteWriteSlaveType;
   -- Timing Interface (timingClk domain) 
   signal timingClk            : sl;
   signal timingRst            : sl;
   signal timingBus            : TimingBusType;
   signal timingPhy            : TimingPhyType;
   signal timingPhyClk         : sl;
   signal timingPhyRst         : sl;
   signal timingTrig           : TimingTrigType;
   -- Diagnostic Interface (diagnosticClk domain)
   signal diagnosticClk        : sl;
   signal diagnosticRst        : sl;
   signal diagnosticBus        : DiagnosticBusType;
   --  Waveform interface (waveformClk domain)
   signal waveformClk          : sl;
   signal waveformRst          : sl;
   signal obAppWaveformMasters : WaveformMasterArrayType;
   signal obAppWaveformSlaves  : WaveformSlaveArrayType;
   signal ibAppWaveformMasters : WaveformMasterArrayType;
   signal ibAppWaveformSlaves  : WaveformSlaveArrayType;
   -- Backplane Messaging Interface  (axilClk domain)
   signal obBpMsgClientMaster  : AxiStreamMasterType;
   signal obBpMsgClientSlave   : AxiStreamSlaveType;
   signal ibBpMsgClientMaster  : AxiStreamMasterType;
   signal ibBpMsgClientSlave   : AxiStreamSlaveType;
   signal obBpMsgServerMaster  : AxiStreamMasterType;
   signal obBpMsgServerSlave   : AxiStreamSlaveType;
   signal ibBpMsgServerMaster  : AxiStreamMasterType;
   signal ibBpMsgServerSlave   : AxiStreamSlaveType;
   -- Application Debug Interface (axilClk domain)
   signal obAppDebugMaster     : AxiStreamMasterType;
   signal obAppDebugSlave      : AxiStreamSlaveType;
   signal ibAppDebugMaster     : AxiStreamMasterType;
   signal ibAppDebugSlave      : AxiStreamSlaveType;
   -- MPS Concentrator Interface (axilClk domain)
   signal mpsObMasters         : AxiStreamMasterArray(14 downto 0);
   signal mpsObSlaves          : AxiStreamSlaveArray(14 downto 0);
   -- Reference Clocks and Resets
   signal recTimingClk         : sl;
   signal recTimingRst         : sl;
   signal gthFabClk            : sl;
   -- Misc. Interface (axilClk domain)
   signal ethPhyReady          : sl;
   signal ipmiBsi              : BsiBusType;

begin

   U_AppTop : entity amc_carrier_core.AppTop
      generic map (
         TPD_G                => TPD_G,
         MR_LCLS_APP_G        => true,  -- Configured by application         
         -- JESD Generics
         JESD_DRP_EN_G        => false,           -- Configured by application
         JESD_RX_LANE_G       => (others => 6),   -- Configured by application
         JESD_TX_LANE_G       => (0 => 0, 1 => 7),-- Configured by application
         JESD_RX_POLARITY_G   => (others => "0111111"),  -- Configured by application
         JESD_TX_POLARITY_G   => (others => "0001010"),  -- Configured by application
         JESD_RX_ROUTES_G     => (others => JESD_ROUTES_INIT_C),  -- Configured by application
         JESD_TX_ROUTES_G     => (others => JESD_TX_ROUTES_C),  -- Configured by application            
         JESD_REF_SEL_G       => (      -- Configured by application
            0                 => DEV_CLK0_SEL_C,  -- AmcDwnConvt@Version2 = AB6/AB5
            1                 => DEV_CLK0_SEL_C),  -- AmcUpConvt@Version2 = M6/M5
         -- Signal Generator Generics
         SIG_GEN_SIZE_G       => (0 => 0,
                                  1 => 2),               -- I,Q for upconverter
         SIG_GEN_ADDR_WIDTH_G => (others => 12),         -- 4096 elements
         SIG_GEN_LANE_MODE_G  => (others => "1111111"),  -- 16 bits @
         SIG_GEN_RAM_CLK_G    => (others => "0000000"))  -- jesdClk2x
      port map (
         ----------------------
         -- Top Level Interface
         ----------------------
         -- AXI-Lite Interface (axilClk domain)
         axilClk              => axilClk,
         axilRst              => axilRst,
         axilReadMaster       => axilReadMaster,
         axilReadSlave        => axilReadSlave,
         axilWriteMaster      => axilWriteMaster,
         axilWriteSlave       => axilWriteSlave,
         -- Timing Interface (timingClk domain) 
         timingClk            => timingClk,
         timingRst            => timingRst,
         timingBus            => timingBus,
         timingPhy            => timingPhy,
         timingPhyClk         => timingPhyClk,
         timingPhyRst         => timingPhyRst,
         timingTrig           => timingTrig,
         -- Diagnostic Interface (diagnosticClk domain)
         diagnosticClk        => diagnosticClk,
         diagnosticRst        => diagnosticRst,
         diagnosticBus        => diagnosticBus,
         -- Waveform interface (waveformClk domain)
         waveformClk          => waveformClk,
         waveformRst          => waveformRst,
         obAppWaveformMasters => obAppWaveformMasters,
         obAppWaveformSlaves  => obAppWaveformSlaves,
         ibAppWaveformMasters => ibAppWaveformMasters,
         ibAppWaveformSlaves  => ibAppWaveformSlaves,
         -- Backplane Messaging Interface  (axilClk domain)
         obBpMsgClientMaster  => obBpMsgClientMaster,
         obBpMsgClientSlave   => obBpMsgClientSlave,
         ibBpMsgClientMaster  => ibBpMsgClientMaster,
         ibBpMsgClientSlave   => ibBpMsgClientSlave,
         obBpMsgServerMaster  => obBpMsgServerMaster,
         obBpMsgServerSlave   => obBpMsgServerSlave,
         ibBpMsgServerMaster  => ibBpMsgServerMaster,
         ibBpMsgServerSlave   => ibBpMsgServerSlave,
         -- Application Debug Interface (axilClk domain)
         obAppDebugMaster     => obAppDebugMaster,
         obAppDebugSlave      => obAppDebugSlave,
         ibAppDebugMaster     => ibAppDebugMaster,
         ibAppDebugSlave      => ibAppDebugSlave,
         -- MPS Concentrator Interface (axilClk domain)
         mpsObMasters         => mpsObMasters,
         mpsObSlaves          => mpsObSlaves,
         -- Reference Clocks and Resets
         recTimingClk         => recTimingClk,
         recTimingRst         => recTimingRst,
         gthFabClk            => gthFabClk,
         -- Misc. Interface (axilClk domain)
         ipmiBsi              => ipmiBsi,
         ethPhyReady          => ethPhyReady,
         -----------------------
         -- Application Ports --
         -----------------------
         -- AMC's JESD Ports
         jesdRxP              => jesdRxP,
         jesdRxN              => jesdRxN,
         jesdTxP              => jesdTxP,
         jesdTxN              => jesdTxN,
         jesdClkP             => jesdClkP,
         jesdClkN             => jesdClkN,
         -- AMC's JTAG Ports
         jtagPri              => jtagPri,
         jtagSec              => jtagSec,
         -- AMC's FPGA Clock Ports
         fpgaClkP             => fpgaClkP,
         fpgaClkN             => fpgaClkN,
         -- AMC's System Reference Ports
         sysRefP              => sysRefP,
         sysRefN              => sysRefN,
         -- AMC's Sync Ports
         syncInP              => syncInP,
         syncInN              => syncInN,
         syncOutP             => syncOutP,
         syncOutN             => syncOutN,
         -- AMC's Spare Ports
         spareP               => spareP,
         spareN               => spareN,
         -- RTM's Low Speed Ports
         rtmLsP               => rtmLsP,
         rtmLsN               => rtmLsN,
         -- RTM's High Speed Ports
         rtmHsRxP             => rtmHsRxP,
         rtmHsRxN             => rtmHsRxN,
         rtmHsTxP             => rtmHsTxP,
         rtmHsTxN             => rtmHsTxN,
         -- RTM's Clock Reference 
         genClkP              => genClkP,
         genClkN              => genClkN);

   U_Core : entity amc_carrier_core.AmcCarrierCoreAdv
      generic map (
         TPD_G           => TPD_G,
         BUILD_INFO_G    => BUILD_INFO_G,
--         DISABLE_BSA_G   => false,         -- true = doesn't build the BSA engine
         DISABLE_BSA_G   => true,         -- true = doesn't build the BSA engine
         DISABLE_BLD_G   => false,         -- true = doesn't build the BLD engine
         DISABLE_MPS_G   => true,         -- true = doesn't build MPS engine
         RTM_ETH_G       => true,         -- false = 10GbE over backplane
         CORE_TRIGGERS_G => 6,
         AXIL_RINGB_G    => false,        -- false = no AxiLiteRingBuffer from TimingCore
         CLKSEL_MODE_G   => "LCLSII",
         APP_TYPE_G      => APP_NULL_TYPE_C)  -- Configured by application (refer to AmcCarrierPkg for list of all application types
      port map (
         ----------------------
         -- Top Level Interface
         ----------------------
         -- AXI-Lite Interface (axilClk domain)
         axilClk              => axilClk,
         axilRst              => axilRst,
         axilReadMaster       => axilReadMaster,
         axilReadSlave        => axilReadSlave,
         axilWriteMaster      => axilWriteMaster,
         axilWriteSlave       => axilWriteSlave,
         -- Timing Interface (timingClk domain) 
         timingClk            => timingClk,
         timingRst            => timingRst,
         timingBus            => timingBus,
         timingPhy            => timingPhy,
         timingPhyClk         => timingPhyClk,
         timingPhyRst         => timingPhyRst,
         timingTrig           => timingTrig,
         -- Diagnostic Interface (diagnosticClk domain)
         diagnosticClk        => diagnosticClk,
         diagnosticRst        => diagnosticRst,
         diagnosticBus        => diagnosticBus,
         -- Waveform interface (waveformClk domain)
         waveformClk          => waveformClk,
         waveformRst          => waveformRst,
         obAppWaveformMasters => obAppWaveformMasters,
         obAppWaveformSlaves  => obAppWaveformSlaves,
         ibAppWaveformMasters => ibAppWaveformMasters,
         ibAppWaveformSlaves  => ibAppWaveformSlaves,
         -- Backplane Messaging Interface  (axilClk domain)
         obBpMsgClientMaster  => obBpMsgClientMaster,
         obBpMsgClientSlave   => obBpMsgClientSlave,
         ibBpMsgClientMaster  => ibBpMsgClientMaster,
         ibBpMsgClientSlave   => ibBpMsgClientSlave,
         obBpMsgServerMaster  => obBpMsgServerMaster,
         obBpMsgServerSlave   => obBpMsgServerSlave,
         ibBpMsgServerMaster  => ibBpMsgServerMaster,
         ibBpMsgServerSlave   => ibBpMsgServerSlave,
         -- Application Debug Interface (axilClk domain)
         obAppDebugMaster     => obAppDebugMaster,
         obAppDebugSlave      => obAppDebugSlave,
         ibAppDebugMaster     => ibAppDebugMaster,
         ibAppDebugSlave      => ibAppDebugSlave,
         -- MPS Concentrator Interface (axilClk domain)
         mpsObMasters         => mpsObMasters,
         mpsObSlaves          => mpsObSlaves,
         -- Reference Clocks and Resets
         recTimingClk         => recTimingClk,
         recTimingRst         => recTimingRst,
         gthFabClk            => gthFabClk,
         -- Misc. Interface (axilClk domain)
         ipmiBsi              => ipmiBsi,
         ethPhyReady          => ethPhyReady,
         ----------------
         -- Core Ports --
         ----------------   
         -- Common Fabricate Clock
         fabClkP              => fabClkP,
         fabClkN              => fabClkN,
         -- ETH Ports
         ethRxP               => ethRxP,
         ethRxN               => ethRxN,
         ethTxP               => ethTxP,
         ethTxN               => ethTxN,
         ethClkP              => ethClkP,
         ethClkN              => ethClkN,
         -- Backplane MPS Ports
         mpsClkIn             => mpsClkIn,
         mpsClkOut            => mpsClkOut,
         mpsBusRxP            => mpsBusRxP,
         mpsBusRxN            => mpsBusRxN,
         mpsTxP               => mpsTxP,
         mpsTxN               => mpsTxN,
         -- LCLS Timing Ports
         timingRxP            => timingRxP,
         timingRxN            => timingRxN,
         timingTxP            => timingTxP,
         timingTxN            => timingTxN,
         timingRefClkInP      => timingRefClkInP,
         timingRefClkInN      => timingRefClkInN,
         timingRecClkOutP     => timingRecClkOutP,
         timingRecClkOutN     => timingRecClkOutN,
         timingClkSel         => timingClkSel,
         timingClkScl         => timingClkScl,
         timingClkSda         => timingClkSda,
         -- Crossbar Ports
         xBarSin              => xBarSin,
         xBarSout             => xBarSout,
         xBarConfig           => xBarConfig,
         xBarLoad             => xBarLoad,
         -- Secondary AMC Auxiliary Power Enable Port
         enAuxPwrL            => enAuxPwrL,
         -- IPMC Ports
         ipmcScl              => ipmcScl,
         ipmcSda              => ipmcSda,
         -- Configuration PROM Ports
         calScl               => calScl,
         calSda               => calSda,
         -- DDR3L SO-DIMM Ports
         ddrClkP              => ddrClkP,
         ddrClkN              => ddrClkN,
         ddrDqsP              => ddrDqsP,
         ddrDqsN              => ddrDqsN,
         ddrDm                => ddrDm,
         ddrDq                => ddrDq,
         ddrA                 => ddrA,
         ddrBa                => ddrBa,
         ddrCsL               => ddrCsL,
         ddrOdt               => ddrOdt,
         ddrCke               => ddrCke,
         ddrCkP               => ddrCkP,
         ddrCkN               => ddrCkN,
         ddrWeL               => ddrWeL,
         ddrRasL              => ddrRasL,
         ddrCasL              => ddrCasL,
         ddrRstL              => ddrRstL,
         ddrPwrEnL            => ddrPwrEnL,
         ddrPg                => ddrPg,
         ddrAlertL            => ddrAlertL,
         ddrScl               => ddrScl,
         ddrSda               => ddrSda,
         -- SYSMON Ports
         vPIn                 => vPIn,
         vNIn                 => vNIn);

end top_level;
