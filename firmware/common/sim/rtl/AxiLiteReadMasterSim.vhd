-------------------------------------------------------------------------------
-- Title      : 
-------------------------------------------------------------------------------
-- File       : AxiLiteSimPkg.vhd
-- Author     : Matt Weaver <weaver@slac.stanford.edu>
-- Company    : SLAC National Accelerator Laboratory
-- Created    : 2016-03-25
-- Last update: 2021-07-30
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: Programmable configuration and status fields
-------------------------------------------------------------------------------
-- This file is part of 'LCLS2 XPM Core'.
-- It is subject to the license terms in the LICENSE.txt file found in the 
-- top-level directory of this distribution and at: 
--    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html. 
-- No part of 'LCLS2 XPM Core', including this file, 
-- may be copied, modified, propagated, or distributed except according to 
-- the terms contained in the LICENSE.txt file.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


library surf;
use surf.StdRtlPkg.all;
use surf.AxiLitePkg.all;
use work.AxiLiteSimPkg.all;

entity AxiLiteReadMasterSim is
  generic ( CMDS : Slv32Array );
  port ( clk    : in sl;
         rst    : in  sl;
         master : out AxiLiteReadMasterType;
         slave  : in  AxiLiteReadSlaveType;
         done   : out sl );
end entity;

architecture behavior of AxiLiteReadMasterSim is

  type RegType is record
    icmd : integer;
    master : AxiLiteReadMasterType;
  end record;
  constant REG_INIT_C : RegType := (
    icmd => 0,
    master => AXI_LITE_READ_MASTER_INIT_C
    );
  signal r   : RegType := REG_INIT_C;
  signal rin : RegType;
  
begin

  comb : process ( r, rst, slave ) is
    variable v : RegType;
  begin
    v := r;

    v.master.rready  := '1';

    if slave.arready = '1' then
      v.master.arvalid := '0';
    end if;

    if r.master.arvalid = '0' and r.icmd < CMDS'length then
      v.master.araddr  := CMDS(r.icmd);
      v.master.arvalid := '1';
      v.icmd           := r.icmd + 1;
    end if;

    if rst = '1' then
      v := REG_INIT_C;
    end if;

    master <= r.master;

    if (r.icmd = CMDS'length and v.master.arvalid = '0') then
      done   <= '1';
    else
      done   <= '0';
    end if;
    
    rin <= v;
  end process comb;

  seq : process(clk) is
  begin
    if rising_edge(clk) then
      r <= rin;
    end if;
  end process seq;
  
end behavior;
