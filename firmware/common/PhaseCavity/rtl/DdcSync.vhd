-------------------------------------------------------------------------------
-- Title      : DdcSync
-------------------------------------------------------------------------------
-- File       : DdcSync.vhd
-- Author     : Matt Weaver <weaver@slac.stanford.edu>
-- Company    : SLAC National Accelerator Laboratory
-- Created    : 2016-02-25
-- Last update: 2020-04-30
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

use work.StdRtlPkg.all;
use work.LlrfPkg.all;

entity DdcSync is
  generic (
    TPD_G  : time := 1 ns );
  port (
    wr_clk : in  sl;
    wr_ddc : in  DdcType;
    rd_clk : in  sl;
    rd_ddc : out DdcType );
end DdcSync;

architecture rtl of DdcSync is

begin

  U_SYNC : entity work.SynchronizerFifo
     generic map (
       TPD_G             => TPD_G,
       DATA_WIDTH_G      => 42)
     port map (
       rst               => '0',
       -- Write Ports (wr_clk domain)
       wr_clk            => wr_clk,
       wr_en             => wr_ddc.valid,
       din(17 downto  0) => wr_ddc.i_or_a,
       din(35 downto 18) => wr_ddc.q_or_f,
       din(39 downto 36) => wr_ddc.channel,
       din(40)           => wr_ddc.tLast,
       din(41)           => wr_ddc.sync,
       -- Read Ports (rd_clk domain)
       rd_clk            => rd_clk,
       valid             => rd_ddc.valid,
       dout(17 downto  0)=> rd_ddc.i_or_a,
       dout(35 downto 18)=> rd_ddc.q_or_f,
       dout(39 downto 36)=> rd_ddc.channel,
       dout(40)          => rd_ddc.tLast,
       dout(41)          => rd_ddc.sync );

end rtl;
