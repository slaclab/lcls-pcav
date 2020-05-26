-------------------------------------------------------------------------------
-- Title      : System Generator core wrapper
-------------------------------------------------------------------------------
-- File       : AppLlrfCore.vhd
-- Author     : Larry Ruckman  <ruckman@slac.stanford.edu>
-- Company    : SLAC National Accelerator Laboratory
-- Created    : 2016-02-25
-- Last update: 2020-05-26
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

use work.LlrfPkg.all;

entity example_stub is
  port (
    dsp_clk : in std_logic;
    dsp_rst : in std_logic;
    -- application
    gateway_in : in std_logic_vector( 29-1 downto 0 );
    gateway_in2 : in std_logic_vector( 1-1 downto 0 );
    -- demodulator output
    amp : in std_logic_vector( 18-1 downto 0 );
    ddcchannel : in std_logic_vector( 4-1 downto 0 );
    ddci : in std_logic_vector( 18-1 downto 0 );
    ddcq : in std_logic_vector( 18-1 downto 0 );
    ddcsync : in std_logic_vector( 1-1 downto 0 );
    phase : in std_logic_vector( 18-1 downto 0 );
    phaseampchannel : in std_logic_vector( 4-1 downto 0 );
    phaseampsync : in std_logic_vector( 1-1 downto 0 );
    -- DaqMux input
    debugvalid : out std_logic_vector( 8-1 downto 0 );
    debugdata : out std_logic_vector( 8*32-1 downto 0 );
    debugsync : out std_logic_vector( 1-1 downto 0 );
    -- diagnostic bus input
    diagnclk : out std_logic;
    diagnrst : out std_logic;
    diagndata : out std_logic_vector( 32*32-1 downto 0 );
    diagnfixed : out std_logic_vector( 32-1 downto 0 );
    diagnsevr : out std_logic_vector( 2*32-1 downto 0 );
    diagnsync : out std_logic;
    -- register bus
    axi_lite_clk : in std_logic;
    axi_lite_aresetn : in std_logic;
    axi_lite_s_axi_awaddr : in std_logic_vector( 12-1 downto 0 );
    axi_lite_s_axi_awvalid : in std_logic;
    axi_lite_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    axi_lite_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    axi_lite_s_axi_wvalid : in std_logic;
    axi_lite_s_axi_bready : in std_logic;
    axi_lite_s_axi_araddr : in std_logic_vector( 12-1 downto 0 );
    axi_lite_s_axi_arvalid : in std_logic;
    axi_lite_s_axi_rready : in std_logic;
    axi_lite_s_axi_awready : out std_logic;
    axi_lite_s_axi_wready : out std_logic;
    axi_lite_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    axi_lite_s_axi_bvalid : out std_logic;
    axi_lite_s_axi_arready : out std_logic;
    axi_lite_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    axi_lite_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    axi_lite_s_axi_rvalid : out std_logic );
end entity example_stub;

architecture rtl of example_stub is

   --
   -- model specific
   --
   signal dstrobe           : sl;
   signal modelReg          : Slv32Array(0 downto 0);
   signal trigRateOut       : SlVectorArray(2 downto 0,31 downto 0);
   signal trigRateOutV      : Slv32Array   (2 downto 0);

   type RegType is record
     count    : slv       (23 downto 0);
     data     : Slv32Array(31 downto 0);
   end record;

   constant REG_INIT_C : RegType := (
     count    => (others=>'0'),
     data     => (others=>(others=>'0')) );

   signal r    : RegType := REG_INIT_C;
   signal rin  : RegType;

   signal af204 : DdcType;
   signal iq204 : DdcType;
   
   signal debug204 : DdcFrameType;

   signal dspClk204 : sl;
   signal dspRst204 : sl;
   signal trigPulseSync : sl;
   
   signal axiClk      : sl;
   signal axiRst      : sl;
   signal readMaster  : AxiLiteReadMasterType := AXI_LITE_READ_MASTER_INIT_C;
   signal readSlave   : AxiLiteReadSlaveType;
   signal writeMaster : AxiLiteWriteMasterType := AXI_LITE_WRITE_MASTER_INIT_C;
   signal writeSlave  : AxiLiteWriteSlaveType;

   signal appRst : sl;

