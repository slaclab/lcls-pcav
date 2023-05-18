-------------------------------------------------------------------------------
-- Title      : System Generator core wrapper test
-------------------------------------------------------------------------------
-- File       : AppLlrfCoreTest.vhd
-- Author     : Matt Weaver <weaver@slac.stanford.edu>
-- Company    : SLAC National Accelerator Laboratory
-- Created    : 2020-01-23
-- Last update: 2023-05-18
-- Platform   : 
-- Standard   : VHDL'93/02
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

entity AppTestModel is
   generic (
      TPD_G                : time     := 1 ns
   );
   port (
      --
      clk             : in  sl;
      rst             : in  sl;
      sync            : in  sl;
      i0              : in  Slv18Array(5 downto 0);
      q0              : in  Slv18Array(5 downto 0);
      -- Phase/Amp 
      amp             : in  slv(17 downto 0);
      phase           : in  slv(17 downto 0);
      phaseampchannel : in  slv( 3 downto 0);
      phaseampvalid   : in  sl;
      phaseampsync    : in  sl;
      -- DDC I/Q
      ddcchannel      : in  slv( 3 downto 0);
      ddci            : in  slv(17 downto 0);
      ddcq            : in  slv(17 downto 0);
      ddcvalid        : in  sl;
      ddcsync         : in  sl;
      --  DaqMux interface
      daqtrig         : out slv(1 downto 0);
      debug           : out Slv32VectorArray(1 downto 0, 3 downto 0);
      debugvalid      : out Slv4Array(1 downto 0);
      -- 
      seti            : out slv(17 downto 0);
      setq            : out slv(17 downto 0);
      userdaccontrol  : out slv(15 downto 0);
      rfSwitch        : out sl;
      -- Diagnostic ports (diagnosticBus)
      diagnClk        : out sl;
      diagnRst        : out sl;
      diagn           : out Slv32Array(31 downto 0);
      diagnValids     : out slv       (31 downto 0);
      diagnStrobe     : out sl;  -- FullRate?
      -- AXI-Lite Port
      axiClk          : in  sl;
      axiRst          : in  sl;
      axiReadMaster   : in  AxiLiteReadMasterType;
      axiReadSlave    : out AxiLiteReadSlaveType;
      axiWriteMaster  : in  AxiLiteWriteMasterType;
      axiWriteSlave   : out AxiLiteWriteSlaveType );
end AppTestModel;

architecture mapping of AppTestModel is
   
   signal dstrobe           : sl;
   signal modelReg          : Slv32Array(0 downto 0);
   signal trigRateOut       : SlVectorArray(3 downto 0,31 downto 0);
   signal trigRateOutV      : Slv32Array(3 downto 0);
   
   type RegType is record
     sync     : sl;
     strobe   : sl;
     count    : slv       (23 downto 0);
     data     : Slv32Array(31 downto 0);
   end record;

   constant REG_INIT_C : RegType := (
     sync     => '0',
     strobe   => '0',
     count    => (others=>'0'),
     data     => (others=>(others=>'0')) );

   signal r    : RegType := REG_INIT_C;
   signal rin  : RegType;

begin

  U_TrigRate : entity surf.SyncTrigRateVector
    generic map ( COMMON_CLK_G   => false,
                  ONE_SHOT_G     => true,
                  REF_CLK_FREQ_G => 156.25E+6,
                  WIDTH_G        => 4 )
    port map ( trigIn(0)    => sync,
               trigIn(1)    => phaseampsync,
               trigIn(2)    => ddcsync,
               trigIn(3)    => dstrobe,
               trigRateOut  => trigRateOut,
               locClk       => clk,
               refClk       => axiClk );

  trigRateOutV(0) <= muxSlVectorArray(trigRateOut, 0);
  trigRateOutV(1) <= muxSlVectorArray(trigRateOut, 1);
  trigRateOutV(2) <= muxSlVectorArray(trigRateOut, 2);
  trigRateOutV(3) <= muxSlVectorArray(trigRateOut, 3);
  
  U_AxiLiteRegs : entity surf.AxiLiteRegs
    generic map ( NUM_WRITE_REG_G => 1,
                  NUM_READ_REG_G  => 4 )
    port map ( axiClk         => axiClk,
               axiClkRst      => axiRst,
               axiReadMaster  => axiReadMaster ,
               axiReadSlave   => axiReadSlave  ,
               axiWriteMaster => axiWriteMaster,
               axiWriteSlave  => axiWriteSlave ,
               writeRegister  => modelReg,
               readRegister   => trigRateOutV );

  --
  --  Duplicate data and trigger to each DAQ MUX
  --
  GEN_DAQ : for i in 1 downto 0 generate
    debug(i, 0)       <= resize(amp  ,32);
    debug(i, 1)       <= resize(phase,32);
    debug(i, 2)       <= resize(ddci ,32);
    debug(i, 3)       <= resize(ddcq ,32);
    debugvalid(i)     <= ddcvalid & ddcvalid & phaseampvalid & phaseampvalid;
    daqtrig   (i)     <= phaseampsync;
  end generate;

  --
  --  Diagnostic Bus for BSA/BSS/MPS
  --
  diagn             <= r.data;         -- generated data
  diagnValids       <= (others=>'0');  -- data is not real
  diagnStrobe       <= dstrobe;        -- new timing frame
  diagnClk          <= clk;
  diagnRst          <= rst or modelReg(0)(0);

  comb : process ( r, rst, sync ) is
    variable v : RegType;
    variable j : integer;
  begin
    v := r;

    v.sync   := sync;
    v.strobe := '0';
    
    if sync='1' and r.sync='0' then
      v.strobe := '1';
    end if;
    
    if r.strobe = '1' then
      v.count := r.count+1;
    end if;
    
    for i in 0 to 31 loop
      v.data(i) := toSlv(i,4) & r.count;
    end loop;

    if rst = '1' then
      v := REG_INIT_C;
    end if;
    
    rin <= v;

    dstrobe <= r.strobe;
  end process;

  seq : process ( clk ) is
  begin
    if rising_edge(clk) then
      r <= rin;
    end if;
  end process;

end mapping;

