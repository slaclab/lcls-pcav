-----------------------------------------------------------------------------
-- Company    : SLAC National Accelerator Laboratory
-------------------------------------------------------------------------------
-- Description:
--  Module that outputs the diagnostic bus at full rate when the signals are
--  processed at a subrate indicated by trigger.
--
--  Place the timing messages in a FIFO with a trigger marker (or absence).
--  Initially, sink any messages until the first trigger.
--  Fill the FIFO, and pull entries at the diagnostic bus rate,
--  replacing the diagnostic bus contents with the subrate bus when an
--  expected trigger was indicated.
--
--  The FIFO must be sized to cover the maximum time for the subrate bus to
--  assert.
--
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
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

library surf;
use surf.StdRtlPkg.all;

library lcls_timing_core;
use lcls_timing_core.TimingPkg.all;

library amc_carrier_core;
use amc_carrier_core.AmcCarrierPkg.all;

entity DiagnBusInsert is
   generic (
      TPD_G             : time := 1 ns;
      FIFO_ADDR_WIDTH_G : integer := 8 );
   port (
      -- Timing interface
      timingClk       : in  sl;
      timingRst       : in  sl;
      timingStrobe    : in  sl;
      timingMessage   : in  TimingMessageType;
      trigger         : in  sl;   -- prompt trigger indicating diagnosticBusI
                                  -- is expected for this timing frame
      -- Diagnostic data interface
      diagnosticClk   : in  sl;
      diagnosticRst   : in  sl;
      diagnosticBusI  : in  DiagnosticBusType;   -- delayed processing results;
                                                 -- timingMessage is ignored/overwritten
      diagnosticBusO  : out DiagnosticBusType ); -- full rate output

end entity DiagnBusInsert;

architecture rtl of DiagnBusInsert is

   type TRegType is record
     ready   : sl;
     trigger : sl;
     din     : slv(TIMING_MESSAGE_BITS_C downto 0);
   end record;

   constant TREG_INIT_C : TRegType := (
     ready   => '0',
     trigger => '0',
     din     => (others=>'0') );

   signal t    : TRegType := TREG_INIT_C;
   signal tin  : TRegType;
   
   signal wren : sl;
   signal valid, empty, strobeD, diagnTrigger : sl;
   signal diagnMessage : TimingMessageType;
   
   type RegType is record
     triggered : sl;
     rden      : sl;
     dbus      : DiagnosticBusType;
   end record;

   constant REG_INIT_C : RegType := (
     triggered => '0',
     rden      => '0',
     dbus      => DIAGNOSTIC_BUS_INIT_C );

   signal r    : RegType := REG_INIT_C;
   signal rin  : RegType;

   signal diagnMessageSlv      : slv(TIMING_MESSAGE_BITS_C downto 0);

begin

  wren             <= timingStrobe and t.ready;
  diagnTrigger     <= diagnMessageSlv(TIMING_MESSAGE_BITS_C);
  diagnMessage     <= toTimingMessageType(diagnMessageSlv(TIMING_MESSAGE_BITS_C-1 downto 0));
  
  U_FIFO : entity surf.FifoAsync
    generic map (
      FWFT_EN_G    => true,
      DATA_WIDTH_G => TIMING_MESSAGE_BITS_C+1,
      ADDR_WIDTH_G => FIFO_ADDR_WIDTH_G,
      EMPTY_THRES_G => (2**FIFO_ADDR_WIDTH_G)-3
      )
    port map (
      rst       => timingRst,
      wr_clk    => timingClk,
      wr_en     => wren,  -- writing the previous message and trigger from strobe
      din       => t.din,
      --
      rd_clk    => diagnosticClk,
      rd_en     => r.rden,
      valid     => valid,
      prog_empty=> empty,
      dout      => diagnMessageSlv );

  tcomb : process ( timingRst, t, trigger, timingStrobe, timingMessage ) is
    variable v : TRegType;
  begin
    v := t;

    v.din(t.din'left) := t.trigger;
    if timingStrobe = '1' then
      v.din(t.din'left-1 downto 0) := toSlv(timingMessage);
    end if;
    
    if trigger = '1' then
      v.ready := '1';
    end if;

    if trigger = '1' then
      v.trigger := '1';
    elsif timingStrobe = '1' then
      v.trigger := '0';
    end if;
    
    if timingRst = '1' then
      v := TREG_INIT_C;
    end if;

    tin <= v;
  end process tcomb;

  tseq : process ( timingClk ) is
  begin
    if rising_edge(timingClk) then
      t <= tin after TPD_G;
    end if;
  end process tseq;
  
  U_StrobeD : entity surf.SynchronizerOneShot
    port map (
      clk     => diagnosticClk,
      rst     => diagnosticRst,
      dataIn  => timingStrobe,
      dataOut => strobeD );

  comb : process( diagnosticRst, r, valid, strobeD, empty, diagnTrigger, diagnMessage, diagnosticBusI ) is
    variable v : RegType;
  begin
    v := r;

    v.rden        := '0';
    v.dbus.strobe := '0';

    if diagnosticBusI.strobe = '1' then
      v.triggered := '1';
    end if;
      
    if valid = '1' and strobeD = '1' and empty = '0' then
      if diagnTrigger = '1' and r.triggered = '1' then
        v.dbus.data          := diagnosticBusI.data;
        v.dbus.sevr          := diagnosticBusI.sevr;
        v.dbus.fixed         := diagnosticBusI.fixed;
        v.dbus.mpsIgnore     := diagnosticBusI.mpsIgnore;
        v.triggered          := '0';
      else
        v.dbus := DIAGNOSTIC_BUS_INIT_C;
      end if;
      v.rden               := '1';
      v.dbus.strobe        := '1';
      v.dbus.timingMessage := diagnMessage;
    end if;
    
    if diagnosticRst = '1' then
      v := REG_INIT_C;
    end if;

    rin <= v;

    diagnosticBusO <= r.dbus;
  end process comb;

  seq : process (diagnosticClk) is
  begin
    if rising_edge(diagnosticClk) then
      r <= rin after TPD_G;
    end if;
  end process seq;
  
end rtl;
