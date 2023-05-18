-------------------------------------------------------------------------------
-- Title      : 
-------------------------------------------------------------------------------
-- File       : Lcls2PCavSim.vhd
-- Author     : Matt Weaver <weaver@slac.stanford.edu>
-- Company    : SLAC National Accelerator Laboratory
-- Created    : 2015-07-10
-- Last update: 2019-10-19
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- This file is part of 'LCLS2 DAQ Software'.
-- It is subject to the license terms in the LICENSE.txt file found in the 
-- top-level directory of this distribution and at: 
--    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html. 
-- No part of 'LCLS2 DAQ Software', including this file, 
-- may be copied, modified, propagated, or distributed except according to 
-- the terms contained in the LICENSE.txt file.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


library surf;
use surf.StdRtlPkg.all;
use surf.AxiLitePkg.all;
use work.AxiLiteSimPkg.all;
use surf.AxiStreamPkg.all;

library lcls_timing_core;
use lcls_timing_core.TimingPkg.all;
use lcls_timing_core.TPGPkg.all;
use lcls_timing_core.TPGMiniEdefPkg.all;

library amc_carrier_core;
use amc_carrier_core.AmcCarrierPkg.all;

library unisim;
use unisim.vcomponents.all;

entity Lcls2PCavSim is
end Lcls2PCavSim;

architecture top_level_app of Lcls2PCavSim is

   signal regClk         : sl;
   signal regRst         : sl;

   constant NAXI_C : integer := 4;
   signal regReadMaster  : AxiLiteReadMasterArray (NAXI_C-1 downto 0) := (others=>AXI_LITE_READ_MASTER_INIT_C);
   signal regReadSlave   : AxiLiteReadSlaveArray  (NAXI_C-1 downto 0) := (others=>AXI_LITE_READ_SLAVE_INIT_C);
   signal regWriteMaster : AxiLiteWriteMasterArray(NAXI_C-1 downto 0) := (others=>AXI_LITE_WRITE_MASTER_INIT_C);
   signal regWriteSlave  : AxiLiteWriteSlaveArray (NAXI_C-1 downto 0) := (others=>AXI_LITE_WRITE_SLAVE_INIT_C);

   signal scClk          : sl;
   signal scRst          : sl;
   signal scRx           : TimingRxType;
   signal scStatus       : TimingPhyStatusType := TIMING_PHY_STATUS_INIT_C;
   signal timingBus      : TimingBusType;
   signal timingTrig     : TimingTrigType;
   signal timingMessage  : TimingMessageType;
   signal timingMessageSlv     : slv(TIMING_MESSAGE_BITS_C-1 downto 0);
   signal timingMessageSlvO    : slv(TIMING_MESSAGE_BITS_C-1 downto 0);
   signal s_trigPulse    : sl;
   signal s_trigStrobe   : sl;
   signal s_diagStrobe   : sl;
   signal s_trigIndex    : sl;
   signal diagnClk             : sl;
   signal diagnRst             : sl;
   signal diagnBus             : DiagnosticBusType := DIAGNOSTIC_BUS_INIT_C;

   signal tpgConfig      : TPGConfigType := TPG_CONFIG_INIT_C;
   
   signal seqRst : slv(NAXI_C-1 downto 0);
   constant trigWriteCmds   : AxiLiteWriteCmdArray(0 to 4) :=
     ( (x"00080004",x"40000000"),
       (x"00081104",x"00000010"),    -- delay
       (x"00081108",x"00000010"),    -- width
       (x"00081100",x"80010000"),    -- enable
       (x"00080000",x"00000001")
       );
   constant bsssWriteCmds   : AxiLiteWriteCmdArray(0 to 5) :=
     ( (x"00000004",x"7fffffff"),
       (x"00000040",x"40000001"),
       (x"00000044",x"80000000"),
       (x"00000048",x"40000002"),
       (x"0000004c",x"80000000"),
       (x"00000000",x"800003c0")
       );

   constant bldWriteCmds   : AxiLiteWriteCmdArray(0 to 5) :=
     ( (x"00000004",x"70000000"),
       (x"00000040",x"40000000"),
       (x"00000044",x"8000001b"),
       (x"00000048",x"40000001"),
       (x"0000004c",x"8000001b"),
       (x"00000000",x"800003c0")
       );

   type RegType is record
     strobe : slv(15 downto 0);
   end record;

   constant REG_INIT_C : RegType := (
     strobe => (others=>'0') );

   signal r    : RegType := REG_INIT_C;
   signal r_in : RegType;

   signal ibEthMsgMaster : AxiStreamMasterType;
   signal ibEthMsgSlave  : AxiStreamSlaveType := AXI_STREAM_SLAVE_FORCE_C;
   signal obEthMsgMaster : AxiStreamMasterType;
   signal obEthMsgSlave  : AxiStreamSlaveType := AXI_STREAM_SLAVE_FORCE_C;

   constant INIT_START_G : integer := 0;
   
   function INIT_VAL(iline : integer) return slv is
    variable k : integer; 
    variable v : slv(255 downto 0) := (others=>'0');
  begin
    for i in 0 to 3 loop
      k := iline*4 + i;
      if k >= INIT_START_G and k<INIT_START_G+48 then
        v(64*i+k-INIT_START_G) := '1';
      end if;
    end loop;
    return v;
  end function;

