-------------------------------------------------------------------------------
-- Title      : Synchronize timing trigger to 185 clock with the information about 370MHz clock position
-------------------------------------------------------------------------------
-- File       : TimingTrigSync.vhd
-- Author     : Uros Legat <ulegat@slac.stanford.edu>
-- Company    : SLAC National Accelerator Laboratory
-- Created    : 2013-04-30
-- Last update: 2016-09-30
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- This file is part of 'SLAC Firmware Standard Library'.
-- It is subject to the license terms in the LICENSE.txt file found in the 
-- top-level directory of this distribution and at: 
--    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html. 
-- No part of 'SLAC Firmware Standard Library', including this file, 
-- may be copied, modified, propagated, or distributed except according to 
-- the terms contained in the LICENSE.txt file.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


library surf;
use surf.StdRtlPkg.all;

entity TimingTrigSync is
   generic (
      TPD_G : time := 1 ns); 
   port (
      clk       : in  sl;
      rst       : in  sl := '0';
      clk2x     : in  sl;
      rst2x     : in  sl := '0';
      trig_i    : in  sl;               -- Async
      trig_o    : out sl;               -- Synced to clk
      trigPos_o : out sl                -- Synced to clk
      );
end entity TimingTrigSync;

architecture rtl of TimingTrigSync is

   type RegType is record
      pos      : sl;
      trig2xD1 : sl;
   end record RegType;

   constant REG_INIT_C : RegType := (
      pos      => '0',
      trig2xD1 => '0');

   signal r   : RegType := REG_INIT_C;
   signal rin : RegType;

   signal s_trig2x : sl;
   
begin

   U_Sync : entity surf.SynchronizerOneShot
      generic map (
         TPD_G => TPD_G)
      port map (
         clk     => clk2x,
         rst     => rst2x,
         dataIn  => trig_i,
         dataOut => s_trig2x);

   comb : process (clk, r, rst2x, s_trig2x) is
      variable v : RegType;
   begin
      v := r;

      -- Register clock position
      -- Clk2x:   _-_-_-_-_-_-
      -- Clk:     __--__--__--
      -- s_trig2x:__--________
      -- or
      -- s_trig2x:____--______      
      if (s_trig2x = '1') then
         v.pos := clk;
      end if;

      -- Delay the trigger to align with position
      v.trig2xD1 := s_trig2x;

      if (rst2x = '1') then
         v := REG_INIT_C;
      end if;

      rin <= v;
      
   end process comb;

   seq : process (clk2x) is
   begin
      if (rising_edge(clk2x)) then
         r <= rin after TPD_G;
      end if;
   end process seq;

   U_SyncFifo : entity surf.SynchronizerFifo
      generic map (
         TPD_G        => TPD_G,
         DATA_WIDTH_G => 1)
      port map (
         -- Write Ports (wr_clk domain)
         wr_clk  => clk2x,
         wr_en   => r.trig2xD1,
         din(0)  => r.pos,
         -- Read Ports (rd_clk domain)
         rd_clk  => clk,
         valid   => trig_o,
         dout(0) => trigPos_o);     

end architecture rtl;
