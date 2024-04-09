-------------------------------------------------------------------------------
-- Title      : LlrfPkg
-------------------------------------------------------------------------------
-- File       : LlrfPkg.vhd
-- Author     : Matt Weaver <weaver@slac.stanford.edu>
-- Company    : SLAC National Accelerator Laboratory
-- Created    : 2015-09-01
-- Last update: 2020-05-19
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- This file is part of 'LCLS2 Timing Core'.
-- It is subject to the license terms in the LICENSE.txt file found in the 
-- top-level directory of this distribution and at: 
--    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html. 
-- No part of 'LCLS2 Timing Core', including this file, 
-- may be copied, modified, propagated, or distributed except according to 
-- the terms contained in the LICENSE.txt file.
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;


library surf;
use surf.StdRtlPkg.all;

package LlrfPkg is

  type Iq18Type is record
    i0     : Slv18Array(5 downto 0);
    q0     : Slv18Array(5 downto 0);
    i1     : Slv18Array(3 downto 0);
    q1     : Slv18Array(3 downto 0);
  end record;

  constant IQ18_INIT_C : Iq18Type := (
    i0     => (others=>(others=>'0')),
    q0     => (others=>(others=>'0')),
    i1     => (others=>(others=>'0')),
    q1     => (others=>(others=>'0')) );
  
  type Iq36Type is record
    i0     : Slv36Array(5 downto 0);
    q0     : Slv36Array(5 downto 0);
    i1     : Slv36Array(3 downto 0);
    q1     : Slv36Array(3 downto 0);
  end record;

  constant IQ36_INIT_C : Iq36Type := (
    i0     => (others=>(others=>'0')),
    q0     => (others=>(others=>'0')),
    i1     => (others=>(others=>'0')),
    q1     => (others=>(others=>'0')) );

  type DdcType is record
    valid   : sl;
    i_or_a  : slv(17 downto 0);  -- amp
    q_or_f  : slv(17 downto 0);  -- phase
    channel : slv(3 downto 0);
    sync    : sl;
    tlast   : sl;
  end record;

  constant DDC_INIT_C : DdcType := (
    valid   => '0',
    i_or_a  => (others=>'0'),
    q_or_f  => (others=>'0'),
    channel => (others=>'0'),
    sync    => '0',
    tlast   => '1' );
    
  type LsDacType is record
    data    : Slv16Array(2 downto 0);
    valid   : sl;
  end record;

  constant LS_DAC_INIT_C : LsDacType := (
    data    => (others=>(others=>'0')),
    valid   => '0' );

  type DdcFrameType is record
    data  : slv(31 downto 0);
    valid : sl;
    sync  : sl;
  end record;

  type DdcFrameArray is array (natural range <>) of DdcFrameType;
    
  constant DDC_FRAME_INIT_C : DdcFrameType := (
    data  => (others=>'0'),
    valid => '0',
    sync  => '0' ); 
  
end package LlrfPkg;
  
package body LlrfPkg is
end package body LlrfPkg;