begin

   process is
   begin
     regRst <= '1';
     seqRst <= "1111";
     wait for 100 ns;
     regRst <= '0';
     seqRst <= "1110";
     wait for 400 ns;
     --seqRst <= "1010";
     --wait for 400 ns;
     --seqRst <= "0010";
     seqRst <= "0110";
     wait for 400 ns;
     seqRst <= "0100";
     --seqRst <= "0000";
     --seqRst <= "1000";
     wait;
   end process;
   
   process is
   begin
     regClk <= '1';
     wait for 4.0 ns;
     regClk <= '0';
     wait for 4.0 ns;
   end process;
     
   process is
   begin
     scClk <= '1';
     wait for 2.7 ns;
     scClk <= '0';
     wait for 2.7 ns;
   end process;
   scRst <= regRst;

   U_SCMini : entity lcls_timing_core.TPGMini
     port map ( configI    => tpgConfig,
                txClk      => scClk,
                txRst      => scRst,
                txRdy      => '1',
                txData     => scRx.data,
                txDataK    => scRx.dataK );

   scStatus.locked       <= '1';
   scStatus.resetDone    <= '1';
   scStatus.bufferByDone <= '1';
   scStatus.bufferByErr  <= '0';
   scRx.dspErr           <= "00";
   scRx.decErr           <= "00";
   
   U_TimingCore : entity lcls_timing_core.TimingCore
     generic map ( CLKSEL_MODE_G => "LCLSII",
                   TPGMINI_G     => false,
                   AXIL_RINGB_G  => false )
     port map ( gtTxUsrClk      => scClk,
                gtTxUsrRst      => scRst,
                gtRxRecClk      => scClk,
                gtRxData        => scRx.data,
                gtRxDataK       => scRx.dataK,
                gtRxDispErr     => scRx.dspErr,
                gtRxDecErr      => scRx.decErr,
                gtRxStatus      => scStatus,
                appTimingClk    => scClk,
                appTimingRst    => scRst,
                appTimingBus    => timingBus,
                appTimingMode   => open,
                axilClk         => regClk,
                axilRst         => regRst,
                axilReadMaster  => regReadMaster (0),
                axilReadSlave   => regReadSlave  (0),
                axilWriteMaster => regWriteMaster(0),
                axilWriteSlave  => regWriteSlave (0) );

   U_CoreTrig : entity lcls_timing_core.EvrV2CoreTriggers
     generic map (
       NCHANNELS_G     => 8,
       NTRIGGERS_G     => 8,
       TRIG_DEPTH_G    => 19,      -- bitSize(125MHz/360Hz)
       TRIG_PIPE_G     => 0,
       COMMON_CLK_G    => false )
     port map (
       axilClk         => regClk,
       axilRst         => regRst,
       axilReadMaster  => regReadMaster (1),
       axilReadSlave   => regReadSlave  (1),
       axilWriteMaster => regWriteMaster(1),
       axilWriteSlave  => regWriteSlave (1),
       evrClk          => scClk,
       evrRst          => scRst,
       evrBus          => timingBus,
       trigOut         => timingTrig,
       evrModeSel      => '1' );

   U_TrigAxi : entity work.AxiLiteWriteMasterSim
     generic map ( CMDS => trigWriteCmds )
     port map ( clk    => regClk,
                rst    => seqRst        (1),
                master => regWriteMaster(1),
                slave  => regWriteSlave (1),
                done   => open );
     
   U_BsssAxi : entity work.AxiLiteWriteMasterSim
     generic map ( CMDS => bsssWriteCmds )
     port map ( clk    => regClk,
                rst    => seqRst        (2),
                master => regWriteMaster(2),
                slave  => regWriteSlave (2),
                done   => open );
     
   U_BldAxi : entity work.AxiLiteWriteMasterSim
     generic map ( CMDS => bldWriteCmds )
     port map ( clk    => regClk,
                rst    => seqRst        (3),
                master => regWriteMaster(3),
                slave  => regWriteSlave (3),
                done   => open );
     
   U_TimingTrigMux: entity work.TimingTrigMux
     port map (
       recClk         => scClk,
       recRst         => scRst,
       mode_i         => "10",
       strobe_i       => timingBus.strobe,
       trig_i         => timingTrig.trigPulse(1 downto 0),
       trig_o         => s_trigPulse,
       trigStrobe_o   => s_trigStrobe,
       trigIndex_o    => s_trigIndex);

   timingMessage <= timingBus.message;

   timingMessageSlv <= toSlv(timingMessage);
   
   V2FIFO : entity surf.FifoAsync
     generic map ( FWFT_EN_G     => true,
                   DATA_WIDTH_G  => TIMING_MESSAGE_BITS_C,
                   ADDR_WIDTH_G  => 4 )
     port map    ( rst           => diagnRst,
                   -- Write Ports (wr_clk domain)
                   wr_clk        => scClk,
                   wr_en         => s_trigStrobe,
                   din           => timingMessageSlv,
                   -- Read Ports (rd_clk domain)
                   rd_clk        => diagnClk,
                   rd_en         => diagnBus.strobe,
                   dout          => timingMessageSlvO );

   diagnClk <= regClk;
   diagnRst <= regRst;
   
   diagnBus.timingMessage <= toTimingMessageType(timingMessageSlvO);

   BLD : entity amc_carrier_core.BldWrapper
     generic map ( NUM_EDEFS_G => 2 )
     port map (
       -- Diagnostic data interface
       diagnosticClk   => diagnClk,
       diagnosticRst   => diagnRst,
       diagnosticBus   => diagnBus,
       -- AXI Lite interface
       axilClk         => regClk,
       axilRst         => regRst,
       axilReadMaster  => regReadMaster (3),
       axilReadSlave   => regReadSlave  (3),
       axilWriteMaster => regWriteMaster(3),
       axilWriteSlave  => regWriteSlave (3),
       -- Timing ETH MSG Interface (axilClk domain)
       ibEthMsgMaster  => AXI_STREAM_MASTER_INIT_C,
       ibEthMsgSlave   => open,
       obEthMsgMaster  => ibEthMsgMaster,
       obEthMsgSlave   => ibEthMsgSlave );

   BSSS : entity amc_carrier_core.BsssWrapper
     generic map ( NUM_EDEFS_G => 2 )
     port map (
       -- Diagnostic data interface
       diagnosticClk   => diagnClk,
       diagnosticRst   => diagnRst,
       diagnosticBus   => diagnBus,
       -- AXI Lite interface
       axilClk         => regClk,
       axilRst         => regRst,
       axilReadMaster  => regReadMaster (2),
       axilReadSlave   => regReadSlave  (2),
       axilWriteMaster => regWriteMaster(2),
       axilWriteSlave  => regWriteSlave (2),
       -- Timing ETH MSG Interface (axilClk domain)
       ibEthMsgMaster  => ibEthMsgMaster,
       ibEthMsgSlave   => ibEthMsgSlave,
       obEthMsgMaster  => obEthMsgMaster,
       obEthMsgSlave   => obEthMsgSlave );

   U_File : entity work.AxisToFile
     generic map ( filename => "bsssaxis.dat" )
     port map ( axisClk    => diagnClk,
                axisMaster => obEthMsgMaster,
                axisSlave  => obEthMsgSlave );
   --
   --  Application derives diagStrobe from trigStrobe, whenever result is ready
   --
   U_Strobe : entity surf.SynchronizerOneShot
     port map ( clk     => diagnClk,
                dataIn  => s_trigStrobe,
                dataOut => s_diagStrobe );

   comb: process (r, s_diagStrobe, diagnBus, diagnRst) is
     variable v : RegType;
   begin
     v := r;
     v.strobe := r.strobe(r.strobe'left-1 downto 0) & s_diagStrobe;
     for i in 0 to 30 loop
       diagnBus.data(i) <= toSlv(i,4) & diagnBus.timingMessage.timeStamp(27 downto 0);
     end loop;
     diagnBus.strobe <= r.strobe(r.strobe'left);

     if diagnRst = '1' then
       v := REG_INIT_C;
     end if;
     
     r_in <= v;
   end process comb;

   seq: process (diagnClk) is
   begin
     if rising_edge(diagnClk) then
       r <= r_in;
     end if;
   end process seq;
   
end top_level_app;
