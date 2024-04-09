-------------------------------------------------------------------------------
-- Title      : LlrfSync
-------------------------------------------------------------------------------
-- File       : LlrfSync.vhd
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


library surf;
use surf.StdRtlPkg.all;
use surf.Jesd204bPkg.all;

entity LlrfSync is
  generic (
       TPD_G       : time := 1 ns );
  port (
       jesdClk     :  in slv(1 downto 0);
       jesdRst     :  in slv(1 downto 0);
       adcValidIn  :  in Slv6Array(1 downto 0);
       adcIn       :  in sampleDataVectorArray(1 downto 0, 5 downto 0);
       dacValidOut : out sl;
       dacOut      : out slv(31 downto 0);
       --
       jesdClk2x   :  in slv(1 downto 0);
       jesdRst2x   :  in slv(1 downto 0);
       adcOut      : out Slv16VectorArray(1 downto 0, 5 downto 0);
       adcValidOut : out SlVectorArray   (1 downto 0, 5 downto 0);
       dacValidIn  :  in sl               := '0';
       dacIn       :  in slv(15 downto 0) := (others=>'0') );
end LlrfSync;

architecture rtl of LlrfSync is

begin
  
   SYNC_ADC :
   for i in 5 downto 0 generate
     SYNC_ADC_BAY : for j in 1 downto 0 generate
       -- Synchronize to Bay1 clk2x
       U_Jesd32bTo16b: entity surf.Jesd32bTo16b
         generic map (
           TPD_G => TPD_G)
         port map (
           wrClk    => jesdClk(j),
           wrRst    => jesdRst(j),
           validIn  => adcValidIn(j)(i),
           dataIn   => adcIn(j, i),
           rdClk    => jesdClk2x(1),
           rdRst    => jesdRst2x(1),
           validOut => adcValidOut(j, i),
           dataOut  => adcOut(j, i));
     end generate SYNC_ADC_BAY;
   end generate SYNC_ADC;
         
   U_SYNC_DAC : entity surf.Jesd16bTo32b
      generic map (
         TPD_G => TPD_G)
      port map (
         wrClk    => jesdClk2x(1),
	 wrRst    => jesdRst2x(1),
	 validIn  => dacValidIn,
	 dataIn   => dacIn,
	 rdClk    => jesdClk(1),
	 rdRst    => jesdRst(1),
	 validOut => dacValidOut,
	 dataOut  => dacOut);

end rtl;
