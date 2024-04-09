-------------------------------------------------------------------------------
-- Title      : 
-------------------------------------------------------------------------------
-- File       : Lcls2PCavSim.vhd
-- Author     : Matt Weaver <weaver@slac.stanford.edu>
-- Company    : SLAC National Accelerator Laboratory
-- Created    : 2015-07-10
-- Last update: 2024-04-09
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
use ieee.math_real.all;

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
   signal diagnBus, diagnBusQ  : DiagnosticBusType := DIAGNOSTIC_BUS_INIT_C;
   signal diagnosticClk        : sl;
   signal diagnosticRst        : sl;
   signal diagnosticBus        : DiagnosticBusType := DIAGNOSTIC_BUS_INIT_C;
   signal diagnReadMaster      : AxiLiteReadMasterType := AXI_LITE_READ_MASTER_INIT_C;
   signal diagnReadSlave       : AxiLiteReadSlaveType;
   signal diagnWriteMaster     : AxiLiteWriteMasterType;
   signal diagnWriteSlave      : AxiLiteWriteSlaveType;
   constant diagnWriteCmds   : AxiLiteWriteCmdArray(0 to 1) :=
     ( (x"00000020",x"00010000"),
       (x"00000024",x"00008000")
       );
   
   signal tpgConfig      : TPGConfigType := TPG_CONFIG_INIT_C;
   
   signal seqRst : slv(NAXI_C-1 downto 0);
   constant trigWriteCmds   : AxiLiteWriteCmdArray(0 to 9) :=
     ( (x"00080004",x"40000001"),    -- ch0 : destSel & rateSel
       (x"00080604",x"40000001"),    -- ch6 : destSel & rateSel
                                     -- tr1 = DSP core trigger  
       (x"00081104",x"00000010"),    -- tr1 : delay
       (x"00081108",x"00000010"),    -- tr1 : width
       (x"00081100",x"80010000"),    -- tr1 : En & polarity & channel
                                     -- tr6 = delayed timing strobe
       (x"00081604",x"00000742"),    -- tr6 : delay (10 us)
       (x"00081608",x"00000001"),    -- tr6 : width
       (x"00081600",x"80010006"),    -- tr6 : En & polarity & channel
       (x"00080000",x"00000001"),    -- ch0 : enable
       (x"00080600",x"00000001")     -- ch6 : enable
       );
   constant bsssWriteCmds   : AxiLiteWriteCmdArray(0 to 1) :=
     ( (x"00000004",x"7fffffff"),
       (x"00000000",x"800003c0")
       );

   constant bldWriteCmds   : AxiLiteWriteCmdArray(0 to 5) :=
     ( (x"00000004",x"400f0000"),
       (x"00000040",x"40000000"),
       (x"00000044",x"8000001b"),
       (x"00000048",x"40000001"),
       (x"0000004c",x"8000001b"),
       (x"00000000",x"800003c0")
       );

   constant event_phase : RealArray   (0 to 15) :=
      (1.0, 1.0,         -- +-PI 2852MHz = +-175.316 ps
      1.0E-1, 1.0E-1, -- +-0.1PI = +-17.532 ps
      1.0E-3, 1.0E-3, -- +-0.001PI = +-0.175 ps
      1.0E-4, 1.0E-4, -- = +- 0.017 ps
      3.0E-5, 3.0E-5, -- = +- 0.00526 ps
      -1.0E-3, -1.0E-3, -- +-0.001PI = +-0.175 ps
      -1.0E-1, -1.0E-1,
      -1.0, -1.0 );

   constant event_phase_r : RealArray ( 0 to 7 ) :=
     (175.631, 17.532, 0.175, 0.017, 0.00526, -0.175, -17.532, -175.631);
   
   constant event_ampl  : IntegerArray(0 to 15) :=
     ( 131071, -131072, 65535, -65536, 32767, -32768, 16383, -16384,
       0, 0, 1, -1, 2, -2, 4, -4 );

   constant event_refph : RealArray   (0 to 15) :=
     ( 0.0, 1.0, -1.0, 0.5, -0.5, 0.1, -0.1, 1.0E-3, -1.0E-3, 1.0E-4, -1.0E-4, 3.0E-5, -3.0E-5, 0.0, 0.0, 0.0);
   constant event_offph : RealArray   (0 to 15) :=
     ( 0.0, 1.0, -1.0, 0.5, -0.5, 0.1, -0.1, 1.0E-3, -1.0E-3, 1.0E-4, -1.0E-4, 3.0E-5, -3.0E-5, 0.0, 0.0, 0.0);

   function toSlv18_15(r : real) return slv is
     variable v : slv(31 downto 0);
     variable i : integer;
     variable ra : real;
   begin
     if r < 0.0 then
       ra := -r;
     else
       ra := r;
     end if;
     i := integer(floor(ra));
     v(31 downto 15) := toSlv( i, 17);
     i := integer((ra-real(i))*2**15);
     v(14 downto  0) := toSlv( i, 15);
     if r < 0.0 then
       v := not v;
       v := v + 1;
     end if;
     return v;
   end function;
   
   function toSlv18(r : integer) return slv is
     variable v : slv(31 downto 0);
   begin
     v := toSlv(r,32);
     return v;
   end function;
   
   type RegType is record
     dbus        : DiagnosticBusType;
     index       : slv(15 downto 0);
     phase_real  : real;
     phase_int   : integer;
     phase_whole : slv(16 downto 0);
     phase_f     : real;
     phase_fi    : integer;
     phase_frac  : slv(14 downto 0);
     pindex      : slv(3 downto 0);
   end record;

   constant REG_INIT_C : RegType := (
     dbus        => DIAGNOSTIC_BUS_INIT_C,
     index       => (others=>'0'),
     phase_real  => 0.0,
     phase_int   => 0,
     phase_whole => (others=>'0'),
     phase_f     => 0.0,
     phase_fi    => 0,
     phase_frac  => (others=>'0'),
     pindex      => (others=>'0') );

   constant DBUS_DELAY : integer := 1800;
   
   signal r    : RegType := REG_INIT_C;
   signal r_in : RegType;
   signal time0, time1 : real := 0.0;
   signal dbus1, dbus2, dbus6, dbus10, dbus14, dbus16, dbus17 : slv(31 downto 0);
   signal tindex : slv(15 downto 0);
   signal dbus30       : slv(15 downto 0);
   signal dbus_pulseId : slv(15 downto 0);
   signal tbus_pulseId : slv(15 downto 0);
   signal dsp_trig     : sl;
   signal dbus_trig    : sl;
   signal dbus_strobe  : sl;
   
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
     tpgConfig.pulseIdWrEn <= '0';
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
                   USE_TPGMINI_G => false,
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
   
   BLD : entity amc_carrier_core.BldWrapper
     generic map ( NUM_EDEFS_G => 2 )
     port map (
       -- Diagnostic data interface
       diagnosticClk   => diagnosticClk,
       diagnosticRst   => diagnosticRst,
       diagnosticBus   => diagnosticBus,
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
       diagnosticClk   => diagnosticClk,
       diagnosticRst   => diagnosticRst,
       diagnosticBus   => diagnosticBus,
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

   U_File : entity work.AxiStreamFile
     generic map ( filename => "bsssaxis.dat" )
     port map ( axisClk    => diagnClk,
                axisMaster => obEthMsgMaster,
                axisSlave  => obEthMsgSlave );
   --
   --  Application derives diagStrobe from trigStrobe, whenever result is ready
   --
   U_Strobe : entity surf.SynchronizerOneShot
     port map ( clk     => diagnClk,
                dataIn  => timingTrig.trigPulse(6),
                dataOut => s_diagStrobe );

   comb: process (r, s_diagStrobe, timingMessageSlvO, diagnRst) is
     variable v : RegType;
   begin
     v := r;
     v.dbus.strobe := '0';
     v.dbus.sevr := (others=>"11");

     if s_diagStrobe = '1' then

       v.phase_real  := event_phase(conv_integer(v.pindex(3 downto 0)));
       v.phase_int   := integer(v.phase_real);
       v.phase_whole := toSlv(v.phase_int, 17);
       v.phase_f     := v.phase_real - real(v.phase_int);
       v.phase_fi    := integer(v.phase_f * 2**15);
       v.phase_frac  := toSlv(v.phase_fi, 15);
       v.pindex      := r.pindex+1;

       v.dbus.data(31) := resize(r.index,32);
       v.dbus.data(30) := toTimingMessageType(timingMessageSlvO).pulseId(31 downto 0);

       v.dbus.data(1)  := toSlv18_15(event_refph(conv_integer(v.index( 7 downto 4))));
       v.dbus.data(2)  := toSlv18_15(event_phase(conv_integer(v.index( 3 downto  0))));
       v.dbus.data(3)  := toSlv18   (event_ampl (conv_integer(v.index( 3 downto  0))));
       v.index := v.index+1;
       v.dbus.data(6)  := toSlv18_15(event_phase(conv_integer(v.index( 3 downto  0))));
       v.dbus.data(7)  := toSlv18   (event_ampl (conv_integer(v.index( 3 downto  0))));
       v.index := v.index+1;
       v.dbus.data(10) := toSlv18_15(event_phase(conv_integer(v.index( 3 downto  0))));
       v.dbus.data(11) := toSlv18   (event_ampl (conv_integer(v.index( 3 downto  0))));
       v.index := v.index+1;
       v.dbus.data(14) := toSlv18_15(event_phase(conv_integer(v.index( 3 downto  0))));
       v.dbus.data(15) := toSlv18   (event_ampl (conv_integer(v.index( 3 downto  0))));
       v.index := v.index+1;
       v.dbus.sevr( 3 downto  1) := (others=>"00");
       v.dbus.sevr( 7 downto  6) := (others=>"00");
       v.dbus.sevr(11 downto 10) := (others=>"00");
       v.dbus.sevr(15 downto 14) := (others=>"00");
       v.dbus.sevr(31 downto 30) := (others=>"00");
       v.dbus.strobe := '1';
     end if;

     if diagnRst = '1' then
       v := REG_INIT_C;
     end if;
     
     r_in <= v;

     diagnBus <= r.dbus;
   end process comb;

   seq: process (diagnClk) is
   begin
     if rising_edge(diagnClk) then
       r <= r_in;
     end if;
   end process seq;

   U_DiagnsAxi : entity work.AxiLiteWriteMasterSim
     generic map ( CMDS => diagnWriteCmds )
     port map ( clk    => regClk,
                rst    => regRst,
                master => diagnWriteMaster,
                slave  => diagnWriteSlave ,
                done   => open );
   
   U_AppDBus : entity work.AppDiagnBus
     port map ( clk   => diagnClk,
                rst   => diagnRst,
                dbus  => diagnBus,
                clkO  => diagnosticClk,
                rstO  => diagnosticRst,
                dbusO => diagnBusQ,
                axilClk         => regClk,
                axilRst         => regRst,
                axilWriteMaster => diagnWriteMaster,
                axilWriteSlave  => diagnWriteSlave,
                axilReadMaster  => diagnReadMaster,
                axilReadSlave   => diagnReadSlave );

   U_DBusInsert : entity work.DiagnBusInsert
     generic map ( FIFO_ADDR_WIDTH_G => 4 )
     port map (
      -- Timing interface
      timingClk       => scClk,
      timingRst       => scRst,
      timingStrobe    => timingBus.strobe,
      timingMessage   => timingBus.message,
      trigger         => s_trigPulse,              -- prompt trigger indicating diagnosticBusI
                                                   -- is expected for this timing frame
      -- Diagnostic data interface
      diagnosticClk   => diagnClk,
      diagnosticRst   => diagnRst,
      diagnosticBusI  => diagnBusQ,       -- delayed processing results;
                                          -- timingMessage is ignored/overwritten
      diagnosticBusO  => diagnosticBus ); -- full rate output
   
   process ( diagnosticClk ) is
     variable index : slv(15 downto 0);
   begin
     if rising_edge(diagnosticClk) then
       index := diagnosticBus.data(31)(15 downto 0);
       time0 <= (real(conv_integer(diagnosticBus.data(2))) + real(conv_integer(diagnosticBus.data(6)))-2.0*real(conv_integer(diagnosticBus.data(1)))) * 0.5E+6 / (2852.0*65536.0);
       time1 <= (real(conv_integer(diagnosticBus.data(10))) + real(conv_integer(diagnosticBus.data(14)))-2.0*real(conv_integer(diagnosticBus.data(1)))) * 0.5E+6 / (2852.0*65536.0);
       dbus16 <= diagnosticBus.data(16);
       dbus17 <= diagnosticBus.data(17);
       dbus1  <= diagnosticBus.data(1);
       dbus2  <= diagnosticBus.data(2);
       dbus6  <= diagnosticBus.data(6);
       dbus10 <= diagnosticBus.data(10);
       dbus14 <= diagnosticBus.data(14);
       tindex <= index;
     end if;
   end process;

   dbus30       <= diagnosticBus.data(30)(15 downto 0);
   dbus_pulseId <= diagnosticBus.timingMessage.pulseId(15 downto 0);
   dsp_trig     <= s_trigPulse;
   dbus_trig    <= timingTrig.trigPulse(6);
   dbus_strobe  <= diagnosticBus.strobe;
   tbus_pulseId <= timingBus.message.pulseId(15 downto 0);
   
end top_level_app;