begin

  dspClk204     <= dsp_clk;
  dspRst204     <= dsp_rst;
  
  af204.i_or_a  <= amp;
  af204.q_or_f  <= phase;
  af204.channel <= phaseampchannel;
  af204.sync    <= phaseampsync(0);

  iq204.channel <= ddcchannel;
  iq204.i_or_a  <= ddci;
  iq204.q_or_f  <= ddcq;
  iq204.sync    <= ddcsync(0);
  
  axiClk <= axi_lite_clk;
  axiRst <= not axi_lite_aresetn;
  writeMaster.awaddr(11 downto 0) <= axi_lite_s_axi_awaddr;
  writeMaster.awvalid             <= axi_lite_s_axi_awvalid;
  writeMaster.wdata               <= axi_lite_s_axi_wdata;
  writeMaster.wstrb               <= axi_lite_s_axi_wstrb;
  writeMaster.wvalid              <= axi_lite_s_axi_wvalid;
  writeMaster.bready              <= axi_lite_s_axi_bready;
  readMaster.araddr(11 downto 0)  <= axi_lite_s_axi_araddr;
  readMaster.arvalid              <= axi_lite_s_axi_arvalid;
  readMaster.rready               <= axi_lite_s_axi_rready;
  axi_lite_s_axi_awready <= writeSlave.awready;
  axi_lite_s_axi_wready  <= writeSlave.wready;
  axi_lite_s_axi_bresp   <= writeSlave.bresp;
  axi_lite_s_axi_bvalid  <= writeSlave.bvalid;
  axi_lite_s_axi_arready <= readSlave .arready;
  axi_lite_s_axi_rdata   <= readSlave .rdata;
  axi_lite_s_axi_rresp   <= readSlave .rresp;
  axi_lite_s_axi_rvalid  <= readSlave .rvalid;

  U_TrigRate : entity work.SyncTrigRateVector
    generic map ( COMMON_CLK_G   => true,
                  ONE_SHOT_G     => true,
                  REF_CLK_FREQ_G => 156.25E+6,
                  WIDTH_G        => 3 )
    port map ( trigIn(0)    => trigPulseSync,
               trigIn(1)    => af204.sync,
               trigIn(2)    => dstrobe,
               trigRateOut  => trigRateOut,
               locClk       => axiClk,
               refClk       => axiClk );

  trigRateOutV(0) <= muxSlVectorArray(trigRateOut, 0);
  trigRateOutV(1) <= muxSlVectorArray(trigRateOut, 1);
  trigRateOutV(2) <= muxSlVectorArray(trigRateOut, 2);
  
  U_AxiLiteRegs : entity work.AxiLiteRegs
    generic map ( NUM_WRITE_REG_G => 1,
                  NUM_READ_REG_G  => 3 )
    port map ( axiClk         => axiClk,
               axiClkRst      => axiRst,
               axiReadMaster  => readMaster ,
               axiReadSlave   => readSlave  ,
               axiWriteMaster => writeMaster,
               axiWriteSlave  => writeSlave ,
               writeRegister  => modelReg   ,
               readRegister   => trigRateOutV );

  appRst <= modelReg(0)(0);

  U_FRAMER : entity work.llrfFramer
    port map (
      clk                => dspClk204,
      phaseAmpValidIn(0) => af204.valid,
      ampIn              => af204.i_or_a,
      phaseIn            => af204.q_or_f,
      phaseAmpChannelIn  => af204.channel,
      syncIn(0)          => af204.sync,
      --outputs
      debug              => debug204.data,
      debugValid(0)      => debug204.valid,
      syncOut(0)         => debug204.sync );

  debugvalid(7 downto 1)   <= (others=>'0');
  debugdata(255 downto 32) <= (others=>'0');

  debugvalid(0)          <= debug204.valid;
  debugdata(31 downto 0) <= debug204.data;
  debugsync(0)           <= debug204.sync;
    
  comb : process ( r, dspRst204, dstrobe ) is
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

    if dspRst204 = '1' then
      v := REG_INIT_C;
    end if;
    
    rin <= v;

    for i in 0 to 31 loop
      diagnfixed(i)                  <= '1';
      diagnsevr (2*i+1 downto 2*i)   <= "00";
      diagndata(32*i+31 downto 32*i) <= r.data(i);
    end loop;

  end process;

  seq : process ( dspClk204 ) is
  begin
    if rising_edge(dspClk204) then
      r <= rin;
    end if;
  end process;

  dstrobe           <= af204.tLast and af204.sync;
  diagnsync         <= dstrobe;
  diagnclk          <= dspClk204;
  diagnrst          <= dspRst204;

end architecture rtl;
