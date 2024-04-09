-------------------------------------------------------------------------------
-- Title      : LCLS 1 timing trigger mux
-------------------------------------------------------------------------------
-- File       : TimingTrigMux.vhd
-- Author     : Uros Legat  <ulegat@slac.stanford.edu>
-- Company    : SLAC National Accelerator Laboratory
-- Created    : 2016-11-16
-- Last update: 2019-10-16
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description:  Trigger Multiplexer Operation on Mode select:  
--               - Mode: 00 - Disabled
--               - Mode: 01 - Trig_o = Trig_i(0)
--               - Mode: 10 - Trig_o = Trig_i(1) 
--               - Mode: 11 - Trig_o = Trig_i(0) or Trig_i(1) (The one that comes first)
--                         Note: If both triggers come with the same delay Trig_i(0) will be selected
--               - trigIndex_o: index Trig_o = Trig_i(index)
--               - Only one selection can be made per strobe_i
--               - If the trigger width is longer than strobe the trigger will NOT be 
--                 cut short and the following triggers will be ignored until the trigger delay ends.  
--               - The circuit introduces 4 c-c latency delay
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
use ieee.std_logic_arith.all;


library surf;
use surf.StdRtlPkg.all;
use surf.AxiLitePkg.all;

entity TimingTrigMux is
   generic (
      TPD_G        : time := 1 ns
    );
   port (
      -- Recovered EVR clock
      recClk          : in  sl;
      recRst          : in  sl;
      
      -- Mux mode
      mode_i          : in  slv(1 downto 0);

      --
      strobe_i        : in  sl;
      trig_i          : in  slv(1 downto 0); --2 triggers in
      trig_o          : out sl;              --1 trigger out
      trigStrobe_o    : out sl;              --single cycle
      trigIndex_o     : out sl               --index, Trig_o = Trig_i(index)
   );
end TimingTrigMux;

architecture rtl of TimingTrigMux is
   
   type StateType is (
      IDLE_S,
      BUSY_S
   );
   
   -- Register
   type RegType is record
      trigStrobe : sl;
      sel        : slv(1 downto 0);
      trigSyncD1 : slv(1 downto 0);
      state      : StateType;
   end record RegType;

   constant REG_INIT_C : RegType := (
      trigStrobe => '0',
      sel        => "00",
      trigSyncD1 => "00",
      state      => IDLE_S
   );

   signal r   : RegType := REG_INIT_C;
   signal rin : RegType;

   -- Signals
   signal s_trigSync   : slv(1 downto 0);
   signal s_trigRe     : slv(1 downto 0);
  
begin
  
   -- Synchronize and detect rising edge on trigger
   GEN_TRIG : for i in 1 downto 0 generate
      U_Sync : entity surf.SynchronizerEdge
      generic map (
         TPD_G     => TPD_G
      )
      port map (
         clk        => recClk,   
         dataIn     => trig_i(i),
         dataOut    => s_trigSync(i),
         risingEdge => s_trigRe(i)  -- Rising edge
      );
   end generate GEN_TRIG;
   
      -- Address counter
   comb : process (r, recRst, s_trigSync, s_trigRe, mode_i, strobe_i) is
      variable v : RegType;
   begin
      -- Latch the current value
      v := r; 
      
      -- Align trigger with select
      for i in 1 downto 0 loop
         v.trigSyncD1(i) := s_trigSync(i);
      end loop;

      v.trigStrobe := '0';
      
      -- State Machine
      StateMachine : case (r.state) is
         ----------------------------------------------------------------------
         when IDLE_S =>
            if (r.trigSyncD1 = "00") then -- If any of the triggers is active the selection should not be changed
               -- Wait for a trigger re and assign select mux accordingly
               v.trigStrobe := '1';
               if (mode_i = "00" and  (s_trigRe(0) = '1' or s_trigRe(1) = '1')) then
                  v.sel := "00";
                  -- Next state
                  v.state := BUSY_S;
               elsif (mode_i = "01" and  s_trigRe(0) = '1') then
                  v.sel := "01";
                  -- Next state
                  v.state := BUSY_S;         
               elsif (mode_i = "10" and  s_trigRe(1) = '1') then
                  v.sel := "10";
                  -- Next state
                  v.state := BUSY_S;         
               elsif (mode_i = "11" and  s_trigRe(0) = '1') then
                  v.sel :=  "01";
                  -- Next state
                  v.state := BUSY_S;            
               elsif (mode_i = "11" and  s_trigRe(1) = '1') then
                  v.sel :=  "10";
                  -- Next state
                  v.state := BUSY_S;
                else
                  v.trigStrobe := '0';
               end if;
            end if;
         when BUSY_S => -- Wait until the next strobe
            if (strobe_i = '1') then
               -- Next state
               v.state := IDLE_S;
            end if;
         ----------------------------------------------------------------------
         when others => null;
      ----------------------------------------------------------------------
      end case StateMachine;         
      
      if (recRst = '1') then
         v := REG_INIT_C;
      end if;

      -- Register the variable for next clock cycle
      rin    <= v;
   end process comb;

   seq : process (recClk) is
   begin
      if (rising_edge(recClk)) then
         r <= rin after TPD_G;
      end if;
   end process seq; 
   
   -- Trigger multiplexer
   with r.sel select 
   trig_o <='0'             when "00",
            r.trigSyncD1(0) when "01",
            r.trigSyncD1(1) when "10",
            '0'             when others;

   -- Which trigger is it
   with r.sel select 
   trigIndex_o <='0'             when "00",
                 '0'             when "01",  -- Index0
                 r.trigSyncD1(1) when "10",  -- Index1
                 '0'             when others;

   trigStrobe_o <= r.trigStrobe;
   
end rtl;
