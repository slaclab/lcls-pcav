-------------------------------------------------------------------
-- System Generator version 2017.4 VHDL source file.
--
-- Copyright(C) 2017 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2017 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_db61712358 is
  port (
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_db61712358;
architecture behavior of sysgen_constant_db61712358
is
begin
  op <= "010110011001100110";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_999e36f3c0 is
  port (
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_999e36f3c0;
architecture behavior of sysgen_constant_999e36f3c0
is
begin
  op <= "011001100110011010";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_0272b06a93 is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_0272b06a93;
architecture behavior of sysgen_constant_0272b06a93
is
begin
  op <= "0";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_logical_e6aac555ad is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_logical_e6aac555ad;
architecture behavior of sysgen_logical_e6aac555ad
is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => '0');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_e10d3c3aea is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_e10d3c3aea;
architecture behavior of sysgen_constant_e10d3c3aea
is
begin
  op <= "000";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_adc7b6b6ca is
  port (
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_adc7b6b6ca;
architecture behavior of sysgen_constant_adc7b6b6ca
is
begin
  op <= "000000000000000000";
end behavior;

library work;
use work.conv_pkg.all;

--$Header: /devl/xcs/repo/env/Jobs/sysgen/src/xbs/blocks/xlconvert/hdl/xlconvert.vhd,v 1.1 2004/11/22 00:17:30 rosty Exp $
---------------------------------------------------------------------
--
--  Filename      : xlconvert.vhd
--
--  Description   : VHDL description of a fixed point converter block that
--                  converts the input to a new output type.

--
---------------------------------------------------------------------


---------------------------------------------------------------------
--
--  Entity        : xlconvert
--
--  Architecture  : behavior
--
--  Description   : Top level VHDL description of fixed point conver block.
--
---------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;


entity convert_func_call_dsp_xlconvert is
    generic (
        din_width    : integer := 16;            -- Width of input
        din_bin_pt   : integer := 4;             -- Binary point of input
        din_arith    : integer := xlUnsigned;    -- Type of arith of input
        dout_width   : integer := 8;             -- Width of output
        dout_bin_pt  : integer := 2;             -- Binary point of output
        dout_arith   : integer := xlUnsigned;    -- Type of arith of output
        quantization : integer := xlTruncate;    -- xlRound or xlTruncate
        overflow     : integer := xlWrap);       -- xlSaturate or xlWrap
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        result : out std_logic_vector (dout_width-1 downto 0));
end convert_func_call_dsp_xlconvert ;

architecture behavior of convert_func_call_dsp_xlconvert is
begin
    -- Convert to output type and do saturation arith.
    result <= convert_type(din, din_width, din_bin_pt, din_arith,
                           dout_width, dout_bin_pt, dout_arith,
                           quantization, overflow);
end behavior;


library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;


entity dsp_xlconvert  is
    generic (
        din_width    : integer := 16;            -- Width of input
        din_bin_pt   : integer := 4;             -- Binary point of input
        din_arith    : integer := xlUnsigned;    -- Type of arith of input
        dout_width   : integer := 8;             -- Width of output
        dout_bin_pt  : integer := 2;             -- Binary point of output
        dout_arith   : integer := xlUnsigned;    -- Type of arith of output
        en_width     : integer := 1;
        en_bin_pt    : integer := 0;
        en_arith     : integer := xlUnsigned;
        bool_conversion : integer :=0;           -- if one, convert ufix_1_0 to
                                                 -- bool
        latency      : integer := 0;             -- Ouput delay clk cycles
        quantization : integer := xlTruncate;    -- xlRound or xlTruncate
        overflow     : integer := xlWrap);       -- xlSaturate or xlWrap
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        en  : in std_logic_vector (en_width-1 downto 0);
        ce  : in std_logic;
        clr : in std_logic;
        clk : in std_logic;
        dout : out std_logic_vector (dout_width-1 downto 0));

end dsp_xlconvert ;

architecture behavior of dsp_xlconvert  is

    component synth_reg
        generic (width       : integer;
                 latency     : integer);
        port (i       : in std_logic_vector(width-1 downto 0);
              ce      : in std_logic;
              clr     : in std_logic;
              clk     : in std_logic;
              o       : out std_logic_vector(width-1 downto 0));
    end component;

    component convert_func_call_dsp_xlconvert 
        generic (
            din_width    : integer := 16;            -- Width of input
            din_bin_pt   : integer := 4;             -- Binary point of input
            din_arith    : integer := xlUnsigned;    -- Type of arith of input
            dout_width   : integer := 8;             -- Width of output
            dout_bin_pt  : integer := 2;             -- Binary point of output
            dout_arith   : integer := xlUnsigned;    -- Type of arith of output
            quantization : integer := xlTruncate;    -- xlRound or xlTruncate
            overflow     : integer := xlWrap);       -- xlSaturate or xlWrap
        port (
            din : in std_logic_vector (din_width-1 downto 0);
            result : out std_logic_vector (dout_width-1 downto 0));
    end component;


    -- synthesis translate_off
--    signal real_din, real_dout : real;    -- For debugging info ports
    -- synthesis translate_on
    signal result : std_logic_vector(dout_width-1 downto 0);
    signal internal_ce : std_logic;

begin

    -- Debugging info for internal full precision variables
    -- synthesis translate_off
--     real_din <= to_real(din, din_bin_pt, din_arith);
--     real_dout <= to_real(dout, dout_bin_pt, dout_arith);
    -- synthesis translate_on

    internal_ce <= ce and en(0);

    bool_conversion_generate : if (bool_conversion = 1)
    generate
      result <= din;
    end generate; --bool_conversion_generate

    std_conversion_generate : if (bool_conversion = 0)
    generate
      -- Workaround for XST bug
      convert : convert_func_call_dsp_xlconvert 
        generic map (
          din_width   => din_width,
          din_bin_pt  => din_bin_pt,
          din_arith   => din_arith,
          dout_width  => dout_width,
          dout_bin_pt => dout_bin_pt,
          dout_arith  => dout_arith,
          quantization => quantization,
          overflow     => overflow)
        port map (
          din => din,
          result => result);
    end generate; --std_conversion_generate

    latency_test : if (latency > 0) generate
        reg : synth_reg
            generic map (
              width => dout_width,
              latency => latency
            )
            port map (
              i => result,
              ce => internal_ce,
              clr => clr,
              clk => clk,
              o => dout
            );
    end generate;

    latency0 : if (latency = 0)
    generate
        dout <= result;
    end generate latency0;

end  behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_counter_c5a19dcaf5 is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_counter_c5a19dcaf5;
architecture behavior of sysgen_counter_c5a19dcaf5
is
  signal count_reg_20_23: unsigned((1 - 1) downto 0) := "0";
begin
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("1");
      end if;
    end if;
  end process proc_count_reg_20_23;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_mux_abb1c38929 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((18 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_mux_abb1c38929;
architecture behavior of sysgen_mux_abb1c38929
is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((18 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "00000000000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((32 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= cast(d0_1_24, 0, 32, 0, xlSigned);
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library work;
use work.conv_pkg.all;

---------------------------------------------------------------------
--
--  Filename      : xlregister.vhd
--
--  Description   : VHDL description of an arbitrary wide register.
--                  Unlike the delay block, an initial value is
--                  specified and is considered valid at the start
--                  of simulation.  The register is only one word
--                  deep.
--
--  Mod. History  : Removed valid bit logic from wrapper.
--                : Changed VHDL to use a bit_vector generic for its
--
---------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;


entity dsp_xlregister is

   generic (d_width          : integer := 5;          -- Width of d input
            init_value       : bit_vector := b"00");  -- Binary init value string

   port (d   : in std_logic_vector (d_width-1 downto 0);
         rst : in std_logic_vector(0 downto 0) := "0";
         en  : in std_logic_vector(0 downto 0) := "1";
         ce  : in std_logic;
         clk : in std_logic;
         q   : out std_logic_vector (d_width-1 downto 0));

end dsp_xlregister;

architecture behavior of dsp_xlregister is

   component synth_reg_w_init
      generic (width      : integer;
               init_index : integer;
               init_value : bit_vector;
               latency    : integer);
      port (i   : in std_logic_vector(width-1 downto 0);
            ce  : in std_logic;
            clr : in std_logic;
            clk : in std_logic;
            o   : out std_logic_vector(width-1 downto 0));
   end component; -- end synth_reg_w_init

   -- synthesis translate_off
   signal real_d, real_q           : real;    -- For debugging info ports
   -- synthesis translate_on
   signal internal_clr             : std_logic;
   signal internal_ce              : std_logic;

begin

   internal_clr <= rst(0) and ce;
   internal_ce  <= en(0) and ce;

   -- Synthesizable behavioral model
   synth_reg_inst : synth_reg_w_init
      generic map (width      => d_width,
                   init_index => 2,
                   init_value => init_value,
                   latency    => 1)
      port map (i   => d,
                ce  => internal_ce,
                clr => internal_clr,
                clk => clk,
                o   => q);

end architecture behavior;


library work;
use work.conv_pkg.all;

---------------------------------------------------------------------
--
--  Filename      : xlceprobe.vhd
--
--  Description   : VHDL description of system clock enable probe.
--                  This block assigns the clock enable signal to
--                  the output port.
--  Mod. History  : Added beffer so the the ce nets would not get renamed
--
---------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

-- synthesis translate_off
library unisim;
use unisim.vcomponents.all;
-- synthesis translate_on


entity dsp_xlceprobe is
    generic (d_width  : integer := 8;
             q_width  : integer := 1);
    port (d       : in std_logic_vector (d_width-1 downto 0);
          ce      : in std_logic;
          clk     : in std_logic;
          q       : out std_logic_vector (q_width-1 downto 0));
end dsp_xlceprobe;

architecture behavior of dsp_xlceprobe is
    component BUF
        port(
            O  :        out   STD_ULOGIC;
            I  :        in    STD_ULOGIC);
    end component;
    attribute syn_black_box of BUF : component is true;
    attribute fpga_dont_touch of BUF : component is "true";
    signal ce_vec : std_logic_vector(0 downto 0);
begin
    buf_comp : buf port map(i => ce, o => ce_vec(0));
     -- use the clock enable signal to drive the output port
    q <= ce_vec;
end architecture behavior;

library work;
use work.conv_pkg.all;

---------------------------------------------------------------------
--
--  Filename      : xldsamp.vhd
--
--  Description   : VHDL description of a block that is inserted into the
--                  data path to down sample the data betwen two blocks
--                  where the period is different between two blocks.
--
--  Mod. History  : Changed clock timing on the down sampler.  The
--                  destination enable is delayed by one system clock
--                  cycle and held until the next consecutive source
--                  enable pulse.  This change allows downsampler data
--                  transitions to occur on the rising clock edge when
--                  the destination ce is asserted.
--                : Added optional latency is the downsampler.  Note, if
--                  the latency is greater than 0, no shutter is used.
--                : Removed valid bit logic from wrapper
--
--
---------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;


-- synthesis translate_off
library unisim;
use unisim.vcomponents.all;
-- synthesis translate_on

entity dsp_xldsamp is
  generic (
    d_width: integer := 12;
    d_bin_pt: integer := 0;
    d_arith: integer := xlUnsigned;
    q_width: integer := 12;
    q_bin_pt: integer := 0;
    q_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    ds_ratio: integer := 2;
    phase: integer := 0;
    latency: integer := 1
  );
  port (
    d: in std_logic_vector(d_width - 1 downto 0);
    src_clk: in std_logic;
    src_ce: in std_logic;
    src_clr: in std_logic;
    dest_clk: in std_logic;
    dest_ce: in std_logic;
    dest_clr: in std_logic;
    en: in std_logic_vector(en_width - 1 downto 0);
    rst: in std_logic_vector(rst_width - 1 downto 0);
    q: out std_logic_vector(q_width - 1 downto 0)
  );
end dsp_xldsamp;

architecture struct of dsp_xldsamp is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component; -- end synth_reg

  component synth_reg_reg
     generic (width       : integer;
              latency     : integer);
     port (i       : in std_logic_vector(width-1 downto 0);
           ce      : in std_logic;
           clr     : in std_logic;
           clk     : in std_logic;
           o       : out std_logic_vector(width-1 downto 0));
  end component;

  component fdse
    port (
      q: out   std_ulogic;
      d: in    std_ulogic;
      c: in    std_ulogic;
      s: in    std_ulogic;
      ce: in    std_ulogic
    );
  end component; -- end fdse
  attribute syn_black_box of fdse: component is true;
  attribute fpga_dont_touch of fdse: component is "true";

  signal adjusted_dest_ce: std_logic;
  signal adjusted_dest_ce_w_en: std_logic;
  signal dest_ce_w_en: std_logic;
  signal smpld_d: std_logic_vector(d_width-1 downto 0);
  signal sclr:std_logic;
begin
  -- An 'adjusted' destination clock enable signal must be generated for
  -- the zero latency and double registered down-sampler implementations.
  -- For both cases, it is necassary to adjust the timing of the clock
  -- enable so that it is asserted at the start of the sample period,
  -- instead of the end.  This is realized using an fdse prim. to register
  -- the destination clock enable.  The fdse itself is enabled with the
  -- source clock enable.  Enabling the fdse holds the adjusted CE high
  -- for the duration of the fast sample period and is needed to satisfy
  -- the multicycle constraint if the input data is running at a non-system
  -- rate.
  adjusted_ce_needed: if ((latency = 0) or (phase /= (ds_ratio - 1))) generate
    dest_ce_reg: fdse
      port map (
        q => adjusted_dest_ce,
        d => dest_ce,
        c => src_clk,
        s => sclr,
        ce => src_ce
      );
  end generate; -- adjusted_ce_needed

  -- A shutter (mux/reg pair) is used to implement a 0 latency downsampler.
  -- The shutter uses the adjusted destination clock enable to select between
  -- the current input and the sampled input.
  latency_eq_0: if (latency = 0) generate
    shutter_d_reg: synth_reg
      generic map (
        width => d_width,
        latency => 1
      )
      port map (
        i => d,
        ce => adjusted_dest_ce,
        clr => sclr,
        clk => src_clk,
        o => smpld_d
      );

    -- Mux selects current input value or register value.
    shutter_mux: process (adjusted_dest_ce, d, smpld_d)
    begin
	  if adjusted_dest_ce = '0' then
        q <= smpld_d;
      else
        q <= d;
      end if;
    end process; -- end select_mux
  end generate; -- end latency_eq_0

  -- A more efficient downsampler can be implemented if a latency > 0 is
  -- allowed.  There are two possible implementations, depending on the
  -- requested sampling phase.  A double register downsampler is needed
  -- for all cases except when the sample phase is the last input frame
  -- of the sample period.  In this case, only one register is needed.

  latency_gt_0: if (latency > 0) generate
    -- The first register in the double reg implementation is used to
    -- sample the correct frame (phase) of the input data.  Both the
    -- data and valid bit must be sampled.
    dbl_reg_test: if (phase /= (ds_ratio-1)) generate
        smpl_d_reg: synth_reg_reg
          generic map (
            width => d_width,
            latency => 1
          )
          port map (
            i => d,
            ce => adjusted_dest_ce_w_en,
            clr => sclr,
            clk => src_clk,
            o => smpld_d
          );
    end generate; -- end dbl_reg_test

    sngl_reg_test: if (phase = (ds_ratio -1)) generate
      smpld_d <= d;
    end generate; -- sngl_reg_test

    -- The latency pipe captures the sampled data and the END of the sample
    -- period.  Note that if the requested sample phase is the last input
    -- frame in the period, the first register (smpl_reg) is not needed.
    latency_pipe: synth_reg_reg
      generic map (
        width => d_width,
        latency => latency
      )
      port map (
        i => smpld_d,
        ce => dest_ce_w_en,
        clr => sclr,
        clk => dest_clk,
        o => q
      );
  end generate; -- end latency_gt_0

  -- Signal assignments
  dest_ce_w_en <= dest_ce and en(0);
  adjusted_dest_ce_w_en <= adjusted_dest_ce and en(0);
  sclr <= (src_clr or rst(0)) and dest_ce;
end architecture struct;
library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_relational_da7c781c60 is
  port (
    a : in std_logic_vector((18 - 1) downto 0);
    b : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_da7c781c60;
architecture behavior of sysgen_relational_da7c781c60
is
  signal a_1_31: signed((18 - 1) downto 0);
  signal b_1_34: signed((1 - 1) downto 0);
  type array_type_op_mem_37_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_37_22: array_type_op_mem_37_22 := (
    0 => false);
  signal op_mem_37_22_front_din: boolean;
  signal op_mem_37_22_back: boolean;
  signal op_mem_37_22_push_front_pop_back_en: std_logic;
  signal cast_14_17: signed((18 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_37_22_back <= op_mem_37_22(0);
  proc_op_mem_37_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_37_22_push_front_pop_back_en = '1')) then
        op_mem_37_22(0) <= op_mem_37_22_front_din;
      end if;
    end if;
  end process proc_op_mem_37_22;
  cast_14_17 <= s2s_cast(b_1_34, 0, 18, 15);
  result_14_3_rel <= a_1_31 /= cast_14_17;
  op_mem_37_22_front_din <= result_14_3_rel;
  op_mem_37_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_37_22_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_0b5fa36c3d is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_0b5fa36c3d;
architecture behavior of sysgen_constant_0b5fa36c3d
is
begin
  op <= "1";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;


entity dsp_xldelay is
   generic(width        : integer := -1;
           latency      : integer := -1;
           reg_retiming : integer :=  0;
           reset        : integer :=  0);
   port(d       : in std_logic_vector (width-1 downto 0);
        ce      : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        rst     : in std_logic;
        q       : out std_logic_vector (width-1 downto 0));

end dsp_xldelay;

architecture behavior of dsp_xldelay is
   component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component; -- end component synth_reg

   component synth_reg_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;

   signal internal_ce  : std_logic;

begin
   internal_ce  <= ce and en;

   srl_delay: if ((reg_retiming = 0) and (reset = 0)) or (latency < 1) generate
     synth_reg_srl_inst : synth_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => '0',
         clk => clk,
         o   => q);
   end generate srl_delay;

   reg_delay: if ((reg_retiming = 1) or (reset = 1)) and (latency >= 1) generate
     synth_reg_reg_inst : synth_reg_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => rst,
         clk => clk,
         o   => q);
   end generate reg_delay;
end architecture behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_accum_4cc7c6dd2c is
  port (
    b : in std_logic_vector((18 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_accum_4cc7c6dd2c;
architecture behavior of sysgen_accum_4cc7c6dd2c
is
  signal b_17_24: signed((18 - 1) downto 0);
  signal rst_17_27: boolean;
  signal accum_reg_39_23: signed((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal accum_reg_39_23_rst: std_logic;
  signal cast_49_42: signed((32 - 1) downto 0);
  signal accum_reg_join_45_1: signed((33 - 1) downto 0);
  signal accum_reg_join_45_1_rst: std_logic;
begin
  b_17_24 <= std_logic_vector_to_signed(b);
  rst_17_27 <= ((rst) = "1");
  proc_accum_reg_39_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (accum_reg_39_23_rst = '1')) then
        accum_reg_39_23 <= "00000000000000000000000000000000";
      elsif (ce = '1') then 
        accum_reg_39_23 <= accum_reg_39_23 + cast_49_42;
      end if;
    end if;
  end process proc_accum_reg_39_23;
  cast_49_42 <= s2s_cast(b_17_24, 16, 32, 16);
  proc_if_45_1: process (accum_reg_39_23, cast_49_42, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_45_1_rst <= '1';
    else 
      accum_reg_join_45_1_rst <= '0';
    end if;
  end process proc_if_45_1;
  accum_reg_39_23_rst <= accum_reg_join_45_1_rst;
  q <= signed_to_std_logic_vector(accum_reg_39_23);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_inverter_67ad010f42 is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_inverter_67ad010f42;
architecture behavior of sysgen_inverter_67ad010f42
is
  signal ip_1_26: boolean;
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of boolean;
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => false);
  signal op_mem_22_20_front_din: boolean;
  signal op_mem_22_20_back: boolean;
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: boolean;
begin
  ip_1_26 <= ((ip) = "1");
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_front_din <= internal_ip_12_1_bitnot;
  op_mem_22_20_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_22_20_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_b2ceed5a46 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_b2ceed5a46;
architecture behavior of sysgen_constant_b2ceed5a46
is
begin
  op <= "0000000000101000";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_9a84ae6da1 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_9a84ae6da1;
architecture behavior of sysgen_constant_9a84ae6da1
is
begin
  op <= "0000000000110111";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_6f518e0398 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_6f518e0398;
architecture behavior of sysgen_constant_6f518e0398
is
begin
  op <= "0000000001101010";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_284465ef96 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_284465ef96;
architecture behavior of sysgen_constant_284465ef96
is
begin
  op <= "0000000001010111";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_relational_f85cc5971b is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    en : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_f85cc5971b;
architecture behavior of sysgen_relational_f85cc5971b
is
  signal a_1_31: unsigned((16 - 1) downto 0);
  signal b_1_34: unsigned((16 - 1) downto 0);
  signal en_1_37: boolean;
  type array_type_op_mem_37_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_37_22: array_type_op_mem_37_22 := (
    0 => false);
  signal op_mem_37_22_front_din: boolean;
  signal op_mem_37_22_back: boolean;
  signal op_mem_37_22_push_front_pop_back_en: std_logic;
  signal result_16_3_rel: boolean;
  signal op_mem_shift_join_39_3: boolean;
  signal op_mem_shift_join_39_3_en: std_logic;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  en_1_37 <= ((en) = "1");
  op_mem_37_22_back <= op_mem_37_22(0);
  proc_op_mem_37_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_37_22_push_front_pop_back_en = '1')) then
        op_mem_37_22(0) <= op_mem_37_22_front_din;
      end if;
    end if;
  end process proc_op_mem_37_22;
  result_16_3_rel <= a_1_31 < b_1_34;
  proc_if_39_3: process (en_1_37, result_16_3_rel)
  is
  begin
    if en_1_37 then
      op_mem_shift_join_39_3_en <= '1';
    else 
      op_mem_shift_join_39_3_en <= '0';
    end if;
    op_mem_shift_join_39_3 <= result_16_3_rel;
  end process proc_if_39_3;
  op_mem_37_22_front_din <= op_mem_shift_join_39_3;
  op_mem_37_22_push_front_pop_back_en <= op_mem_shift_join_39_3_en;
  op <= boolean_to_vector(op_mem_37_22_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_relational_23c51632d4 is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_23c51632d4;
architecture behavior of sysgen_relational_23c51632d4
is
  signal a_1_31: unsigned((16 - 1) downto 0);
  signal b_1_34: unsigned((16 - 1) downto 0);
  type array_type_op_mem_37_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_37_22: array_type_op_mem_37_22 := (
    0 => false);
  signal op_mem_37_22_front_din: boolean;
  signal op_mem_37_22_back: boolean;
  signal op_mem_37_22_push_front_pop_back_en: std_logic;
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_37_22_back <= op_mem_37_22(0);
  proc_op_mem_37_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_37_22_push_front_pop_back_en = '1')) then
        op_mem_37_22(0) <= op_mem_37_22_front_din;
      end if;
    end if;
  end process proc_op_mem_37_22;
  result_18_3_rel <= a_1_31 > b_1_34;
  op_mem_37_22_front_din <= result_18_3_rel;
  op_mem_37_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_37_22_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_relational_05a57d317e is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    en : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_05a57d317e;
architecture behavior of sysgen_relational_05a57d317e
is
  signal a_1_31: unsigned((16 - 1) downto 0);
  signal b_1_34: unsigned((16 - 1) downto 0);
  signal en_1_37: boolean;
  type array_type_op_mem_37_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_37_22: array_type_op_mem_37_22 := (
    0 => false);
  signal op_mem_37_22_front_din: boolean;
  signal op_mem_37_22_back: boolean;
  signal op_mem_37_22_push_front_pop_back_en: std_logic;
  signal result_18_3_rel: boolean;
  signal op_mem_shift_join_39_3: boolean;
  signal op_mem_shift_join_39_3_en: std_logic;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  en_1_37 <= ((en) = "1");
  op_mem_37_22_back <= op_mem_37_22(0);
  proc_op_mem_37_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_37_22_push_front_pop_back_en = '1')) then
        op_mem_37_22(0) <= op_mem_37_22_front_din;
      end if;
    end if;
  end process proc_op_mem_37_22;
  result_18_3_rel <= a_1_31 > b_1_34;
  proc_if_39_3: process (en_1_37, result_18_3_rel)
  is
  begin
    if en_1_37 then
      op_mem_shift_join_39_3_en <= '1';
    else 
      op_mem_shift_join_39_3_en <= '0';
    end if;
    op_mem_shift_join_39_3 <= result_18_3_rel;
  end process proc_if_39_3;
  op_mem_37_22_front_din <= op_mem_shift_join_39_3;
  op_mem_37_22_push_front_pop_back_en <= op_mem_shift_join_39_3_en;
  op <= boolean_to_vector(op_mem_37_22_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_relational_cb99e2a0a4 is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_cb99e2a0a4;
architecture behavior of sysgen_relational_cb99e2a0a4
is
  signal a_1_31: unsigned((16 - 1) downto 0);
  signal b_1_34: unsigned((1 - 1) downto 0);
  type array_type_op_mem_37_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_37_22: array_type_op_mem_37_22 := (
    0 => false);
  signal op_mem_37_22_front_din: boolean;
  signal op_mem_37_22_back: boolean;
  signal op_mem_37_22_push_front_pop_back_en: std_logic;
  signal cast_18_16: unsigned((16 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_37_22_back <= op_mem_37_22(0);
  proc_op_mem_37_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_37_22_push_front_pop_back_en = '1')) then
        op_mem_37_22(0) <= op_mem_37_22_front_din;
      end if;
    end if;
  end process proc_op_mem_37_22;
  cast_18_16 <= u2u_cast(b_1_34, 0, 16, 0);
  result_18_3_rel <= a_1_31 > cast_18_16;
  op_mem_37_22_front_din <= result_18_3_rel;
  op_mem_37_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_37_22_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_ddcd7f6a05 is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_ddcd7f6a05;
architecture behavior of sysgen_constant_ddcd7f6a05
is
begin
  op <= "1011";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_relational_bc41c4add6 is
  port (
    a : in std_logic_vector((4 - 1) downto 0);
    b : in std_logic_vector((4 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_bc41c4add6;
architecture behavior of sysgen_relational_bc41c4add6
is
  signal a_1_31: unsigned((4 - 1) downto 0);
  signal b_1_34: unsigned((4 - 1) downto 0);
  type array_type_op_mem_37_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_37_22: array_type_op_mem_37_22 := (
    0 => false);
  signal op_mem_37_22_front_din: boolean;
  signal op_mem_37_22_back: boolean;
  signal op_mem_37_22_push_front_pop_back_en: std_logic;
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_37_22_back <= op_mem_37_22(0);
  proc_op_mem_37_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_37_22_push_front_pop_back_en = '1')) then
        op_mem_37_22(0) <= op_mem_37_22_front_din;
      end if;
    end if;
  end process proc_op_mem_37_22;
  result_12_3_rel <= a_1_31 = b_1_34;
  op_mem_37_22_front_din <= result_12_3_rel;
  op_mem_37_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_37_22_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_912aa38159 is
  port (
    op : out std_logic_vector((26 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_912aa38159;
architecture behavior of sysgen_constant_912aa38159
is
begin
  op <= "10111111001001100111000000";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_803072cb09 is
  port (
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_803072cb09;
architecture behavior of sysgen_constant_803072cb09
is
begin
  op <= "011001001000100000";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_logical_b0a7f3ef2b is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_logical_b0a7f3ef2b;
architecture behavior of sysgen_logical_b0a7f3ef2b
is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic_vector((1 - 1) downto 0);
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => "0");
  signal latency_pipe_5_26_front_din: std_logic_vector((1 - 1) downto 0);
  signal latency_pipe_5_26_back: std_logic_vector((1 - 1) downto 0);
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic;
  signal unregy_3_1_convert: std_logic_vector((1 - 1) downto 0);
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  unregy_3_1_convert <= cast(std_logic_to_vector(fully_2_1_bit), 0, 1, 0, xlUnsigned);
  latency_pipe_5_26_front_din <= unregy_3_1_convert;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= latency_pipe_5_26_back;
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_addsub_7574ef6005 is
  port (
    a : in std_logic_vector((1 - 1) downto 0);
    b : in std_logic_vector((1 - 1) downto 0);
    s : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_addsub_7574ef6005;
architecture behavior of sysgen_addsub_7574ef6005
is
  signal a_17_32: unsigned((1 - 1) downto 0);
  signal b_17_35: unsigned((1 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((2 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00");
  signal op_mem_91_20_front_din: signed((2 - 1) downto 0);
  signal op_mem_91_20_back: signed((2 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((3 - 1) downto 0);
  signal cast_71_22: signed((3 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((3 - 1) downto 0);
  signal internal_s_83_3_convert: signed((2 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_71_18 <= u2s_cast(a_17_32, 0, 3, 0);
  cast_71_22 <= u2s_cast(b_17_35, 0, 3, 0);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  internal_s_83_3_convert <= std_logic_vector_to_signed(convert_type(signed_to_std_logic_vector(internal_s_71_5_addsub), 3, 0, xlSigned, 2, 0, xlSigned, xlTruncate, xlSaturate));
  op_mem_91_20_front_din <= internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_relational_a5f9590f9b is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_a5f9590f9b;
architecture behavior of sysgen_relational_a5f9590f9b
is
  signal a_1_31: signed((2 - 1) downto 0);
  signal b_1_34: signed((1 - 1) downto 0);
  type array_type_op_mem_37_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_37_22: array_type_op_mem_37_22 := (
    0 => false);
  signal op_mem_37_22_front_din: boolean;
  signal op_mem_37_22_back: boolean;
  signal op_mem_37_22_push_front_pop_back_en: std_logic;
  signal cast_18_16: signed((2 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_37_22_back <= op_mem_37_22(0);
  proc_op_mem_37_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_37_22_push_front_pop_back_en = '1')) then
        op_mem_37_22(0) <= op_mem_37_22_front_din;
      end if;
    end if;
  end process proc_op_mem_37_22;
  cast_18_16 <= s2s_cast(b_1_34, 0, 2, 0);
  result_18_3_rel <= a_1_31 > cast_18_16;
  op_mem_37_22_front_din <= result_18_3_rel;
  op_mem_37_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_37_22_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_2a802540ac is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_2a802540ac;
architecture behavior of sysgen_constant_2a802540ac
is
begin
  op <= "00000000000000000000011000110011";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_logical_32944f5613 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_logical_32944f5613;
architecture behavior of sysgen_logical_32944f5613
is
  signal d0_1_24: std_logic_vector((1 - 1) downto 0);
  signal d1_1_27: std_logic_vector((1 - 1) downto 0);
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic_vector((1 - 1) downto 0);
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => "0");
  signal latency_pipe_5_26_front_din: std_logic_vector((1 - 1) downto 0);
  signal latency_pipe_5_26_back: std_logic_vector((1 - 1) downto 0);
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic_vector((1 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= latency_pipe_5_26_back;
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_inverter_054a6621f5 is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_inverter_054a6621f5;
architecture behavior of sysgen_inverter_054a6621f5
is
  signal ip_1_26: unsigned((1 - 1) downto 0);
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => "0");
  signal op_mem_22_20_front_din: unsigned((1 - 1) downto 0);
  signal op_mem_22_20_back: unsigned((1 - 1) downto 0);
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: unsigned((1 - 1) downto 0);
begin
  ip_1_26 <= std_logic_vector_to_unsigned(ip);
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= std_logic_vector_to_unsigned(not unsigned_to_std_logic_vector(ip_1_26));
  op_mem_22_20_front_din <= internal_ip_12_1_bitnot;
  op_mem_22_20_push_front_pop_back_en <= '1';
  op <= unsigned_to_std_logic_vector(op_mem_22_20_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_relational_213f394d8c is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_213f394d8c;
architecture behavior of sysgen_relational_213f394d8c
is
  signal a_1_31: unsigned((16 - 1) downto 0);
  signal b_1_34: signed((18 - 1) downto 0);
  type array_type_op_mem_37_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_37_22: array_type_op_mem_37_22 := (
    0 => false);
  signal op_mem_37_22_front_din: boolean;
  signal op_mem_37_22_back: boolean;
  signal op_mem_37_22_push_front_pop_back_en: std_logic;
  signal cast_18_12: signed((33 - 1) downto 0);
  signal cast_18_16: signed((33 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_37_22_back <= op_mem_37_22(0);
  proc_op_mem_37_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_37_22_push_front_pop_back_en = '1')) then
        op_mem_37_22(0) <= op_mem_37_22_front_din;
      end if;
    end if;
  end process proc_op_mem_37_22;
  cast_18_12 <= u2s_cast(a_1_31, 0, 33, 16);
  cast_18_16 <= s2s_cast(b_1_34, 16, 33, 16);
  result_18_3_rel <= cast_18_12 > cast_18_16;
  op_mem_37_22_front_din <= result_18_3_rel;
  op_mem_37_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_37_22_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_abs_5257526c8e is
  port (
    a : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_abs_5257526c8e;
architecture behavior of sysgen_abs_5257526c8e
is
  signal a_16_25: signed((18 - 1) downto 0);
  type array_type_op_mem_48_20 is array (0 to (1 - 1)) of signed((19 - 1) downto 0);
  signal op_mem_48_20: array_type_op_mem_48_20 := (
    0 => "0000000000000000000");
  signal op_mem_48_20_front_din: signed((19 - 1) downto 0);
  signal op_mem_48_20_back: signed((19 - 1) downto 0);
  signal op_mem_48_20_push_front_pop_back_en: std_logic;
  signal cast_34_28: signed((19 - 1) downto 0);
  signal internal_ip_34_13_neg: signed((19 - 1) downto 0);
  signal rel_31_8: boolean;
  signal internal_ip_join_31_5: signed((19 - 1) downto 0);
  signal internal_ip_join_28_1: signed((19 - 1) downto 0);
begin
  a_16_25 <= std_logic_vector_to_signed(a);
  op_mem_48_20_back <= op_mem_48_20(0);
  proc_op_mem_48_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_48_20_push_front_pop_back_en = '1')) then
        op_mem_48_20(0) <= op_mem_48_20_front_din;
      end if;
    end if;
  end process proc_op_mem_48_20;
  cast_34_28 <= s2s_cast(a_16_25, 16, 19, 16);
  internal_ip_34_13_neg <=  -cast_34_28;
  rel_31_8 <= a_16_25 >= std_logic_vector_to_signed("000000000000000000");
  proc_if_31_5: process (a_16_25, internal_ip_34_13_neg, rel_31_8)
  is
  begin
    if rel_31_8 then
      internal_ip_join_31_5 <= s2s_cast(a_16_25, 16, 19, 16);
    else 
      internal_ip_join_31_5 <= internal_ip_34_13_neg;
    end if;
  end process proc_if_31_5;
  proc_if_28_1: process (internal_ip_join_31_5)
  is
  begin
    if false then
      internal_ip_join_28_1 <= std_logic_vector_to_signed("0000000000000000000");
    else 
      internal_ip_join_28_1 <= internal_ip_join_31_5;
    end if;
  end process proc_if_28_1;
  op_mem_48_20_front_din <= internal_ip_join_28_1;
  op_mem_48_20_push_front_pop_back_en <= '1';
  op <= signed_to_std_logic_vector(op_mem_48_20_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_abs_a341405846 is
  port (
    a : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_abs_a341405846;
architecture behavior of sysgen_abs_a341405846
is
  signal a_16_25: signed((18 - 1) downto 0);
  type array_type_op_mem_48_20 is array (0 to (1 - 1)) of signed((19 - 1) downto 0);
  signal op_mem_48_20: array_type_op_mem_48_20 := (
    0 => "0000000000000000000");
  signal op_mem_48_20_front_din: signed((19 - 1) downto 0);
  signal op_mem_48_20_back: signed((19 - 1) downto 0);
  signal op_mem_48_20_push_front_pop_back_en: std_logic;
  signal cast_34_28: signed((19 - 1) downto 0);
  signal internal_ip_34_13_neg: signed((19 - 1) downto 0);
  signal rel_31_8: boolean;
  signal internal_ip_join_31_5: signed((19 - 1) downto 0);
  signal internal_ip_join_28_1: signed((19 - 1) downto 0);
begin
  a_16_25 <= std_logic_vector_to_signed(a);
  op_mem_48_20_back <= op_mem_48_20(0);
  proc_op_mem_48_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_48_20_push_front_pop_back_en = '1')) then
        op_mem_48_20(0) <= op_mem_48_20_front_din;
      end if;
    end if;
  end process proc_op_mem_48_20;
  cast_34_28 <= s2s_cast(a_16_25, 15, 19, 15);
  internal_ip_34_13_neg <=  -cast_34_28;
  rel_31_8 <= a_16_25 >= std_logic_vector_to_signed("000000000000000000");
  proc_if_31_5: process (a_16_25, internal_ip_34_13_neg, rel_31_8)
  is
  begin
    if rel_31_8 then
      internal_ip_join_31_5 <= s2s_cast(a_16_25, 15, 19, 15);
    else 
      internal_ip_join_31_5 <= internal_ip_34_13_neg;
    end if;
  end process proc_if_31_5;
  proc_if_28_1: process (internal_ip_join_31_5)
  is
  begin
    if false then
      internal_ip_join_28_1 <= std_logic_vector_to_signed("0000000000000000000");
    else 
      internal_ip_join_28_1 <= internal_ip_join_31_5;
    end if;
  end process proc_if_28_1;
  op_mem_48_20_front_din <= internal_ip_join_28_1;
  op_mem_48_20_push_front_pop_back_en <= '1';
  op <= signed_to_std_logic_vector(op_mem_48_20_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_bc38c8b0ea is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_bc38c8b0ea;
architecture behavior of sysgen_constant_bc38c8b0ea
is
begin
  op <= "00";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_logical_1428f80391 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_logical_1428f80391;
architecture behavior of sysgen_logical_1428f80391
is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => '0');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 xor d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_relational_d437d88857 is
  port (
    a : in std_logic_vector((19 - 1) downto 0);
    b : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_d437d88857;
architecture behavior of sysgen_relational_d437d88857
is
  signal a_1_31: signed((19 - 1) downto 0);
  signal b_1_34: signed((18 - 1) downto 0);
  type array_type_op_mem_37_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_37_22: array_type_op_mem_37_22 := (
    0 => false);
  signal op_mem_37_22_front_din: boolean;
  signal op_mem_37_22_back: boolean;
  signal op_mem_37_22_push_front_pop_back_en: std_logic;
  signal cast_18_16: signed((19 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_37_22_back <= op_mem_37_22(0);
  proc_op_mem_37_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_37_22_push_front_pop_back_en = '1')) then
        op_mem_37_22(0) <= op_mem_37_22_front_din;
      end if;
    end if;
  end process proc_op_mem_37_22;
  cast_18_16 <= s2s_cast(b_1_34, 16, 19, 16);
  result_18_3_rel <= a_1_31 > cast_18_16;
  op_mem_37_22_front_din <= result_18_3_rel;
  op_mem_37_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_37_22_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_relational_a8fb20a446 is
  port (
    a : in std_logic_vector((19 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_a8fb20a446;
architecture behavior of sysgen_relational_a8fb20a446
is
  signal a_1_31: signed((19 - 1) downto 0);
  signal b_1_34: signed((2 - 1) downto 0);
  type array_type_op_mem_37_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_37_22: array_type_op_mem_37_22 := (
    0 => false);
  signal op_mem_37_22_front_din: boolean;
  signal op_mem_37_22_back: boolean;
  signal op_mem_37_22_push_front_pop_back_en: std_logic;
  signal cast_18_16: signed((19 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_37_22_back <= op_mem_37_22(0);
  proc_op_mem_37_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_37_22_push_front_pop_back_en = '1')) then
        op_mem_37_22(0) <= op_mem_37_22_front_din;
      end if;
    end if;
  end process proc_op_mem_37_22;
  cast_18_16 <= s2s_cast(b_1_34, 0, 19, 15);
  result_18_3_rel <= a_1_31 > cast_18_16;
  op_mem_37_22_front_din <= result_18_3_rel;
  op_mem_37_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_37_22_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_logical_32ca177ee1 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_logical_32ca177ee1;
architecture behavior of sysgen_logical_32ca177ee1
is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => '0');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_7d4229dcc1 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_7d4229dcc1;
architecture behavior of sysgen_constant_7d4229dcc1
is
begin
  op <= "0000000000111100";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_scale_da808b968a is
  port (
    ip : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_scale_da808b968a;
architecture behavior of sysgen_scale_da808b968a
is
  signal ip_17_23: signed((32 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_3e396cb391 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_3e396cb391;
architecture behavior of sysgen_constant_3e396cb391
is
begin
  op <= "0000000010000010";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_88bfd560fc is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_88bfd560fc;
architecture behavior of sysgen_constant_88bfd560fc
is
begin
  op <= "0000000001010001";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_abs_8bc3eac8ec is
  port (
    a : in std_logic_vector((33 - 1) downto 0);
    op : out std_logic_vector((34 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_abs_8bc3eac8ec;
architecture behavior of sysgen_abs_8bc3eac8ec
is
  signal a_16_25: signed((33 - 1) downto 0);
  type array_type_op_mem_48_20 is array (0 to (1 - 1)) of signed((34 - 1) downto 0);
  signal op_mem_48_20: array_type_op_mem_48_20 := (
    0 => "0000000000000000000000000000000000");
  signal op_mem_48_20_front_din: signed((34 - 1) downto 0);
  signal op_mem_48_20_back: signed((34 - 1) downto 0);
  signal op_mem_48_20_push_front_pop_back_en: std_logic;
  signal cast_34_28: signed((34 - 1) downto 0);
  signal internal_ip_34_13_neg: signed((34 - 1) downto 0);
  signal rel_31_8: boolean;
  signal internal_ip_join_31_5: signed((34 - 1) downto 0);
  signal internal_ip_join_28_1: signed((34 - 1) downto 0);
begin
  a_16_25 <= std_logic_vector_to_signed(a);
  op_mem_48_20_back <= op_mem_48_20(0);
  proc_op_mem_48_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_48_20_push_front_pop_back_en = '1')) then
        op_mem_48_20(0) <= op_mem_48_20_front_din;
      end if;
    end if;
  end process proc_op_mem_48_20;
  cast_34_28 <= s2s_cast(a_16_25, 31, 34, 31);
  internal_ip_34_13_neg <=  -cast_34_28;
  rel_31_8 <= a_16_25 >= std_logic_vector_to_signed("000000000000000000000000000000000");
  proc_if_31_5: process (a_16_25, internal_ip_34_13_neg, rel_31_8)
  is
  begin
    if rel_31_8 then
      internal_ip_join_31_5 <= s2s_cast(a_16_25, 31, 34, 31);
    else 
      internal_ip_join_31_5 <= internal_ip_34_13_neg;
    end if;
  end process proc_if_31_5;
  proc_if_28_1: process (internal_ip_join_31_5)
  is
  begin
    if false then
      internal_ip_join_28_1 <= std_logic_vector_to_signed("0000000000000000000000000000000000");
    else 
      internal_ip_join_28_1 <= internal_ip_join_31_5;
    end if;
  end process proc_if_28_1;
  op_mem_48_20_front_din <= internal_ip_join_28_1;
  op_mem_48_20_push_front_pop_back_en <= '1';
  op <= signed_to_std_logic_vector(op_mem_48_20_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_accum_0338a6f4e9 is
  port (
    b : in std_logic_vector((1 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_accum_0338a6f4e9;
architecture behavior of sysgen_accum_0338a6f4e9
is
  signal b_17_24: unsigned((1 - 1) downto 0);
  signal rst_17_27: boolean;
  signal accum_reg_39_23: unsigned((16 - 1) downto 0) := "0000000000000000";
  signal accum_reg_39_23_rst: std_logic;
  signal cast_49_42: unsigned((16 - 1) downto 0);
  signal accum_reg_join_45_1: unsigned((17 - 1) downto 0);
  signal accum_reg_join_45_1_rst: std_logic;
begin
  b_17_24 <= std_logic_vector_to_unsigned(b);
  rst_17_27 <= ((rst) = "1");
  proc_accum_reg_39_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (accum_reg_39_23_rst = '1')) then
        accum_reg_39_23 <= "0000000000000000";
      elsif (ce = '1') then 
        accum_reg_39_23 <= accum_reg_39_23 + cast_49_42;
      end if;
    end if;
  end process proc_accum_reg_39_23;
  cast_49_42 <= u2u_cast(b_17_24, 0, 16, 0);
  proc_if_45_1: process (accum_reg_39_23, cast_49_42, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_45_1_rst <= '1';
    else 
      accum_reg_join_45_1_rst <= '0';
    end if;
  end process proc_if_45_1;
  accum_reg_39_23_rst <= accum_reg_join_45_1_rst;
  q <= unsigned_to_std_logic_vector(accum_reg_39_23);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_d42df41232 is
  port (
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_d42df41232;
architecture behavior of sysgen_constant_d42df41232
is
begin
  op <= "0000000000000000000";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_relational_5cf5b9a0f0 is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((19 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_5cf5b9a0f0;
architecture behavior of sysgen_relational_5cf5b9a0f0
is
  signal a_1_31: unsigned((16 - 1) downto 0);
  signal b_1_34: signed((19 - 1) downto 0);
  type array_type_op_mem_37_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_37_22: array_type_op_mem_37_22 := (
    0 => false);
  signal op_mem_37_22_front_din: boolean;
  signal op_mem_37_22_back: boolean;
  signal op_mem_37_22_push_front_pop_back_en: std_logic;
  signal cast_18_12: signed((33 - 1) downto 0);
  signal cast_18_16: signed((33 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_37_22_back <= op_mem_37_22(0);
  proc_op_mem_37_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_37_22_push_front_pop_back_en = '1')) then
        op_mem_37_22(0) <= op_mem_37_22_front_din;
      end if;
    end if;
  end process proc_op_mem_37_22;
  cast_18_12 <= u2s_cast(a_1_31, 0, 33, 16);
  cast_18_16 <= s2s_cast(b_1_34, 16, 33, 16);
  result_18_3_rel <= cast_18_12 > cast_18_16;
  op_mem_37_22_front_din <= result_18_3_rel;
  op_mem_37_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_37_22_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_relational_e8ecd65e86 is
  port (
    a : in std_logic_vector((19 - 1) downto 0);
    b : in std_logic_vector((19 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_e8ecd65e86;
architecture behavior of sysgen_relational_e8ecd65e86
is
  signal a_1_31: signed((19 - 1) downto 0);
  signal b_1_34: signed((19 - 1) downto 0);
  type array_type_op_mem_37_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_37_22: array_type_op_mem_37_22 := (
    0 => false);
  signal op_mem_37_22_front_din: boolean;
  signal op_mem_37_22_back: boolean;
  signal op_mem_37_22_push_front_pop_back_en: std_logic;
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_37_22_back <= op_mem_37_22(0);
  proc_op_mem_37_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_37_22_push_front_pop_back_en = '1')) then
        op_mem_37_22(0) <= op_mem_37_22_front_din;
      end if;
    end if;
  end process proc_op_mem_37_22;
  result_18_3_rel <= a_1_31 > b_1_34;
  op_mem_37_22_front_din <= result_18_3_rel;
  op_mem_37_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_37_22_back);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_relational_8336e1e4a2 is
  port (
    a : in std_logic_vector((34 - 1) downto 0);
    b : in std_logic_vector((19 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_8336e1e4a2;
architecture behavior of sysgen_relational_8336e1e4a2
is
  signal a_1_31: signed((34 - 1) downto 0);
  signal b_1_34: signed((19 - 1) downto 0);
  type array_type_op_mem_37_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_37_22: array_type_op_mem_37_22 := (
    0 => false);
  signal op_mem_37_22_front_din: boolean;
  signal op_mem_37_22_back: boolean;
  signal op_mem_37_22_push_front_pop_back_en: std_logic;
  signal cast_18_16: signed((34 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_37_22_back <= op_mem_37_22(0);
  proc_op_mem_37_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_37_22_push_front_pop_back_en = '1')) then
        op_mem_37_22(0) <= op_mem_37_22_front_din;
      end if;
    end if;
  end process proc_op_mem_37_22;
  cast_18_16 <= s2s_cast(b_1_34, 16, 34, 31);
  result_18_3_rel <= a_1_31 > cast_18_16;
  op_mem_37_22_front_din <= result_18_3_rel;
  op_mem_37_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_37_22_back);
end behavior;

library work;
use work.conv_pkg.all;

-------------------------------------------------------------------
 -- System Generator version 11.1 VHDL source file.
 --
 -- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
 -- text/file contains proprietary, confidential information of Xilinx,
 -- Inc., is distributed under license from Xilinx, Inc., and may be used,
 -- copied and/or disclosed only pursuant to the terms of a valid license
 -- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
 -- this text/file solely for design, simulation, implementation and
 -- creation of design files limited to Xilinx devices or technologies.
 -- Use with non-Xilinx devices or technologies is expressly prohibited
 -- and immediately terminates your license unless covered by a separate
 -- agreement.
 --
 -- Xilinx is providing this design, code, or information "as is" solely
 -- for use in developing programs and solutions for Xilinx devices.  By
 -- providing this design, code, or information as one possible
 -- implementation of this feature, application or standard, Xilinx is
 -- making no representation that this implementation is free from any
 -- claims of infringement.  You are responsible for obtaining any rights
 -- you may require for your implementation.  Xilinx expressly disclaims
 -- any warranty whatsoever with respect to the adequacy of the
 -- implementation, including but not limited to warranties of
 -- merchantability or fitness for a particular purpose.
 --
 -- Xilinx products are not intended for use in life support appliances,
 -- devices, or systems.  Use in such applications is expressly prohibited.
 --
 -- Any modifications that are made to the source code are done at the user's
 -- sole risk and will be unsupported.
 --
 -- This copyright and support notice must be retained as part of this
 -- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
 -- reserved.
 -------------------------------------------------------------------
 library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.std_logic_arith.all;

entity dsp_xladdsub is 
   generic (
     core_name0: string := "";
     a_width: integer := 16;
     a_bin_pt: integer := 4;
     a_arith: integer := xlUnsigned;
     c_in_width: integer := 16;
     c_in_bin_pt: integer := 4;
     c_in_arith: integer := xlUnsigned;
     c_out_width: integer := 16;
     c_out_bin_pt: integer := 4;
     c_out_arith: integer := xlUnsigned;
     b_width: integer := 8;
     b_bin_pt: integer := 2;
     b_arith: integer := xlUnsigned;
     s_width: integer := 17;
     s_bin_pt: integer := 4;
     s_arith: integer := xlUnsigned;
     rst_width: integer := 1;
     rst_bin_pt: integer := 0;
     rst_arith: integer := xlUnsigned;
     en_width: integer := 1;
     en_bin_pt: integer := 0;
     en_arith: integer := xlUnsigned;
     full_s_width: integer := 17;
     full_s_arith: integer := xlUnsigned;
     mode: integer := xlAddMode;
     extra_registers: integer := 0;
     latency: integer := 0;
     quantization: integer := xlTruncate;
     overflow: integer := xlWrap;
     c_latency: integer := 0;
     c_output_width: integer := 17;
     c_has_c_in : integer := 0;
     c_has_c_out : integer := 0
   );
   port (
     a: in std_logic_vector(a_width - 1 downto 0);
     b: in std_logic_vector(b_width - 1 downto 0);
     c_in : in std_logic_vector (0 downto 0) := "0";
     ce: in std_logic;
     clr: in std_logic := '0';
     clk: in std_logic;
     rst: in std_logic_vector(rst_width - 1 downto 0) := "0";
     en: in std_logic_vector(en_width - 1 downto 0) := "1";
     c_out : out std_logic_vector (0 downto 0);
     s: out std_logic_vector(s_width - 1 downto 0)
   );
 end dsp_xladdsub;
 
 architecture behavior of dsp_xladdsub is 
 component synth_reg
 generic (
 width: integer := 16;
 latency: integer := 5
 );
 port (
 i: in std_logic_vector(width - 1 downto 0);
 ce: in std_logic;
 clr: in std_logic;
 clk: in std_logic;
 o: out std_logic_vector(width - 1 downto 0)
 );
 end component;
 
 function format_input(inp: std_logic_vector; old_width, delta, new_arith,
 new_width: integer)
 return std_logic_vector
 is
 variable vec: std_logic_vector(old_width-1 downto 0);
 variable padded_inp: std_logic_vector((old_width + delta)-1 downto 0);
 variable result: std_logic_vector(new_width-1 downto 0);
 begin
 vec := inp;
 if (delta > 0) then
 padded_inp := pad_LSB(vec, old_width+delta);
 result := extend_MSB(padded_inp, new_width, new_arith);
 else
 result := extend_MSB(vec, new_width, new_arith);
 end if;
 return result;
 end;
 
 constant full_s_bin_pt: integer := fractional_bits(a_bin_pt, b_bin_pt);
 constant full_a_width: integer := full_s_width;
 constant full_b_width: integer := full_s_width;
 
 signal full_a: std_logic_vector(full_a_width - 1 downto 0);
 signal full_b: std_logic_vector(full_b_width - 1 downto 0);
 signal core_s: std_logic_vector(full_s_width - 1 downto 0);
 signal conv_s: std_logic_vector(s_width - 1 downto 0);
 signal temp_cout : std_logic;
 signal internal_clr: std_logic;
 signal internal_ce: std_logic;
 signal extra_reg_ce: std_logic;
 signal override: std_logic;
 signal logic1: std_logic_vector(0 downto 0);


 component dsp_c_addsub_v12_0_i0
    port ( 
    a: in std_logic_vector(19 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(19 - 1 downto 0) 
 		  ); 
 end component;

 component dsp_c_addsub_v12_0_i1
    port ( 
    a: in std_logic_vector(17 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(17 - 1 downto 0) 
 		  ); 
 end component;

 component dsp_c_addsub_v12_0_i2
    port ( 
    a: in std_logic_vector(19 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(19 - 1 downto 0) 
 		  ); 
 end component;

 component dsp_c_addsub_v12_0_i3
    port ( 
    a: in std_logic_vector(21 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(21 - 1 downto 0) 
 		  ); 
 end component;

 component dsp_c_addsub_v12_0_i4
    port ( 
    a: in std_logic_vector(34 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(34 - 1 downto 0) 
 		  ); 
 end component;

 component dsp_c_addsub_v12_0_i5
    port ( 
    a: in std_logic_vector(34 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(34 - 1 downto 0) 
 		  ); 
 end component;

begin
 internal_clr <= (clr or (rst(0))) and ce;
 internal_ce <= ce and en(0);
 logic1(0) <= '1';
 addsub_process: process (a, b, core_s)
 begin
 full_a <= format_input (a, a_width, b_bin_pt - a_bin_pt, a_arith,
 full_a_width);
 full_b <= format_input (b, b_width, a_bin_pt - b_bin_pt, b_arith,
 full_b_width);
 conv_s <= convert_type (core_s, full_s_width, full_s_bin_pt, full_s_arith,
 s_width, s_bin_pt, s_arith, quantization, overflow);
 end process addsub_process;


 comp0: if ((core_name0 = "dsp_c_addsub_v12_0_i0")) generate 
  core_instance0:dsp_c_addsub_v12_0_i0
   port map ( 
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
  ); 
   end generate;

 comp1: if ((core_name0 = "dsp_c_addsub_v12_0_i1")) generate 
  core_instance1:dsp_c_addsub_v12_0_i1
   port map ( 
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
  ); 
   end generate;

 comp2: if ((core_name0 = "dsp_c_addsub_v12_0_i2")) generate 
  core_instance2:dsp_c_addsub_v12_0_i2
   port map ( 
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
  ); 
   end generate;

 comp3: if ((core_name0 = "dsp_c_addsub_v12_0_i3")) generate 
  core_instance3:dsp_c_addsub_v12_0_i3
   port map ( 
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
  ); 
   end generate;

 comp4: if ((core_name0 = "dsp_c_addsub_v12_0_i4")) generate 
  core_instance4:dsp_c_addsub_v12_0_i4
   port map ( 
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
  ); 
   end generate;

 comp5: if ((core_name0 = "dsp_c_addsub_v12_0_i5")) generate 
  core_instance5:dsp_c_addsub_v12_0_i5
   port map ( 
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
  ); 
   end generate;

latency_test: if (extra_registers > 0) generate
 override_test: if (c_latency > 1) generate
 override_pipe: synth_reg
 generic map (
 width => 1,
 latency => c_latency
 )
 port map (
 i => logic1,
 ce => internal_ce,
 clr => internal_clr,
 clk => clk,
 o(0) => override);
 extra_reg_ce <= ce and en(0) and override;
 end generate override_test;
 no_override: if ((c_latency = 0) or (c_latency = 1)) generate
 extra_reg_ce <= ce and en(0);
 end generate no_override;
 extra_reg: synth_reg
 generic map (
 width => s_width,
 latency => extra_registers
 )
 port map (
 i => conv_s,
 ce => extra_reg_ce,
 clr => internal_clr,
 clk => clk,
 o => s
 );
 cout_test: if (c_has_c_out = 1) generate
 c_out_extra_reg: synth_reg
 generic map (
 width => 1,
 latency => extra_registers
 )
 port map (
 i(0) => temp_cout,
 ce => extra_reg_ce,
 clr => internal_clr,
 clk => clk,
 o => c_out
 );
 end generate cout_test;
 end generate;
 
 latency_s: if ((latency = 0) or (extra_registers = 0)) generate
 s <= conv_s;
 end generate latency_s;
 latency0: if (((latency = 0) or (extra_registers = 0)) and
 (c_has_c_out = 1)) generate
 c_out(0) <= temp_cout;
 end generate latency0;
 tie_dangling_cout: if (c_has_c_out = 0) generate
 c_out <= "0";
 end generate tie_dangling_cout;
 end architecture behavior;

library work;
use work.conv_pkg.all;

-------------------------------------------------------------------
 -- System Generator version 11.1 VHDL source file.
 --
 -- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
 -- text/file contains proprietary, confidential information of Xilinx,
 -- Inc., is distributed under license from Xilinx, Inc., and may be used,
 -- copied and/or disclosed only pursuant to the terms of a valid license
 -- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
 -- this text/file solely for design, simulation, implementation and
 -- creation of design files limited to Xilinx devices or technologies.
 -- Use with non-Xilinx devices or technologies is expressly prohibited
 -- and immediately terminates your license unless covered by a separate
 -- agreement.
 --
 -- Xilinx is providing this design, code, or information "as is" solely
 -- for use in developing programs and solutions for Xilinx devices.  By
 -- providing this design, code, or information as one possible
 -- implementation of this feature, application or standard, Xilinx is
 -- making no representation that this implementation is free from any
 -- claims of infringement.  You are responsible for obtaining any rights
 -- you may require for your implementation.  Xilinx expressly disclaims
 -- any warranty whatsoever with respect to the adequacy of the
 -- implementation, including but not limited to warranties of
 -- merchantability or fitness for a particular purpose.
 --
 -- Xilinx products are not intended for use in life support appliances,
 -- devices, or systems.  Use in such applications is expressly prohibited.
 --
 -- Any modifications that are made to the source code are done at the user's
 -- sole risk and will be unsupported.
 --
 -- This copyright and support notice must be retained as part of this
 -- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
 -- reserved.
 -------------------------------------------------------------------
 library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.std_logic_arith.all;

entity dsp_xlcmult is 
   generic (
     core_name0: string := "";
     a_width: integer := 4;
     a_bin_pt: integer := 2;
     a_arith: integer := xlSigned;
     b_width: integer := 4;
     b_bin_pt: integer := 2;
     b_arith: integer := xlSigned;
     p_width: integer := 8;
     p_bin_pt: integer := 2;
     p_arith: integer := xlSigned;
     rst_width: integer := 1;
     rst_bin_pt: integer := 0;
     rst_arith: integer := xlUnsigned;
     en_width: integer := 1;
     en_bin_pt: integer := 0;
     en_arith: integer := xlUnsigned;
     multsign: integer := xlSigned;
     quantization: integer := xlTruncate;
     overflow: integer := xlWrap;
     extra_registers: integer := 0;
     c_a_width: integer := 7;
     c_b_width: integer := 7;
     c_a_type: integer := 0;
     c_b_type: integer := 0;
     c_type: integer := 0;
     const_bin_pt: integer := 1;
     zero_const : integer := 0;
     c_output_width: integer := 16
   );
   port (
     a: in std_logic_vector(a_width - 1 downto 0);
     ce: in std_logic;
     clr: in std_logic;
     clk: in std_logic;
     core_ce: in std_logic:= '0';
     core_clr: in std_logic:= '0';
     core_clk: in std_logic:= '0';
     rst: in std_logic_vector(rst_width - 1 downto 0);
     en: in std_logic_vector(en_width - 1 downto 0);
     p: out std_logic_vector(p_width - 1 downto 0)
   );
 end dsp_xlcmult;
 
 architecture behavior of dsp_xlcmult is
 component synth_reg
 generic (
 width: integer := 16;
 latency: integer := 5
 );
 port (
 i: in std_logic_vector(width - 1 downto 0);
 ce: in std_logic;
 clr: in std_logic;
 clk: in std_logic;
 o: out std_logic_vector(width - 1 downto 0)
 );
 end component;
 signal tmp_a: std_logic_vector(c_a_width - 1 downto 0);
 signal tmp_p: std_logic_vector(c_output_width - 1 downto 0);
 signal conv_p: std_logic_vector(p_width - 1 downto 0);
 -- synthesis translate_off
 signal real_a, real_p: real;
 -- synthesis translate_on
 signal nd: std_logic;
 signal internal_ce: std_logic;
 signal internal_clr: std_logic;
 signal internal_core_ce: std_logic;


 component dsp_mult_gen_v12_0_i1
    port ( 
      p: out std_logic_vector(c_output_width - 1 downto 0);
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

 component dsp_mult_gen_v12_0_i2
    port ( 
      p: out std_logic_vector(c_output_width - 1 downto 0);
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

 component dsp_mult_gen_v12_0_i9
    port ( 
      p: out std_logic_vector(c_output_width - 1 downto 0);
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

begin
 -- synthesis translate_off
 -- synthesis translate_on
 input_process: process(a)
 variable tmp_p_bin_pt, tmp_p_arith: integer;
 begin
 tmp_a <= zero_ext(a, c_a_width);
 end process;
 output_process: process(tmp_p)
 begin
 conv_p <= convert_type(tmp_p, c_output_width, a_bin_pt+b_bin_pt, multsign,
 p_width, p_bin_pt, p_arith, quantization, overflow);
 end process;
 internal_ce <= ce and en(0);
 internal_core_ce <= core_ce and en(0);
 internal_clr <= (clr or rst(0)) and ce;
 nd <= internal_ce;


 comp0: if ((core_name0 = "dsp_mult_gen_v12_0_i1")) generate 
  core_instance0:dsp_mult_gen_v12_0_i1
   port map ( 
      p => tmp_p,
      a => tmp_a
  ); 
   end generate;

 comp1: if ((core_name0 = "dsp_mult_gen_v12_0_i2")) generate 
  core_instance1:dsp_mult_gen_v12_0_i2
   port map ( 
      p => tmp_p,
      a => tmp_a
  ); 
   end generate;

 comp2: if ((core_name0 = "dsp_mult_gen_v12_0_i9")) generate 
  core_instance2:dsp_mult_gen_v12_0_i9
   port map ( 
      p => tmp_p,
      a => tmp_a
  ); 
   end generate;

latency_gt_0: if (extra_registers > 0) and (zero_const = 0)
 generate
 reg: synth_reg
 generic map (
 width => p_width,
 latency => extra_registers
 )
 port map (
 i => conv_p,
 ce => internal_ce,
 clr => internal_clr,
 clk => clk,
 o => p
 );
 end generate;
 latency0: if ( (extra_registers = 0) and (zero_const = 0) )
 generate
 p <= conv_p;
 end generate latency0;
 zero_constant: if (zero_const = 1)
 generate
 p <= integer_to_std_logic_vector(0,p_width,p_arith);
 end generate zero_constant;
 end architecture behavior;

library work;
use work.conv_pkg.all;

---------------------------------------------------------------------
 --
 --  Filename      : xlcounter_rst.vhd
 --
 --  Created       : 1/31/01
 --  Modified      :
 --
 --  Description   : VHDL wrapper for a counter. This wrapper
 --                  uses the Binary Counter CoreGenerator core.
 --
 ---------------------------------------------------------------------
 
 
 ---------------------------------------------------------------------
 --
 --  Entity        : xlcounter
 --
 --  Architecture  : behavior
 --
 --  Description   : Top level VHDL description of a counter.
 --
 ---------------------------------------------------------------------
 
 library IEEE;
 use IEEE.std_logic_1164.all;

entity dsp_xlcounter_free is 
   generic (
     core_name0: string := "";
     op_width: integer := 5;
     op_arith: integer := xlSigned
   );
   port (
     ce: in std_logic;
     clr: in std_logic;
     clk: in std_logic;
     op: out std_logic_vector(op_width - 1 downto 0);
     up: in std_logic_vector(0 downto 0) := (others => '0');
     load: in std_logic_vector(0 downto 0) := (others => '0');
     din: in std_logic_vector(op_width - 1 downto 0) := (others => '0');
     en: in std_logic_vector(0 downto 0);
     rst: in std_logic_vector(0 downto 0)
   );
 end dsp_xlcounter_free;
 
 architecture behavior of dsp_xlcounter_free is


 component dsp_c_counter_binary_v12_0_i0
    port ( 
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0) 
 		  ); 
 end component;

 component dsp_c_counter_binary_v12_0_i1
    port ( 
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0) 
 		  ); 
 end component;

-- synthesis translate_off
   constant zeroVec: std_logic_vector(op_width - 1 downto 0) := (others => '0');
   constant oneVec: std_logic_vector(op_width - 1 downto 0) := (others => '1');
   constant zeroStr: string(1 to op_width) :=
     std_logic_vector_to_bin_string(zeroVec);
   constant oneStr: string(1 to op_width) :=
     std_logic_vector_to_bin_string(oneVec);
 -- synthesis translate_on
 
   signal core_sinit: std_logic;
   signal core_ce: std_logic;
   signal op_net: std_logic_vector(op_width - 1 downto 0);
 begin
   core_ce <= ce and en(0);
   core_sinit <= (clr or rst(0)) and ce;
   op <= op_net;


 comp0: if ((core_name0 = "dsp_c_counter_binary_v12_0_i0")) generate 
  core_instance0:dsp_c_counter_binary_v12_0_i0
   port map ( 
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
  ); 
   end generate;

 comp1: if ((core_name0 = "dsp_c_counter_binary_v12_0_i1")) generate 
  core_instance1:dsp_c_counter_binary_v12_0_i1
   port map ( 
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
  ); 
   end generate;

end behavior;

library work;
use work.conv_pkg.all;

---------------------------------------------------------------------
 --
 --  Entity        : xldpram
 --
 --  Architecture  : behavior
 --
 --  Description   : Top level HDL wrapper for block dual port ram
 --
 ---------------------------------------------------------------------
 
 library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.std_logic_arith.all;

entity dsp_xldpram is 
   generic (
     core_name0: string := "";
     c_width_a: integer := 13;
     c_address_width_a: integer := 4;
     c_width_b: integer := 13;
     c_address_width_b: integer := 4;
     c_has_sinita: integer := 0;
     c_has_sinitb: integer := 0;
     latency: integer := 1
   );
   port (
     dina: in std_logic_vector(c_width_a - 1 downto 0);
     addra: in std_logic_vector(c_address_width_a - 1 downto 0);
     wea: in std_logic_vector(0 downto 0);
     a_ce: in std_logic;
     a_clk: in std_logic;
     rsta: in std_logic_vector(0 downto 0) := (others => '0');
     ena: in std_logic_vector(0 downto 0) := (others => '1');
     douta: out std_logic_vector(c_width_a - 1 downto 0);
     dinb: in std_logic_vector(c_width_b - 1 downto 0);
     addrb: in std_logic_vector(c_address_width_b - 1 downto 0);
     web: in std_logic_vector(0 downto 0);
     b_ce: in std_logic;
     b_clk: in std_logic;
     rstb: in std_logic_vector(0 downto 0) := (others => '0');
     enb: in std_logic_vector(0 downto 0) := (others => '1');
     doutb: out std_logic_vector(c_width_b - 1 downto 0)
   );
 end dsp_xldpram;
 
 architecture behavior of dsp_xldpram is
 component synth_reg
 generic (
 width: integer;
 latency: integer
 );
 port (
 i: in std_logic_vector(width - 1 downto 0);
 ce: in std_logic;
 clr: in std_logic;
 clk: in std_logic;
 o: out std_logic_vector(width - 1 downto 0)
 );
 end component;
 
 signal core_addra: std_logic_vector(c_address_width_a - 1 downto 0);
 signal core_addrb: std_logic_vector(c_address_width_b - 1 downto 0);
 signal core_dina, core_douta, dly_douta:
 std_logic_vector(c_width_a - 1 downto 0);
 signal core_dinb, core_doutb, dly_doutb:
 std_logic_vector(c_width_b - 1 downto 0);
 signal core_wea, core_web: std_logic;
 signal core_a_ce, core_b_ce: std_logic;
 signal sinita, sinitb: std_logic;


 component dsp_blk_mem_gen_i0
    port ( 
addra: in std_logic_vector(c_address_width_a - 1 downto 0);
      addrb: in std_logic_vector(c_address_width_b - 1 downto 0);
      dina: in std_logic_vector(c_width_a - 1 downto 0);
      dinb: in std_logic_vector(c_width_b - 1 downto 0);
      clka: in std_logic;
      clkb: in std_logic;
      wea: in std_logic_vector(0 downto 0);
      web: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      enb: in std_logic;
      douta: out std_logic_vector(c_width_a - 1 downto 0);
      doutb: out std_logic_vector(c_width_b - 1 downto 0) 
 		  ); 
 end component;

 component dsp_blk_mem_gen_i1
    port ( 
addra: in std_logic_vector(c_address_width_a - 1 downto 0);
      addrb: in std_logic_vector(c_address_width_b - 1 downto 0);
      dina: in std_logic_vector(c_width_a - 1 downto 0);
      dinb: in std_logic_vector(c_width_b - 1 downto 0);
      clka: in std_logic;
      clkb: in std_logic;
      wea: in std_logic_vector(0 downto 0);
      web: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      enb: in std_logic;
      douta: out std_logic_vector(c_width_a - 1 downto 0);
      doutb: out std_logic_vector(c_width_b - 1 downto 0) 
 		  ); 
 end component;

begin
 core_addra <= addra;
 core_dina <= dina;
 douta <= dly_douta;
 core_wea <= wea(0);
 core_a_ce <= a_ce and ena(0);
 sinita <= rsta(0) and a_ce;
 
 core_addrb <= addrb;
 core_dinb <= dinb;
 doutb <= dly_doutb;
 core_web <= web(0);
 core_b_ce <= b_ce and enb(0);
 sinitb <= rstb(0) and b_ce;


 comp0: if ((core_name0 = "dsp_blk_mem_gen_i0")) generate 
  core_instance0:dsp_blk_mem_gen_i0
   port map ( 
addra => core_addra,
        clka => a_clk,
        addrb => core_addrb,
        clkb => b_clk,
        dina => core_dina,
        wea(0) => core_wea,
        dinb => core_dinb,
        web(0) => core_web,
        ena => core_a_ce,
        enb => core_b_ce,
        douta => core_douta,
        doutb => core_doutb
  ); 
   end generate;

 comp1: if ((core_name0 = "dsp_blk_mem_gen_i1")) generate 
  core_instance1:dsp_blk_mem_gen_i1
   port map ( 
addra => core_addra,
        clka => a_clk,
        addrb => core_addrb,
        clkb => b_clk,
        dina => core_dina,
        wea(0) => core_wea,
        dinb => core_dinb,
        web(0) => core_web,
        ena => core_a_ce,
        enb => core_b_ce,
        douta => core_douta,
        doutb => core_doutb
  ); 
   end generate;

latency_test: if (latency > 2) generate
 regA: synth_reg
 generic map (
 width => c_width_a,
 latency => latency - 2
 )
 port map (
 i => core_douta,
 ce => core_a_ce,
 clr => '0',
 clk => a_clk,
 o => dly_douta
 );
 regB: synth_reg
 generic map (
 width => c_width_b,
 latency => latency - 2
 )
 port map (
 i => core_doutb,
 ce => core_b_ce,
 clr => '0',
 clk => b_clk,
 o => dly_doutb
 );
 end generate;
 latency1: if (latency <= 2) generate
 dly_douta <= core_douta;
 dly_doutb <= core_doutb;
 end generate;
 end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.conv_pkg.all;

entity xlcomplex_multiplier_c63b76e1073c2a8c4a665cfadb8ce1ce is 
  port(
    ce:in std_logic;
    clk:in std_logic;
    m_axis_dout_tdata_imag:out std_logic_vector(32 downto 0);
    m_axis_dout_tdata_real:out std_logic_vector(32 downto 0);
    m_axis_dout_tvalid:out std_logic;
    s_axis_a_tdata_imag:in std_logic_vector(17 downto 0);
    s_axis_a_tdata_real:in std_logic_vector(17 downto 0);
    s_axis_a_tvalid:in std_logic;
    s_axis_b_tdata_imag:in std_logic_vector(25 downto 0);
    s_axis_b_tdata_real:in std_logic_vector(25 downto 0);
    s_axis_b_tvalid:in std_logic
  );
end xlcomplex_multiplier_c63b76e1073c2a8c4a665cfadb8ce1ce; 

architecture behavior of xlcomplex_multiplier_c63b76e1073c2a8c4a665cfadb8ce1ce  is
  component dsp_cmpy_v6_0_i0
    port(
      aclk:in std_logic;
      aclken:in std_logic;
      m_axis_dout_tdata:out std_logic_vector(79 downto 0);
      m_axis_dout_tvalid:out std_logic;
      s_axis_a_tdata:in std_logic_vector(47 downto 0);
      s_axis_a_tvalid:in std_logic;
      s_axis_b_tdata:in std_logic_vector(63 downto 0);
      s_axis_b_tvalid:in std_logic
    );
end component;
signal m_axis_dout_tdata_net: std_logic_vector(79 downto 0) := (others=>'0');
signal s_axis_a_tdata_net: std_logic_vector(47 downto 0) := (others=>'0');
signal s_axis_b_tdata_net: std_logic_vector(63 downto 0) := (others=>'0');
begin
  m_axis_dout_tdata_imag <= m_axis_dout_tdata_net(72 downto 40);
  m_axis_dout_tdata_real <= m_axis_dout_tdata_net(32 downto 0);
  s_axis_a_tdata_net(41 downto 24) <= s_axis_a_tdata_imag;
  s_axis_a_tdata_net(17 downto 0) <= s_axis_a_tdata_real;
  s_axis_b_tdata_net(57 downto 32) <= s_axis_b_tdata_imag;
  s_axis_b_tdata_net(25 downto 0) <= s_axis_b_tdata_real;
  dsp_cmpy_v6_0_i0_instance : dsp_cmpy_v6_0_i0
    port map(
      aclk=>clk,
      aclken=>ce,
      m_axis_dout_tdata=>m_axis_dout_tdata_net,
      m_axis_dout_tvalid=>m_axis_dout_tvalid,
      s_axis_a_tdata=>s_axis_a_tdata_net,
      s_axis_a_tvalid=>s_axis_a_tvalid,
      s_axis_b_tdata=>s_axis_b_tdata_net,
      s_axis_b_tvalid=>s_axis_b_tvalid
    );
end behavior;


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.conv_pkg.all;

entity xlcordic_508e230f269385a677d56937823ab702 is 
  port(
    ce:in std_logic;
    clk:in std_logic;
    m_axis_dout_tdata_phase:out std_logic_vector(17 downto 0);
    m_axis_dout_tdata_real:out std_logic_vector(17 downto 0);
    m_axis_dout_tvalid:out std_logic;
    s_axis_cartesian_tdata_imag:in std_logic_vector(17 downto 0);
    s_axis_cartesian_tdata_real:in std_logic_vector(17 downto 0);
    s_axis_cartesian_tvalid:in std_logic
  );
end xlcordic_508e230f269385a677d56937823ab702; 

architecture behavior of xlcordic_508e230f269385a677d56937823ab702  is
  component dsp_cordic_v6_0_i0
    port(
      aclk:in std_logic;
      aclken:in std_logic;
      m_axis_dout_tdata:out std_logic_vector(47 downto 0);
      m_axis_dout_tvalid:out std_logic;
      s_axis_cartesian_tdata:in std_logic_vector(47 downto 0);
      s_axis_cartesian_tvalid:in std_logic
    );
end component;
signal m_axis_dout_tdata_net: std_logic_vector(47 downto 0) := (others=>'0');
signal s_axis_cartesian_tdata_net: std_logic_vector(47 downto 0) := (others=>'0');
begin
  m_axis_dout_tdata_phase <= m_axis_dout_tdata_net(41 downto 24);
  m_axis_dout_tdata_real <= m_axis_dout_tdata_net(17 downto 0);
  s_axis_cartesian_tdata_net(41 downto 24) <= s_axis_cartesian_tdata_imag;
  s_axis_cartesian_tdata_net(17 downto 0) <= s_axis_cartesian_tdata_real;
  dsp_cordic_v6_0_i0_instance : dsp_cordic_v6_0_i0
    port map(
      aclk=>clk,
      aclken=>ce,
      m_axis_dout_tdata=>m_axis_dout_tdata_net,
      m_axis_dout_tvalid=>m_axis_dout_tvalid,
      s_axis_cartesian_tdata=>s_axis_cartesian_tdata_net,
      s_axis_cartesian_tvalid=>s_axis_cartesian_tvalid
    );
end behavior;


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.conv_pkg.all;

entity xldds_compiler_444acb262cbc67c949c2a465a00fd7f3 is 
  port(
    ce:in std_logic;
    clk:in std_logic;
    m_axis_data_tdata_cosine:out std_logic_vector(25 downto 0);
    m_axis_data_tdata_sine:out std_logic_vector(25 downto 0);
    m_axis_data_tready:in std_logic;
    m_axis_data_tvalid:out std_logic;
    s_axis_phase_tdata_pinc:in std_logic_vector(31 downto 0);
    s_axis_phase_tdata_resync:in std_logic_vector(0 downto 0);
    s_axis_phase_tready:out std_logic;
    s_axis_phase_tvalid:in std_logic
  );
end xldds_compiler_444acb262cbc67c949c2a465a00fd7f3; 

architecture behavior of xldds_compiler_444acb262cbc67c949c2a465a00fd7f3  is
  component dsp_dds_compiler_v6_0_i0
    port(
      aclk:in std_logic;
      aclken:in std_logic;
      m_axis_data_tdata:out std_logic_vector(63 downto 0);
      m_axis_data_tready:in std_logic;
      m_axis_data_tvalid:out std_logic;
      s_axis_phase_tdata:in std_logic_vector(39 downto 0);
      s_axis_phase_tready:out std_logic;
      s_axis_phase_tvalid:in std_logic
    );
end component;
signal m_axis_data_tdata_net: std_logic_vector(63 downto 0) := (others=>'0');
signal s_axis_phase_tdata_net: std_logic_vector(39 downto 0) := (others=>'0');
begin
  m_axis_data_tdata_sine <= m_axis_data_tdata_net(57 downto 32);
  m_axis_data_tdata_cosine <= m_axis_data_tdata_net(25 downto 0);
  s_axis_phase_tdata_net(32 downto 32) <= s_axis_phase_tdata_resync;
  s_axis_phase_tdata_net(31 downto 0) <= s_axis_phase_tdata_pinc;
  dsp_dds_compiler_v6_0_i0_instance : dsp_dds_compiler_v6_0_i0
    port map(
      aclk=>clk,
      aclken=>ce,
      m_axis_data_tdata=>m_axis_data_tdata_net,
      m_axis_data_tready=>m_axis_data_tready,
      m_axis_data_tvalid=>m_axis_data_tvalid,
      s_axis_phase_tdata=>s_axis_phase_tdata_net,
      s_axis_phase_tready=>s_axis_phase_tready,
      s_axis_phase_tvalid=>s_axis_phase_tvalid
    );
end behavior;


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.conv_pkg.all;

entity xlfir_compiler_efa33372c7dc03aeedc3e51951561a81 is 
  port(
    ce:in std_logic;
    ce_12:in std_logic;
    ce_logic_12:in std_logic;
    clk:in std_logic;
    clk_12:in std_logic;
    clk_logic_12:in std_logic;
    m_axis_data_tdata_real:out std_logic_vector(33 downto 0);
    m_axis_data_tvalid:out std_logic;
    s_axis_data_tdata_real:in std_logic_vector(17 downto 0);
    s_axis_data_tready:out std_logic;
    src_ce:in std_logic;
    src_clk:in std_logic
  );
end xlfir_compiler_efa33372c7dc03aeedc3e51951561a81; 

architecture behavior of xlfir_compiler_efa33372c7dc03aeedc3e51951561a81  is
  component dsp_fir_compiler_v7_2_i0
    port(
      aclk:in std_logic;
      aclken:in std_logic;
      m_axis_data_tdata:out std_logic_vector(39 downto 0);
      m_axis_data_tvalid:out std_logic;
      s_axis_data_tdata:in std_logic_vector(23 downto 0);
      s_axis_data_tready:out std_logic;
      s_axis_data_tvalid:in std_logic
    );
end component;
signal m_axis_data_tdata_net: std_logic_vector(39 downto 0) := (others=>'0');
signal m_axis_data_tdata_real_ps_net: std_logic_vector(33 downto 0) := (others=>'0');
signal m_axis_data_tvalid_ps_net: std_logic := '0';
signal m_axis_data_tvalid_ps_net_captured: std_logic := '0';
signal m_axis_data_tvalid_ps_net_or_captured_net: std_logic := '0';
signal s_axis_data_tdata_net: std_logic_vector(23 downto 0) := (others=>'0');
begin
  m_axis_data_tdata_real_ps_net <= m_axis_data_tdata_net(33 downto 0);
  s_axis_data_tdata_net(17 downto 0) <= s_axis_data_tdata_real;
  m_axis_data_tdata_real_ps_net_synchronizer : entity work.synth_reg_w_init
    generic map(
        width => 34,
        init_index => 0,
        init_value => "0",
        latency => 1
    )
    port map (
        i => m_axis_data_tdata_real_ps_net,
        ce => ce_12,
        clr => '0',
        clk => clk_12, 
        o => m_axis_data_tdata_real
    );
  m_axis_data_tvalid_ps_net_or_captured_net <= m_axis_data_tvalid_ps_net or m_axis_data_tvalid_ps_net_captured;
m_axis_data_tvalid_ps_net_synchronizer_1 : entity work.synth_reg_w_init
    generic map(
        width => 1,
        init_index => 0,
        init_value => "0",
        latency => 1
    )
    port map (
        i(0) => m_axis_data_tvalid_ps_net_or_captured_net,
        ce => ce_12,
        clr => '0',
        clk => clk_12, 
        o(0) => m_axis_data_tvalid
    );
m_axis_data_tvalid_ps_net_synchronizer_2 : entity work.synth_reg_w_init
    generic map(
        width => 1,
        init_index => 0,
        init_value => "0",
        latency => 1
    )
    port map (
        i(0) => '1',
        ce => m_axis_data_tvalid_ps_net,
        clr => '0',
        clk => clk_12, 
        o(0) => m_axis_data_tvalid_ps_net_captured
    );
  dsp_fir_compiler_v7_2_i0_instance : dsp_fir_compiler_v7_2_i0
    port map(
      aclk=>clk,
      aclken=>ce,
      m_axis_data_tdata=>m_axis_data_tdata_net,
      m_axis_data_tvalid=>m_axis_data_tvalid_ps_net,
      s_axis_data_tdata=>s_axis_data_tdata_net,
      s_axis_data_tready=>s_axis_data_tready,
      s_axis_data_tvalid=>ce_logic_12
    );
end behavior;


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.conv_pkg.all;

entity xlcordic_ed33df41e5c40f9ca57299f65da9e20e is 
  port(
    ce:in std_logic;
    clk:in std_logic;
    m_axis_dout_tdata_phase:out std_logic_vector(17 downto 0);
    m_axis_dout_tdata_real:out std_logic_vector(17 downto 0);
    m_axis_dout_tvalid:out std_logic;
    s_axis_cartesian_tdata_imag:in std_logic_vector(19 downto 0);
    s_axis_cartesian_tdata_real:in std_logic_vector(19 downto 0);
    s_axis_cartesian_tvalid:in std_logic
  );
end xlcordic_ed33df41e5c40f9ca57299f65da9e20e; 

architecture behavior of xlcordic_ed33df41e5c40f9ca57299f65da9e20e  is
  component dsp_cordic_v6_0_i1
    port(
      aclk:in std_logic;
      aclken:in std_logic;
      m_axis_dout_tdata:out std_logic_vector(47 downto 0);
      m_axis_dout_tvalid:out std_logic;
      s_axis_cartesian_tdata:in std_logic_vector(47 downto 0);
      s_axis_cartesian_tvalid:in std_logic
    );
end component;
signal m_axis_dout_tdata_net: std_logic_vector(47 downto 0) := (others=>'0');
signal s_axis_cartesian_tdata_net: std_logic_vector(47 downto 0) := (others=>'0');
begin
  m_axis_dout_tdata_phase <= m_axis_dout_tdata_net(41 downto 24);
  m_axis_dout_tdata_real <= m_axis_dout_tdata_net(17 downto 0);
  s_axis_cartesian_tdata_net(43 downto 24) <= s_axis_cartesian_tdata_imag;
  s_axis_cartesian_tdata_net(19 downto 0) <= s_axis_cartesian_tdata_real;
  dsp_cordic_v6_0_i1_instance : dsp_cordic_v6_0_i1
    port map(
      aclk=>clk,
      aclken=>ce,
      m_axis_dout_tdata=>m_axis_dout_tdata_net,
      m_axis_dout_tvalid=>m_axis_dout_tvalid,
      s_axis_cartesian_tdata=>s_axis_cartesian_tdata_net,
      s_axis_cartesian_tvalid=>s_axis_cartesian_tvalid
    );
end behavior;


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.conv_pkg.all;

entity xlcordic_81d09dfb1e4006722e4f779e786a5203 is 
  port(
    ce:in std_logic;
    clk:in std_logic;
    m_axis_dout_tdata_imag:out std_logic_vector(17 downto 0);
    m_axis_dout_tdata_real:out std_logic_vector(17 downto 0);
    m_axis_dout_tvalid:out std_logic;
    s_axis_phase_tdata_phase:in std_logic_vector(17 downto 0);
    s_axis_phase_tvalid:in std_logic
  );
end xlcordic_81d09dfb1e4006722e4f779e786a5203; 

architecture behavior of xlcordic_81d09dfb1e4006722e4f779e786a5203  is
  component dsp_cordic_v6_0_i2
    port(
      aclk:in std_logic;
      aclken:in std_logic;
      m_axis_dout_tdata:out std_logic_vector(47 downto 0);
      m_axis_dout_tvalid:out std_logic;
      s_axis_phase_tdata:in std_logic_vector(23 downto 0);
      s_axis_phase_tvalid:in std_logic
    );
end component;
signal m_axis_dout_tdata_net: std_logic_vector(47 downto 0) := (others=>'0');
signal s_axis_phase_tdata_net: std_logic_vector(23 downto 0) := (others=>'0');
begin
  m_axis_dout_tdata_imag <= m_axis_dout_tdata_net(41 downto 24);
  m_axis_dout_tdata_real <= m_axis_dout_tdata_net(17 downto 0);
  s_axis_phase_tdata_net(17 downto 0) <= s_axis_phase_tdata_phase;
  dsp_cordic_v6_0_i2_instance : dsp_cordic_v6_0_i2
    port map(
      aclk=>clk,
      aclken=>ce,
      m_axis_dout_tdata=>m_axis_dout_tdata_net,
      m_axis_dout_tvalid=>m_axis_dout_tvalid,
      s_axis_phase_tdata=>s_axis_phase_tdata_net,
      s_axis_phase_tvalid=>s_axis_phase_tvalid
    );
end behavior;


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.conv_pkg.all;

entity xldivider_generator_6dbb83f3f73569f6ccb183eb64606384 is 
  port(
    a:in std_logic_vector(31 downto 0);
    a_tvalid:in std_logic;
    b:in std_logic_vector(31 downto 0);
    b_tvalid:in std_logic;
    ce:in std_logic;
    clk:in std_logic;
    op:out std_logic_vector(62 downto 0)
  );
end xldivider_generator_6dbb83f3f73569f6ccb183eb64606384; 

architecture behavior of xldivider_generator_6dbb83f3f73569f6ccb183eb64606384  is
  component dsp_div_gen_v5_1_i0
    port(
      aclk:in std_logic;
      m_axis_dout_tdata:out std_logic_vector(71 downto 0);
      m_axis_dout_tvalid:out std_logic;
      s_axis_dividend_tdata:in std_logic_vector(31 downto 0);
      s_axis_dividend_tvalid:in std_logic;
      s_axis_divisor_tdata:in std_logic_vector(31 downto 0);
      s_axis_divisor_tvalid:in std_logic
    );
end component;
signal m_axis_dout_tdata_net: std_logic_vector(71 downto 0) := (others=>'0');
signal m_axis_dout_tdata_shift_in_net: std_logic_vector(64 downto 0) := (others=>'0');
signal m_axis_dout_tdata_shift_out_net: std_logic_vector(62 downto 0) := (others=>'0');
signal result_tvalid: std_logic := '0';
signal s_axis_dividend_tdata_net: std_logic_vector(31 downto 0) := (others=>'0');
signal s_axis_divisor_tdata_net: std_logic_vector(31 downto 0) := (others=>'0');
begin
  m_axis_dout_tdata_shift_in_net <= m_axis_dout_tdata_net(64 downto 0);
  op <= m_axis_dout_tdata_shift_out_net;
  s_axis_dividend_tdata_net(31 downto 0) <= a;
  s_axis_divisor_tdata_net(31 downto 0) <= b;
  m_axis_dout_tdata_shift_out_net <= shift_op(m_axis_dout_tdata_shift_in_net, 63, 2, 1);
  dsp_div_gen_v5_1_i0_instance : dsp_div_gen_v5_1_i0
    port map(
      aclk=>clk,
      m_axis_dout_tdata=>m_axis_dout_tdata_net,
      m_axis_dout_tvalid=>result_tvalid,
      s_axis_dividend_tdata=>s_axis_dividend_tdata_net,
      s_axis_dividend_tvalid=>a_tvalid,
      s_axis_divisor_tdata=>s_axis_divisor_tdata_net,
      s_axis_divisor_tvalid=>b_tvalid
    );
end behavior;


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.conv_pkg.all;

entity xldivider_generator_2ace49429baf61df4bf778f752b8034f is 
  port(
    a:in std_logic_vector(62 downto 0);
    a_tvalid:in std_logic;
    b:in std_logic_vector(25 downto 0);
    b_tvalid:in std_logic;
    ce:in std_logic;
    clk:in std_logic;
    op:out std_logic_vector(95 downto 0)
  );
end xldivider_generator_2ace49429baf61df4bf778f752b8034f; 

architecture behavior of xldivider_generator_2ace49429baf61df4bf778f752b8034f  is
  component dsp_div_gen_v5_1_i1
    port(
      aclk:in std_logic;
      m_axis_dout_tdata:out std_logic_vector(95 downto 0);
      m_axis_dout_tvalid:out std_logic;
      s_axis_dividend_tdata:in std_logic_vector(63 downto 0);
      s_axis_dividend_tvalid:in std_logic;
      s_axis_divisor_tdata:in std_logic_vector(31 downto 0);
      s_axis_divisor_tvalid:in std_logic
    );
end component;
signal m_axis_dout_tdata_net: std_logic_vector(95 downto 0) := (others=>'0');
signal m_axis_dout_tdata_shift_in_net: std_logic_vector(95 downto 0) := (others=>'0');
signal m_axis_dout_tdata_shift_out_net: std_logic_vector(95 downto 0) := (others=>'0');
signal result_tvalid: std_logic := '0';
signal s_axis_dividend_tdata_net: std_logic_vector(63 downto 0) := (others=>'0');
signal s_axis_divisor_tdata_net: std_logic_vector(31 downto 0) := (others=>'0');
begin
  m_axis_dout_tdata_shift_in_net <= m_axis_dout_tdata_net(95 downto 0);
  op <= m_axis_dout_tdata_shift_out_net;
  s_axis_dividend_tdata_net(62 downto 0) <= a;
  s_axis_divisor_tdata_net(25 downto 0) <= b;
  m_axis_dout_tdata_shift_out_net <= shift_op(m_axis_dout_tdata_shift_in_net, 96, 31, 0);
  dsp_div_gen_v5_1_i1_instance : dsp_div_gen_v5_1_i1
    port map(
      aclk=>clk,
      m_axis_dout_tdata=>m_axis_dout_tdata_net,
      m_axis_dout_tvalid=>result_tvalid,
      s_axis_dividend_tdata=>s_axis_dividend_tdata_net,
      s_axis_dividend_tvalid=>a_tvalid,
      s_axis_divisor_tdata=>s_axis_divisor_tdata_net,
      s_axis_divisor_tvalid=>b_tvalid
    );
end behavior;


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.conv_pkg.all;

entity xlcordic_ce20b11c2ae6f399e66dade7704fcc68 is 
  port(
    ce:in std_logic;
    clk:in std_logic;
    m_axis_dout_tdata_phase:out std_logic_vector(32 downto 0);
    m_axis_dout_tdata_real:out std_logic_vector(32 downto 0);
    m_axis_dout_tvalid:out std_logic;
    s_axis_cartesian_tdata_imag:in std_logic_vector(32 downto 0);
    s_axis_cartesian_tdata_real:in std_logic_vector(32 downto 0);
    s_axis_cartesian_tvalid:in std_logic
  );
end xlcordic_ce20b11c2ae6f399e66dade7704fcc68; 

architecture behavior of xlcordic_ce20b11c2ae6f399e66dade7704fcc68  is
  component dsp_cordic_v6_0_i3
    port(
      aclk:in std_logic;
      aclken:in std_logic;
      m_axis_dout_tdata:out std_logic_vector(79 downto 0);
      m_axis_dout_tvalid:out std_logic;
      s_axis_cartesian_tdata:in std_logic_vector(79 downto 0);
      s_axis_cartesian_tvalid:in std_logic
    );
end component;
signal m_axis_dout_tdata_net: std_logic_vector(79 downto 0) := (others=>'0');
signal s_axis_cartesian_tdata_net: std_logic_vector(79 downto 0) := (others=>'0');
begin
  m_axis_dout_tdata_phase <= m_axis_dout_tdata_net(72 downto 40);
  m_axis_dout_tdata_real <= m_axis_dout_tdata_net(32 downto 0);
  s_axis_cartesian_tdata_net(72 downto 40) <= s_axis_cartesian_tdata_imag;
  s_axis_cartesian_tdata_net(32 downto 0) <= s_axis_cartesian_tdata_real;
  dsp_cordic_v6_0_i3_instance : dsp_cordic_v6_0_i3
    port map(
      aclk=>clk,
      aclken=>ce,
      m_axis_dout_tdata=>m_axis_dout_tdata_net,
      m_axis_dout_tvalid=>m_axis_dout_tvalid,
      s_axis_cartesian_tdata=>s_axis_cartesian_tdata_net,
      s_axis_cartesian_tvalid=>s_axis_cartesian_tvalid
    );
end behavior;



library work;
use work.conv_pkg.all;

-------------------------------------------------------------------
 -- System Generator version 11.1 VHDL source file.
 --
 -- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
 -- text/file contains proprietary, confidential information of Xilinx,
 -- Inc., is distributed under license from Xilinx, Inc., and may be used,
 -- copied and/or disclosed only pursuant to the terms of a valid license
 -- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
 -- this text/file solely for design, simulation, implementation and
 -- creation of design files limited to Xilinx devices or technologies.
 -- Use with non-Xilinx devices or technologies is expressly prohibited
 -- and immediately terminates your license unless covered by a separate
 -- agreement.
 --
 -- Xilinx is providing this design, code, or information "as is" solely
 -- for use in developing programs and solutions for Xilinx devices.  By
 -- providing this design, code, or information as one possible
 -- implementation of this feature, application or standard, Xilinx is
 -- making no representation that this implementation is free from any
 -- claims of infringement.  You are responsible for obtaining any rights
 -- you may require for your implementation.  Xilinx expressly disclaims
 -- any warranty whatsoever with respect to the adequacy of the
 -- implementation, including but not limited to warranties of
 -- merchantability or fitness for a particular purpose.
 --
 -- Xilinx products are not intended for use in life support appliances,
 -- devices, or systems.  Use in such applications is expressly prohibited.
 --
 -- Any modifications that are made to the source code are done at the user's
 -- sole risk and will be unsupported.
 --
 -- This copyright and support notice must be retained as part of this
 -- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
 -- reserved.
 -------------------------------------------------------------------
 library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.std_logic_arith.all;

entity dsp_xlmult is 
   generic (
     core_name0: string := "";
     a_width: integer := 4;
     a_bin_pt: integer := 2;
     a_arith: integer := xlSigned;
     b_width: integer := 4;
     b_bin_pt: integer := 1;
     b_arith: integer := xlSigned;
     p_width: integer := 8;
     p_bin_pt: integer := 2;
     p_arith: integer := xlSigned;
     rst_width: integer := 1;
     rst_bin_pt: integer := 0;
     rst_arith: integer := xlUnsigned;
     en_width: integer := 1;
     en_bin_pt: integer := 0;
     en_arith: integer := xlUnsigned;
     quantization: integer := xlTruncate;
     overflow: integer := xlWrap;
     extra_registers: integer := 0;
     c_a_width: integer := 7;
     c_b_width: integer := 7;
     c_type: integer := 0;
     c_a_type: integer := 0;
     c_b_type: integer := 0;
     c_pipelined: integer := 1;
     c_baat: integer := 4;
     multsign: integer := xlSigned;
     c_output_width: integer := 16
   );
   port (
     a: in std_logic_vector(a_width - 1 downto 0);
     b: in std_logic_vector(b_width - 1 downto 0);
     ce: in std_logic;
     clr: in std_logic;
     clk: in std_logic;
     core_ce: in std_logic := '0';
     core_clr: in std_logic := '0';
     core_clk: in std_logic := '0';
     rst: in std_logic_vector(rst_width - 1 downto 0);
     en: in std_logic_vector(en_width - 1 downto 0);
     p: out std_logic_vector(p_width - 1 downto 0)
   );
 end  dsp_xlmult;
 
 architecture behavior of dsp_xlmult is
 component synth_reg
 generic (
 width: integer := 16;
 latency: integer := 5
 );
 port (
 i: in std_logic_vector(width - 1 downto 0);
 ce: in std_logic;
 clr: in std_logic;
 clk: in std_logic;
 o: out std_logic_vector(width - 1 downto 0)
 );
 end component;


 component dsp_mult_gen_v12_0_i0
    port ( 
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

 component dsp_mult_gen_v12_0_i3
    port ( 
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

 component dsp_mult_gen_v12_0_i4
    port ( 
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

 component dsp_mult_gen_v12_0_i5
    port ( 
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

 component dsp_mult_gen_v12_0_i6
    port ( 
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

 component dsp_mult_gen_v12_0_i7
    port ( 
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

 component dsp_mult_gen_v12_0_i8
    port ( 
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

 component dsp_mult_gen_v12_0_i10
    port ( 
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

 component dsp_mult_gen_v12_0_i11
    port ( 
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

signal tmp_a: std_logic_vector(c_a_width - 1 downto 0);
 signal conv_a: std_logic_vector(c_a_width - 1 downto 0);
 signal tmp_b: std_logic_vector(c_b_width - 1 downto 0);
 signal conv_b: std_logic_vector(c_b_width - 1 downto 0);
 signal tmp_p: std_logic_vector(c_output_width - 1 downto 0);
 signal conv_p: std_logic_vector(p_width - 1 downto 0);
 -- synthesis translate_off
 signal real_a, real_b, real_p: real;
 -- synthesis translate_on
 signal rfd: std_logic;
 signal rdy: std_logic;
 signal nd: std_logic;
 signal internal_ce: std_logic;
 signal internal_clr: std_logic;
 signal internal_core_ce: std_logic;
 begin
 -- synthesis translate_off
 -- synthesis translate_on
 internal_ce <= ce and en(0);
 internal_core_ce <= core_ce and en(0);
 internal_clr <= (clr or rst(0)) and ce;
 nd <= internal_ce;
 input_process: process (a,b)
 begin
 tmp_a <= zero_ext(a, c_a_width);
 tmp_b <= zero_ext(b, c_b_width);
 end process;
 output_process: process (tmp_p)
 begin
 conv_p <= convert_type(tmp_p, c_output_width, a_bin_pt+b_bin_pt, multsign,
 p_width, p_bin_pt, p_arith, quantization, overflow);
 end process;


 comp0: if ((core_name0 = "dsp_mult_gen_v12_0_i0")) generate 
  core_instance0:dsp_mult_gen_v12_0_i0
   port map ( 
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
  ); 
   end generate;

 comp1: if ((core_name0 = "dsp_mult_gen_v12_0_i3")) generate 
  core_instance1:dsp_mult_gen_v12_0_i3
   port map ( 
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
  ); 
   end generate;

 comp2: if ((core_name0 = "dsp_mult_gen_v12_0_i4")) generate 
  core_instance2:dsp_mult_gen_v12_0_i4
   port map ( 
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
  ); 
   end generate;

 comp3: if ((core_name0 = "dsp_mult_gen_v12_0_i5")) generate 
  core_instance3:dsp_mult_gen_v12_0_i5
   port map ( 
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
  ); 
   end generate;

 comp4: if ((core_name0 = "dsp_mult_gen_v12_0_i6")) generate 
  core_instance4:dsp_mult_gen_v12_0_i6
   port map ( 
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
  ); 
   end generate;

 comp5: if ((core_name0 = "dsp_mult_gen_v12_0_i7")) generate 
  core_instance5:dsp_mult_gen_v12_0_i7
   port map ( 
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
  ); 
   end generate;

 comp6: if ((core_name0 = "dsp_mult_gen_v12_0_i8")) generate 
  core_instance6:dsp_mult_gen_v12_0_i8
   port map ( 
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
  ); 
   end generate;

 comp7: if ((core_name0 = "dsp_mult_gen_v12_0_i10")) generate 
  core_instance7:dsp_mult_gen_v12_0_i10
   port map ( 
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
  ); 
   end generate;

 comp8: if ((core_name0 = "dsp_mult_gen_v12_0_i11")) generate 
  core_instance8:dsp_mult_gen_v12_0_i11
   port map ( 
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
  ); 
   end generate;

latency_gt_0: if (extra_registers > 0) generate
 reg: synth_reg
 generic map (
 width => p_width,
 latency => extra_registers
 )
 port map (
 i => conv_p,
 ce => internal_ce,
 clr => internal_clr,
 clk => clk,
 o => p
 );
 end generate;
 latency_eq_0: if (extra_registers = 0) generate
 p <= conv_p;
 end generate;
 end architecture behavior;

