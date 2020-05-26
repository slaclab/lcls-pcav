-- Generated from Simulink block exampleModel/example/axi_lite
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_axi_lite is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    in2 : in std_logic_vector( 18-1 downto 0 );
    in3 : in std_logic_vector( 18-1 downto 0 );
    in4 : in std_logic_vector( 18-1 downto 0 );
    in5 : in std_logic_vector( 29-1 downto 0 );
    in6 : in std_logic_vector( 29-1 downto 0 );
    in7 : in std_logic_vector( 26-1 downto 0 );
    in8 : in std_logic_vector( 18-1 downto 0 );
    in9 : in std_logic_vector( 18-1 downto 0 );
    in10 : in std_logic_vector( 18-1 downto 0 );
    in11 : in std_logic_vector( 18-1 downto 0 );
    in12 : in std_logic_vector( 18-1 downto 0 );
    in13 : in std_logic_vector( 18-1 downto 0 );
    in14 : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_8 : in std_logic;
    ce_8 : in std_logic;
    status_0 : out std_logic_vector( 32-1 downto 0 );
    cav1_p1_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_dc_freq : out std_logic_vector( 26-1 downto 0 );
    cav1_p1_dc_img : out std_logic_vector( 29-1 downto 0 );
    cav1_p1_dc_real : out std_logic_vector( 29-1 downto 0 );
    cav1_p1_if_amp : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_if_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_if_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_if_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_integrated_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_integrated_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_phase_out : out std_logic_vector( 18-1 downto 0 )
  );
end example_axi_lite;
architecture structural of example_axi_lite is 
  signal register11_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 29-1 downto 0 );
  signal register7_q_net : std_logic_vector( 26-1 downto 0 );
  signal register8_q_net : std_logic_vector( 18-1 downto 0 );
  signal register9_q_net : std_logic_vector( 18-1 downto 0 );
  signal register10_q_net : std_logic_vector( 18-1 downto 0 );
  signal register7_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal register12_q_net : std_logic_vector( 18-1 downto 0 );
  signal register13_q_net : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net : std_logic_vector( 18-1 downto 0 );
  signal register27_q_net : std_logic_vector( 32-1 downto 0 );
  signal register13_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register16_q_net : std_logic_vector( 18-1 downto 0 );
  signal register15_q_net : std_logic_vector( 18-1 downto 0 );
  signal register9_q_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal register8_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal register3_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register5_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register4_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register10_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal src_clk_net : std_logic;
  signal src_ce_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal versionnumber_op_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample5_q_net : std_logic_vector( 29-1 downto 0 );
  signal down_sample11_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample2_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample3_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample4_q_net : std_logic_vector( 29-1 downto 0 );
  signal down_sample6_q_net : std_logic_vector( 26-1 downto 0 );
  signal down_sample7_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample8_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample9_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample10_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample12_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample13_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample14_q_net : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal register4_q_net : std_logic_vector( 18-1 downto 0 );
  signal register5_q_net : std_logic_vector( 29-1 downto 0 );
begin
  register3_q_net <= in1;
  register1_q_net <= in2;
  register2_q_net <= in3;
  register4_q_net <= in4;
  register5_q_net <= in5;
  register6_q_net <= in6;
  register7_q_net <= in7;
  register8_q_net <= in8;
  register9_q_net <= in9;
  register10_q_net <= in10;
  register11_q_net <= in11;
  register12_q_net <= in12;
  register13_q_net <= in13;
  register14_q_net <= in14;
  status_0 <= register27_q_net;
  cav1_p1_amp_out <= register13_q_net_x0;
  cav1_p1_comparison_i <= register14_q_net_x0;
  cav1_p1_comparison_phase <= register16_q_net;
  cav1_p1_comparison_q <= register15_q_net;
  cav1_p1_dc_freq <= register9_q_net_x0;
  cav1_p1_dc_img <= register8_q_net_x0;
  cav1_p1_dc_real <= register7_q_net_x0;
  cav1_p1_if_amp <= register3_q_net_x0;
  cav1_p1_if_i <= register5_q_net_x0;
  cav1_p1_if_phase <= register4_q_net_x0;
  cav1_p1_if_q <= register6_q_net_x0;
  cav1_p1_integrated_i <= register10_q_net_x0;
  cav1_p1_integrated_q <= register11_q_net_x0;
  cav1_p1_phase_out <= register12_q_net_x0;
  src_clk_net <= clk_1;
  src_ce_net <= ce_1;
  clk_net <= clk_8;
  ce_net <= ce_8;
  register27 : entity work.example_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => versionnumber_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register27_q_net
  );
  versionnumber : entity work.sysgen_constant_0dde287d44 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => versionnumber_op_net
  );
  down_sample11 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 8,
    latency => 1,
    phase => 7,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register3_q_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample11_q_net
  );
  down_sample1 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 8,
    latency => 1,
    phase => 7,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register1_q_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample1_q_net
  );
  down_sample2 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 8,
    latency => 1,
    phase => 7,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register2_q_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample2_q_net
  );
  down_sample3 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 8,
    latency => 1,
    phase => 7,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register4_q_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample3_q_net
  );
  down_sample4 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 25,
    d_width => 29,
    ds_ratio => 8,
    latency => 1,
    phase => 7,
    q_arith => xlSigned,
    q_bin_pt => 25,
    q_width => 29
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register5_q_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample4_q_net
  );
  down_sample5 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 25,
    d_width => 29,
    ds_ratio => 8,
    latency => 1,
    phase => 7,
    q_arith => xlSigned,
    q_bin_pt => 25,
    q_width => 29
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register6_q_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample5_q_net
  );
  down_sample6 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 0,
    d_width => 26,
    ds_ratio => 8,
    latency => 1,
    phase => 7,
    q_arith => xlSigned,
    q_bin_pt => 0,
    q_width => 26
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register7_q_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample6_q_net
  );
  down_sample7 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 8,
    latency => 1,
    phase => 7,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register8_q_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample7_q_net
  );
  down_sample8 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 8,
    latency => 1,
    phase => 7,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register9_q_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample8_q_net
  );
  down_sample9 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 8,
    latency => 1,
    phase => 7,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register10_q_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample9_q_net
  );
  down_sample10 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 8,
    latency => 1,
    phase => 7,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register11_q_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample10_q_net
  );
  down_sample12 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 8,
    latency => 1,
    phase => 7,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register12_q_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample12_q_net
  );
  down_sample13 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 8,
    latency => 1,
    phase => 7,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register13_q_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample13_q_net
  );
  down_sample14 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 8,
    latency => 1,
    phase => 7,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register14_q_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample14_q_net
  );
  register10 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample7_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register10_q_net_x0
  );
  register11 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample8_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register11_q_net_x0
  );
  register12 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample9_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register12_q_net_x0
  );
  register13 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample10_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register13_q_net_x0
  );
  register14 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample12_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register14_q_net_x0
  );
  register15 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample13_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register15_q_net
  );
  register16 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample14_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register16_q_net
  );
  register3 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample11_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net_x0
  );
  register4 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register4_q_net_x0
  );
  register5 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register5_q_net_x0
  );
  register6 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net_x0
  );
  register7 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register7_q_net_x0
  );
  register8 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register8_q_net_x0
  );
  register9 : entity work.example_xlregister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register9_q_net_x0
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav1/DDC NCO
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_ddc_nco is
  port (
    phase_reset : in std_logic_vector( 1-1 downto 0 );
    phase_ctrl : in std_logic_vector( 29-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tvalid : out std_logic_vector( 1-1 downto 0 );
    sine : out std_logic_vector( 10-1 downto 0 );
    cosine : out std_logic_vector( 10-1 downto 0 );
    nco_out_1 : out std_logic_vector( 10-1 downto 0 );
    nco_out_2 : out std_logic_vector( 10-1 downto 0 )
  );
end example_ddc_nco;
architecture structural of example_ddc_nco is 
  signal clock_enable_probe1_q_net : std_logic_vector( 1-1 downto 0 );
  signal nco_sin : std_logic_vector( 10-1 downto 0 );
  signal nco_cos : std_logic_vector( 10-1 downto 0 );
  signal cav1_nco_phase_reset_net : std_logic_vector( 1-1 downto 0 );
  signal cav1_nco_phase_adj_net : std_logic_vector( 29-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dds_compiler_6_0_m_axis_data_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal constant21_op_net : std_logic_vector( 1-1 downto 0 );
  signal dds_compiler_6_0_s_axis_phase_tready_net : std_logic;
begin
  tvalid <= clock_enable_probe1_q_net;
  sine <= nco_sin;
  cosine <= nco_cos;
  nco_out_1 <= nco_sin;
  nco_out_2 <= nco_cos;
  cav1_nco_phase_reset_net <= phase_reset;
  cav1_nco_phase_adj_net <= phase_ctrl;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clock_enable_probe1 : entity work.example_xlceprobe 
  generic map (
    d_width => 1,
    q_width => 1
  )
  port map (
    d => dds_compiler_6_0_m_axis_data_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => clock_enable_probe1_q_net
  );
  constant21 : entity work.sysgen_constant_589172b339 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant21_op_net
  );
  dds_compiler_6_0 : entity work.xldds_compiler_0cbab40bd53bfcdc412118bfa95a86d6 
  port map (
    s_axis_phase_tvalid => constant21_op_net(0),
    s_axis_phase_tdata_resync => cav1_nco_phase_reset_net,
    s_axis_phase_tdata_pinc => cav1_nco_phase_adj_net,
    m_axis_data_tready => constant21_op_net(0),
    clk => clk_net,
    ce => ce_net,
    s_axis_phase_tready => dds_compiler_6_0_s_axis_phase_tready_net,
    m_axis_data_tvalid => dds_compiler_6_0_m_axis_data_tvalid_net(0),
    m_axis_data_tdata_sine => nco_sin,
    m_axis_data_tdata_cosine => nco_cos
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav1/PA_select/Channel Select1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_channel_select1_x1 is
  port (
    in0 : in std_logic_vector( 18-1 downto 0 );
    in1 : in std_logic_vector( 18-1 downto 0 );
    ch_id : in std_logic_vector( 4-1 downto 0 );
    ch_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out0 : out std_logic_vector( 18-1 downto 0 );
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end example_channel_select1_x1;
architecture structural of example_channel_select1_x1 is 
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal amp : std_logic_vector( 18-1 downto 0 );
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal cav1_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal constant13_op_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal last : std_logic_vector( 1-1 downto 0 );
begin
  out0 <= down_sample1_q_net;
  out1 <= down_sample_q_net;
  amp <= in0;
  phase <= in1;
  channel <= ch_id;
  cav1_p1_chan_sel_net <= ch_sel;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  constant13 : entity work.sysgen_constant_ff2f539dd4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  delay : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => phase,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => amp,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  down_sample : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register3_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register2_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample1_q_net
  );
  register_x0 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register1_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  register6 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => last,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => cav1_p1_chan_sel_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => constant13_op_net,
    clk => clk_net,
    ce => ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav1/PA_select
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_pa_select_x1 is
  port (
    pa_bus_1 : in std_logic_vector( 18-1 downto 0 );
    pa_chan_sel : in std_logic_vector( 4-1 downto 0 );
    pa_bus_2 : in std_logic_vector( 18-1 downto 0 );
    pa_bus_3 : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    amp : out std_logic_vector( 18-1 downto 0 );
    phase : out std_logic_vector( 18-1 downto 0 )
  );
end example_pa_select_x1;
architecture structural of example_pa_select_x1 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal amp_x0 : std_logic_vector( 18-1 downto 0 );
  signal cav1_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
begin
  amp <= down_sample1_q_net;
  phase <= down_sample_q_net;
  amp_x0 <= pa_bus_1;
  cav1_p1_chan_sel_net <= pa_chan_sel;
  phase_x0 <= pa_bus_2;
  channel <= pa_bus_3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  channel_select1 : entity work.example_channel_select1_x1 
  port map (
    in0 => amp_x0,
    in1 => phase_x0,
    ch_id => channel,
    ch_sel => cav1_p1_chan_sel_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav1/PA_select1/Channel Select1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_channel_select1_x2 is
  port (
    in0 : in std_logic_vector( 18-1 downto 0 );
    in1 : in std_logic_vector( 18-1 downto 0 );
    ch_id : in std_logic_vector( 4-1 downto 0 );
    ch_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out0 : out std_logic_vector( 18-1 downto 0 );
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end example_channel_select1_x2;
architecture structural of example_channel_select1_x2 is 
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal amp : std_logic_vector( 18-1 downto 0 );
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal cav1_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal constant13_op_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal last : std_logic_vector( 1-1 downto 0 );
begin
  out0 <= down_sample1_q_net;
  out1 <= down_sample_q_net;
  amp <= in0;
  phase <= in1;
  channel <= ch_id;
  cav1_p2_chan_sel_net <= ch_sel;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  constant13 : entity work.sysgen_constant_ff2f539dd4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  delay : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => phase,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => amp,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  down_sample : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register3_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register2_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample1_q_net
  );
  register_x0 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register1_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  register6 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => last,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => cav1_p2_chan_sel_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => constant13_op_net,
    clk => clk_net,
    ce => ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav1/PA_select1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_pa_select1_x0 is
  port (
    pa_bus_1 : in std_logic_vector( 18-1 downto 0 );
    pa_chan_sel : in std_logic_vector( 4-1 downto 0 );
    pa_bus_2 : in std_logic_vector( 18-1 downto 0 );
    pa_bus_3 : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    amp : out std_logic_vector( 18-1 downto 0 );
    phase : out std_logic_vector( 18-1 downto 0 )
  );
end example_pa_select1_x0;
architecture structural of example_pa_select1_x0 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal amp_x0 : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
begin
  amp <= down_sample1_q_net;
  phase <= down_sample_q_net;
  amp_x0 <= pa_bus_1;
  cav1_p2_chan_sel_net <= pa_chan_sel;
  phase_x0 <= pa_bus_2;
  channel <= pa_bus_3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  channel_select1 : entity work.example_channel_select1_x2 
  port map (
    in0 => amp_x0,
    in1 => phase_x0,
    ch_id => channel,
    ch_sel => cav1_p2_chan_sel_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav1/Subsystem1/Channel Select3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_channel_select3_x2 is
  port (
    in0 : in std_logic_vector( 18-1 downto 0 );
    in1 : in std_logic_vector( 18-1 downto 0 );
    ch_id : in std_logic_vector( 4-1 downto 0 );
    ch_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out0 : out std_logic_vector( 18-1 downto 0 );
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end example_channel_select3_x2;
architecture structural of example_channel_select3_x2 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ddci : std_logic_vector( 18-1 downto 0 );
  signal ddcq : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal cav1_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal constant13_op_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal last : std_logic_vector( 1-1 downto 0 );
begin
  out0 <= down_sample1_q_net;
  out1 <= down_sample_q_net;
  ddci <= in0;
  ddcq <= in1;
  ddcchannel <= ch_id;
  cav1_p2_chan_sel_net <= ch_sel;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  constant13 : entity work.sysgen_constant_ff2f539dd4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  delay : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => ddcq,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => ddci,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  down_sample : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register3_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register2_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample1_q_net
  );
  register_x0 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register1_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  register6 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => last,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => cav1_p2_chan_sel_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => constant13_op_net,
    clk => clk_net,
    ce => ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav1/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_subsystem1_x0 is
  port (
    iq_stream_in_1 : in std_logic_vector( 18-1 downto 0 );
    iq_chan_sel : in std_logic_vector( 4-1 downto 0 );
    iq_stream_in_2 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_in_3 : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    ddci : out std_logic_vector( 18-1 downto 0 );
    ddcq : out std_logic_vector( 18-1 downto 0 )
  );
end example_subsystem1_x0;
architecture structural of example_subsystem1_x0 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ddci_x0 : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
begin
  ddci <= down_sample1_q_net;
  ddcq <= down_sample_q_net;
  ddci_x0 <= iq_stream_in_1;
  cav1_p2_chan_sel_net <= iq_chan_sel;
  ddcq_x0 <= iq_stream_in_2;
  ddcchannel <= iq_stream_in_3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  channel_select3 : entity work.example_channel_select3_x2 
  port map (
    in0 => ddci_x0,
    in1 => ddcq_x0,
    ch_id => ddcchannel,
    ch_sel => cav1_p2_chan_sel_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav1/Subsystem3/Channel Select3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_channel_select3_x3 is
  port (
    in0 : in std_logic_vector( 18-1 downto 0 );
    in1 : in std_logic_vector( 18-1 downto 0 );
    ch_id : in std_logic_vector( 4-1 downto 0 );
    ch_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out0 : out std_logic_vector( 18-1 downto 0 );
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end example_channel_select3_x3;
architecture structural of example_channel_select3_x3 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ddci : std_logic_vector( 18-1 downto 0 );
  signal ddcq : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal cav1_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal constant13_op_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal last : std_logic_vector( 1-1 downto 0 );
begin
  out0 <= down_sample1_q_net;
  out1 <= down_sample_q_net;
  ddci <= in0;
  ddcq <= in1;
  ddcchannel <= ch_id;
  cav1_p1_chan_sel_net <= ch_sel;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  constant13 : entity work.sysgen_constant_ff2f539dd4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  delay : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => ddcq,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => ddci,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  down_sample : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register3_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register2_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample1_q_net
  );
  register_x0 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register1_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  register6 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => last,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => cav1_p1_chan_sel_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => constant13_op_net,
    clk => clk_net,
    ce => ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav1/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_subsystem3_x0 is
  port (
    iq_stream_in_1 : in std_logic_vector( 18-1 downto 0 );
    iq_chan_sel : in std_logic_vector( 4-1 downto 0 );
    iq_stream_in_2 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_in_3 : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    ddci : out std_logic_vector( 18-1 downto 0 );
    ddcq : out std_logic_vector( 18-1 downto 0 )
  );
end example_subsystem3_x0;
architecture structural of example_subsystem3_x0 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ddci_x0 : std_logic_vector( 18-1 downto 0 );
  signal cav1_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
begin
  ddci <= down_sample1_q_net;
  ddcq <= down_sample_q_net;
  ddci_x0 <= iq_stream_in_1;
  cav1_p1_chan_sel_net <= iq_chan_sel;
  ddcq_x0 <= iq_stream_in_2;
  ddcchannel <= iq_stream_in_3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  channel_select3 : entity work.example_channel_select3_x3 
  port map (
    in0 => ddci_x0,
    in1 => ddcq_x0,
    ch_id => ddcchannel,
    ch_sel => cav1_p1_chan_sel_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_cav1 is
  port (
    pa_stream_1 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_1 : in std_logic_vector( 18-1 downto 0 );
    pa_stream_2 : in std_logic_vector( 18-1 downto 0 );
    pa_stream_3 : in std_logic_vector( 4-1 downto 0 );
    iq_stream_2 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_3 : in std_logic_vector( 4-1 downto 0 );
    cav1_nco_phase_adj : in std_logic_vector( 29-1 downto 0 );
    cav1_nco_phase_reset : in std_logic_vector( 1-1 downto 0 );
    cav1_p1_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav1_p2_chan_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    cav1_p1_dc_real : out std_logic_vector( 29-1 downto 0 );
    cav1_p1_dc_img : out std_logic_vector( 29-1 downto 0 );
    cav1_p1_dc_freq : out std_logic_vector( 26-1 downto 0 );
    cav1_p1_integrated_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_integrated_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_dc_real : out std_logic_vector( 29-1 downto 0 );
    cav1_p2_dc_img : out std_logic_vector( 29-1 downto 0 );
    cav1_p2_dc_freq : out std_logic_vector( 26-1 downto 0 );
    cav1_p2_integrated_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_amp : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_if_amp : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_if_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_if_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_if_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_amp_out_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_phase_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_dc_freq_x0 : out std_logic_vector( 26-1 downto 0 );
    cav1_p2_dc_img_x0 : out std_logic_vector( 29-1 downto 0 );
    cav1_p2_dc_real_x0 : out std_logic_vector( 29-1 downto 0 );
    cav1_p2_if_amp_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_phase_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_phase_out_x0 : out std_logic_vector( 18-1 downto 0 )
  );
end example_cav1;
architecture structural of example_cav1 is 
  signal cav1_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register20_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register21_q_net : std_logic_vector( 18-1 downto 0 );
  signal register23_q_net : std_logic_vector( 18-1 downto 0 );
  signal register22_q_net : std_logic_vector( 18-1 downto 0 );
  signal register29_q_net : std_logic_vector( 29-1 downto 0 );
  signal register28_q_net : std_logic_vector( 29-1 downto 0 );
  signal register24_q_net : std_logic_vector( 18-1 downto 0 );
  signal register26_q_net : std_logic_vector( 18-1 downto 0 );
  signal register25_q_net : std_logic_vector( 18-1 downto 0 );
  signal register27_q_net : std_logic_vector( 18-1 downto 0 );
  signal register17_q_net : std_logic_vector( 18-1 downto 0 );
  signal amp : std_logic_vector( 18-1 downto 0 );
  signal ddci : std_logic_vector( 18-1 downto 0 );
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal ddcq : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal register2_q_net : std_logic_vector( 29-1 downto 0 );
  signal register1_q_net : std_logic_vector( 29-1 downto 0 );
  signal constant_op_net : std_logic_vector( 26-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 18-1 downto 0 );
  signal register32_q_net : std_logic_vector( 29-1 downto 0 );
  signal register33_q_net : std_logic_vector( 29-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 26-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant12_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant14_op_net : std_logic_vector( 18-1 downto 0 );
  signal register30_q_net : std_logic_vector( 26-1 downto 0 );
  signal constant18_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant19_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant21_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant23_op_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav1_nco_phase_adj_net : std_logic_vector( 29-1 downto 0 );
  signal cav1_nco_phase_reset_net : std_logic_vector( 1-1 downto 0 );
  signal register18_q_net : std_logic_vector( 18-1 downto 0 );
  signal register19_q_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal clock_enable_probe1_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal nco_sin : std_logic_vector( 10-1 downto 0 );
  signal nco_cos : std_logic_vector( 10-1 downto 0 );
  signal clock_enable_probe_q_net : std_logic_vector( 1-1 downto 0 );
  signal clock_enable_probe1_q_net : std_logic_vector( 1-1 downto 0 );
  signal complex_multiplier_6_0_m_axis_dout_tvalid_net : std_logic;
  signal complex_multiplier_6_0_m_axis_dout_tdata_imag_net : std_logic_vector( 29-1 downto 0 );
  signal complex_multiplier_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 29-1 downto 0 );
  signal complex_multiplier_6_0_1_m_axis_dout_tvalid_net : std_logic;
  signal complex_multiplier_6_0_1_m_axis_dout_tdata_imag_net : std_logic_vector( 29-1 downto 0 );
  signal complex_multiplier_6_0_1_m_axis_dout_tdata_real_net : std_logic_vector( 29-1 downto 0 );
begin
  amp <= pa_stream_1;
  ddci <= iq_stream_1;
  phase <= pa_stream_2;
  channel <= pa_stream_3;
  ddcq <= iq_stream_2;
  ddcchannel <= iq_stream_3;
  cav1_p1_dc_real <= register2_q_net;
  cav1_p1_dc_img <= register1_q_net;
  cav1_p1_dc_freq <= constant_op_net;
  cav1_p1_integrated_i <= constant8_op_net;
  cav1_p1_integrated_q <= constant7_op_net;
  cav1_p1_phase_out <= constant6_op_net;
  cav1_p1_amp_out <= constant5_op_net;
  cav1_p1_comparison_i <= constant4_op_net;
  cav1_p1_comparison_q <= constant3_op_net;
  cav1_p1_comparison_phase <= constant9_op_net;
  cav1_p2_dc_real <= register32_q_net;
  cav1_p2_dc_img <= register33_q_net;
  cav1_p2_dc_freq <= constant10_op_net;
  cav1_p2_integrated_i <= constant11_op_net;
  cav1_p2_integrated_q <= constant12_op_net;
  cav1_p2_phase_out <= constant14_op_net;
  cav1_p2_amp_out <= constant18_op_net;
  cav1_p2_comparison_i <= constant19_op_net;
  cav1_p2_comparison_q <= constant21_op_net;
  cav1_p2_comparison_phase <= constant23_op_net;
  cav1_p2_if_amp <= down_sample1_q_net_x2;
  cav1_p2_if_phase <= down_sample_q_net_x1;
  cav1_p2_if_i <= down_sample1_q_net_x0;
  cav1_p2_if_q <= down_sample_q_net_x0;
  cav1_p1_if_amp <= down_sample1_q_net_x1;
  cav1_p1_if_phase <= down_sample_q_net_x2;
  cav1_p1_if_i <= down_sample1_q_net;
  cav1_p1_if_q <= down_sample_q_net;
  cav1_nco_phase_adj_net <= cav1_nco_phase_adj;
  cav1_nco_phase_reset_net <= cav1_nco_phase_reset;
  cav1_p1_chan_sel_net <= cav1_p1_chan_sel;
  cav1_p2_amp_out_x0 <= register20_q_net;
  cav1_p2_chan_sel_net <= cav1_p2_chan_sel;
  cav1_p2_comparison_i_x0 <= register21_q_net;
  cav1_p2_comparison_phase_x0 <= register23_q_net;
  cav1_p2_comparison_q_x0 <= register22_q_net;
  cav1_p2_dc_freq_x0 <= register30_q_net;
  cav1_p2_dc_img_x0 <= register29_q_net;
  cav1_p2_dc_real_x0 <= register28_q_net;
  cav1_p2_if_amp_x0 <= register24_q_net;
  cav1_p2_if_i_x0 <= register26_q_net;
  cav1_p2_if_phase_x0 <= register25_q_net;
  cav1_p2_if_q_x0 <= register27_q_net;
  cav1_p2_integrated_i_x0 <= register17_q_net;
  cav1_p2_integrated_q_x0 <= register18_q_net;
  cav1_p2_phase_out_x0 <= register19_q_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  ddc_nco : entity work.example_ddc_nco 
  port map (
    phase_reset => cav1_nco_phase_reset_net,
    phase_ctrl => cav1_nco_phase_adj_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tvalid => clock_enable_probe1_q_net_x0,
    sine => nco_sin,
    cosine => nco_cos,
    nco_out_1 => nco_sin,
    nco_out_2 => nco_cos
  );
  pa_select : entity work.example_pa_select_x1 
  port map (
    pa_bus_1 => amp,
    pa_chan_sel => cav1_p1_chan_sel_net,
    pa_bus_2 => phase,
    pa_bus_3 => channel,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    amp => down_sample1_q_net_x1,
    phase => down_sample_q_net_x2
  );
  pa_select1 : entity work.example_pa_select1_x0 
  port map (
    pa_bus_1 => amp,
    pa_chan_sel => cav1_p2_chan_sel_net,
    pa_bus_2 => phase,
    pa_bus_3 => channel,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    amp => down_sample1_q_net_x2,
    phase => down_sample_q_net_x1
  );
  subsystem1_x0 : entity work.example_subsystem1_x0 
  port map (
    iq_stream_in_1 => ddci,
    iq_chan_sel => cav1_p2_chan_sel_net,
    iq_stream_in_2 => ddcq,
    iq_stream_in_3 => ddcchannel,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    ddci => down_sample1_q_net_x0,
    ddcq => down_sample_q_net_x0
  );
  subsystem3 : entity work.example_subsystem3_x0 
  port map (
    iq_stream_in_1 => ddci,
    iq_chan_sel => cav1_p1_chan_sel_net,
    iq_stream_in_2 => ddcq,
    iq_stream_in_3 => ddcchannel,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    ddci => down_sample1_q_net,
    ddcq => down_sample_q_net
  );
  clock_enable_probe : entity work.example_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => down_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => clock_enable_probe_q_net
  );
  clock_enable_probe1 : entity work.example_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => down_sample_q_net_x0,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => clock_enable_probe1_q_net
  );
  complex_multiplier_6_0 : entity work.xlcomplex_multiplier_2db568568678b52ae60ddabdbca6b4fb 
  port map (
    s_axis_a_tvalid => clock_enable_probe_q_net(0),
    s_axis_a_tdata_imag => down_sample_q_net,
    s_axis_a_tdata_real => down_sample1_q_net,
    s_axis_b_tvalid => clock_enable_probe1_q_net_x0(0),
    s_axis_b_tdata_imag => nco_sin,
    s_axis_b_tdata_real => nco_cos,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => complex_multiplier_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => complex_multiplier_6_0_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => complex_multiplier_6_0_m_axis_dout_tdata_real_net
  );
  complex_multiplier_6_0_1 : entity work.xlcomplex_multiplier_2db568568678b52ae60ddabdbca6b4fb 
  port map (
    s_axis_a_tvalid => clock_enable_probe1_q_net(0),
    s_axis_a_tdata_imag => down_sample_q_net_x0,
    s_axis_a_tdata_real => down_sample1_q_net_x0,
    s_axis_b_tvalid => clock_enable_probe1_q_net_x0(0),
    s_axis_b_tdata_imag => nco_sin,
    s_axis_b_tdata_real => nco_cos,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => complex_multiplier_6_0_1_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => complex_multiplier_6_0_1_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => complex_multiplier_6_0_1_m_axis_dout_tdata_real_net
  );
  constant_x0 : entity work.sysgen_constant_ebbc84a2b1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant10 : entity work.sysgen_constant_ebbc84a2b1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant10_op_net
  );
  constant11 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant11_op_net
  );
  constant12 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant12_op_net
  );
  constant14 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant14_op_net
  );
  constant18 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant18_op_net
  );
  constant19 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant19_op_net
  );
  constant21 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant21_op_net
  );
  constant23 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant23_op_net
  );
  constant3 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant8 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  constant9 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  register1 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_m_axis_dout_tdata_imag_net,
    en(0) => complex_multiplier_6_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register17 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant11_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register17_q_net
  );
  register18 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant12_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register18_q_net
  );
  register19 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant14_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register19_q_net
  );
  register2 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_m_axis_dout_tdata_real_net,
    en(0) => complex_multiplier_6_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register20 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant18_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register20_q_net
  );
  register21 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant19_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register21_q_net
  );
  register22 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant21_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register22_q_net
  );
  register23 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant23_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register23_q_net
  );
  register24 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net_x2,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register24_q_net
  );
  register25 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net_x1,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register25_q_net
  );
  register26 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net_x0,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register26_q_net
  );
  register27 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net_x0,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register27_q_net
  );
  register28 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register32_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register28_q_net
  );
  register29 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register33_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register29_q_net
  );
  register30 : entity work.example_xlregister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant10_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register30_q_net
  );
  register32 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_1_m_axis_dout_tdata_imag_net,
    en(0) => complex_multiplier_6_0_1_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register32_q_net
  );
  register33 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_1_m_axis_dout_tdata_real_net,
    en(0) => complex_multiplier_6_0_1_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register33_q_net
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav2/DDC NCO
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_ddc_nco_x0 is
  port (
    phase_reset : in std_logic_vector( 1-1 downto 0 );
    phase_ctrl : in std_logic_vector( 29-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tvalid : out std_logic_vector( 1-1 downto 0 );
    sine : out std_logic_vector( 10-1 downto 0 );
    cosine : out std_logic_vector( 10-1 downto 0 );
    nco_out_1 : out std_logic_vector( 10-1 downto 0 );
    nco_out_2 : out std_logic_vector( 10-1 downto 0 )
  );
end example_ddc_nco_x0;
architecture structural of example_ddc_nco_x0 is 
  signal clock_enable_probe1_q_net : std_logic_vector( 1-1 downto 0 );
  signal nco_sin : std_logic_vector( 10-1 downto 0 );
  signal nco_cos : std_logic_vector( 10-1 downto 0 );
  signal cav2_nco_phase_reset_net : std_logic_vector( 1-1 downto 0 );
  signal cav2_nco_phase_adj_net : std_logic_vector( 29-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dds_compiler_6_0_m_axis_data_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal constant21_op_net : std_logic_vector( 1-1 downto 0 );
  signal dds_compiler_6_0_s_axis_phase_tready_net : std_logic;
begin
  tvalid <= clock_enable_probe1_q_net;
  sine <= nco_sin;
  cosine <= nco_cos;
  nco_out_1 <= nco_sin;
  nco_out_2 <= nco_cos;
  cav2_nco_phase_reset_net <= phase_reset;
  cav2_nco_phase_adj_net <= phase_ctrl;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clock_enable_probe1 : entity work.example_xlceprobe 
  generic map (
    d_width => 1,
    q_width => 1
  )
  port map (
    d => dds_compiler_6_0_m_axis_data_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => clock_enable_probe1_q_net
  );
  constant21 : entity work.sysgen_constant_589172b339 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant21_op_net
  );
  dds_compiler_6_0 : entity work.xldds_compiler_0cbab40bd53bfcdc412118bfa95a86d6 
  port map (
    s_axis_phase_tvalid => constant21_op_net(0),
    s_axis_phase_tdata_resync => cav2_nco_phase_reset_net,
    s_axis_phase_tdata_pinc => cav2_nco_phase_adj_net,
    m_axis_data_tready => constant21_op_net(0),
    clk => clk_net,
    ce => ce_net,
    s_axis_phase_tready => dds_compiler_6_0_s_axis_phase_tready_net,
    m_axis_data_tvalid => dds_compiler_6_0_m_axis_data_tvalid_net(0),
    m_axis_data_tdata_sine => nco_sin,
    m_axis_data_tdata_cosine => nco_cos
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav2/PA_select/Channel Select1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_channel_select1_x3 is
  port (
    in0 : in std_logic_vector( 18-1 downto 0 );
    in1 : in std_logic_vector( 18-1 downto 0 );
    ch_id : in std_logic_vector( 4-1 downto 0 );
    ch_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out0 : out std_logic_vector( 18-1 downto 0 );
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end example_channel_select1_x3;
architecture structural of example_channel_select1_x3 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal amp : std_logic_vector( 18-1 downto 0 );
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal cav2_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal constant13_op_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal last : std_logic_vector( 1-1 downto 0 );
begin
  out0 <= down_sample1_q_net;
  out1 <= down_sample_q_net;
  amp <= in0;
  phase <= in1;
  channel <= ch_id;
  cav2_p1_chan_sel_net <= ch_sel;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  constant13 : entity work.sysgen_constant_ff2f539dd4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  delay : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => phase,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => amp,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  down_sample : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register3_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register2_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample1_q_net
  );
  register_x0 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register1_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  register6 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => last,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => cav2_p1_chan_sel_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => constant13_op_net,
    clk => clk_net,
    ce => ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav2/PA_select
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_pa_select_x0 is
  port (
    pa_bus_1 : in std_logic_vector( 18-1 downto 0 );
    pa_chan_sel : in std_logic_vector( 4-1 downto 0 );
    pa_bus_2 : in std_logic_vector( 18-1 downto 0 );
    pa_bus_3 : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    amp : out std_logic_vector( 18-1 downto 0 );
    phase : out std_logic_vector( 18-1 downto 0 )
  );
end example_pa_select_x0;
architecture structural of example_pa_select_x0 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal amp_x0 : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
begin
  amp <= down_sample1_q_net;
  phase <= down_sample_q_net;
  amp_x0 <= pa_bus_1;
  cav2_p1_chan_sel_net <= pa_chan_sel;
  phase_x0 <= pa_bus_2;
  channel <= pa_bus_3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  channel_select1 : entity work.example_channel_select1_x3 
  port map (
    in0 => amp_x0,
    in1 => phase_x0,
    ch_id => channel,
    ch_sel => cav2_p1_chan_sel_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav2/PA_select1/Channel Select1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_channel_select1 is
  port (
    in0 : in std_logic_vector( 18-1 downto 0 );
    in1 : in std_logic_vector( 18-1 downto 0 );
    ch_id : in std_logic_vector( 4-1 downto 0 );
    ch_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out0 : out std_logic_vector( 18-1 downto 0 );
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end example_channel_select1;
architecture structural of example_channel_select1 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal amp : std_logic_vector( 18-1 downto 0 );
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal cav2_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal constant13_op_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal last : std_logic_vector( 1-1 downto 0 );
begin
  out0 <= down_sample1_q_net;
  out1 <= down_sample_q_net;
  amp <= in0;
  phase <= in1;
  channel <= ch_id;
  cav2_p2_chan_sel_net <= ch_sel;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  constant13 : entity work.sysgen_constant_ff2f539dd4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  delay : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => phase,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => amp,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  down_sample : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register3_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register2_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample1_q_net
  );
  register_x0 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register1_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  register6 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => last,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => cav2_p2_chan_sel_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => constant13_op_net,
    clk => clk_net,
    ce => ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav2/PA_select1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_pa_select1 is
  port (
    pa_bus_1 : in std_logic_vector( 18-1 downto 0 );
    pa_chan_sel : in std_logic_vector( 4-1 downto 0 );
    pa_bus_2 : in std_logic_vector( 18-1 downto 0 );
    pa_bus_3 : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    amp : out std_logic_vector( 18-1 downto 0 );
    phase : out std_logic_vector( 18-1 downto 0 )
  );
end example_pa_select1;
architecture structural of example_pa_select1 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal amp_x0 : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
begin
  amp <= down_sample1_q_net;
  phase <= down_sample_q_net;
  amp_x0 <= pa_bus_1;
  cav2_p2_chan_sel_net <= pa_chan_sel;
  phase_x0 <= pa_bus_2;
  channel <= pa_bus_3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  channel_select1 : entity work.example_channel_select1 
  port map (
    in0 => amp_x0,
    in1 => phase_x0,
    ch_id => channel,
    ch_sel => cav2_p2_chan_sel_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav2/Subsystem1/Channel Select3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_channel_select3 is
  port (
    in0 : in std_logic_vector( 18-1 downto 0 );
    in1 : in std_logic_vector( 18-1 downto 0 );
    ch_id : in std_logic_vector( 4-1 downto 0 );
    ch_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out0 : out std_logic_vector( 18-1 downto 0 );
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end example_channel_select3;
architecture structural of example_channel_select3 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ddci : std_logic_vector( 18-1 downto 0 );
  signal ddcq : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal cav2_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal constant13_op_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal last : std_logic_vector( 1-1 downto 0 );
begin
  out0 <= down_sample1_q_net;
  out1 <= down_sample_q_net;
  ddci <= in0;
  ddcq <= in1;
  ddcchannel <= ch_id;
  cav2_p2_chan_sel_net <= ch_sel;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  constant13 : entity work.sysgen_constant_ff2f539dd4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  delay : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => ddcq,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => ddci,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  down_sample : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register3_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register2_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample1_q_net
  );
  register_x0 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register1_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  register6 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => last,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => cav2_p2_chan_sel_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => constant13_op_net,
    clk => clk_net,
    ce => ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav2/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_subsystem1 is
  port (
    iq_stream_in_1 : in std_logic_vector( 18-1 downto 0 );
    iq_chan_sel : in std_logic_vector( 4-1 downto 0 );
    iq_stream_in_2 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_in_3 : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    ddci : out std_logic_vector( 18-1 downto 0 );
    ddcq : out std_logic_vector( 18-1 downto 0 )
  );
end example_subsystem1;
architecture structural of example_subsystem1 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ddci_x0 : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
begin
  ddci <= down_sample1_q_net;
  ddcq <= down_sample_q_net;
  ddci_x0 <= iq_stream_in_1;
  cav2_p2_chan_sel_net <= iq_chan_sel;
  ddcq_x0 <= iq_stream_in_2;
  ddcchannel <= iq_stream_in_3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  channel_select3 : entity work.example_channel_select3 
  port map (
    in0 => ddci_x0,
    in1 => ddcq_x0,
    ch_id => ddcchannel,
    ch_sel => cav2_p2_chan_sel_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav2/Subsystem3/Channel Select3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_channel_select3_x0 is
  port (
    in0 : in std_logic_vector( 18-1 downto 0 );
    in1 : in std_logic_vector( 18-1 downto 0 );
    ch_id : in std_logic_vector( 4-1 downto 0 );
    ch_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out0 : out std_logic_vector( 18-1 downto 0 );
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end example_channel_select3_x0;
architecture structural of example_channel_select3_x0 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ddci : std_logic_vector( 18-1 downto 0 );
  signal ddcq : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal cav2_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal constant13_op_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal last : std_logic_vector( 1-1 downto 0 );
begin
  out0 <= down_sample1_q_net;
  out1 <= down_sample_q_net;
  ddci <= in0;
  ddcq <= in1;
  ddcchannel <= ch_id;
  cav2_p1_chan_sel_net <= ch_sel;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  constant13 : entity work.sysgen_constant_ff2f539dd4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  delay : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => ddcq,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => ddci,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  down_sample : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register3_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register2_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample1_q_net
  );
  register_x0 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register1_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  register6 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => last,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => cav2_p1_chan_sel_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => constant13_op_net,
    clk => clk_net,
    ce => ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav2/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_subsystem3 is
  port (
    iq_stream_in_1 : in std_logic_vector( 18-1 downto 0 );
    iq_chan_sel : in std_logic_vector( 4-1 downto 0 );
    iq_stream_in_2 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_in_3 : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    ddci : out std_logic_vector( 18-1 downto 0 );
    ddcq : out std_logic_vector( 18-1 downto 0 )
  );
end example_subsystem3;
architecture structural of example_subsystem3 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ddci_x0 : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
begin
  ddci <= down_sample1_q_net;
  ddcq <= down_sample_q_net;
  ddci_x0 <= iq_stream_in_1;
  cav2_p1_chan_sel_net <= iq_chan_sel;
  ddcq_x0 <= iq_stream_in_2;
  ddcchannel <= iq_stream_in_3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  channel_select3 : entity work.example_channel_select3_x0 
  port map (
    in0 => ddci_x0,
    in1 => ddcq_x0,
    ch_id => ddcchannel,
    ch_sel => cav2_p1_chan_sel_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Cav2
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_cav2 is
  port (
    pa_stream_1 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_1 : in std_logic_vector( 18-1 downto 0 );
    pa_stream_2 : in std_logic_vector( 18-1 downto 0 );
    pa_stream_3 : in std_logic_vector( 4-1 downto 0 );
    iq_stream_2 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_3 : in std_logic_vector( 4-1 downto 0 );
    cav2_nco_phase_adj : in std_logic_vector( 29-1 downto 0 );
    cav2_nco_phase_reset : in std_logic_vector( 1-1 downto 0 );
    cav2_p1_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav2_p2_chan_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    cav2_p1_dc_real_x0 : out std_logic_vector( 29-1 downto 0 );
    cav2_p1_dc_img_x0 : out std_logic_vector( 29-1 downto 0 );
    cav2_p1_dc_freq_x0 : out std_logic_vector( 26-1 downto 0 );
    cav2_p1_integrated_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_integrated_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_amp_out_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_phase_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_dc_real : out std_logic_vector( 29-1 downto 0 );
    cav2_p2_dc_img : out std_logic_vector( 29-1 downto 0 );
    cav2_p2_dc_freq : out std_logic_vector( 26-1 downto 0 );
    cav2_p2_integrated_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_integrated_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_amp : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_phase : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_amp : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_phase : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_dc_freq : out std_logic_vector( 26-1 downto 0 );
    cav2_p1_dc_img : out std_logic_vector( 29-1 downto 0 );
    cav2_p1_dc_real : out std_logic_vector( 29-1 downto 0 );
    cav2_p1_if_amp_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_phase_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_integrated_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_integrated_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_phase_out_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_amp_out_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_phase_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_dc_freq_x0 : out std_logic_vector( 26-1 downto 0 );
    cav2_p2_dc_img_x0 : out std_logic_vector( 29-1 downto 0 );
    cav2_p2_dc_real_x0 : out std_logic_vector( 29-1 downto 0 );
    cav2_p2_if_amp_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_phase_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_integrated_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_integrated_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_phase_out_x0 : out std_logic_vector( 18-1 downto 0 )
  );
end example_cav2;
architecture structural of example_cav2 is 
  signal amp : std_logic_vector( 18-1 downto 0 );
  signal ddci : std_logic_vector( 18-1 downto 0 );
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal ddcq : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal register2_q_net : std_logic_vector( 29-1 downto 0 );
  signal register1_q_net : std_logic_vector( 29-1 downto 0 );
  signal constant_op_net : std_logic_vector( 26-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 18-1 downto 0 );
  signal register32_q_net : std_logic_vector( 29-1 downto 0 );
  signal register33_q_net : std_logic_vector( 29-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 26-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant12_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant14_op_net : std_logic_vector( 18-1 downto 0 );
  signal register9_q_net : std_logic_vector( 26-1 downto 0 );
  signal constant18_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant19_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant21_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant23_op_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal register15_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav2_nco_phase_adj_net : std_logic_vector( 29-1 downto 0 );
  signal cav2_nco_phase_reset_net : std_logic_vector( 1-1 downto 0 );
  signal register13_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register14_q_net : std_logic_vector( 18-1 downto 0 );
  signal register16_q_net : std_logic_vector( 18-1 downto 0 );
  signal register8_q_net : std_logic_vector( 29-1 downto 0 );
  signal register7_q_net : std_logic_vector( 29-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register5_q_net : std_logic_vector( 18-1 downto 0 );
  signal register4_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 18-1 downto 0 );
  signal register10_q_net : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net : std_logic_vector( 18-1 downto 0 );
  signal register20_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register21_q_net : std_logic_vector( 18-1 downto 0 );
  signal register23_q_net : std_logic_vector( 18-1 downto 0 );
  signal register22_q_net : std_logic_vector( 18-1 downto 0 );
  signal register30_q_net : std_logic_vector( 26-1 downto 0 );
  signal register29_q_net : std_logic_vector( 29-1 downto 0 );
  signal register28_q_net : std_logic_vector( 29-1 downto 0 );
  signal register24_q_net : std_logic_vector( 18-1 downto 0 );
  signal register26_q_net : std_logic_vector( 18-1 downto 0 );
  signal register25_q_net : std_logic_vector( 18-1 downto 0 );
  signal register27_q_net : std_logic_vector( 18-1 downto 0 );
  signal register17_q_net : std_logic_vector( 18-1 downto 0 );
  signal register18_q_net : std_logic_vector( 18-1 downto 0 );
  signal register19_q_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal clock_enable_probe1_q_net : std_logic_vector( 1-1 downto 0 );
  signal nco_sin : std_logic_vector( 10-1 downto 0 );
  signal nco_cos : std_logic_vector( 10-1 downto 0 );
  signal clock_enable_probe_q_net : std_logic_vector( 1-1 downto 0 );
  signal clock_enable_probe1_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal complex_multiplier_6_0_m_axis_dout_tvalid_net : std_logic;
  signal complex_multiplier_6_0_m_axis_dout_tdata_imag_net : std_logic_vector( 29-1 downto 0 );
  signal complex_multiplier_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 29-1 downto 0 );
  signal complex_multiplier_6_0_1_m_axis_dout_tvalid_net : std_logic;
  signal complex_multiplier_6_0_1_m_axis_dout_tdata_imag_net : std_logic_vector( 29-1 downto 0 );
  signal complex_multiplier_6_0_1_m_axis_dout_tdata_real_net : std_logic_vector( 29-1 downto 0 );
begin
  amp <= pa_stream_1;
  ddci <= iq_stream_1;
  phase <= pa_stream_2;
  channel <= pa_stream_3;
  ddcq <= iq_stream_2;
  ddcchannel <= iq_stream_3;
  cav2_p1_dc_real_x0 <= register2_q_net;
  cav2_p1_dc_img_x0 <= register1_q_net;
  cav2_p1_dc_freq_x0 <= constant_op_net;
  cav2_p1_integrated_i <= constant8_op_net;
  cav2_p1_integrated_q <= constant7_op_net;
  cav2_p1_phase_out <= constant6_op_net;
  cav2_p1_amp_out_x0 <= constant5_op_net;
  cav2_p1_comparison_i_x0 <= constant4_op_net;
  cav2_p1_comparison_q <= constant3_op_net;
  cav2_p1_comparison_phase_x0 <= constant9_op_net;
  cav2_p2_dc_real <= register32_q_net;
  cav2_p2_dc_img <= register33_q_net;
  cav2_p2_dc_freq <= constant10_op_net;
  cav2_p2_integrated_i <= constant11_op_net;
  cav2_p2_integrated_q <= constant12_op_net;
  cav2_p2_phase_out <= constant14_op_net;
  cav2_p2_amp_out <= constant18_op_net;
  cav2_p2_comparison_i <= constant19_op_net;
  cav2_p2_comparison_q <= constant21_op_net;
  cav2_p2_comparison_phase <= constant23_op_net;
  cav2_p2_if_amp <= down_sample1_q_net_x1;
  cav2_p2_if_phase <= down_sample_q_net_x0;
  cav2_p2_if_i <= down_sample1_q_net_x0;
  cav2_p2_if_q <= down_sample_q_net_x2;
  cav2_p1_if_amp <= down_sample1_q_net_x2;
  cav2_p1_if_phase <= down_sample_q_net_x1;
  cav2_p1_if_i <= down_sample1_q_net;
  cav2_p1_if_q <= down_sample_q_net;
  cav1_p1_comparison_q <= register15_q_net;
  cav2_nco_phase_adj_net <= cav2_nco_phase_adj;
  cav2_nco_phase_reset_net <= cav2_nco_phase_reset;
  cav2_p1_amp_out <= register13_q_net;
  cav2_p1_chan_sel_net <= cav2_p1_chan_sel;
  cav2_p1_comparison_i <= register14_q_net;
  cav2_p1_comparison_phase <= register16_q_net;
  cav2_p1_dc_freq <= register9_q_net;
  cav2_p1_dc_img <= register8_q_net;
  cav2_p1_dc_real <= register7_q_net;
  cav2_p1_if_amp_x0 <= register3_q_net;
  cav2_p1_if_i_x0 <= register5_q_net;
  cav2_p1_if_phase_x0 <= register4_q_net;
  cav2_p1_if_q_x0 <= register6_q_net;
  cav2_p1_integrated_i_x0 <= register10_q_net;
  cav2_p1_integrated_q_x0 <= register11_q_net;
  cav2_p1_phase_out_x0 <= register12_q_net;
  cav2_p2_amp_out_x0 <= register20_q_net;
  cav2_p2_chan_sel_net <= cav2_p2_chan_sel;
  cav2_p2_comparison_i_x0 <= register21_q_net;
  cav2_p2_comparison_phase_x0 <= register23_q_net;
  cav2_p2_comparison_q_x0 <= register22_q_net;
  cav2_p2_dc_freq_x0 <= register30_q_net;
  cav2_p2_dc_img_x0 <= register29_q_net;
  cav2_p2_dc_real_x0 <= register28_q_net;
  cav2_p2_if_amp_x0 <= register24_q_net;
  cav2_p2_if_i_x0 <= register26_q_net;
  cav2_p2_if_phase_x0 <= register25_q_net;
  cav2_p2_if_q_x0 <= register27_q_net;
  cav2_p2_integrated_i_x0 <= register17_q_net;
  cav2_p2_integrated_q_x0 <= register18_q_net;
  cav2_p2_phase_out_x0 <= register19_q_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  ddc_nco : entity work.example_ddc_nco_x0 
  port map (
    phase_reset => cav2_nco_phase_reset_net,
    phase_ctrl => cav2_nco_phase_adj_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tvalid => clock_enable_probe1_q_net,
    sine => nco_sin,
    cosine => nco_cos,
    nco_out_1 => nco_sin,
    nco_out_2 => nco_cos
  );
  pa_select : entity work.example_pa_select_x0 
  port map (
    pa_bus_1 => amp,
    pa_chan_sel => cav2_p1_chan_sel_net,
    pa_bus_2 => phase,
    pa_bus_3 => channel,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    amp => down_sample1_q_net_x2,
    phase => down_sample_q_net_x1
  );
  pa_select1 : entity work.example_pa_select1 
  port map (
    pa_bus_1 => amp,
    pa_chan_sel => cav2_p2_chan_sel_net,
    pa_bus_2 => phase,
    pa_bus_3 => channel,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    amp => down_sample1_q_net_x1,
    phase => down_sample_q_net_x0
  );
  subsystem1_x0 : entity work.example_subsystem1 
  port map (
    iq_stream_in_1 => ddci,
    iq_chan_sel => cav2_p2_chan_sel_net,
    iq_stream_in_2 => ddcq,
    iq_stream_in_3 => ddcchannel,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    ddci => down_sample1_q_net_x0,
    ddcq => down_sample_q_net_x2
  );
  subsystem3 : entity work.example_subsystem3 
  port map (
    iq_stream_in_1 => ddci,
    iq_chan_sel => cav2_p1_chan_sel_net,
    iq_stream_in_2 => ddcq,
    iq_stream_in_3 => ddcchannel,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    ddci => down_sample1_q_net,
    ddcq => down_sample_q_net
  );
  clock_enable_probe : entity work.example_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => down_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => clock_enable_probe_q_net
  );
  clock_enable_probe1 : entity work.example_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => down_sample_q_net_x2,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => clock_enable_probe1_q_net_x0
  );
  complex_multiplier_6_0 : entity work.xlcomplex_multiplier_2db568568678b52ae60ddabdbca6b4fb 
  port map (
    s_axis_a_tvalid => clock_enable_probe_q_net(0),
    s_axis_a_tdata_imag => down_sample_q_net,
    s_axis_a_tdata_real => down_sample1_q_net,
    s_axis_b_tvalid => clock_enable_probe1_q_net(0),
    s_axis_b_tdata_imag => nco_sin,
    s_axis_b_tdata_real => nco_cos,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => complex_multiplier_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => complex_multiplier_6_0_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => complex_multiplier_6_0_m_axis_dout_tdata_real_net
  );
  complex_multiplier_6_0_1 : entity work.xlcomplex_multiplier_2db568568678b52ae60ddabdbca6b4fb 
  port map (
    s_axis_a_tvalid => clock_enable_probe1_q_net_x0(0),
    s_axis_a_tdata_imag => down_sample_q_net_x2,
    s_axis_a_tdata_real => down_sample1_q_net_x0,
    s_axis_b_tvalid => clock_enable_probe1_q_net(0),
    s_axis_b_tdata_imag => nco_sin,
    s_axis_b_tdata_real => nco_cos,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => complex_multiplier_6_0_1_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => complex_multiplier_6_0_1_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => complex_multiplier_6_0_1_m_axis_dout_tdata_real_net
  );
  constant_x0 : entity work.sysgen_constant_ebbc84a2b1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant10 : entity work.sysgen_constant_ebbc84a2b1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant10_op_net
  );
  constant11 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant11_op_net
  );
  constant12 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant12_op_net
  );
  constant14 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant14_op_net
  );
  constant18 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant18_op_net
  );
  constant19 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant19_op_net
  );
  constant21 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant21_op_net
  );
  constant23 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant23_op_net
  );
  constant3 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant8 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  constant9 : entity work.sysgen_constant_578d5a08da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  register1 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_m_axis_dout_tdata_imag_net,
    en(0) => complex_multiplier_6_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register10 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant8_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register10_q_net
  );
  register11 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant7_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register11_q_net
  );
  register12 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register12_q_net
  );
  register13 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register13_q_net
  );
  register14 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register14_q_net
  );
  register15 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register15_q_net
  );
  register16 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant9_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register16_q_net
  );
  register17 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant11_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register17_q_net
  );
  register18 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant12_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register18_q_net
  );
  register19 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant14_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register19_q_net
  );
  register2 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_m_axis_dout_tdata_real_net,
    en(0) => complex_multiplier_6_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register20 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant18_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register20_q_net
  );
  register21 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant19_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register21_q_net
  );
  register22 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant21_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register22_q_net
  );
  register23 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant23_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register23_q_net
  );
  register24 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net_x1,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register24_q_net
  );
  register25 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net_x0,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register25_q_net
  );
  register26 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net_x0,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register26_q_net
  );
  register27 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net_x2,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register27_q_net
  );
  register28 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register32_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register28_q_net
  );
  register29 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register33_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register29_q_net
  );
  register3 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net_x2,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register3_q_net
  );
  register30 : entity work.example_xlregister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant10_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register30_q_net
  );
  register32 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_1_m_axis_dout_tdata_imag_net,
    en(0) => complex_multiplier_6_0_1_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register32_q_net
  );
  register33 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_1_m_axis_dout_tdata_real_net,
    en(0) => complex_multiplier_6_0_1_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register33_q_net
  );
  register4 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net_x1,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register4_q_net
  );
  register5 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register5_q_net
  );
  register6 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register6_q_net
  );
  register7 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register7_q_net
  );
  register8 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register8_q_net
  );
  register9 : entity work.example_xlregister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register9_q_net
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/RFLib_input
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_rflib_input is
  port (
    amp : in std_logic_vector( 18-1 downto 0 );
    ddcchannel : in std_logic_vector( 4-1 downto 0 );
    ddci : in std_logic_vector( 18-1 downto 0 );
    ddcq : in std_logic_vector( 18-1 downto 0 );
    phase : in std_logic_vector( 18-1 downto 0 );
    phaseampchannel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    pa_out_1 : out std_logic_vector( 18-1 downto 0 );
    iq_out_1 : out std_logic_vector( 18-1 downto 0 );
    pa_out_2 : out std_logic_vector( 18-1 downto 0 );
    pa_out_3 : out std_logic_vector( 4-1 downto 0 );
    iq_out_2 : out std_logic_vector( 18-1 downto 0 );
    iq_out_3 : out std_logic_vector( 4-1 downto 0 )
  );
end example_rflib_input;
architecture structural of example_rflib_input is 
  signal amp_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddci_x0 : std_logic_vector( 18-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel_x0 : std_logic_vector( 4-1 downto 0 );
  signal amp_net : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel_net : std_logic_vector( 4-1 downto 0 );
  signal ddci_net : std_logic_vector( 18-1 downto 0 );
  signal ddcq_net : std_logic_vector( 18-1 downto 0 );
  signal phase_net : std_logic_vector( 18-1 downto 0 );
  signal phaseampchannel_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  pa_out_1 <= amp_x0;
  iq_out_1 <= ddci_x0;
  pa_out_2 <= phase_x0;
  pa_out_3 <= channel;
  iq_out_2 <= ddcq_x0;
  iq_out_3 <= ddcchannel_x0;
  amp_net <= amp;
  ddcchannel_net <= ddcchannel;
  ddci_net <= ddci;
  ddcq_net <= ddcq;
  phase_net <= phase;
  phaseampchannel_net <= phaseampchannel;
  clk_net <= clk_1;
  ce_net <= ce_1;
  register25 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => amp_net,
    clk => clk_net,
    ce => ce_net,
    q => amp_x0
  );
  register26 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => phase_net,
    clk => clk_net,
    ce => ce_net,
    q => phase_x0
  );
  register27 : entity work.example_xlregister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    en => "1",
    rst => "0",
    d => phaseampchannel_net,
    clk => clk_net,
    ce => ce_net,
    q => channel
  );
  register29 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => ddci_net,
    clk => clk_net,
    ce => ce_net,
    q => ddci_x0
  );
  register30 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => ddcq_net,
    clk => clk_net,
    ce => ce_net,
    q => ddcq_x0
  );
  register31 : entity work.example_xlregister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    en => "1",
    rst => "0",
    d => ddcchannel_net,
    clk => clk_net,
    ce => ce_net,
    q => ddcchannel_x0
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Ref/IQ_select/Channel Select3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_channel_select3_x1 is
  port (
    in0 : in std_logic_vector( 18-1 downto 0 );
    in1 : in std_logic_vector( 18-1 downto 0 );
    ch_id : in std_logic_vector( 4-1 downto 0 );
    ch_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out0 : out std_logic_vector( 18-1 downto 0 );
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end example_channel_select3_x1;
architecture structural of example_channel_select3_x1 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ddci : std_logic_vector( 18-1 downto 0 );
  signal ddcq : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal rf_ref_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal constant13_op_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal last : std_logic_vector( 1-1 downto 0 );
begin
  out0 <= down_sample1_q_net;
  out1 <= down_sample_q_net;
  ddci <= in0;
  ddcq <= in1;
  ddcchannel <= ch_id;
  rf_ref_chan_sel_net <= ch_sel;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  constant13 : entity work.sysgen_constant_ff2f539dd4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  delay : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => ddcq,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => ddci,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  down_sample : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register3_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register2_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample1_q_net
  );
  register_x0 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register1_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  register6 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => last,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => rf_ref_chan_sel_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => constant13_op_net,
    clk => clk_net,
    ce => ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Ref/IQ_select
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_iq_select is
  port (
    iq_stream_in_1 : in std_logic_vector( 18-1 downto 0 );
    iq_chan_sel : in std_logic_vector( 4-1 downto 0 );
    iq_stream_in_2 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_in_3 : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    ddci : out std_logic_vector( 18-1 downto 0 );
    ddcq : out std_logic_vector( 18-1 downto 0 )
  );
end example_iq_select;
architecture structural of example_iq_select is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ddci_x0 : std_logic_vector( 18-1 downto 0 );
  signal rf_ref_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
begin
  ddci <= down_sample1_q_net;
  ddcq <= down_sample_q_net;
  ddci_x0 <= iq_stream_in_1;
  rf_ref_chan_sel_net <= iq_chan_sel;
  ddcq_x0 <= iq_stream_in_2;
  ddcchannel <= iq_stream_in_3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  channel_select3 : entity work.example_channel_select3_x1 
  port map (
    in0 => ddci_x0,
    in1 => ddcq_x0,
    ch_id => ddcchannel,
    ch_sel => rf_ref_chan_sel_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Ref/PA_select/Channel Select1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_channel_select1_x0 is
  port (
    in0 : in std_logic_vector( 18-1 downto 0 );
    in1 : in std_logic_vector( 18-1 downto 0 );
    ch_id : in std_logic_vector( 4-1 downto 0 );
    ch_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out0 : out std_logic_vector( 18-1 downto 0 );
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end example_channel_select1_x0;
architecture structural of example_channel_select1_x0 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal amp : std_logic_vector( 18-1 downto 0 );
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal rf_ref_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal constant13_op_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal last : std_logic_vector( 1-1 downto 0 );
begin
  out0 <= down_sample1_q_net;
  out1 <= down_sample_q_net;
  amp <= in0;
  phase <= in1;
  channel <= ch_id;
  rf_ref_chan_sel_net <= ch_sel;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  constant13 : entity work.sysgen_constant_ff2f539dd4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  delay : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => phase,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.example_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => amp,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  down_sample : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register3_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register2_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample1_q_net
  );
  register_x0 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register1_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register_q_net,
    en => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  register6 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => last,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => rf_ref_chan_sel_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => constant13_op_net,
    clk => clk_net,
    ce => ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Ref/PA_select
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_pa_select is
  port (
    pa_bus_1 : in std_logic_vector( 18-1 downto 0 );
    pa_chan_sel : in std_logic_vector( 4-1 downto 0 );
    pa_bus_2 : in std_logic_vector( 18-1 downto 0 );
    pa_bus_3 : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    amp : out std_logic_vector( 18-1 downto 0 );
    phase : out std_logic_vector( 18-1 downto 0 )
  );
end example_pa_select;
architecture structural of example_pa_select is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal amp_x0 : std_logic_vector( 18-1 downto 0 );
  signal rf_ref_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
begin
  amp <= down_sample1_q_net;
  phase <= down_sample_q_net;
  amp_x0 <= pa_bus_1;
  rf_ref_chan_sel_net <= pa_chan_sel;
  phase_x0 <= pa_bus_2;
  channel <= pa_bus_3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  channel_select1 : entity work.example_channel_select1_x0 
  port map (
    in0 => amp_x0,
    in1 => phase_x0,
    ch_id => channel,
    ch_sel => rf_ref_chan_sel_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp/Ref
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_ref is
  port (
    in1_1 : in std_logic_vector( 18-1 downto 0 );
    in2_1 : in std_logic_vector( 18-1 downto 0 );
    in1_2 : in std_logic_vector( 18-1 downto 0 );
    in1_3 : in std_logic_vector( 4-1 downto 0 );
    in2_2 : in std_logic_vector( 18-1 downto 0 );
    in2_3 : in std_logic_vector( 4-1 downto 0 );
    rf_ref_chan_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    ref_amp : out std_logic_vector( 18-1 downto 0 );
    ref_phi : out std_logic_vector( 18-1 downto 0 );
    ref_i : out std_logic_vector( 18-1 downto 0 );
    ref_q : out std_logic_vector( 18-1 downto 0 );
    rf_ref_amp : out std_logic_vector( 18-1 downto 0 );
    rf_ref_phase : out std_logic_vector( 18-1 downto 0 );
    rf_ref_i : out std_logic_vector( 18-1 downto 0 );
    rf_ref_q : out std_logic_vector( 18-1 downto 0 );
    rf_ref_amp_x0 : out std_logic_vector( 18-1 downto 0 );
    rf_ref_i_x0 : out std_logic_vector( 18-1 downto 0 );
    rf_ref_phase_x0 : out std_logic_vector( 18-1 downto 0 );
    rf_ref_q_x0 : out std_logic_vector( 18-1 downto 0 )
  );
end example_ref;
architecture structural of example_ref is 
  signal down_sample1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal amp : std_logic_vector( 18-1 downto 0 );
  signal ddci : std_logic_vector( 18-1 downto 0 );
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal ddcq : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal rf_ref_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
begin
  ref_amp <= down_sample1_q_net_x0;
  ref_phi <= down_sample_q_net_x0;
  ref_i <= down_sample1_q_net;
  ref_q <= down_sample_q_net;
  amp <= in1_1;
  ddci <= in2_1;
  phase <= in1_2;
  channel <= in1_3;
  ddcq <= in2_2;
  ddcchannel <= in2_3;
  rf_ref_amp <= down_sample1_q_net_x0;
  rf_ref_phase <= down_sample_q_net_x0;
  rf_ref_i <= down_sample1_q_net;
  rf_ref_q <= down_sample_q_net;
  rf_ref_amp_x0 <= down_sample1_q_net_x0;
  rf_ref_chan_sel_net <= rf_ref_chan_sel;
  rf_ref_i_x0 <= down_sample1_q_net;
  rf_ref_phase_x0 <= down_sample_q_net_x0;
  rf_ref_q_x0 <= down_sample_q_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  iq_select : entity work.example_iq_select 
  port map (
    iq_stream_in_1 => ddci,
    iq_chan_sel => rf_ref_chan_sel_net,
    iq_stream_in_2 => ddcq,
    iq_stream_in_3 => ddcchannel,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    ddci => down_sample1_q_net,
    ddcq => down_sample_q_net
  );
  pa_select : entity work.example_pa_select 
  port map (
    pa_bus_1 => amp,
    pa_chan_sel => rf_ref_chan_sel_net,
    pa_bus_2 => phase,
    pa_bus_3 => channel,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    amp => down_sample1_q_net_x0,
    phase => down_sample_q_net_x0
  );
end structural;
-- Generated from Simulink block exampleModel/example/dsp
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_dsp is
  port (
    cav1_nco_phase_adj : in std_logic_vector( 29-1 downto 0 );
    cav1_nco_phase_reset : in std_logic_vector( 1-1 downto 0 );
    cav1_p1_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav1_p2_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav2_nco_phase_adj : in std_logic_vector( 29-1 downto 0 );
    cav2_nco_phase_reset : in std_logic_vector( 1-1 downto 0 );
    cav2_p1_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav2_p2_chan_sel : in std_logic_vector( 4-1 downto 0 );
    amp : in std_logic_vector( 18-1 downto 0 );
    ddcchannel : in std_logic_vector( 4-1 downto 0 );
    ddci : in std_logic_vector( 18-1 downto 0 );
    ddcq : in std_logic_vector( 18-1 downto 0 );
    phase : in std_logic_vector( 18-1 downto 0 );
    phaseampchannel : in std_logic_vector( 4-1 downto 0 );
    rf_ref_chan_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    cav1_p2_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_dc_freq : out std_logic_vector( 26-1 downto 0 );
    cav1_p2_dc_img : out std_logic_vector( 29-1 downto 0 );
    cav1_p2_dc_real : out std_logic_vector( 29-1 downto 0 );
    cav1_p2_if_amp : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_dc_freq : out std_logic_vector( 26-1 downto 0 );
    cav2_p1_dc_img : out std_logic_vector( 29-1 downto 0 );
    cav2_p1_dc_real : out std_logic_vector( 29-1 downto 0 );
    cav2_p1_if_amp : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_phase : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_integrated_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_integrated_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_dc_freq : out std_logic_vector( 26-1 downto 0 );
    cav2_p2_dc_img : out std_logic_vector( 29-1 downto 0 );
    cav2_p2_dc_real : out std_logic_vector( 29-1 downto 0 );
    cav2_p2_if_amp : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_phase : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_integrated_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_integrated_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_phase_out : out std_logic_vector( 18-1 downto 0 );
    rf_ref_amp_x0 : out std_logic_vector( 18-1 downto 0 );
    rf_ref_i_x0 : out std_logic_vector( 18-1 downto 0 );
    rf_ref_phase_x0 : out std_logic_vector( 18-1 downto 0 );
    rf_ref_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_dc_freq : out std_logic_vector( 26-1 downto 0 );
    cav1_p1_dc_img : out std_logic_vector( 29-1 downto 0 );
    cav1_p1_dc_real : out std_logic_vector( 29-1 downto 0 );
    cav1_p1_if_amp : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_if_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_if_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_if_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_integrated_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_integrated_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_amp_out_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_phase_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_dc_freq_x0 : out std_logic_vector( 26-1 downto 0 );
    cav1_p2_dc_img_x0 : out std_logic_vector( 29-1 downto 0 );
    cav1_p2_dc_real_x0 : out std_logic_vector( 29-1 downto 0 );
    cav1_p2_if_amp_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_phase_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_phase_out_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_amp_out_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_phase_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_dc_freq_x0 : out std_logic_vector( 26-1 downto 0 );
    cav2_p1_dc_img_x0 : out std_logic_vector( 29-1 downto 0 );
    cav2_p1_dc_real_x0 : out std_logic_vector( 29-1 downto 0 );
    cav2_p1_if_amp_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_phase_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_integrated_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_integrated_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_phase_out_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_amp_out_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_phase_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_dc_freq_x0 : out std_logic_vector( 26-1 downto 0 );
    cav2_p2_dc_img_x0 : out std_logic_vector( 29-1 downto 0 );
    cav2_p2_dc_real_x0 : out std_logic_vector( 29-1 downto 0 );
    cav2_p2_if_amp_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_phase_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_integrated_i_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_integrated_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_phase_out_x0 : out std_logic_vector( 18-1 downto 0 );
    rf_ref_amp : out std_logic_vector( 18-1 downto 0 );
    rf_ref_i : out std_logic_vector( 18-1 downto 0 );
    rf_ref_phase : out std_logic_vector( 18-1 downto 0 );
    rf_ref_q : out std_logic_vector( 18-1 downto 0 )
  );
end example_dsp;
architecture structural of example_dsp is 
  signal constant10_op_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal register29_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal register28_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal register24_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register26_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register25_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register27_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register17_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register18_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register19_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal amp_net : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel_net : std_logic_vector( 4-1 downto 0 );
  signal ddci_net : std_logic_vector( 18-1 downto 0 );
  signal ddcq_net : std_logic_vector( 18-1 downto 0 );
  signal phase_net : std_logic_vector( 18-1 downto 0 );
  signal phaseampchannel_net : std_logic_vector( 4-1 downto 0 );
  signal down_sample1_q_net_x5 : std_logic_vector( 18-1 downto 0 );
  signal rf_ref_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal down_sample1_q_net_x6 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x5 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal register1_q_net : std_logic_vector( 29-1 downto 0 );
  signal register2_q_net : std_logic_vector( 29-1 downto 0 );
  signal down_sample1_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant8_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant18_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant19_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant23_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant21_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register33_q_net : std_logic_vector( 29-1 downto 0 );
  signal register32_q_net : std_logic_vector( 29-1 downto 0 );
  signal down_sample1_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant11_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant12_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant14_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant9_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 26-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal register2_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal down_sample1_q_net_x8 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x8 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant18_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant19_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant23_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant21_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 26-1 downto 0 );
  signal register33_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal register32_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal down_sample1_q_net_x7 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x7 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x6 : std_logic_vector( 18-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant12_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant14_op_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal amp_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddci_x0 : std_logic_vector( 18-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel_x0 : std_logic_vector( 4-1 downto 0 );
  signal cav1_nco_phase_adj_net : std_logic_vector( 29-1 downto 0 );
  signal cav1_nco_phase_reset_net : std_logic_vector( 1-1 downto 0 );
  signal cav1_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register20_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register21_q_net : std_logic_vector( 18-1 downto 0 );
  signal register23_q_net : std_logic_vector( 18-1 downto 0 );
  signal register22_q_net : std_logic_vector( 18-1 downto 0 );
  signal register30_q_net : std_logic_vector( 26-1 downto 0 );
  signal register29_q_net : std_logic_vector( 29-1 downto 0 );
  signal register28_q_net : std_logic_vector( 29-1 downto 0 );
  signal register24_q_net : std_logic_vector( 18-1 downto 0 );
  signal register26_q_net : std_logic_vector( 18-1 downto 0 );
  signal register25_q_net : std_logic_vector( 18-1 downto 0 );
  signal register27_q_net : std_logic_vector( 18-1 downto 0 );
  signal register17_q_net : std_logic_vector( 18-1 downto 0 );
  signal register18_q_net : std_logic_vector( 18-1 downto 0 );
  signal register19_q_net : std_logic_vector( 18-1 downto 0 );
  signal register15_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav2_nco_phase_adj_net : std_logic_vector( 29-1 downto 0 );
  signal cav2_nco_phase_reset_net : std_logic_vector( 1-1 downto 0 );
  signal register13_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register30_q_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal register14_q_net : std_logic_vector( 18-1 downto 0 );
  signal register16_q_net : std_logic_vector( 18-1 downto 0 );
  signal register9_q_net : std_logic_vector( 26-1 downto 0 );
  signal register8_q_net : std_logic_vector( 29-1 downto 0 );
  signal register7_q_net : std_logic_vector( 29-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register5_q_net : std_logic_vector( 18-1 downto 0 );
  signal register4_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 18-1 downto 0 );
  signal register10_q_net : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net : std_logic_vector( 18-1 downto 0 );
  signal register20_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register21_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register23_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register22_q_net_x0 : std_logic_vector( 18-1 downto 0 );
begin
  cav1_nco_phase_adj_net <= cav1_nco_phase_adj;
  cav1_nco_phase_reset_net <= cav1_nco_phase_reset;
  cav1_p1_chan_sel_net <= cav1_p1_chan_sel;
  cav1_p2_amp_out <= register20_q_net;
  cav1_p2_chan_sel_net <= cav1_p2_chan_sel;
  cav1_p2_comparison_i <= register21_q_net;
  cav1_p2_comparison_phase <= register23_q_net;
  cav1_p2_comparison_q <= register22_q_net;
  cav1_p2_dc_freq <= register30_q_net;
  cav1_p2_dc_img <= register29_q_net;
  cav1_p2_dc_real <= register28_q_net;
  cav1_p2_if_amp <= register24_q_net;
  cav1_p2_if_i <= register26_q_net;
  cav1_p2_if_phase <= register25_q_net;
  cav1_p2_if_q <= register27_q_net;
  cav1_p2_integrated_i <= register17_q_net;
  cav1_p2_integrated_q <= register18_q_net;
  cav1_p2_phase_out <= register19_q_net;
  cav1_p1_comparison_q <= register15_q_net;
  cav2_nco_phase_adj_net <= cav2_nco_phase_adj;
  cav2_nco_phase_reset_net <= cav2_nco_phase_reset;
  cav2_p1_amp_out <= register13_q_net;
  cav2_p1_chan_sel_net <= cav2_p1_chan_sel;
  cav2_p1_comparison_i <= register14_q_net;
  cav2_p1_comparison_phase <= register16_q_net;
  cav2_p1_dc_freq <= register9_q_net;
  cav2_p1_dc_img <= register8_q_net;
  cav2_p1_dc_real <= register7_q_net;
  cav2_p1_if_amp <= register3_q_net;
  cav2_p1_if_i <= register5_q_net;
  cav2_p1_if_phase <= register4_q_net;
  cav2_p1_if_q <= register6_q_net;
  cav2_p1_integrated_i <= register10_q_net;
  cav2_p1_integrated_q <= register11_q_net;
  cav2_p1_phase_out <= register12_q_net;
  cav2_p2_amp_out <= register20_q_net_x0;
  cav2_p2_chan_sel_net <= cav2_p2_chan_sel;
  cav2_p2_comparison_i <= register21_q_net_x0;
  cav2_p2_comparison_phase <= register23_q_net_x0;
  cav2_p2_comparison_q <= register22_q_net_x0;
  cav2_p2_dc_freq <= register30_q_net_x0;
  cav2_p2_dc_img <= register29_q_net_x0;
  cav2_p2_dc_real <= register28_q_net_x0;
  cav2_p2_if_amp <= register24_q_net_x0;
  cav2_p2_if_i <= register26_q_net_x0;
  cav2_p2_if_phase <= register25_q_net_x0;
  cav2_p2_if_q <= register27_q_net_x0;
  cav2_p2_integrated_i <= register17_q_net_x0;
  cav2_p2_integrated_q <= register18_q_net_x0;
  cav2_p2_phase_out <= register19_q_net_x0;
  amp_net <= amp;
  ddcchannel_net <= ddcchannel;
  ddci_net <= ddci;
  ddcq_net <= ddcq;
  phase_net <= phase;
  phaseampchannel_net <= phaseampchannel;
  rf_ref_amp_x0 <= down_sample1_q_net_x5;
  rf_ref_chan_sel_net <= rf_ref_chan_sel;
  rf_ref_i_x0 <= down_sample1_q_net_x6;
  rf_ref_phase_x0 <= down_sample_q_net_x5;
  rf_ref_q_x0 <= down_sample_q_net_x4;
  cav1_p1_amp_out <= constant5_op_net_x0;
  cav1_p1_comparison_i <= constant4_op_net_x0;
  cav1_p1_comparison_phase <= constant9_op_net;
  cav1_p1_comparison_q_x0 <= constant3_op_net_x0;
  cav1_p1_dc_freq <= constant_op_net_x0;
  cav1_p1_dc_img <= register1_q_net;
  cav1_p1_dc_real <= register2_q_net;
  cav1_p1_if_amp <= down_sample1_q_net_x2;
  cav1_p1_if_i <= down_sample1_q_net;
  cav1_p1_if_phase <= down_sample_q_net_x2;
  cav1_p1_if_q <= down_sample_q_net;
  cav1_p1_integrated_i <= constant8_op_net_x0;
  cav1_p1_integrated_q <= constant7_op_net_x0;
  cav1_p1_phase_out <= constant6_op_net_x0;
  cav1_p2_amp_out_x0 <= constant18_op_net_x0;
  cav1_p2_comparison_i_x0 <= constant19_op_net_x0;
  cav1_p2_comparison_phase_x0 <= constant23_op_net_x0;
  cav1_p2_comparison_q_x0 <= constant21_op_net_x0;
  cav1_p2_dc_freq_x0 <= constant10_op_net_x0;
  cav1_p2_dc_img_x0 <= register33_q_net;
  cav1_p2_dc_real_x0 <= register32_q_net;
  cav1_p2_if_amp_x0 <= down_sample1_q_net_x1;
  cav1_p2_if_i_x0 <= down_sample1_q_net_x0;
  cav1_p2_if_phase_x0 <= down_sample_q_net_x1;
  cav1_p2_if_q_x0 <= down_sample_q_net_x0;
  cav1_p2_integrated_i_x0 <= constant11_op_net_x0;
  cav1_p2_integrated_q_x0 <= constant12_op_net_x0;
  cav1_p2_phase_out_x0 <= constant14_op_net_x0;
  cav2_p1_amp_out_x0 <= constant5_op_net;
  cav2_p1_comparison_i_x0 <= constant4_op_net;
  cav2_p1_comparison_phase_x0 <= constant9_op_net_x0;
  cav2_p1_comparison_q <= constant3_op_net;
  cav2_p1_dc_freq_x0 <= constant_op_net;
  cav2_p1_dc_img_x0 <= register1_q_net_x0;
  cav2_p1_dc_real_x0 <= register2_q_net_x0;
  cav2_p1_if_amp_x0 <= down_sample1_q_net_x8;
  cav2_p1_if_i_x0 <= down_sample1_q_net_x3;
  cav2_p1_if_phase_x0 <= down_sample_q_net_x8;
  cav2_p1_if_q_x0 <= down_sample_q_net_x3;
  cav2_p1_integrated_i_x0 <= constant8_op_net;
  cav2_p1_integrated_q_x0 <= constant7_op_net;
  cav2_p1_phase_out_x0 <= constant6_op_net;
  cav2_p2_amp_out_x0 <= constant18_op_net;
  cav2_p2_comparison_i_x0 <= constant19_op_net;
  cav2_p2_comparison_phase_x0 <= constant23_op_net;
  cav2_p2_comparison_q_x0 <= constant21_op_net;
  cav2_p2_dc_freq_x0 <= constant10_op_net;
  cav2_p2_dc_img_x0 <= register33_q_net_x0;
  cav2_p2_dc_real_x0 <= register32_q_net_x0;
  cav2_p2_if_amp_x0 <= down_sample1_q_net_x7;
  cav2_p2_if_i_x0 <= down_sample1_q_net_x4;
  cav2_p2_if_phase_x0 <= down_sample_q_net_x7;
  cav2_p2_if_q_x0 <= down_sample_q_net_x6;
  cav2_p2_integrated_i_x0 <= constant11_op_net;
  cav2_p2_integrated_q_x0 <= constant12_op_net;
  cav2_p2_phase_out_x0 <= constant14_op_net;
  rf_ref_amp <= down_sample1_q_net_x5;
  rf_ref_i <= down_sample1_q_net_x6;
  rf_ref_phase <= down_sample_q_net_x5;
  rf_ref_q <= down_sample_q_net_x4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  cav1 : entity work.example_cav1 
  port map (
    pa_stream_1 => amp_x0,
    iq_stream_1 => ddci_x0,
    pa_stream_2 => phase_x0,
    pa_stream_3 => channel,
    iq_stream_2 => ddcq_x0,
    iq_stream_3 => ddcchannel_x0,
    cav1_nco_phase_adj => cav1_nco_phase_adj_net,
    cav1_nco_phase_reset => cav1_nco_phase_reset_net,
    cav1_p1_chan_sel => cav1_p1_chan_sel_net,
    cav1_p2_chan_sel => cav1_p2_chan_sel_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    cav1_p1_dc_real => register2_q_net,
    cav1_p1_dc_img => register1_q_net,
    cav1_p1_dc_freq => constant_op_net_x0,
    cav1_p1_integrated_i => constant8_op_net_x0,
    cav1_p1_integrated_q => constant7_op_net_x0,
    cav1_p1_phase_out => constant6_op_net_x0,
    cav1_p1_amp_out => constant5_op_net_x0,
    cav1_p1_comparison_i => constant4_op_net_x0,
    cav1_p1_comparison_q => constant3_op_net_x0,
    cav1_p1_comparison_phase => constant9_op_net,
    cav1_p2_dc_real => register32_q_net,
    cav1_p2_dc_img => register33_q_net,
    cav1_p2_dc_freq => constant10_op_net_x0,
    cav1_p2_integrated_i => constant11_op_net_x0,
    cav1_p2_integrated_q => constant12_op_net_x0,
    cav1_p2_phase_out => constant14_op_net_x0,
    cav1_p2_amp_out => constant18_op_net_x0,
    cav1_p2_comparison_i => constant19_op_net_x0,
    cav1_p2_comparison_q => constant21_op_net_x0,
    cav1_p2_comparison_phase => constant23_op_net_x0,
    cav1_p2_if_amp => down_sample1_q_net_x1,
    cav1_p2_if_phase => down_sample_q_net_x1,
    cav1_p2_if_i => down_sample1_q_net_x0,
    cav1_p2_if_q => down_sample_q_net_x0,
    cav1_p1_if_amp => down_sample1_q_net_x2,
    cav1_p1_if_phase => down_sample_q_net_x2,
    cav1_p1_if_i => down_sample1_q_net,
    cav1_p1_if_q => down_sample_q_net,
    cav1_p2_amp_out_x0 => register20_q_net,
    cav1_p2_comparison_i_x0 => register21_q_net,
    cav1_p2_comparison_phase_x0 => register23_q_net,
    cav1_p2_comparison_q_x0 => register22_q_net,
    cav1_p2_dc_freq_x0 => register30_q_net,
    cav1_p2_dc_img_x0 => register29_q_net,
    cav1_p2_dc_real_x0 => register28_q_net,
    cav1_p2_if_amp_x0 => register24_q_net,
    cav1_p2_if_i_x0 => register26_q_net,
    cav1_p2_if_phase_x0 => register25_q_net,
    cav1_p2_if_q_x0 => register27_q_net,
    cav1_p2_integrated_i_x0 => register17_q_net,
    cav1_p2_integrated_q_x0 => register18_q_net,
    cav1_p2_phase_out_x0 => register19_q_net
  );
  cav2 : entity work.example_cav2 
  port map (
    pa_stream_1 => amp_x0,
    iq_stream_1 => ddci_x0,
    pa_stream_2 => phase_x0,
    pa_stream_3 => channel,
    iq_stream_2 => ddcq_x0,
    iq_stream_3 => ddcchannel_x0,
    cav2_nco_phase_adj => cav2_nco_phase_adj_net,
    cav2_nco_phase_reset => cav2_nco_phase_reset_net,
    cav2_p1_chan_sel => cav2_p1_chan_sel_net,
    cav2_p2_chan_sel => cav2_p2_chan_sel_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    cav2_p1_dc_real_x0 => register2_q_net_x0,
    cav2_p1_dc_img_x0 => register1_q_net_x0,
    cav2_p1_dc_freq_x0 => constant_op_net,
    cav2_p1_integrated_i => constant8_op_net,
    cav2_p1_integrated_q => constant7_op_net,
    cav2_p1_phase_out => constant6_op_net,
    cav2_p1_amp_out_x0 => constant5_op_net,
    cav2_p1_comparison_i_x0 => constant4_op_net,
    cav2_p1_comparison_q => constant3_op_net,
    cav2_p1_comparison_phase_x0 => constant9_op_net_x0,
    cav2_p2_dc_real => register32_q_net_x0,
    cav2_p2_dc_img => register33_q_net_x0,
    cav2_p2_dc_freq => constant10_op_net,
    cav2_p2_integrated_i => constant11_op_net,
    cav2_p2_integrated_q => constant12_op_net,
    cav2_p2_phase_out => constant14_op_net,
    cav2_p2_amp_out => constant18_op_net,
    cav2_p2_comparison_i => constant19_op_net,
    cav2_p2_comparison_q => constant21_op_net,
    cav2_p2_comparison_phase => constant23_op_net,
    cav2_p2_if_amp => down_sample1_q_net_x7,
    cav2_p2_if_phase => down_sample_q_net_x7,
    cav2_p2_if_i => down_sample1_q_net_x4,
    cav2_p2_if_q => down_sample_q_net_x6,
    cav2_p1_if_amp => down_sample1_q_net_x8,
    cav2_p1_if_phase => down_sample_q_net_x8,
    cav2_p1_if_i => down_sample1_q_net_x3,
    cav2_p1_if_q => down_sample_q_net_x3,
    cav1_p1_comparison_q => register15_q_net,
    cav2_p1_amp_out => register13_q_net,
    cav2_p1_comparison_i => register14_q_net,
    cav2_p1_comparison_phase => register16_q_net,
    cav2_p1_dc_freq => register9_q_net,
    cav2_p1_dc_img => register8_q_net,
    cav2_p1_dc_real => register7_q_net,
    cav2_p1_if_amp_x0 => register3_q_net,
    cav2_p1_if_i_x0 => register5_q_net,
    cav2_p1_if_phase_x0 => register4_q_net,
    cav2_p1_if_q_x0 => register6_q_net,
    cav2_p1_integrated_i_x0 => register10_q_net,
    cav2_p1_integrated_q_x0 => register11_q_net,
    cav2_p1_phase_out_x0 => register12_q_net,
    cav2_p2_amp_out_x0 => register20_q_net_x0,
    cav2_p2_comparison_i_x0 => register21_q_net_x0,
    cav2_p2_comparison_phase_x0 => register23_q_net_x0,
    cav2_p2_comparison_q_x0 => register22_q_net_x0,
    cav2_p2_dc_freq_x0 => register30_q_net_x0,
    cav2_p2_dc_img_x0 => register29_q_net_x0,
    cav2_p2_dc_real_x0 => register28_q_net_x0,
    cav2_p2_if_amp_x0 => register24_q_net_x0,
    cav2_p2_if_i_x0 => register26_q_net_x0,
    cav2_p2_if_phase_x0 => register25_q_net_x0,
    cav2_p2_if_q_x0 => register27_q_net_x0,
    cav2_p2_integrated_i_x0 => register17_q_net_x0,
    cav2_p2_integrated_q_x0 => register18_q_net_x0,
    cav2_p2_phase_out_x0 => register19_q_net_x0
  );
  rflib_input : entity work.example_rflib_input 
  port map (
    amp => amp_net,
    ddcchannel => ddcchannel_net,
    ddci => ddci_net,
    ddcq => ddcq_net,
    phase => phase_net,
    phaseampchannel => phaseampchannel_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    pa_out_1 => amp_x0,
    iq_out_1 => ddci_x0,
    pa_out_2 => phase_x0,
    pa_out_3 => channel,
    iq_out_2 => ddcq_x0,
    iq_out_3 => ddcchannel_x0
  );
  ref : entity work.example_ref 
  port map (
    in1_1 => amp_x0,
    in2_1 => ddci_x0,
    in1_2 => phase_x0,
    in1_3 => channel,
    in2_2 => ddcq_x0,
    in2_3 => ddcchannel_x0,
    rf_ref_chan_sel => rf_ref_chan_sel_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    ref_amp => down_sample1_q_net_x5,
    ref_phi => down_sample_q_net_x5,
    ref_i => down_sample1_q_net_x6,
    ref_q => down_sample_q_net_x4,
    rf_ref_amp => down_sample1_q_net_x5,
    rf_ref_phase => down_sample_q_net_x5,
    rf_ref_i => down_sample1_q_net_x6,
    rf_ref_q => down_sample_q_net_x4,
    rf_ref_amp_x0 => down_sample1_q_net_x5,
    rf_ref_i_x0 => down_sample1_q_net_x6,
    rf_ref_phase_x0 => down_sample_q_net_x5,
    rf_ref_q_x0 => down_sample_q_net_x4
  );
end structural;
-- Generated from Simulink block exampleModel/example_struct
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_struct is
  port (
    scratchpad : in std_logic_vector( 32-1 downto 0 );
    cav1_nco_phase_adj : in std_logic_vector( 29-1 downto 0 );
    cav1_nco_phase_reset : in std_logic_vector( 1-1 downto 0 );
    cav1_p1_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav1_p1_window_start : in std_logic_vector( 16-1 downto 0 );
    cav1_p1_window_stop : in std_logic_vector( 16-1 downto 0 );
    cav1_p2_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav1_p2_window_start : in std_logic_vector( 16-1 downto 0 );
    cav1_p2_window_stop : in std_logic_vector( 16-1 downto 0 );
    cav2_nco_phase_adj : in std_logic_vector( 29-1 downto 0 );
    cav2_nco_phase_reset : in std_logic_vector( 1-1 downto 0 );
    cav2_p1_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav2_p1_window_start : in std_logic_vector( 16-1 downto 0 );
    cav2_p1_window_stop : in std_logic_vector( 16-1 downto 0 );
    cav2_p2_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav2_p2_window_start : in std_logic_vector( 16-1 downto 0 );
    cav2_p2_window_stop : in std_logic_vector( 16-1 downto 0 );
    amp : in std_logic_vector( 18-1 downto 0 );
    ddcchannel : in std_logic_vector( 4-1 downto 0 );
    ddci : in std_logic_vector( 18-1 downto 0 );
    ddcq : in std_logic_vector( 18-1 downto 0 );
    ddcsync : in std_logic_vector( 1-1 downto 0 );
    phase : in std_logic_vector( 18-1 downto 0 );
    phaseampchannel : in std_logic_vector( 4-1 downto 0 );
    phaseampsync : in std_logic_vector( 1-1 downto 0 );
    ref_window_start : in std_logic_vector( 16-1 downto 0 );
    ref_window_stop : in std_logic_vector( 16-1 downto 0 );
    rf_ref_chan_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1_x0 : in std_logic;
    ce_1_x0 : in std_logic;
    clk_8 : in std_logic;
    ce_8 : in std_logic;
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    status_0 : out std_logic_vector( 32-1 downto 0 );
    cav1_p1_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_q_x0 : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_dc_freq : out std_logic_vector( 26-1 downto 0 );
    cav1_p1_dc_img : out std_logic_vector( 29-1 downto 0 );
    cav1_p1_dc_real : out std_logic_vector( 29-1 downto 0 );
    cav1_p1_if_amp : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_if_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_if_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_if_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_integrated_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_integrated_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_dc_freq : out std_logic_vector( 26-1 downto 0 );
    cav1_p2_dc_img : out std_logic_vector( 29-1 downto 0 );
    cav1_p2_dc_real : out std_logic_vector( 29-1 downto 0 );
    cav1_p2_if_amp : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_dc_freq : out std_logic_vector( 26-1 downto 0 );
    cav2_p1_dc_img : out std_logic_vector( 29-1 downto 0 );
    cav2_p1_dc_real : out std_logic_vector( 29-1 downto 0 );
    cav2_p1_if_amp : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_phase : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_integrated_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_integrated_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_dc_freq : out std_logic_vector( 26-1 downto 0 );
    cav2_p2_dc_img : out std_logic_vector( 29-1 downto 0 );
    cav2_p2_dc_real : out std_logic_vector( 29-1 downto 0 );
    cav2_p2_if_amp : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_phase : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_integrated_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_integrated_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_phase_out : out std_logic_vector( 18-1 downto 0 );
    rf_ref_amp : out std_logic_vector( 18-1 downto 0 );
    rf_ref_i : out std_logic_vector( 18-1 downto 0 );
    rf_ref_phase : out std_logic_vector( 18-1 downto 0 );
    rf_ref_q : out std_logic_vector( 18-1 downto 0 )
  );
end example_struct;
architecture structural of example_struct is 
  signal register16_q_net : std_logic_vector( 18-1 downto 0 );
  signal register15_q_net : std_logic_vector( 18-1 downto 0 );
  signal register9_q_net : std_logic_vector( 26-1 downto 0 );
  signal register8_q_net : std_logic_vector( 29-1 downto 0 );
  signal register7_q_net : std_logic_vector( 29-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register5_q_net : std_logic_vector( 18-1 downto 0 );
  signal register4_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 18-1 downto 0 );
  signal register10_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal cav1_nco_phase_adj_net : std_logic_vector( 29-1 downto 0 );
  signal cav1_nco_phase_reset_net : std_logic_vector( 1-1 downto 0 );
  signal cav1_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal cav1_p1_window_start_net : std_logic_vector( 16-1 downto 0 );
  signal cav1_p1_window_stop_net : std_logic_vector( 16-1 downto 0 );
  signal register20_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register16_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register21_q_net : std_logic_vector( 18-1 downto 0 );
  signal register23_q_net : std_logic_vector( 18-1 downto 0 );
  signal register22_q_net : std_logic_vector( 18-1 downto 0 );
  signal register30_q_net : std_logic_vector( 26-1 downto 0 );
  signal register29_q_net : std_logic_vector( 29-1 downto 0 );
  signal register28_q_net : std_logic_vector( 29-1 downto 0 );
  signal register24_q_net : std_logic_vector( 18-1 downto 0 );
  signal register26_q_net : std_logic_vector( 18-1 downto 0 );
  signal register25_q_net : std_logic_vector( 18-1 downto 0 );
  signal register27_q_net : std_logic_vector( 18-1 downto 0 );
  signal register17_q_net : std_logic_vector( 18-1 downto 0 );
  signal register18_q_net : std_logic_vector( 18-1 downto 0 );
  signal register19_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_window_start_net : std_logic_vector( 16-1 downto 0 );
  signal cav1_p2_window_stop_net : std_logic_vector( 16-1 downto 0 );
  signal register15_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal cav2_nco_phase_adj_net : std_logic_vector( 29-1 downto 0 );
  signal cav2_nco_phase_reset_net : std_logic_vector( 1-1 downto 0 );
  signal register13_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register14_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register9_q_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal register8_q_net_x1 : std_logic_vector( 29-1 downto 0 );
  signal register7_q_net_x1 : std_logic_vector( 29-1 downto 0 );
  signal register3_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register5_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register4_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register10_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_window_start_net : std_logic_vector( 16-1 downto 0 );
  signal cav2_p1_window_stop_net : std_logic_vector( 16-1 downto 0 );
  signal register20_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register21_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register23_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register22_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register30_q_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal register29_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal register28_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal register24_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register26_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register25_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register27_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register17_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register18_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register19_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_window_start_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal cav2_p2_window_stop_net : std_logic_vector( 16-1 downto 0 );
  signal amp_net : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel_net : std_logic_vector( 4-1 downto 0 );
  signal ddci_net : std_logic_vector( 18-1 downto 0 );
  signal ddcq_net : std_logic_vector( 18-1 downto 0 );
  signal ddcsync_net : std_logic_vector( 1-1 downto 0 );
  signal phase_net : std_logic_vector( 18-1 downto 0 );
  signal phaseampchannel_net : std_logic_vector( 4-1 downto 0 );
  signal phaseampsync_net : std_logic_vector( 1-1 downto 0 );
  signal ref_window_start_net : std_logic_vector( 16-1 downto 0 );
  signal ref_window_stop_net : std_logic_vector( 16-1 downto 0 );
  signal down_sample1_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal rf_ref_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal down_sample1_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x7 : std_logic_vector( 18-1 downto 0 );
  signal src_clk_net : std_logic;
  signal src_ce_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal ce_net_x0 : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal register3_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register4_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register5_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal register6_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal register7_q_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal register8_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register9_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register10_q_net : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net : std_logic_vector( 18-1 downto 0 );
  signal register13_q_net : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net : std_logic_vector( 18-1 downto 0 );
  signal register33_q_net : std_logic_vector( 29-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 26-1 downto 0 );
  signal register1_q_net : std_logic_vector( 29-1 downto 0 );
  signal register2_q_net : std_logic_vector( 29-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x5 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant18_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant19_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant23_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant21_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 26-1 downto 0 );
  signal register32_q_net : std_logic_vector( 29-1 downto 0 );
  signal down_sample1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x6 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x5 : std_logic_vector( 18-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant12_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant14_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant9_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 29-1 downto 0 );
  signal register2_q_net_x1 : std_logic_vector( 29-1 downto 0 );
  signal down_sample1_q_net_x8 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x8 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal constant8_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant18_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant19_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant23_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant21_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant10_op_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal register33_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal register32_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal down_sample1_q_net_x7 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x6 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal constant11_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant12_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant14_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal scratchpad_net : std_logic_vector( 32-1 downto 0 );
  signal register27_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal register13_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net_x0 : std_logic_vector( 18-1 downto 0 );
begin
  scratchpad_net <= scratchpad;
  status_0 <= register27_q_net_x0;
  cav1_p1_amp_out <= register13_q_net_x0;
  cav1_p1_comparison_i <= register14_q_net_x0;
  cav1_p1_comparison_phase <= register16_q_net;
  cav1_p1_comparison_q_x0 <= register15_q_net;
  cav1_p1_dc_freq <= register9_q_net;
  cav1_p1_dc_img <= register8_q_net;
  cav1_p1_dc_real <= register7_q_net;
  cav1_p1_if_amp <= register3_q_net;
  cav1_p1_if_i <= register5_q_net;
  cav1_p1_if_phase <= register4_q_net;
  cav1_p1_if_q <= register6_q_net;
  cav1_p1_integrated_i <= register10_q_net_x0;
  cav1_p1_integrated_q <= register11_q_net_x0;
  cav1_p1_phase_out <= register12_q_net_x0;
  cav1_nco_phase_adj_net <= cav1_nco_phase_adj;
  cav1_nco_phase_reset_net <= cav1_nco_phase_reset;
  cav1_p1_chan_sel_net <= cav1_p1_chan_sel;
  cav1_p1_window_start_net <= cav1_p1_window_start;
  cav1_p1_window_stop_net <= cav1_p1_window_stop;
  cav1_p2_amp_out <= register20_q_net;
  cav1_p2_chan_sel_net <= cav1_p2_chan_sel;
  cav1_p2_comparison_i <= register21_q_net;
  cav1_p2_comparison_phase <= register23_q_net;
  cav1_p2_comparison_q <= register22_q_net;
  cav1_p2_dc_freq <= register30_q_net;
  cav1_p2_dc_img <= register29_q_net;
  cav1_p2_dc_real <= register28_q_net;
  cav1_p2_if_amp <= register24_q_net;
  cav1_p2_if_i <= register26_q_net;
  cav1_p2_if_phase <= register25_q_net;
  cav1_p2_if_q <= register27_q_net;
  cav1_p2_integrated_i <= register17_q_net;
  cav1_p2_integrated_q <= register18_q_net;
  cav1_p2_phase_out <= register19_q_net;
  cav1_p2_window_start_net <= cav1_p2_window_start;
  cav1_p2_window_stop_net <= cav1_p2_window_stop;
  cav1_p1_comparison_q <= register15_q_net_x0;
  cav2_nco_phase_adj_net <= cav2_nco_phase_adj;
  cav2_nco_phase_reset_net <= cav2_nco_phase_reset;
  cav2_p1_amp_out <= register13_q_net_x1;
  cav2_p1_chan_sel_net <= cav2_p1_chan_sel;
  cav2_p1_comparison_i <= register14_q_net_x1;
  cav2_p1_comparison_phase <= register16_q_net_x0;
  cav2_p1_dc_freq <= register9_q_net_x1;
  cav2_p1_dc_img <= register8_q_net_x1;
  cav2_p1_dc_real <= register7_q_net_x1;
  cav2_p1_if_amp <= register3_q_net_x1;
  cav2_p1_if_i <= register5_q_net_x1;
  cav2_p1_if_phase <= register4_q_net_x1;
  cav2_p1_if_q <= register6_q_net_x1;
  cav2_p1_integrated_i <= register10_q_net_x1;
  cav2_p1_integrated_q <= register11_q_net_x1;
  cav2_p1_phase_out <= register12_q_net_x1;
  cav2_p1_window_start_net <= cav2_p1_window_start;
  cav2_p1_window_stop_net <= cav2_p1_window_stop;
  cav2_p2_amp_out <= register20_q_net_x0;
  cav2_p2_chan_sel_net <= cav2_p2_chan_sel;
  cav2_p2_comparison_i <= register21_q_net_x0;
  cav2_p2_comparison_phase <= register23_q_net_x0;
  cav2_p2_comparison_q <= register22_q_net_x0;
  cav2_p2_dc_freq <= register30_q_net_x0;
  cav2_p2_dc_img <= register29_q_net_x0;
  cav2_p2_dc_real <= register28_q_net_x0;
  cav2_p2_if_amp <= register24_q_net_x0;
  cav2_p2_if_i <= register26_q_net_x0;
  cav2_p2_if_phase <= register25_q_net_x0;
  cav2_p2_if_q <= register27_q_net_x1;
  cav2_p2_integrated_i <= register17_q_net_x0;
  cav2_p2_integrated_q <= register18_q_net_x0;
  cav2_p2_phase_out <= register19_q_net_x0;
  cav2_p2_window_start_net <= cav2_p2_window_start;
  cav2_p2_window_stop_net <= cav2_p2_window_stop;
  amp_net <= amp;
  ddcchannel_net <= ddcchannel;
  ddci_net <= ddci;
  ddcq_net <= ddcq;
  ddcsync_net <= ddcsync;
  phase_net <= phase;
  phaseampchannel_net <= phaseampchannel;
  phaseampsync_net <= phaseampsync;
  ref_window_start_net <= ref_window_start;
  ref_window_stop_net <= ref_window_stop;
  rf_ref_amp <= down_sample1_q_net_x2;
  rf_ref_chan_sel_net <= rf_ref_chan_sel;
  rf_ref_i <= down_sample1_q_net_x1;
  rf_ref_phase <= down_sample_q_net_x1;
  rf_ref_q <= down_sample_q_net_x7;
  src_clk_net <= clk_1_x0;
  src_ce_net <= ce_1_x0;
  clk_net <= clk_8;
  ce_net <= ce_8;
  clk_net_x0 <= clk_1;
  ce_net_x0 <= ce_1;
  dest_clk_net <= clk_12;
  dest_ce_net <= ce_12;
  axi_lite : entity work.example_axi_lite 
  port map (
    in1 => register3_q_net_x0,
    in2 => register1_q_net_x0,
    in3 => register2_q_net_x0,
    in4 => register4_q_net_x0,
    in5 => register5_q_net_x0,
    in6 => register6_q_net_x0,
    in7 => register7_q_net_x0,
    in8 => register8_q_net_x0,
    in9 => register9_q_net_x0,
    in10 => register10_q_net,
    in11 => register11_q_net,
    in12 => register12_q_net,
    in13 => register13_q_net,
    in14 => register14_q_net,
    clk_1 => src_clk_net,
    ce_1 => src_ce_net,
    clk_8 => clk_net,
    ce_8 => ce_net,
    status_0 => register27_q_net_x0,
    cav1_p1_amp_out => register13_q_net_x0,
    cav1_p1_comparison_i => register14_q_net_x0,
    cav1_p1_comparison_phase => register16_q_net,
    cav1_p1_comparison_q => register15_q_net,
    cav1_p1_dc_freq => register9_q_net,
    cav1_p1_dc_img => register8_q_net,
    cav1_p1_dc_real => register7_q_net,
    cav1_p1_if_amp => register3_q_net,
    cav1_p1_if_i => register5_q_net,
    cav1_p1_if_phase => register4_q_net,
    cav1_p1_if_q => register6_q_net,
    cav1_p1_integrated_i => register10_q_net_x0,
    cav1_p1_integrated_q => register11_q_net_x0,
    cav1_p1_phase_out => register12_q_net_x0
  );
  dsp : entity work.example_dsp 
  port map (
    cav1_nco_phase_adj => cav1_nco_phase_adj_net,
    cav1_nco_phase_reset => cav1_nco_phase_reset_net,
    cav1_p1_chan_sel => cav1_p1_chan_sel_net,
    cav1_p2_chan_sel => cav1_p2_chan_sel_net,
    cav2_nco_phase_adj => cav2_nco_phase_adj_net,
    cav2_nco_phase_reset => cav2_nco_phase_reset_net,
    cav2_p1_chan_sel => cav2_p1_chan_sel_net,
    cav2_p2_chan_sel => cav2_p2_chan_sel_net,
    amp => amp_net,
    ddcchannel => ddcchannel_net,
    ddci => ddci_net,
    ddcq => ddcq_net,
    phase => phase_net,
    phaseampchannel => phaseampchannel_net,
    rf_ref_chan_sel => rf_ref_chan_sel_net,
    clk_1 => clk_net_x0,
    ce_1 => ce_net_x0,
    clk_12 => dest_clk_net,
    ce_12 => dest_ce_net,
    cav1_p2_amp_out => register20_q_net,
    cav1_p2_comparison_i => register21_q_net,
    cav1_p2_comparison_phase => register23_q_net,
    cav1_p2_comparison_q => register22_q_net,
    cav1_p2_dc_freq => register30_q_net,
    cav1_p2_dc_img => register29_q_net,
    cav1_p2_dc_real => register28_q_net,
    cav1_p2_if_amp => register24_q_net,
    cav1_p2_if_i => register26_q_net,
    cav1_p2_if_phase => register25_q_net,
    cav1_p2_if_q => register27_q_net,
    cav1_p2_integrated_i => register17_q_net,
    cav1_p2_integrated_q => register18_q_net,
    cav1_p2_phase_out => register19_q_net,
    cav1_p1_comparison_q => register15_q_net_x0,
    cav2_p1_amp_out => register13_q_net_x1,
    cav2_p1_comparison_i => register14_q_net_x1,
    cav2_p1_comparison_phase => register16_q_net_x0,
    cav2_p1_dc_freq => register9_q_net_x1,
    cav2_p1_dc_img => register8_q_net_x1,
    cav2_p1_dc_real => register7_q_net_x1,
    cav2_p1_if_amp => register3_q_net_x1,
    cav2_p1_if_i => register5_q_net_x1,
    cav2_p1_if_phase => register4_q_net_x1,
    cav2_p1_if_q => register6_q_net_x1,
    cav2_p1_integrated_i => register10_q_net_x1,
    cav2_p1_integrated_q => register11_q_net_x1,
    cav2_p1_phase_out => register12_q_net_x1,
    cav2_p2_amp_out => register20_q_net_x0,
    cav2_p2_comparison_i => register21_q_net_x0,
    cav2_p2_comparison_phase => register23_q_net_x0,
    cav2_p2_comparison_q => register22_q_net_x0,
    cav2_p2_dc_freq => register30_q_net_x0,
    cav2_p2_dc_img => register29_q_net_x0,
    cav2_p2_dc_real => register28_q_net_x0,
    cav2_p2_if_amp => register24_q_net_x0,
    cav2_p2_if_i => register26_q_net_x0,
    cav2_p2_if_phase => register25_q_net_x0,
    cav2_p2_if_q => register27_q_net_x1,
    cav2_p2_integrated_i => register17_q_net_x0,
    cav2_p2_integrated_q => register18_q_net_x0,
    cav2_p2_phase_out => register19_q_net_x0,
    rf_ref_amp_x0 => down_sample1_q_net_x2,
    rf_ref_i_x0 => down_sample1_q_net_x1,
    rf_ref_phase_x0 => down_sample_q_net_x1,
    rf_ref_q_x0 => down_sample_q_net_x7,
    cav1_p1_amp_out => constant5_op_net,
    cav1_p1_comparison_i => constant4_op_net,
    cav1_p1_comparison_phase => constant9_op_net,
    cav1_p1_comparison_q_x0 => constant3_op_net,
    cav1_p1_dc_freq => constant_op_net,
    cav1_p1_dc_img => register1_q_net,
    cav1_p1_dc_real => register2_q_net,
    cav1_p1_if_amp => down_sample1_q_net,
    cav1_p1_if_i => down_sample1_q_net_x5,
    cav1_p1_if_phase => down_sample_q_net,
    cav1_p1_if_q => down_sample_q_net_x4,
    cav1_p1_integrated_i => constant8_op_net,
    cav1_p1_integrated_q => constant7_op_net,
    cav1_p1_phase_out => constant6_op_net,
    cav1_p2_amp_out_x0 => constant18_op_net,
    cav1_p2_comparison_i_x0 => constant19_op_net,
    cav1_p2_comparison_phase_x0 => constant23_op_net,
    cav1_p2_comparison_q_x0 => constant21_op_net,
    cav1_p2_dc_freq_x0 => constant10_op_net,
    cav1_p2_dc_img_x0 => register33_q_net,
    cav1_p2_dc_real_x0 => register32_q_net,
    cav1_p2_if_amp_x0 => down_sample1_q_net_x0,
    cav1_p2_if_i_x0 => down_sample1_q_net_x6,
    cav1_p2_if_phase_x0 => down_sample_q_net_x0,
    cav1_p2_if_q_x0 => down_sample_q_net_x5,
    cav1_p2_integrated_i_x0 => constant11_op_net,
    cav1_p2_integrated_q_x0 => constant12_op_net,
    cav1_p2_phase_out_x0 => constant14_op_net,
    cav2_p1_amp_out_x0 => constant5_op_net_x0,
    cav2_p1_comparison_i_x0 => constant4_op_net_x0,
    cav2_p1_comparison_phase_x0 => constant9_op_net_x0,
    cav2_p1_comparison_q => constant3_op_net_x0,
    cav2_p1_dc_freq_x0 => constant_op_net_x0,
    cav2_p1_dc_img_x0 => register1_q_net_x1,
    cav2_p1_dc_real_x0 => register2_q_net_x1,
    cav2_p1_if_amp_x0 => down_sample1_q_net_x8,
    cav2_p1_if_i_x0 => down_sample1_q_net_x3,
    cav2_p1_if_phase_x0 => down_sample_q_net_x8,
    cav2_p1_if_q_x0 => down_sample_q_net_x2,
    cav2_p1_integrated_i_x0 => constant8_op_net_x0,
    cav2_p1_integrated_q_x0 => constant7_op_net_x0,
    cav2_p1_phase_out_x0 => constant6_op_net_x0,
    cav2_p2_amp_out_x0 => constant18_op_net_x0,
    cav2_p2_comparison_i_x0 => constant19_op_net_x0,
    cav2_p2_comparison_phase_x0 => constant23_op_net_x0,
    cav2_p2_comparison_q_x0 => constant21_op_net_x0,
    cav2_p2_dc_freq_x0 => constant10_op_net_x0,
    cav2_p2_dc_img_x0 => register33_q_net_x0,
    cav2_p2_dc_real_x0 => register32_q_net_x0,
    cav2_p2_if_amp_x0 => down_sample1_q_net_x7,
    cav2_p2_if_i_x0 => down_sample1_q_net_x4,
    cav2_p2_if_phase_x0 => down_sample_q_net_x6,
    cav2_p2_if_q_x0 => down_sample_q_net_x3,
    cav2_p2_integrated_i_x0 => constant11_op_net_x0,
    cav2_p2_integrated_q_x0 => constant12_op_net_x0,
    cav2_p2_phase_out_x0 => constant14_op_net_x0,
    rf_ref_amp => down_sample1_q_net_x2,
    rf_ref_i => down_sample1_q_net_x1,
    rf_ref_phase => down_sample_q_net_x1,
    rf_ref_q => down_sample_q_net_x7
  );
  register3 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net,
    d_clk => dest_clk_net,
    q_ce => dest_ce_net,
    q_clk => src_clk_net,
    d_ce => src_ce_net,
    q => register3_q_net_x0
  );
  register1 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net,
    d_clk => dest_clk_net,
    q_ce => dest_ce_net,
    q_clk => src_clk_net,
    d_ce => src_ce_net,
    q => register1_q_net_x0
  );
  register2 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net_x5,
    d_clk => dest_clk_net,
    q_ce => dest_ce_net,
    q_clk => src_clk_net,
    d_ce => src_ce_net,
    q => register2_q_net_x0
  );
  register4 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net_x4,
    d_clk => dest_clk_net,
    q_ce => dest_ce_net,
    q_clk => src_clk_net,
    d_ce => src_ce_net,
    q => register4_q_net_x0
  );
  register11 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant5_op_net,
    d_clk => clk_net_x0,
    q_ce => ce_net_x0,
    q_clk => src_clk_net,
    d_ce => src_ce_net,
    q => register11_q_net
  );
  register9 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant7_op_net,
    d_clk => clk_net_x0,
    q_ce => ce_net_x0,
    q_clk => src_clk_net,
    d_ce => src_ce_net,
    q => register9_q_net_x0
  );
  register8 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant8_op_net,
    d_clk => clk_net_x0,
    q_ce => ce_net_x0,
    q_clk => src_clk_net,
    d_ce => src_ce_net,
    q => register8_q_net_x0
  );
  register7 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant_op_net,
    d_clk => clk_net_x0,
    q_ce => ce_net_x0,
    q_clk => src_clk_net,
    d_ce => src_ce_net,
    q => register7_q_net_x0
  );
  register10 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant6_op_net,
    d_clk => clk_net_x0,
    q_ce => ce_net_x0,
    q_clk => src_clk_net,
    d_ce => src_ce_net,
    q => register10_q_net
  );
  register12 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant4_op_net,
    d_clk => clk_net_x0,
    q_ce => ce_net_x0,
    q_clk => src_clk_net,
    d_ce => src_ce_net,
    q => register12_q_net
  );
  register13 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant3_op_net,
    d_clk => clk_net_x0,
    q_ce => ce_net_x0,
    q_clk => src_clk_net,
    d_ce => src_ce_net,
    q => register13_q_net
  );
  register14 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant9_op_net,
    d_clk => clk_net_x0,
    q_ce => ce_net_x0,
    q_clk => src_clk_net,
    d_ce => src_ce_net,
    q => register14_q_net
  );
  register5 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register2_q_net,
    d_clk => clk_net_x0,
    q_ce => ce_net_x0,
    q_clk => src_clk_net,
    d_ce => src_ce_net,
    q => register5_q_net_x0
  );
  register6 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register1_q_net,
    d_clk => clk_net_x0,
    q_ce => ce_net_x0,
    q_clk => src_clk_net,
    d_ce => src_ce_net,
    q => register6_q_net_x0
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_default_clock_driver is
  port (
    axi_lite_sysclk : in std_logic;
    axi_lite_sysce : in std_logic;
    axi_lite_sysclr : in std_logic;
    dsp_sysclk : in std_logic;
    dsp_sysce : in std_logic;
    dsp_sysclr : in std_logic;
    axi_lite_clk1 : out std_logic;
    axi_lite_ce1 : out std_logic;
    axi_lite_clk8 : out std_logic;
    axi_lite_ce8 : out std_logic;
    dsp_clk1 : out std_logic;
    dsp_ce1 : out std_logic;
    dsp_clk12 : out std_logic;
    dsp_ce12 : out std_logic
  );
end example_default_clock_driver;
architecture structural of example_default_clock_driver is 
begin
  clockdriver_x2 : entity work.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => axi_lite_sysclk,
    sysce => axi_lite_sysce,
    sysclr => axi_lite_sysclr,
    clk => axi_lite_clk1,
    ce => axi_lite_ce1
  );
  clockdriver_x1 : entity work.xlclockdriver 
  generic map (
    period => 8,
    log_2_period => 4
  )
  port map (
    sysclk => axi_lite_sysclk,
    sysce => axi_lite_sysce,
    sysclr => axi_lite_sysclr,
    clk => axi_lite_clk8,
    ce => axi_lite_ce8
  );
  clockdriver_x0 : entity work.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => dsp_sysclk,
    sysce => dsp_sysce,
    sysclr => dsp_sysclr,
    clk => dsp_clk1,
    ce => dsp_ce1
  );
  clockdriver : entity work.xlclockdriver 
  generic map (
    period => 12,
    log_2_period => 4
  )
  port map (
    sysclk => dsp_sysclk,
    sysce => dsp_sysce,
    sysclr => dsp_sysclr,
    clk => dsp_clk12,
    ce => dsp_ce12
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example is
  port (
    amp : in std_logic_vector( 18-1 downto 0 );
    ddcchannel : in std_logic_vector( 4-1 downto 0 );
    ddci : in std_logic_vector( 18-1 downto 0 );
    ddcq : in std_logic_vector( 18-1 downto 0 );
    ddcsync : in std_logic_vector( 1-1 downto 0 );
    phase : in std_logic_vector( 18-1 downto 0 );
    phaseampchannel : in std_logic_vector( 4-1 downto 0 );
    phaseampsync : in std_logic_vector( 1-1 downto 0 );
    axi_lite_clk : in std_logic;
    dsp_clk : in std_logic;
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
    dsp_aresetn : in std_logic;
    dsp_cav1_nco_phase_adj_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav1_nco_phase_adj_s_axi_awvalid : in std_logic;
    dsp_cav1_nco_phase_adj_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_nco_phase_adj_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_nco_phase_adj_s_axi_wvalid : in std_logic;
    dsp_cav1_nco_phase_adj_s_axi_bready : in std_logic;
    dsp_cav1_nco_phase_adj_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav1_nco_phase_adj_s_axi_arvalid : in std_logic;
    dsp_cav1_nco_phase_adj_s_axi_rready : in std_logic;
    dsp_cav1_nco_phase_reset_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav1_nco_phase_reset_s_axi_awvalid : in std_logic;
    dsp_cav1_nco_phase_reset_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_nco_phase_reset_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_nco_phase_reset_s_axi_wvalid : in std_logic;
    dsp_cav1_nco_phase_reset_s_axi_bready : in std_logic;
    dsp_cav1_nco_phase_reset_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav1_nco_phase_reset_s_axi_arvalid : in std_logic;
    dsp_cav1_nco_phase_reset_s_axi_rready : in std_logic;
    dsp_cav1_p1_chan_sel_s_axi_awaddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_chan_sel_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_chan_sel_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_chan_sel_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_chan_sel_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_chan_sel_s_axi_bready : in std_logic;
    dsp_cav1_p1_chan_sel_s_axi_araddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_chan_sel_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_chan_sel_s_axi_rready : in std_logic;
    dsp_cav1_p1_window_start_s_axi_awaddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_window_start_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_window_start_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_window_start_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_window_start_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_window_start_s_axi_bready : in std_logic;
    dsp_cav1_p1_window_start_s_axi_araddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_window_start_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_window_start_s_axi_rready : in std_logic;
    dsp_cav1_p1_window_stop_s_axi_awaddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_window_stop_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_window_stop_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_window_stop_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_window_stop_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_window_stop_s_axi_bready : in std_logic;
    dsp_cav1_p1_window_stop_s_axi_araddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_window_stop_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_window_stop_s_axi_rready : in std_logic;
    dsp_cav1_p2_amp_out_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_amp_out_s_axi_awvalid : in std_logic;
    dsp_cav1_p2_amp_out_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_amp_out_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p2_amp_out_s_axi_wvalid : in std_logic;
    dsp_cav1_p2_amp_out_s_axi_bready : in std_logic;
    dsp_cav1_p2_amp_out_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_amp_out_s_axi_arvalid : in std_logic;
    dsp_cav1_p2_amp_out_s_axi_rready : in std_logic;
    dsp_cav1_p2_chan_sel_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_chan_sel_s_axi_awvalid : in std_logic;
    dsp_cav1_p2_chan_sel_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_chan_sel_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p2_chan_sel_s_axi_wvalid : in std_logic;
    dsp_cav1_p2_chan_sel_s_axi_bready : in std_logic;
    dsp_cav1_p2_chan_sel_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_chan_sel_s_axi_arvalid : in std_logic;
    dsp_cav1_p2_chan_sel_s_axi_rready : in std_logic;
    dsp_cav1_p2_comparison_i_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_comparison_i_s_axi_awvalid : in std_logic;
    dsp_cav1_p2_comparison_i_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_comparison_i_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p2_comparison_i_s_axi_wvalid : in std_logic;
    dsp_cav1_p2_comparison_i_s_axi_bready : in std_logic;
    dsp_cav1_p2_comparison_i_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_comparison_i_s_axi_arvalid : in std_logic;
    dsp_cav1_p2_comparison_i_s_axi_rready : in std_logic;
    dsp_cav1_p2_comparison_phase_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_comparison_phase_s_axi_awvalid : in std_logic;
    dsp_cav1_p2_comparison_phase_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_comparison_phase_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p2_comparison_phase_s_axi_wvalid : in std_logic;
    dsp_cav1_p2_comparison_phase_s_axi_bready : in std_logic;
    dsp_cav1_p2_comparison_phase_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_comparison_phase_s_axi_arvalid : in std_logic;
    dsp_cav1_p2_comparison_phase_s_axi_rready : in std_logic;
    dsp_cav1_p2_comparison_q_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_comparison_q_s_axi_awvalid : in std_logic;
    dsp_cav1_p2_comparison_q_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_comparison_q_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p2_comparison_q_s_axi_wvalid : in std_logic;
    dsp_cav1_p2_comparison_q_s_axi_bready : in std_logic;
    dsp_cav1_p2_comparison_q_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_comparison_q_s_axi_arvalid : in std_logic;
    dsp_cav1_p2_comparison_q_s_axi_rready : in std_logic;
    dsp_cav1_p2_dc_freq_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_dc_freq_s_axi_awvalid : in std_logic;
    dsp_cav1_p2_dc_freq_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_dc_freq_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p2_dc_freq_s_axi_wvalid : in std_logic;
    dsp_cav1_p2_dc_freq_s_axi_bready : in std_logic;
    dsp_cav1_p2_dc_freq_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_dc_freq_s_axi_arvalid : in std_logic;
    dsp_cav1_p2_dc_freq_s_axi_rready : in std_logic;
    dsp_cav1_p2_dc_img_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_dc_img_s_axi_awvalid : in std_logic;
    dsp_cav1_p2_dc_img_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_dc_img_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p2_dc_img_s_axi_wvalid : in std_logic;
    dsp_cav1_p2_dc_img_s_axi_bready : in std_logic;
    dsp_cav1_p2_dc_img_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_dc_img_s_axi_arvalid : in std_logic;
    dsp_cav1_p2_dc_img_s_axi_rready : in std_logic;
    dsp_cav1_p2_dc_real_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_dc_real_s_axi_awvalid : in std_logic;
    dsp_cav1_p2_dc_real_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_dc_real_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p2_dc_real_s_axi_wvalid : in std_logic;
    dsp_cav1_p2_dc_real_s_axi_bready : in std_logic;
    dsp_cav1_p2_dc_real_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_dc_real_s_axi_arvalid : in std_logic;
    dsp_cav1_p2_dc_real_s_axi_rready : in std_logic;
    dsp_cav1_p2_if_amp_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_if_amp_s_axi_awvalid : in std_logic;
    dsp_cav1_p2_if_amp_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_if_amp_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p2_if_amp_s_axi_wvalid : in std_logic;
    dsp_cav1_p2_if_amp_s_axi_bready : in std_logic;
    dsp_cav1_p2_if_amp_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_if_amp_s_axi_arvalid : in std_logic;
    dsp_cav1_p2_if_amp_s_axi_rready : in std_logic;
    dsp_cav1_p2_if_i_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_if_i_s_axi_awvalid : in std_logic;
    dsp_cav1_p2_if_i_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_if_i_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p2_if_i_s_axi_wvalid : in std_logic;
    dsp_cav1_p2_if_i_s_axi_bready : in std_logic;
    dsp_cav1_p2_if_i_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_if_i_s_axi_arvalid : in std_logic;
    dsp_cav1_p2_if_i_s_axi_rready : in std_logic;
    dsp_cav1_p2_if_phase_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_if_phase_s_axi_awvalid : in std_logic;
    dsp_cav1_p2_if_phase_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_if_phase_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p2_if_phase_s_axi_wvalid : in std_logic;
    dsp_cav1_p2_if_phase_s_axi_bready : in std_logic;
    dsp_cav1_p2_if_phase_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_if_phase_s_axi_arvalid : in std_logic;
    dsp_cav1_p2_if_phase_s_axi_rready : in std_logic;
    dsp_cav1_p2_if_q_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_if_q_s_axi_awvalid : in std_logic;
    dsp_cav1_p2_if_q_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_if_q_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p2_if_q_s_axi_wvalid : in std_logic;
    dsp_cav1_p2_if_q_s_axi_bready : in std_logic;
    dsp_cav1_p2_if_q_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_if_q_s_axi_arvalid : in std_logic;
    dsp_cav1_p2_if_q_s_axi_rready : in std_logic;
    dsp_cav1_p2_integrated_i_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_integrated_i_s_axi_awvalid : in std_logic;
    dsp_cav1_p2_integrated_i_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_integrated_i_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p2_integrated_i_s_axi_wvalid : in std_logic;
    dsp_cav1_p2_integrated_i_s_axi_bready : in std_logic;
    dsp_cav1_p2_integrated_i_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_integrated_i_s_axi_arvalid : in std_logic;
    dsp_cav1_p2_integrated_i_s_axi_rready : in std_logic;
    dsp_cav1_p2_integrated_q_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_integrated_q_s_axi_awvalid : in std_logic;
    dsp_cav1_p2_integrated_q_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_integrated_q_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p2_integrated_q_s_axi_wvalid : in std_logic;
    dsp_cav1_p2_integrated_q_s_axi_bready : in std_logic;
    dsp_cav1_p2_integrated_q_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_integrated_q_s_axi_arvalid : in std_logic;
    dsp_cav1_p2_integrated_q_s_axi_rready : in std_logic;
    dsp_cav1_p2_phase_out_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_phase_out_s_axi_awvalid : in std_logic;
    dsp_cav1_p2_phase_out_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_phase_out_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p2_phase_out_s_axi_wvalid : in std_logic;
    dsp_cav1_p2_phase_out_s_axi_bready : in std_logic;
    dsp_cav1_p2_phase_out_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_phase_out_s_axi_arvalid : in std_logic;
    dsp_cav1_p2_phase_out_s_axi_rready : in std_logic;
    dsp_cav1_p2_window_start_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_window_start_s_axi_awvalid : in std_logic;
    dsp_cav1_p2_window_start_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_window_start_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p2_window_start_s_axi_wvalid : in std_logic;
    dsp_cav1_p2_window_start_s_axi_bready : in std_logic;
    dsp_cav1_p2_window_start_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_window_start_s_axi_arvalid : in std_logic;
    dsp_cav1_p2_window_start_s_axi_rready : in std_logic;
    dsp_cav1_p2_window_stop_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_window_stop_s_axi_awvalid : in std_logic;
    dsp_cav1_p2_window_stop_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_window_stop_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p2_window_stop_s_axi_wvalid : in std_logic;
    dsp_cav1_p2_window_stop_s_axi_bready : in std_logic;
    dsp_cav1_p2_window_stop_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p2_window_stop_s_axi_arvalid : in std_logic;
    dsp_cav1_p2_window_stop_s_axi_rready : in std_logic;
    dsp_cav2_p1_amp_out_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_amp_out_s_axi_awvalid : in std_logic;
    dsp_cav2_p1_amp_out_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_amp_out_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p1_amp_out_s_axi_wvalid : in std_logic;
    dsp_cav2_p1_amp_out_s_axi_bready : in std_logic;
    dsp_cav2_p1_amp_out_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_amp_out_s_axi_arvalid : in std_logic;
    dsp_cav2_p1_amp_out_s_axi_rready : in std_logic;
    dsp_cav2_p1_chan_sel_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_chan_sel_s_axi_awvalid : in std_logic;
    dsp_cav2_p1_chan_sel_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_chan_sel_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p1_chan_sel_s_axi_wvalid : in std_logic;
    dsp_cav2_p1_chan_sel_s_axi_bready : in std_logic;
    dsp_cav2_p1_chan_sel_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_chan_sel_s_axi_arvalid : in std_logic;
    dsp_cav2_p1_chan_sel_s_axi_rready : in std_logic;
    dsp_cav2_p1_comparison_i_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_comparison_i_s_axi_awvalid : in std_logic;
    dsp_cav2_p1_comparison_i_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_comparison_i_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p1_comparison_i_s_axi_wvalid : in std_logic;
    dsp_cav2_p1_comparison_i_s_axi_bready : in std_logic;
    dsp_cav2_p1_comparison_i_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_comparison_i_s_axi_arvalid : in std_logic;
    dsp_cav2_p1_comparison_i_s_axi_rready : in std_logic;
    dsp_cav2_p1_comparison_phase_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_comparison_phase_s_axi_awvalid : in std_logic;
    dsp_cav2_p1_comparison_phase_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_comparison_phase_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p1_comparison_phase_s_axi_wvalid : in std_logic;
    dsp_cav2_p1_comparison_phase_s_axi_bready : in std_logic;
    dsp_cav2_p1_comparison_phase_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_comparison_phase_s_axi_arvalid : in std_logic;
    dsp_cav2_p1_comparison_phase_s_axi_rready : in std_logic;
    dsp_cav2_p1_comparison_q_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_comparison_q_s_axi_awvalid : in std_logic;
    dsp_cav2_p1_comparison_q_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_comparison_q_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p1_comparison_q_s_axi_wvalid : in std_logic;
    dsp_cav2_p1_comparison_q_s_axi_bready : in std_logic;
    dsp_cav2_p1_comparison_q_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_comparison_q_s_axi_arvalid : in std_logic;
    dsp_cav2_p1_comparison_q_s_axi_rready : in std_logic;
    dsp_cav2_p1_dc_freq_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_dc_freq_s_axi_awvalid : in std_logic;
    dsp_cav2_p1_dc_freq_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_dc_freq_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p1_dc_freq_s_axi_wvalid : in std_logic;
    dsp_cav2_p1_dc_freq_s_axi_bready : in std_logic;
    dsp_cav2_p1_dc_freq_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_dc_freq_s_axi_arvalid : in std_logic;
    dsp_cav2_p1_dc_freq_s_axi_rready : in std_logic;
    dsp_cav2_p1_dc_img_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_dc_img_s_axi_awvalid : in std_logic;
    dsp_cav2_p1_dc_img_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_dc_img_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p1_dc_img_s_axi_wvalid : in std_logic;
    dsp_cav2_p1_dc_img_s_axi_bready : in std_logic;
    dsp_cav2_p1_dc_img_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_dc_img_s_axi_arvalid : in std_logic;
    dsp_cav2_p1_dc_img_s_axi_rready : in std_logic;
    dsp_cav2_p1_dc_real_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_dc_real_s_axi_awvalid : in std_logic;
    dsp_cav2_p1_dc_real_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_dc_real_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p1_dc_real_s_axi_wvalid : in std_logic;
    dsp_cav2_p1_dc_real_s_axi_bready : in std_logic;
    dsp_cav2_p1_dc_real_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_dc_real_s_axi_arvalid : in std_logic;
    dsp_cav2_p1_dc_real_s_axi_rready : in std_logic;
    dsp_cav2_p1_if_amp_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_if_amp_s_axi_awvalid : in std_logic;
    dsp_cav2_p1_if_amp_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_if_amp_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p1_if_amp_s_axi_wvalid : in std_logic;
    dsp_cav2_p1_if_amp_s_axi_bready : in std_logic;
    dsp_cav2_p1_if_amp_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_if_amp_s_axi_arvalid : in std_logic;
    dsp_cav2_p1_if_amp_s_axi_rready : in std_logic;
    dsp_cav2_p1_if_i_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_if_i_s_axi_awvalid : in std_logic;
    dsp_cav2_p1_if_i_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_if_i_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p1_if_i_s_axi_wvalid : in std_logic;
    dsp_cav2_p1_if_i_s_axi_bready : in std_logic;
    dsp_cav2_p1_if_i_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_if_i_s_axi_arvalid : in std_logic;
    dsp_cav2_p1_if_i_s_axi_rready : in std_logic;
    dsp_cav2_p1_if_phase_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_if_phase_s_axi_awvalid : in std_logic;
    dsp_cav2_p1_if_phase_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_if_phase_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p1_if_phase_s_axi_wvalid : in std_logic;
    dsp_cav2_p1_if_phase_s_axi_bready : in std_logic;
    dsp_cav2_p1_if_phase_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_if_phase_s_axi_arvalid : in std_logic;
    dsp_cav2_p1_if_phase_s_axi_rready : in std_logic;
    dsp_cav2_p1_if_q_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_if_q_s_axi_awvalid : in std_logic;
    dsp_cav2_p1_if_q_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_if_q_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p1_if_q_s_axi_wvalid : in std_logic;
    dsp_cav2_p1_if_q_s_axi_bready : in std_logic;
    dsp_cav2_p1_if_q_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_if_q_s_axi_arvalid : in std_logic;
    dsp_cav2_p1_if_q_s_axi_rready : in std_logic;
    dsp_cav2_p1_integrated_i_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_integrated_i_s_axi_awvalid : in std_logic;
    dsp_cav2_p1_integrated_i_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_integrated_i_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p1_integrated_i_s_axi_wvalid : in std_logic;
    dsp_cav2_p1_integrated_i_s_axi_bready : in std_logic;
    dsp_cav2_p1_integrated_i_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_integrated_i_s_axi_arvalid : in std_logic;
    dsp_cav2_p1_integrated_i_s_axi_rready : in std_logic;
    dsp_cav2_p1_integrated_q_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_integrated_q_s_axi_awvalid : in std_logic;
    dsp_cav2_p1_integrated_q_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_integrated_q_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p1_integrated_q_s_axi_wvalid : in std_logic;
    dsp_cav2_p1_integrated_q_s_axi_bready : in std_logic;
    dsp_cav2_p1_integrated_q_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_integrated_q_s_axi_arvalid : in std_logic;
    dsp_cav2_p1_integrated_q_s_axi_rready : in std_logic;
    dsp_cav2_p1_phase_out_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_phase_out_s_axi_awvalid : in std_logic;
    dsp_cav2_p1_phase_out_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_phase_out_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p1_phase_out_s_axi_wvalid : in std_logic;
    dsp_cav2_p1_phase_out_s_axi_bready : in std_logic;
    dsp_cav2_p1_phase_out_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_phase_out_s_axi_arvalid : in std_logic;
    dsp_cav2_p1_phase_out_s_axi_rready : in std_logic;
    dsp_cav2_p1_window_start_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_window_start_s_axi_awvalid : in std_logic;
    dsp_cav2_p1_window_start_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_window_start_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p1_window_start_s_axi_wvalid : in std_logic;
    dsp_cav2_p1_window_start_s_axi_bready : in std_logic;
    dsp_cav2_p1_window_start_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_window_start_s_axi_arvalid : in std_logic;
    dsp_cav2_p1_window_start_s_axi_rready : in std_logic;
    dsp_cav2_p1_window_stop_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_window_stop_s_axi_awvalid : in std_logic;
    dsp_cav2_p1_window_stop_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_window_stop_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p1_window_stop_s_axi_wvalid : in std_logic;
    dsp_cav2_p1_window_stop_s_axi_bready : in std_logic;
    dsp_cav2_p1_window_stop_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p1_window_stop_s_axi_arvalid : in std_logic;
    dsp_cav2_p1_window_stop_s_axi_rready : in std_logic;
    dsp_cav2_p2_amp_out_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_amp_out_s_axi_awvalid : in std_logic;
    dsp_cav2_p2_amp_out_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_amp_out_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p2_amp_out_s_axi_wvalid : in std_logic;
    dsp_cav2_p2_amp_out_s_axi_bready : in std_logic;
    dsp_cav2_p2_amp_out_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_amp_out_s_axi_arvalid : in std_logic;
    dsp_cav2_p2_amp_out_s_axi_rready : in std_logic;
    dsp_cav2_p2_chan_sel_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_chan_sel_s_axi_awvalid : in std_logic;
    dsp_cav2_p2_chan_sel_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_chan_sel_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p2_chan_sel_s_axi_wvalid : in std_logic;
    dsp_cav2_p2_chan_sel_s_axi_bready : in std_logic;
    dsp_cav2_p2_chan_sel_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_chan_sel_s_axi_arvalid : in std_logic;
    dsp_cav2_p2_chan_sel_s_axi_rready : in std_logic;
    dsp_cav2_p2_comparison_i_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_comparison_i_s_axi_awvalid : in std_logic;
    dsp_cav2_p2_comparison_i_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_comparison_i_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p2_comparison_i_s_axi_wvalid : in std_logic;
    dsp_cav2_p2_comparison_i_s_axi_bready : in std_logic;
    dsp_cav2_p2_comparison_i_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_comparison_i_s_axi_arvalid : in std_logic;
    dsp_cav2_p2_comparison_i_s_axi_rready : in std_logic;
    dsp_cav2_p2_comparison_phase_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_comparison_phase_s_axi_awvalid : in std_logic;
    dsp_cav2_p2_comparison_phase_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_comparison_phase_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p2_comparison_phase_s_axi_wvalid : in std_logic;
    dsp_cav2_p2_comparison_phase_s_axi_bready : in std_logic;
    dsp_cav2_p2_comparison_phase_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_comparison_phase_s_axi_arvalid : in std_logic;
    dsp_cav2_p2_comparison_phase_s_axi_rready : in std_logic;
    dsp_cav2_p2_comparison_q_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_comparison_q_s_axi_awvalid : in std_logic;
    dsp_cav2_p2_comparison_q_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_comparison_q_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p2_comparison_q_s_axi_wvalid : in std_logic;
    dsp_cav2_p2_comparison_q_s_axi_bready : in std_logic;
    dsp_cav2_p2_comparison_q_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_comparison_q_s_axi_arvalid : in std_logic;
    dsp_cav2_p2_comparison_q_s_axi_rready : in std_logic;
    dsp_cav2_p2_dc_freq_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_dc_freq_s_axi_awvalid : in std_logic;
    dsp_cav2_p2_dc_freq_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_dc_freq_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p2_dc_freq_s_axi_wvalid : in std_logic;
    dsp_cav2_p2_dc_freq_s_axi_bready : in std_logic;
    dsp_cav2_p2_dc_freq_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_dc_freq_s_axi_arvalid : in std_logic;
    dsp_cav2_p2_dc_freq_s_axi_rready : in std_logic;
    dsp_cav2_p2_dc_img_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_dc_img_s_axi_awvalid : in std_logic;
    dsp_cav2_p2_dc_img_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_dc_img_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p2_dc_img_s_axi_wvalid : in std_logic;
    dsp_cav2_p2_dc_img_s_axi_bready : in std_logic;
    dsp_cav2_p2_dc_img_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_dc_img_s_axi_arvalid : in std_logic;
    dsp_cav2_p2_dc_img_s_axi_rready : in std_logic;
    dsp_cav2_p2_dc_real_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_dc_real_s_axi_awvalid : in std_logic;
    dsp_cav2_p2_dc_real_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_dc_real_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p2_dc_real_s_axi_wvalid : in std_logic;
    dsp_cav2_p2_dc_real_s_axi_bready : in std_logic;
    dsp_cav2_p2_dc_real_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_dc_real_s_axi_arvalid : in std_logic;
    dsp_cav2_p2_dc_real_s_axi_rready : in std_logic;
    dsp_cav2_p2_if_amp_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_if_amp_s_axi_awvalid : in std_logic;
    dsp_cav2_p2_if_amp_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_if_amp_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p2_if_amp_s_axi_wvalid : in std_logic;
    dsp_cav2_p2_if_amp_s_axi_bready : in std_logic;
    dsp_cav2_p2_if_amp_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_if_amp_s_axi_arvalid : in std_logic;
    dsp_cav2_p2_if_amp_s_axi_rready : in std_logic;
    dsp_cav2_p2_if_i_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_if_i_s_axi_awvalid : in std_logic;
    dsp_cav2_p2_if_i_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_if_i_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p2_if_i_s_axi_wvalid : in std_logic;
    dsp_cav2_p2_if_i_s_axi_bready : in std_logic;
    dsp_cav2_p2_if_i_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_if_i_s_axi_arvalid : in std_logic;
    dsp_cav2_p2_if_i_s_axi_rready : in std_logic;
    dsp_cav2_p2_if_phase_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_if_phase_s_axi_awvalid : in std_logic;
    dsp_cav2_p2_if_phase_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_if_phase_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p2_if_phase_s_axi_wvalid : in std_logic;
    dsp_cav2_p2_if_phase_s_axi_bready : in std_logic;
    dsp_cav2_p2_if_phase_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_if_phase_s_axi_arvalid : in std_logic;
    dsp_cav2_p2_if_phase_s_axi_rready : in std_logic;
    dsp_cav2_p2_if_q_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_if_q_s_axi_awvalid : in std_logic;
    dsp_cav2_p2_if_q_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_if_q_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p2_if_q_s_axi_wvalid : in std_logic;
    dsp_cav2_p2_if_q_s_axi_bready : in std_logic;
    dsp_cav2_p2_if_q_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_if_q_s_axi_arvalid : in std_logic;
    dsp_cav2_p2_if_q_s_axi_rready : in std_logic;
    dsp_cav2_p2_integrated_i_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_integrated_i_s_axi_awvalid : in std_logic;
    dsp_cav2_p2_integrated_i_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_integrated_i_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p2_integrated_i_s_axi_wvalid : in std_logic;
    dsp_cav2_p2_integrated_i_s_axi_bready : in std_logic;
    dsp_cav2_p2_integrated_i_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_integrated_i_s_axi_arvalid : in std_logic;
    dsp_cav2_p2_integrated_i_s_axi_rready : in std_logic;
    dsp_cav2_p2_integrated_q_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_integrated_q_s_axi_awvalid : in std_logic;
    dsp_cav2_p2_integrated_q_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_integrated_q_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p2_integrated_q_s_axi_wvalid : in std_logic;
    dsp_cav2_p2_integrated_q_s_axi_bready : in std_logic;
    dsp_cav2_p2_integrated_q_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_integrated_q_s_axi_arvalid : in std_logic;
    dsp_cav2_p2_integrated_q_s_axi_rready : in std_logic;
    dsp_cav2_p2_phase_out_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_phase_out_s_axi_awvalid : in std_logic;
    dsp_cav2_p2_phase_out_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_phase_out_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p2_phase_out_s_axi_wvalid : in std_logic;
    dsp_cav2_p2_phase_out_s_axi_bready : in std_logic;
    dsp_cav2_p2_phase_out_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_phase_out_s_axi_arvalid : in std_logic;
    dsp_cav2_p2_phase_out_s_axi_rready : in std_logic;
    dsp_cav2_p2_window_start_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_window_start_s_axi_awvalid : in std_logic;
    dsp_cav2_p2_window_start_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_window_start_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p2_window_start_s_axi_wvalid : in std_logic;
    dsp_cav2_p2_window_start_s_axi_bready : in std_logic;
    dsp_cav2_p2_window_start_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_window_start_s_axi_arvalid : in std_logic;
    dsp_cav2_p2_window_start_s_axi_rready : in std_logic;
    dsp_cav2_p2_window_stop_s_axi_awaddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_window_stop_s_axi_awvalid : in std_logic;
    dsp_cav2_p2_window_stop_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_window_stop_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav2_p2_window_stop_s_axi_wvalid : in std_logic;
    dsp_cav2_p2_window_stop_s_axi_bready : in std_logic;
    dsp_cav2_p2_window_stop_s_axi_araddr : in std_logic_vector( 10-1 downto 0 );
    dsp_cav2_p2_window_stop_s_axi_arvalid : in std_logic;
    dsp_cav2_p2_window_stop_s_axi_rready : in std_logic;
    dsp_ref_window_start_s_axi_awaddr : in std_logic_vector( 5-1 downto 0 );
    dsp_ref_window_start_s_axi_awvalid : in std_logic;
    dsp_ref_window_start_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_ref_window_start_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_ref_window_start_s_axi_wvalid : in std_logic;
    dsp_ref_window_start_s_axi_bready : in std_logic;
    dsp_ref_window_start_s_axi_araddr : in std_logic_vector( 5-1 downto 0 );
    dsp_ref_window_start_s_axi_arvalid : in std_logic;
    dsp_ref_window_start_s_axi_rready : in std_logic;
    dsp_ref_window_stop_s_axi_awaddr : in std_logic_vector( 5-1 downto 0 );
    dsp_ref_window_stop_s_axi_awvalid : in std_logic;
    dsp_ref_window_stop_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_ref_window_stop_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_ref_window_stop_s_axi_wvalid : in std_logic;
    dsp_ref_window_stop_s_axi_bready : in std_logic;
    dsp_ref_window_stop_s_axi_araddr : in std_logic_vector( 5-1 downto 0 );
    dsp_ref_window_stop_s_axi_arvalid : in std_logic;
    dsp_ref_window_stop_s_axi_rready : in std_logic;
    dsp_rf_ref_amp_s_axi_awaddr : in std_logic;
    dsp_rf_ref_amp_s_axi_awvalid : in std_logic;
    dsp_rf_ref_amp_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_rf_ref_amp_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_rf_ref_amp_s_axi_wvalid : in std_logic;
    dsp_rf_ref_amp_s_axi_bready : in std_logic;
    dsp_rf_ref_amp_s_axi_araddr : in std_logic;
    dsp_rf_ref_amp_s_axi_arvalid : in std_logic;
    dsp_rf_ref_amp_s_axi_rready : in std_logic;
    dsp_rf_ref_chan_sel_s_axi_awaddr : in std_logic_vector( 5-1 downto 0 );
    dsp_rf_ref_chan_sel_s_axi_awvalid : in std_logic;
    dsp_rf_ref_chan_sel_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_rf_ref_chan_sel_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_rf_ref_chan_sel_s_axi_wvalid : in std_logic;
    dsp_rf_ref_chan_sel_s_axi_bready : in std_logic;
    dsp_rf_ref_chan_sel_s_axi_araddr : in std_logic_vector( 5-1 downto 0 );
    dsp_rf_ref_chan_sel_s_axi_arvalid : in std_logic;
    dsp_rf_ref_chan_sel_s_axi_rready : in std_logic;
    dsp_rf_ref_i_s_axi_awaddr : in std_logic_vector( 4-1 downto 0 );
    dsp_rf_ref_i_s_axi_awvalid : in std_logic;
    dsp_rf_ref_i_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_rf_ref_i_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_rf_ref_i_s_axi_wvalid : in std_logic;
    dsp_rf_ref_i_s_axi_bready : in std_logic;
    dsp_rf_ref_i_s_axi_araddr : in std_logic_vector( 4-1 downto 0 );
    dsp_rf_ref_i_s_axi_arvalid : in std_logic;
    dsp_rf_ref_i_s_axi_rready : in std_logic;
    dsp_rf_ref_phase_s_axi_awaddr : in std_logic_vector( 3-1 downto 0 );
    dsp_rf_ref_phase_s_axi_awvalid : in std_logic;
    dsp_rf_ref_phase_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_rf_ref_phase_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_rf_ref_phase_s_axi_wvalid : in std_logic;
    dsp_rf_ref_phase_s_axi_bready : in std_logic;
    dsp_rf_ref_phase_s_axi_araddr : in std_logic_vector( 3-1 downto 0 );
    dsp_rf_ref_phase_s_axi_arvalid : in std_logic;
    dsp_rf_ref_phase_s_axi_rready : in std_logic;
    dsp_rf_ref_q_s_axi_awaddr : in std_logic_vector( 4-1 downto 0 );
    dsp_rf_ref_q_s_axi_awvalid : in std_logic;
    dsp_rf_ref_q_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_rf_ref_q_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_rf_ref_q_s_axi_wvalid : in std_logic;
    dsp_rf_ref_q_s_axi_bready : in std_logic;
    dsp_rf_ref_q_s_axi_araddr : in std_logic_vector( 4-1 downto 0 );
    dsp_rf_ref_q_s_axi_arvalid : in std_logic;
    dsp_rf_ref_q_s_axi_rready : in std_logic;
    axi_lite_s_axi_awready : out std_logic;
    axi_lite_s_axi_wready : out std_logic;
    axi_lite_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    axi_lite_s_axi_bvalid : out std_logic;
    axi_lite_s_axi_arready : out std_logic;
    axi_lite_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    axi_lite_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    axi_lite_s_axi_rvalid : out std_logic;
    dsp_cav1_nco_phase_adj_s_axi_awready : out std_logic;
    dsp_cav1_nco_phase_adj_s_axi_wready : out std_logic;
    dsp_cav1_nco_phase_adj_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_nco_phase_adj_s_axi_bvalid : out std_logic;
    dsp_cav1_nco_phase_adj_s_axi_arready : out std_logic;
    dsp_cav1_nco_phase_adj_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_nco_phase_adj_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_nco_phase_adj_s_axi_rvalid : out std_logic;
    dsp_cav1_nco_phase_reset_s_axi_awready : out std_logic;
    dsp_cav1_nco_phase_reset_s_axi_wready : out std_logic;
    dsp_cav1_nco_phase_reset_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_nco_phase_reset_s_axi_bvalid : out std_logic;
    dsp_cav1_nco_phase_reset_s_axi_arready : out std_logic;
    dsp_cav1_nco_phase_reset_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_nco_phase_reset_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_nco_phase_reset_s_axi_rvalid : out std_logic;
    dsp_cav1_p1_chan_sel_s_axi_awready : out std_logic;
    dsp_cav1_p1_chan_sel_s_axi_wready : out std_logic;
    dsp_cav1_p1_chan_sel_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_chan_sel_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_chan_sel_s_axi_arready : out std_logic;
    dsp_cav1_p1_chan_sel_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_chan_sel_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_chan_sel_s_axi_rvalid : out std_logic;
    dsp_cav1_p1_window_start_s_axi_awready : out std_logic;
    dsp_cav1_p1_window_start_s_axi_wready : out std_logic;
    dsp_cav1_p1_window_start_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_window_start_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_window_start_s_axi_arready : out std_logic;
    dsp_cav1_p1_window_start_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_window_start_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_window_start_s_axi_rvalid : out std_logic;
    dsp_cav1_p1_window_stop_s_axi_awready : out std_logic;
    dsp_cav1_p1_window_stop_s_axi_wready : out std_logic;
    dsp_cav1_p1_window_stop_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_window_stop_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_window_stop_s_axi_arready : out std_logic;
    dsp_cav1_p1_window_stop_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_window_stop_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_window_stop_s_axi_rvalid : out std_logic;
    dsp_cav1_p2_amp_out_s_axi_awready : out std_logic;
    dsp_cav1_p2_amp_out_s_axi_wready : out std_logic;
    dsp_cav1_p2_amp_out_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_amp_out_s_axi_bvalid : out std_logic;
    dsp_cav1_p2_amp_out_s_axi_arready : out std_logic;
    dsp_cav1_p2_amp_out_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_amp_out_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_amp_out_s_axi_rvalid : out std_logic;
    dsp_cav1_p2_chan_sel_s_axi_awready : out std_logic;
    dsp_cav1_p2_chan_sel_s_axi_wready : out std_logic;
    dsp_cav1_p2_chan_sel_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_chan_sel_s_axi_bvalid : out std_logic;
    dsp_cav1_p2_chan_sel_s_axi_arready : out std_logic;
    dsp_cav1_p2_chan_sel_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_chan_sel_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_chan_sel_s_axi_rvalid : out std_logic;
    dsp_cav1_p2_comparison_i_s_axi_awready : out std_logic;
    dsp_cav1_p2_comparison_i_s_axi_wready : out std_logic;
    dsp_cav1_p2_comparison_i_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_comparison_i_s_axi_bvalid : out std_logic;
    dsp_cav1_p2_comparison_i_s_axi_arready : out std_logic;
    dsp_cav1_p2_comparison_i_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_comparison_i_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_comparison_i_s_axi_rvalid : out std_logic;
    dsp_cav1_p2_comparison_phase_s_axi_awready : out std_logic;
    dsp_cav1_p2_comparison_phase_s_axi_wready : out std_logic;
    dsp_cav1_p2_comparison_phase_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_comparison_phase_s_axi_bvalid : out std_logic;
    dsp_cav1_p2_comparison_phase_s_axi_arready : out std_logic;
    dsp_cav1_p2_comparison_phase_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_comparison_phase_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_comparison_phase_s_axi_rvalid : out std_logic;
    dsp_cav1_p2_comparison_q_s_axi_awready : out std_logic;
    dsp_cav1_p2_comparison_q_s_axi_wready : out std_logic;
    dsp_cav1_p2_comparison_q_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_comparison_q_s_axi_bvalid : out std_logic;
    dsp_cav1_p2_comparison_q_s_axi_arready : out std_logic;
    dsp_cav1_p2_comparison_q_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_comparison_q_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_comparison_q_s_axi_rvalid : out std_logic;
    dsp_cav1_p2_dc_freq_s_axi_awready : out std_logic;
    dsp_cav1_p2_dc_freq_s_axi_wready : out std_logic;
    dsp_cav1_p2_dc_freq_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_dc_freq_s_axi_bvalid : out std_logic;
    dsp_cav1_p2_dc_freq_s_axi_arready : out std_logic;
    dsp_cav1_p2_dc_freq_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_dc_freq_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_dc_freq_s_axi_rvalid : out std_logic;
    dsp_cav1_p2_dc_img_s_axi_awready : out std_logic;
    dsp_cav1_p2_dc_img_s_axi_wready : out std_logic;
    dsp_cav1_p2_dc_img_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_dc_img_s_axi_bvalid : out std_logic;
    dsp_cav1_p2_dc_img_s_axi_arready : out std_logic;
    dsp_cav1_p2_dc_img_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_dc_img_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_dc_img_s_axi_rvalid : out std_logic;
    dsp_cav1_p2_dc_real_s_axi_awready : out std_logic;
    dsp_cav1_p2_dc_real_s_axi_wready : out std_logic;
    dsp_cav1_p2_dc_real_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_dc_real_s_axi_bvalid : out std_logic;
    dsp_cav1_p2_dc_real_s_axi_arready : out std_logic;
    dsp_cav1_p2_dc_real_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_dc_real_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_dc_real_s_axi_rvalid : out std_logic;
    dsp_cav1_p2_if_amp_s_axi_awready : out std_logic;
    dsp_cav1_p2_if_amp_s_axi_wready : out std_logic;
    dsp_cav1_p2_if_amp_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_if_amp_s_axi_bvalid : out std_logic;
    dsp_cav1_p2_if_amp_s_axi_arready : out std_logic;
    dsp_cav1_p2_if_amp_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_if_amp_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_if_amp_s_axi_rvalid : out std_logic;
    dsp_cav1_p2_if_i_s_axi_awready : out std_logic;
    dsp_cav1_p2_if_i_s_axi_wready : out std_logic;
    dsp_cav1_p2_if_i_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_if_i_s_axi_bvalid : out std_logic;
    dsp_cav1_p2_if_i_s_axi_arready : out std_logic;
    dsp_cav1_p2_if_i_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_if_i_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_if_i_s_axi_rvalid : out std_logic;
    dsp_cav1_p2_if_phase_s_axi_awready : out std_logic;
    dsp_cav1_p2_if_phase_s_axi_wready : out std_logic;
    dsp_cav1_p2_if_phase_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_if_phase_s_axi_bvalid : out std_logic;
    dsp_cav1_p2_if_phase_s_axi_arready : out std_logic;
    dsp_cav1_p2_if_phase_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_if_phase_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_if_phase_s_axi_rvalid : out std_logic;
    dsp_cav1_p2_if_q_s_axi_awready : out std_logic;
    dsp_cav1_p2_if_q_s_axi_wready : out std_logic;
    dsp_cav1_p2_if_q_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_if_q_s_axi_bvalid : out std_logic;
    dsp_cav1_p2_if_q_s_axi_arready : out std_logic;
    dsp_cav1_p2_if_q_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_if_q_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_if_q_s_axi_rvalid : out std_logic;
    dsp_cav1_p2_integrated_i_s_axi_awready : out std_logic;
    dsp_cav1_p2_integrated_i_s_axi_wready : out std_logic;
    dsp_cav1_p2_integrated_i_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_integrated_i_s_axi_bvalid : out std_logic;
    dsp_cav1_p2_integrated_i_s_axi_arready : out std_logic;
    dsp_cav1_p2_integrated_i_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_integrated_i_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_integrated_i_s_axi_rvalid : out std_logic;
    dsp_cav1_p2_integrated_q_s_axi_awready : out std_logic;
    dsp_cav1_p2_integrated_q_s_axi_wready : out std_logic;
    dsp_cav1_p2_integrated_q_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_integrated_q_s_axi_bvalid : out std_logic;
    dsp_cav1_p2_integrated_q_s_axi_arready : out std_logic;
    dsp_cav1_p2_integrated_q_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_integrated_q_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_integrated_q_s_axi_rvalid : out std_logic;
    dsp_cav1_p2_phase_out_s_axi_awready : out std_logic;
    dsp_cav1_p2_phase_out_s_axi_wready : out std_logic;
    dsp_cav1_p2_phase_out_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_phase_out_s_axi_bvalid : out std_logic;
    dsp_cav1_p2_phase_out_s_axi_arready : out std_logic;
    dsp_cav1_p2_phase_out_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_phase_out_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_phase_out_s_axi_rvalid : out std_logic;
    dsp_cav1_p2_window_start_s_axi_awready : out std_logic;
    dsp_cav1_p2_window_start_s_axi_wready : out std_logic;
    dsp_cav1_p2_window_start_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_window_start_s_axi_bvalid : out std_logic;
    dsp_cav1_p2_window_start_s_axi_arready : out std_logic;
    dsp_cav1_p2_window_start_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_window_start_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_window_start_s_axi_rvalid : out std_logic;
    dsp_cav1_p2_window_stop_s_axi_awready : out std_logic;
    dsp_cav1_p2_window_stop_s_axi_wready : out std_logic;
    dsp_cav1_p2_window_stop_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_window_stop_s_axi_bvalid : out std_logic;
    dsp_cav1_p2_window_stop_s_axi_arready : out std_logic;
    dsp_cav1_p2_window_stop_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p2_window_stop_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p2_window_stop_s_axi_rvalid : out std_logic;
    dsp_cav2_p1_amp_out_s_axi_awready : out std_logic;
    dsp_cav2_p1_amp_out_s_axi_wready : out std_logic;
    dsp_cav2_p1_amp_out_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_amp_out_s_axi_bvalid : out std_logic;
    dsp_cav2_p1_amp_out_s_axi_arready : out std_logic;
    dsp_cav2_p1_amp_out_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_amp_out_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_amp_out_s_axi_rvalid : out std_logic;
    dsp_cav2_p1_chan_sel_s_axi_awready : out std_logic;
    dsp_cav2_p1_chan_sel_s_axi_wready : out std_logic;
    dsp_cav2_p1_chan_sel_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_chan_sel_s_axi_bvalid : out std_logic;
    dsp_cav2_p1_chan_sel_s_axi_arready : out std_logic;
    dsp_cav2_p1_chan_sel_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_chan_sel_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_chan_sel_s_axi_rvalid : out std_logic;
    dsp_cav2_p1_comparison_i_s_axi_awready : out std_logic;
    dsp_cav2_p1_comparison_i_s_axi_wready : out std_logic;
    dsp_cav2_p1_comparison_i_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_comparison_i_s_axi_bvalid : out std_logic;
    dsp_cav2_p1_comparison_i_s_axi_arready : out std_logic;
    dsp_cav2_p1_comparison_i_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_comparison_i_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_comparison_i_s_axi_rvalid : out std_logic;
    dsp_cav2_p1_comparison_phase_s_axi_awready : out std_logic;
    dsp_cav2_p1_comparison_phase_s_axi_wready : out std_logic;
    dsp_cav2_p1_comparison_phase_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_comparison_phase_s_axi_bvalid : out std_logic;
    dsp_cav2_p1_comparison_phase_s_axi_arready : out std_logic;
    dsp_cav2_p1_comparison_phase_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_comparison_phase_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_comparison_phase_s_axi_rvalid : out std_logic;
    dsp_cav2_p1_comparison_q_s_axi_awready : out std_logic;
    dsp_cav2_p1_comparison_q_s_axi_wready : out std_logic;
    dsp_cav2_p1_comparison_q_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_comparison_q_s_axi_bvalid : out std_logic;
    dsp_cav2_p1_comparison_q_s_axi_arready : out std_logic;
    dsp_cav2_p1_comparison_q_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_comparison_q_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_comparison_q_s_axi_rvalid : out std_logic;
    dsp_cav2_p1_dc_freq_s_axi_awready : out std_logic;
    dsp_cav2_p1_dc_freq_s_axi_wready : out std_logic;
    dsp_cav2_p1_dc_freq_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_dc_freq_s_axi_bvalid : out std_logic;
    dsp_cav2_p1_dc_freq_s_axi_arready : out std_logic;
    dsp_cav2_p1_dc_freq_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_dc_freq_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_dc_freq_s_axi_rvalid : out std_logic;
    dsp_cav2_p1_dc_img_s_axi_awready : out std_logic;
    dsp_cav2_p1_dc_img_s_axi_wready : out std_logic;
    dsp_cav2_p1_dc_img_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_dc_img_s_axi_bvalid : out std_logic;
    dsp_cav2_p1_dc_img_s_axi_arready : out std_logic;
    dsp_cav2_p1_dc_img_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_dc_img_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_dc_img_s_axi_rvalid : out std_logic;
    dsp_cav2_p1_dc_real_s_axi_awready : out std_logic;
    dsp_cav2_p1_dc_real_s_axi_wready : out std_logic;
    dsp_cav2_p1_dc_real_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_dc_real_s_axi_bvalid : out std_logic;
    dsp_cav2_p1_dc_real_s_axi_arready : out std_logic;
    dsp_cav2_p1_dc_real_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_dc_real_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_dc_real_s_axi_rvalid : out std_logic;
    dsp_cav2_p1_if_amp_s_axi_awready : out std_logic;
    dsp_cav2_p1_if_amp_s_axi_wready : out std_logic;
    dsp_cav2_p1_if_amp_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_if_amp_s_axi_bvalid : out std_logic;
    dsp_cav2_p1_if_amp_s_axi_arready : out std_logic;
    dsp_cav2_p1_if_amp_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_if_amp_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_if_amp_s_axi_rvalid : out std_logic;
    dsp_cav2_p1_if_i_s_axi_awready : out std_logic;
    dsp_cav2_p1_if_i_s_axi_wready : out std_logic;
    dsp_cav2_p1_if_i_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_if_i_s_axi_bvalid : out std_logic;
    dsp_cav2_p1_if_i_s_axi_arready : out std_logic;
    dsp_cav2_p1_if_i_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_if_i_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_if_i_s_axi_rvalid : out std_logic;
    dsp_cav2_p1_if_phase_s_axi_awready : out std_logic;
    dsp_cav2_p1_if_phase_s_axi_wready : out std_logic;
    dsp_cav2_p1_if_phase_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_if_phase_s_axi_bvalid : out std_logic;
    dsp_cav2_p1_if_phase_s_axi_arready : out std_logic;
    dsp_cav2_p1_if_phase_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_if_phase_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_if_phase_s_axi_rvalid : out std_logic;
    dsp_cav2_p1_if_q_s_axi_awready : out std_logic;
    dsp_cav2_p1_if_q_s_axi_wready : out std_logic;
    dsp_cav2_p1_if_q_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_if_q_s_axi_bvalid : out std_logic;
    dsp_cav2_p1_if_q_s_axi_arready : out std_logic;
    dsp_cav2_p1_if_q_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_if_q_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_if_q_s_axi_rvalid : out std_logic;
    dsp_cav2_p1_integrated_i_s_axi_awready : out std_logic;
    dsp_cav2_p1_integrated_i_s_axi_wready : out std_logic;
    dsp_cav2_p1_integrated_i_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_integrated_i_s_axi_bvalid : out std_logic;
    dsp_cav2_p1_integrated_i_s_axi_arready : out std_logic;
    dsp_cav2_p1_integrated_i_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_integrated_i_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_integrated_i_s_axi_rvalid : out std_logic;
    dsp_cav2_p1_integrated_q_s_axi_awready : out std_logic;
    dsp_cav2_p1_integrated_q_s_axi_wready : out std_logic;
    dsp_cav2_p1_integrated_q_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_integrated_q_s_axi_bvalid : out std_logic;
    dsp_cav2_p1_integrated_q_s_axi_arready : out std_logic;
    dsp_cav2_p1_integrated_q_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_integrated_q_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_integrated_q_s_axi_rvalid : out std_logic;
    dsp_cav2_p1_phase_out_s_axi_awready : out std_logic;
    dsp_cav2_p1_phase_out_s_axi_wready : out std_logic;
    dsp_cav2_p1_phase_out_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_phase_out_s_axi_bvalid : out std_logic;
    dsp_cav2_p1_phase_out_s_axi_arready : out std_logic;
    dsp_cav2_p1_phase_out_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_phase_out_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_phase_out_s_axi_rvalid : out std_logic;
    dsp_cav2_p1_window_start_s_axi_awready : out std_logic;
    dsp_cav2_p1_window_start_s_axi_wready : out std_logic;
    dsp_cav2_p1_window_start_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_window_start_s_axi_bvalid : out std_logic;
    dsp_cav2_p1_window_start_s_axi_arready : out std_logic;
    dsp_cav2_p1_window_start_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_window_start_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_window_start_s_axi_rvalid : out std_logic;
    dsp_cav2_p1_window_stop_s_axi_awready : out std_logic;
    dsp_cav2_p1_window_stop_s_axi_wready : out std_logic;
    dsp_cav2_p1_window_stop_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_window_stop_s_axi_bvalid : out std_logic;
    dsp_cav2_p1_window_stop_s_axi_arready : out std_logic;
    dsp_cav2_p1_window_stop_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p1_window_stop_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p1_window_stop_s_axi_rvalid : out std_logic;
    dsp_cav2_p2_amp_out_s_axi_awready : out std_logic;
    dsp_cav2_p2_amp_out_s_axi_wready : out std_logic;
    dsp_cav2_p2_amp_out_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_amp_out_s_axi_bvalid : out std_logic;
    dsp_cav2_p2_amp_out_s_axi_arready : out std_logic;
    dsp_cav2_p2_amp_out_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_amp_out_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_amp_out_s_axi_rvalid : out std_logic;
    dsp_cav2_p2_chan_sel_s_axi_awready : out std_logic;
    dsp_cav2_p2_chan_sel_s_axi_wready : out std_logic;
    dsp_cav2_p2_chan_sel_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_chan_sel_s_axi_bvalid : out std_logic;
    dsp_cav2_p2_chan_sel_s_axi_arready : out std_logic;
    dsp_cav2_p2_chan_sel_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_chan_sel_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_chan_sel_s_axi_rvalid : out std_logic;
    dsp_cav2_p2_comparison_i_s_axi_awready : out std_logic;
    dsp_cav2_p2_comparison_i_s_axi_wready : out std_logic;
    dsp_cav2_p2_comparison_i_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_comparison_i_s_axi_bvalid : out std_logic;
    dsp_cav2_p2_comparison_i_s_axi_arready : out std_logic;
    dsp_cav2_p2_comparison_i_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_comparison_i_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_comparison_i_s_axi_rvalid : out std_logic;
    dsp_cav2_p2_comparison_phase_s_axi_awready : out std_logic;
    dsp_cav2_p2_comparison_phase_s_axi_wready : out std_logic;
    dsp_cav2_p2_comparison_phase_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_comparison_phase_s_axi_bvalid : out std_logic;
    dsp_cav2_p2_comparison_phase_s_axi_arready : out std_logic;
    dsp_cav2_p2_comparison_phase_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_comparison_phase_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_comparison_phase_s_axi_rvalid : out std_logic;
    dsp_cav2_p2_comparison_q_s_axi_awready : out std_logic;
    dsp_cav2_p2_comparison_q_s_axi_wready : out std_logic;
    dsp_cav2_p2_comparison_q_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_comparison_q_s_axi_bvalid : out std_logic;
    dsp_cav2_p2_comparison_q_s_axi_arready : out std_logic;
    dsp_cav2_p2_comparison_q_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_comparison_q_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_comparison_q_s_axi_rvalid : out std_logic;
    dsp_cav2_p2_dc_freq_s_axi_awready : out std_logic;
    dsp_cav2_p2_dc_freq_s_axi_wready : out std_logic;
    dsp_cav2_p2_dc_freq_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_dc_freq_s_axi_bvalid : out std_logic;
    dsp_cav2_p2_dc_freq_s_axi_arready : out std_logic;
    dsp_cav2_p2_dc_freq_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_dc_freq_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_dc_freq_s_axi_rvalid : out std_logic;
    dsp_cav2_p2_dc_img_s_axi_awready : out std_logic;
    dsp_cav2_p2_dc_img_s_axi_wready : out std_logic;
    dsp_cav2_p2_dc_img_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_dc_img_s_axi_bvalid : out std_logic;
    dsp_cav2_p2_dc_img_s_axi_arready : out std_logic;
    dsp_cav2_p2_dc_img_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_dc_img_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_dc_img_s_axi_rvalid : out std_logic;
    dsp_cav2_p2_dc_real_s_axi_awready : out std_logic;
    dsp_cav2_p2_dc_real_s_axi_wready : out std_logic;
    dsp_cav2_p2_dc_real_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_dc_real_s_axi_bvalid : out std_logic;
    dsp_cav2_p2_dc_real_s_axi_arready : out std_logic;
    dsp_cav2_p2_dc_real_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_dc_real_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_dc_real_s_axi_rvalid : out std_logic;
    dsp_cav2_p2_if_amp_s_axi_awready : out std_logic;
    dsp_cav2_p2_if_amp_s_axi_wready : out std_logic;
    dsp_cav2_p2_if_amp_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_if_amp_s_axi_bvalid : out std_logic;
    dsp_cav2_p2_if_amp_s_axi_arready : out std_logic;
    dsp_cav2_p2_if_amp_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_if_amp_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_if_amp_s_axi_rvalid : out std_logic;
    dsp_cav2_p2_if_i_s_axi_awready : out std_logic;
    dsp_cav2_p2_if_i_s_axi_wready : out std_logic;
    dsp_cav2_p2_if_i_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_if_i_s_axi_bvalid : out std_logic;
    dsp_cav2_p2_if_i_s_axi_arready : out std_logic;
    dsp_cav2_p2_if_i_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_if_i_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_if_i_s_axi_rvalid : out std_logic;
    dsp_cav2_p2_if_phase_s_axi_awready : out std_logic;
    dsp_cav2_p2_if_phase_s_axi_wready : out std_logic;
    dsp_cav2_p2_if_phase_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_if_phase_s_axi_bvalid : out std_logic;
    dsp_cav2_p2_if_phase_s_axi_arready : out std_logic;
    dsp_cav2_p2_if_phase_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_if_phase_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_if_phase_s_axi_rvalid : out std_logic;
    dsp_cav2_p2_if_q_s_axi_awready : out std_logic;
    dsp_cav2_p2_if_q_s_axi_wready : out std_logic;
    dsp_cav2_p2_if_q_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_if_q_s_axi_bvalid : out std_logic;
    dsp_cav2_p2_if_q_s_axi_arready : out std_logic;
    dsp_cav2_p2_if_q_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_if_q_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_if_q_s_axi_rvalid : out std_logic;
    dsp_cav2_p2_integrated_i_s_axi_awready : out std_logic;
    dsp_cav2_p2_integrated_i_s_axi_wready : out std_logic;
    dsp_cav2_p2_integrated_i_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_integrated_i_s_axi_bvalid : out std_logic;
    dsp_cav2_p2_integrated_i_s_axi_arready : out std_logic;
    dsp_cav2_p2_integrated_i_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_integrated_i_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_integrated_i_s_axi_rvalid : out std_logic;
    dsp_cav2_p2_integrated_q_s_axi_awready : out std_logic;
    dsp_cav2_p2_integrated_q_s_axi_wready : out std_logic;
    dsp_cav2_p2_integrated_q_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_integrated_q_s_axi_bvalid : out std_logic;
    dsp_cav2_p2_integrated_q_s_axi_arready : out std_logic;
    dsp_cav2_p2_integrated_q_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_integrated_q_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_integrated_q_s_axi_rvalid : out std_logic;
    dsp_cav2_p2_phase_out_s_axi_awready : out std_logic;
    dsp_cav2_p2_phase_out_s_axi_wready : out std_logic;
    dsp_cav2_p2_phase_out_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_phase_out_s_axi_bvalid : out std_logic;
    dsp_cav2_p2_phase_out_s_axi_arready : out std_logic;
    dsp_cav2_p2_phase_out_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_phase_out_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_phase_out_s_axi_rvalid : out std_logic;
    dsp_cav2_p2_window_start_s_axi_awready : out std_logic;
    dsp_cav2_p2_window_start_s_axi_wready : out std_logic;
    dsp_cav2_p2_window_start_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_window_start_s_axi_bvalid : out std_logic;
    dsp_cav2_p2_window_start_s_axi_arready : out std_logic;
    dsp_cav2_p2_window_start_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_window_start_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_window_start_s_axi_rvalid : out std_logic;
    dsp_cav2_p2_window_stop_s_axi_awready : out std_logic;
    dsp_cav2_p2_window_stop_s_axi_wready : out std_logic;
    dsp_cav2_p2_window_stop_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_window_stop_s_axi_bvalid : out std_logic;
    dsp_cav2_p2_window_stop_s_axi_arready : out std_logic;
    dsp_cav2_p2_window_stop_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav2_p2_window_stop_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav2_p2_window_stop_s_axi_rvalid : out std_logic;
    dsp_ref_window_start_s_axi_awready : out std_logic;
    dsp_ref_window_start_s_axi_wready : out std_logic;
    dsp_ref_window_start_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_ref_window_start_s_axi_bvalid : out std_logic;
    dsp_ref_window_start_s_axi_arready : out std_logic;
    dsp_ref_window_start_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_ref_window_start_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_ref_window_start_s_axi_rvalid : out std_logic;
    dsp_ref_window_stop_s_axi_awready : out std_logic;
    dsp_ref_window_stop_s_axi_wready : out std_logic;
    dsp_ref_window_stop_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_ref_window_stop_s_axi_bvalid : out std_logic;
    dsp_ref_window_stop_s_axi_arready : out std_logic;
    dsp_ref_window_stop_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_ref_window_stop_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_ref_window_stop_s_axi_rvalid : out std_logic;
    dsp_rf_ref_amp_s_axi_awready : out std_logic;
    dsp_rf_ref_amp_s_axi_wready : out std_logic;
    dsp_rf_ref_amp_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_rf_ref_amp_s_axi_bvalid : out std_logic;
    dsp_rf_ref_amp_s_axi_arready : out std_logic;
    dsp_rf_ref_amp_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_rf_ref_amp_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_rf_ref_amp_s_axi_rvalid : out std_logic;
    dsp_rf_ref_chan_sel_s_axi_awready : out std_logic;
    dsp_rf_ref_chan_sel_s_axi_wready : out std_logic;
    dsp_rf_ref_chan_sel_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_rf_ref_chan_sel_s_axi_bvalid : out std_logic;
    dsp_rf_ref_chan_sel_s_axi_arready : out std_logic;
    dsp_rf_ref_chan_sel_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_rf_ref_chan_sel_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_rf_ref_chan_sel_s_axi_rvalid : out std_logic;
    dsp_rf_ref_i_s_axi_awready : out std_logic;
    dsp_rf_ref_i_s_axi_wready : out std_logic;
    dsp_rf_ref_i_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_rf_ref_i_s_axi_bvalid : out std_logic;
    dsp_rf_ref_i_s_axi_arready : out std_logic;
    dsp_rf_ref_i_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_rf_ref_i_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_rf_ref_i_s_axi_rvalid : out std_logic;
    dsp_rf_ref_phase_s_axi_awready : out std_logic;
    dsp_rf_ref_phase_s_axi_wready : out std_logic;
    dsp_rf_ref_phase_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_rf_ref_phase_s_axi_bvalid : out std_logic;
    dsp_rf_ref_phase_s_axi_arready : out std_logic;
    dsp_rf_ref_phase_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_rf_ref_phase_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_rf_ref_phase_s_axi_rvalid : out std_logic;
    dsp_rf_ref_q_s_axi_awready : out std_logic;
    dsp_rf_ref_q_s_axi_wready : out std_logic;
    dsp_rf_ref_q_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_rf_ref_q_s_axi_bvalid : out std_logic;
    dsp_rf_ref_q_s_axi_arready : out std_logic;
    dsp_rf_ref_q_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_rf_ref_q_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_rf_ref_q_s_axi_rvalid : out std_logic
  );
end example;
architecture structural of example is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "example,sysgen_core_2017_4,{,compilation=Synthesized Checkpoint,block_icon_display=Default,family=kintexu,part=xcku040,speed=-2-e,package=ffva1156,synthesis_language=vhdl,hdl_library=work,synthesis_strategy=Flow_PerfOptimized_high,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=1,ce_clr=0,clock_period=-10,system_simulink_period=-1,waveform_viewer=1,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=1e-05,abs=2,addsub=2,ceprobe=6,cmpy_v6_0=4,constant=47,dds_compiler_v6_0=2,delay=32,divide=2,dsamp=44,register=163,relational=20,}";
  signal scratchpad : std_logic_vector( 32-1 downto 0 );
  signal status_0 : std_logic_vector( 32-1 downto 0 );
  signal cav1_p1_amp_out : std_logic_vector( 18-1 downto 0 );
  signal cav1_p1_comparison_i : std_logic_vector( 18-1 downto 0 );
  signal cav1_p1_comparison_phase : std_logic_vector( 18-1 downto 0 );
  signal cav1_p1_comparison_q : std_logic_vector( 18-1 downto 0 );
  signal cav1_p1_dc_freq : std_logic_vector( 26-1 downto 0 );
  signal cav1_p1_dc_img : std_logic_vector( 29-1 downto 0 );
  signal cav1_p1_dc_real : std_logic_vector( 29-1 downto 0 );
  signal cav1_p1_if_amp : std_logic_vector( 18-1 downto 0 );
  signal cav1_p1_if_i : std_logic_vector( 18-1 downto 0 );
  signal cav1_p1_if_phase : std_logic_vector( 18-1 downto 0 );
  signal cav1_p1_if_q : std_logic_vector( 18-1 downto 0 );
  signal cav1_p1_integrated_i : std_logic_vector( 18-1 downto 0 );
  signal cav1_p1_integrated_q : std_logic_vector( 18-1 downto 0 );
  signal cav1_p1_phase_out : std_logic_vector( 18-1 downto 0 );
  signal cav1_nco_phase_adj : std_logic_vector( 29-1 downto 0 );
  signal cav1_nco_phase_reset : std_logic_vector( 1-1 downto 0 );
  signal cav1_p1_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal cav1_p1_window_start : std_logic_vector( 16-1 downto 0 );
  signal cav1_p1_window_stop : std_logic_vector( 16-1 downto 0 );
  signal cav1_p2_amp_out : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal cav1_p2_comparison_i : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_comparison_phase : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_comparison_q : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_dc_freq : std_logic_vector( 26-1 downto 0 );
  signal cav1_p2_dc_img : std_logic_vector( 29-1 downto 0 );
  signal cav1_p2_dc_real : std_logic_vector( 29-1 downto 0 );
  signal cav1_p2_if_amp : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_if_i : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_if_phase : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_if_q : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_if_amp : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_integrated_i : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_integrated_q : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_phase_out : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_window_start : std_logic_vector( 16-1 downto 0 );
  signal cav1_p2_window_stop : std_logic_vector( 16-1 downto 0 );
  signal cav1_p1_comparison_q_x0 : std_logic_vector( 18-1 downto 0 );
  signal cav2_nco_phase_adj : std_logic_vector( 29-1 downto 0 );
  signal cav2_nco_phase_reset : std_logic_vector( 1-1 downto 0 );
  signal cav2_p1_amp_out : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal cav2_p1_comparison_i : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_comparison_phase : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_dc_freq : std_logic_vector( 26-1 downto 0 );
  signal cav2_p1_dc_img : std_logic_vector( 29-1 downto 0 );
  signal cav2_p1_dc_real : std_logic_vector( 29-1 downto 0 );
  signal cav2_p1_if_amp : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_if_i : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_if_phase : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_if_q : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_integrated_i : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_integrated_q : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_phase_out : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_window_start : std_logic_vector( 16-1 downto 0 );
  signal cav2_p1_window_stop : std_logic_vector( 16-1 downto 0 );
  signal cav2_p2_amp_out : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal cav2_p2_comparison_i : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_comparison_phase : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_comparison_q : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_dc_freq : std_logic_vector( 26-1 downto 0 );
  signal cav2_p2_dc_img : std_logic_vector( 29-1 downto 0 );
  signal cav2_p2_dc_real : std_logic_vector( 29-1 downto 0 );
  signal cav2_p2_if_i : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_if_phase : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_if_q : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_integrated_i : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_integrated_q : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_phase_out : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_window_start : std_logic_vector( 16-1 downto 0 );
  signal cav2_p2_window_stop : std_logic_vector( 16-1 downto 0 );
  signal ref_window_start : std_logic_vector( 16-1 downto 0 );
  signal ref_window_stop : std_logic_vector( 16-1 downto 0 );
  signal rf_ref_amp : std_logic_vector( 18-1 downto 0 );
  signal rf_ref_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal rf_ref_i : std_logic_vector( 18-1 downto 0 );
  signal rf_ref_phase : std_logic_vector( 18-1 downto 0 );
  signal rf_ref_q : std_logic_vector( 18-1 downto 0 );
  signal clk_1_net_x0 : std_logic;
  signal ce_1_net_x0 : std_logic;
  signal clk_8_net : std_logic;
  signal ce_8_net : std_logic;
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
  signal clk_12_net : std_logic;
  signal ce_12_net : std_logic;
  signal axi_lite_clk_net : std_logic;
  signal dsp_clk_net_x1 : std_logic;
  signal dsp_clk_net_x3 : std_logic;
  signal dsp_clk_net_x2 : std_logic;
  signal dsp_clk_net_x0 : std_logic;
  signal dsp_clk_net : std_logic;
  signal dsp_clk_net_x44 : std_logic;
  signal dsp_clk_net_x60 : std_logic;
  signal dsp_clk_net_x59 : std_logic;
  signal dsp_clk_net_x56 : std_logic;
  signal dsp_clk_net_x53 : std_logic;
  signal dsp_clk_net_x51 : std_logic;
  signal dsp_clk_net_x49 : std_logic;
  signal dsp_clk_net_x46 : std_logic;
  signal dsp_clk_net_x45 : std_logic;
  signal dsp_clk_net_x47 : std_logic;
  signal dsp_clk_net_x48 : std_logic;
  signal dsp_clk_net_x50 : std_logic;
  signal dsp_clk_net_x52 : std_logic;
  signal dsp_clk_net_x54 : std_logic;
  signal dsp_clk_net_x55 : std_logic;
  signal dsp_clk_net_x57 : std_logic;
  signal dsp_clk_net_x61 : std_logic;
  signal dsp_clk_net_x58 : std_logic;
  signal dsp_clk_net_x25 : std_logic;
  signal dsp_clk_net_x22 : std_logic;
  signal dsp_clk_net_x21 : std_logic;
  signal dsp_clk_net_x35 : std_logic;
  signal dsp_clk_net_x20 : std_logic;
  signal dsp_clk_net_x18 : std_logic;
  signal dsp_clk_net_x17 : std_logic;
  signal dsp_clk_net_x5 : std_logic;
  signal dsp_clk_net_x14 : std_logic;
  signal dsp_clk_net_x12 : std_logic;
  signal dsp_clk_net_x11 : std_logic;
  signal dsp_clk_net_x9 : std_logic;
  signal dsp_clk_net_x7 : std_logic;
  signal dsp_clk_net_x6 : std_logic;
  signal dsp_clk_net_x43 : std_logic;
  signal dsp_clk_net_x42 : std_logic;
  signal dsp_clk_net_x40 : std_logic;
  signal dsp_clk_net_x39 : std_logic;
  signal dsp_clk_net_x37 : std_logic;
  signal dsp_clk_net_x36 : std_logic;
  signal dsp_clk_net_x34 : std_logic;
  signal dsp_clk_net_x33 : std_logic;
  signal dsp_clk_net_x31 : std_logic;
  signal dsp_clk_net_x30 : std_logic;
  signal dsp_clk_net_x24 : std_logic;
  signal dsp_clk_net_x23 : std_logic;
  signal dsp_clk_net_x28 : std_logic;
  signal dsp_clk_net_x27 : std_logic;
  signal dsp_clk_net_x26 : std_logic;
  signal dsp_clk_net_x29 : std_logic;
  signal dsp_clk_net_x32 : std_logic;
  signal dsp_clk_net_x38 : std_logic;
  signal dsp_clk_net_x41 : std_logic;
  signal dsp_clk_net_x15 : std_logic;
  signal dsp_clk_net_x8 : std_logic;
  signal dsp_clk_net_x10 : std_logic;
  signal dsp_clk_net_x13 : std_logic;
  signal dsp_clk_net_x16 : std_logic;
  signal dsp_clk_net_x19 : std_logic;
  signal dsp_clk_net_x4 : std_logic;
begin
  axi_lite_axi_lite_interface : entity work.axi_lite_axi_lite_interface 
  port map (
    status_0 => status_0,
    cav1_p1_amp_out => cav1_p1_amp_out,
    cav1_p1_comparison_i => cav1_p1_comparison_i,
    cav1_p1_comparison_phase => cav1_p1_comparison_phase,
    cav1_p1_comparison_q => cav1_p1_comparison_q,
    cav1_p1_dc_freq => cav1_p1_dc_freq,
    cav1_p1_dc_img => cav1_p1_dc_img,
    cav1_p1_dc_real => cav1_p1_dc_real,
    cav1_p1_if_amp => cav1_p1_if_amp,
    cav1_p1_if_i => cav1_p1_if_i,
    cav1_p1_if_phase => cav1_p1_if_phase,
    cav1_p1_if_q => cav1_p1_if_q,
    cav1_p1_integrated_i => cav1_p1_integrated_i,
    cav1_p1_integrated_q => cav1_p1_integrated_q,
    cav1_p1_phase_out => cav1_p1_phase_out,
    axi_lite_s_axi_awaddr => axi_lite_s_axi_awaddr,
    axi_lite_s_axi_awvalid => axi_lite_s_axi_awvalid,
    axi_lite_s_axi_wdata => axi_lite_s_axi_wdata,
    axi_lite_s_axi_wstrb => axi_lite_s_axi_wstrb,
    axi_lite_s_axi_wvalid => axi_lite_s_axi_wvalid,
    axi_lite_s_axi_bready => axi_lite_s_axi_bready,
    axi_lite_s_axi_araddr => axi_lite_s_axi_araddr,
    axi_lite_s_axi_arvalid => axi_lite_s_axi_arvalid,
    axi_lite_s_axi_rready => axi_lite_s_axi_rready,
    axi_lite_aresetn => axi_lite_aresetn,
    axi_lite_aclk => axi_lite_clk,
    scratchpad => scratchpad,
    axi_lite_s_axi_awready => axi_lite_s_axi_awready,
    axi_lite_s_axi_wready => axi_lite_s_axi_wready,
    axi_lite_s_axi_bresp => axi_lite_s_axi_bresp,
    axi_lite_s_axi_bvalid => axi_lite_s_axi_bvalid,
    axi_lite_s_axi_arready => axi_lite_s_axi_arready,
    axi_lite_s_axi_rdata => axi_lite_s_axi_rdata,
    axi_lite_s_axi_rresp => axi_lite_s_axi_rresp,
    axi_lite_s_axi_rvalid => axi_lite_s_axi_rvalid,
    axi_lite_clk => axi_lite_clk_net
  );
  dsp_cav1_nco_phase_adj_axi_lite_interface : entity work.dsp_cav1_nco_phase_adj_axi_lite_interface 
  port map (
    dsp_cav1_nco_phase_adj_s_axi_awaddr => dsp_cav1_nco_phase_adj_s_axi_awaddr,
    dsp_cav1_nco_phase_adj_s_axi_awvalid => dsp_cav1_nco_phase_adj_s_axi_awvalid,
    dsp_cav1_nco_phase_adj_s_axi_wdata => dsp_cav1_nco_phase_adj_s_axi_wdata,
    dsp_cav1_nco_phase_adj_s_axi_wstrb => dsp_cav1_nco_phase_adj_s_axi_wstrb,
    dsp_cav1_nco_phase_adj_s_axi_wvalid => dsp_cav1_nco_phase_adj_s_axi_wvalid,
    dsp_cav1_nco_phase_adj_s_axi_bready => dsp_cav1_nco_phase_adj_s_axi_bready,
    dsp_cav1_nco_phase_adj_s_axi_araddr => dsp_cav1_nco_phase_adj_s_axi_araddr,
    dsp_cav1_nco_phase_adj_s_axi_arvalid => dsp_cav1_nco_phase_adj_s_axi_arvalid,
    dsp_cav1_nco_phase_adj_s_axi_rready => dsp_cav1_nco_phase_adj_s_axi_rready,
    dsp_cav1_nco_phase_adj_aresetn => dsp_aresetn,
    dsp_cav1_nco_phase_adj_aclk => dsp_clk,
    cav2_nco_phase_adj => cav2_nco_phase_adj,
    cav1_nco_phase_adj => cav1_nco_phase_adj,
    dsp_cav1_nco_phase_adj_s_axi_awready => dsp_cav1_nco_phase_adj_s_axi_awready,
    dsp_cav1_nco_phase_adj_s_axi_wready => dsp_cav1_nco_phase_adj_s_axi_wready,
    dsp_cav1_nco_phase_adj_s_axi_bresp => dsp_cav1_nco_phase_adj_s_axi_bresp,
    dsp_cav1_nco_phase_adj_s_axi_bvalid => dsp_cav1_nco_phase_adj_s_axi_bvalid,
    dsp_cav1_nco_phase_adj_s_axi_arready => dsp_cav1_nco_phase_adj_s_axi_arready,
    dsp_cav1_nco_phase_adj_s_axi_rdata => dsp_cav1_nco_phase_adj_s_axi_rdata,
    dsp_cav1_nco_phase_adj_s_axi_rresp => dsp_cav1_nco_phase_adj_s_axi_rresp,
    dsp_cav1_nco_phase_adj_s_axi_rvalid => dsp_cav1_nco_phase_adj_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x1
  );
  dsp_cav1_nco_phase_reset_axi_lite_interface : entity work.dsp_cav1_nco_phase_reset_axi_lite_interface 
  port map (
    dsp_cav1_nco_phase_reset_s_axi_awaddr => dsp_cav1_nco_phase_reset_s_axi_awaddr,
    dsp_cav1_nco_phase_reset_s_axi_awvalid => dsp_cav1_nco_phase_reset_s_axi_awvalid,
    dsp_cav1_nco_phase_reset_s_axi_wdata => dsp_cav1_nco_phase_reset_s_axi_wdata,
    dsp_cav1_nco_phase_reset_s_axi_wstrb => dsp_cav1_nco_phase_reset_s_axi_wstrb,
    dsp_cav1_nco_phase_reset_s_axi_wvalid => dsp_cav1_nco_phase_reset_s_axi_wvalid,
    dsp_cav1_nco_phase_reset_s_axi_bready => dsp_cav1_nco_phase_reset_s_axi_bready,
    dsp_cav1_nco_phase_reset_s_axi_araddr => dsp_cav1_nco_phase_reset_s_axi_araddr,
    dsp_cav1_nco_phase_reset_s_axi_arvalid => dsp_cav1_nco_phase_reset_s_axi_arvalid,
    dsp_cav1_nco_phase_reset_s_axi_rready => dsp_cav1_nco_phase_reset_s_axi_rready,
    dsp_cav1_nco_phase_reset_aresetn => dsp_aresetn,
    dsp_cav1_nco_phase_reset_aclk => dsp_clk,
    cav2_nco_phase_reset => cav2_nco_phase_reset,
    cav1_nco_phase_reset => cav1_nco_phase_reset,
    dsp_cav1_nco_phase_reset_s_axi_awready => dsp_cav1_nco_phase_reset_s_axi_awready,
    dsp_cav1_nco_phase_reset_s_axi_wready => dsp_cav1_nco_phase_reset_s_axi_wready,
    dsp_cav1_nco_phase_reset_s_axi_bresp => dsp_cav1_nco_phase_reset_s_axi_bresp,
    dsp_cav1_nco_phase_reset_s_axi_bvalid => dsp_cav1_nco_phase_reset_s_axi_bvalid,
    dsp_cav1_nco_phase_reset_s_axi_arready => dsp_cav1_nco_phase_reset_s_axi_arready,
    dsp_cav1_nco_phase_reset_s_axi_rdata => dsp_cav1_nco_phase_reset_s_axi_rdata,
    dsp_cav1_nco_phase_reset_s_axi_rresp => dsp_cav1_nco_phase_reset_s_axi_rresp,
    dsp_cav1_nco_phase_reset_s_axi_rvalid => dsp_cav1_nco_phase_reset_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x3
  );
  dsp_cav1_p1_chan_sel_axi_lite_interface : entity work.dsp_cav1_p1_chan_sel_axi_lite_interface 
  port map (
    dsp_cav1_p1_chan_sel_s_axi_awaddr => dsp_cav1_p1_chan_sel_s_axi_awaddr,
    dsp_cav1_p1_chan_sel_s_axi_awvalid => dsp_cav1_p1_chan_sel_s_axi_awvalid,
    dsp_cav1_p1_chan_sel_s_axi_wdata => dsp_cav1_p1_chan_sel_s_axi_wdata,
    dsp_cav1_p1_chan_sel_s_axi_wstrb => dsp_cav1_p1_chan_sel_s_axi_wstrb,
    dsp_cav1_p1_chan_sel_s_axi_wvalid => dsp_cav1_p1_chan_sel_s_axi_wvalid,
    dsp_cav1_p1_chan_sel_s_axi_bready => dsp_cav1_p1_chan_sel_s_axi_bready,
    dsp_cav1_p1_chan_sel_s_axi_araddr => dsp_cav1_p1_chan_sel_s_axi_araddr,
    dsp_cav1_p1_chan_sel_s_axi_arvalid => dsp_cav1_p1_chan_sel_s_axi_arvalid,
    dsp_cav1_p1_chan_sel_s_axi_rready => dsp_cav1_p1_chan_sel_s_axi_rready,
    dsp_cav1_p1_chan_sel_aresetn => dsp_aresetn,
    dsp_cav1_p1_chan_sel_aclk => dsp_clk,
    cav1_p1_chan_sel => cav1_p1_chan_sel,
    dsp_cav1_p1_chan_sel_s_axi_awready => dsp_cav1_p1_chan_sel_s_axi_awready,
    dsp_cav1_p1_chan_sel_s_axi_wready => dsp_cav1_p1_chan_sel_s_axi_wready,
    dsp_cav1_p1_chan_sel_s_axi_bresp => dsp_cav1_p1_chan_sel_s_axi_bresp,
    dsp_cav1_p1_chan_sel_s_axi_bvalid => dsp_cav1_p1_chan_sel_s_axi_bvalid,
    dsp_cav1_p1_chan_sel_s_axi_arready => dsp_cav1_p1_chan_sel_s_axi_arready,
    dsp_cav1_p1_chan_sel_s_axi_rdata => dsp_cav1_p1_chan_sel_s_axi_rdata,
    dsp_cav1_p1_chan_sel_s_axi_rresp => dsp_cav1_p1_chan_sel_s_axi_rresp,
    dsp_cav1_p1_chan_sel_s_axi_rvalid => dsp_cav1_p1_chan_sel_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x2
  );
  dsp_cav1_p1_window_start_axi_lite_interface : entity work.dsp_cav1_p1_window_start_axi_lite_interface 
  port map (
    dsp_cav1_p1_window_start_s_axi_awaddr => dsp_cav1_p1_window_start_s_axi_awaddr,
    dsp_cav1_p1_window_start_s_axi_awvalid => dsp_cav1_p1_window_start_s_axi_awvalid,
    dsp_cav1_p1_window_start_s_axi_wdata => dsp_cav1_p1_window_start_s_axi_wdata,
    dsp_cav1_p1_window_start_s_axi_wstrb => dsp_cav1_p1_window_start_s_axi_wstrb,
    dsp_cav1_p1_window_start_s_axi_wvalid => dsp_cav1_p1_window_start_s_axi_wvalid,
    dsp_cav1_p1_window_start_s_axi_bready => dsp_cav1_p1_window_start_s_axi_bready,
    dsp_cav1_p1_window_start_s_axi_araddr => dsp_cav1_p1_window_start_s_axi_araddr,
    dsp_cav1_p1_window_start_s_axi_arvalid => dsp_cav1_p1_window_start_s_axi_arvalid,
    dsp_cav1_p1_window_start_s_axi_rready => dsp_cav1_p1_window_start_s_axi_rready,
    dsp_cav1_p1_window_start_aresetn => dsp_aresetn,
    dsp_cav1_p1_window_start_aclk => dsp_clk,
    cav1_p1_window_start => cav1_p1_window_start,
    dsp_cav1_p1_window_start_s_axi_awready => dsp_cav1_p1_window_start_s_axi_awready,
    dsp_cav1_p1_window_start_s_axi_wready => dsp_cav1_p1_window_start_s_axi_wready,
    dsp_cav1_p1_window_start_s_axi_bresp => dsp_cav1_p1_window_start_s_axi_bresp,
    dsp_cav1_p1_window_start_s_axi_bvalid => dsp_cav1_p1_window_start_s_axi_bvalid,
    dsp_cav1_p1_window_start_s_axi_arready => dsp_cav1_p1_window_start_s_axi_arready,
    dsp_cav1_p1_window_start_s_axi_rdata => dsp_cav1_p1_window_start_s_axi_rdata,
    dsp_cav1_p1_window_start_s_axi_rresp => dsp_cav1_p1_window_start_s_axi_rresp,
    dsp_cav1_p1_window_start_s_axi_rvalid => dsp_cav1_p1_window_start_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x0
  );
  dsp_cav1_p1_window_stop_axi_lite_interface : entity work.dsp_cav1_p1_window_stop_axi_lite_interface 
  port map (
    dsp_cav1_p1_window_stop_s_axi_awaddr => dsp_cav1_p1_window_stop_s_axi_awaddr,
    dsp_cav1_p1_window_stop_s_axi_awvalid => dsp_cav1_p1_window_stop_s_axi_awvalid,
    dsp_cav1_p1_window_stop_s_axi_wdata => dsp_cav1_p1_window_stop_s_axi_wdata,
    dsp_cav1_p1_window_stop_s_axi_wstrb => dsp_cav1_p1_window_stop_s_axi_wstrb,
    dsp_cav1_p1_window_stop_s_axi_wvalid => dsp_cav1_p1_window_stop_s_axi_wvalid,
    dsp_cav1_p1_window_stop_s_axi_bready => dsp_cav1_p1_window_stop_s_axi_bready,
    dsp_cav1_p1_window_stop_s_axi_araddr => dsp_cav1_p1_window_stop_s_axi_araddr,
    dsp_cav1_p1_window_stop_s_axi_arvalid => dsp_cav1_p1_window_stop_s_axi_arvalid,
    dsp_cav1_p1_window_stop_s_axi_rready => dsp_cav1_p1_window_stop_s_axi_rready,
    dsp_cav1_p1_window_stop_aresetn => dsp_aresetn,
    dsp_cav1_p1_window_stop_aclk => dsp_clk,
    cav1_p1_window_stop => cav1_p1_window_stop,
    dsp_cav1_p1_window_stop_s_axi_awready => dsp_cav1_p1_window_stop_s_axi_awready,
    dsp_cav1_p1_window_stop_s_axi_wready => dsp_cav1_p1_window_stop_s_axi_wready,
    dsp_cav1_p1_window_stop_s_axi_bresp => dsp_cav1_p1_window_stop_s_axi_bresp,
    dsp_cav1_p1_window_stop_s_axi_bvalid => dsp_cav1_p1_window_stop_s_axi_bvalid,
    dsp_cav1_p1_window_stop_s_axi_arready => dsp_cav1_p1_window_stop_s_axi_arready,
    dsp_cav1_p1_window_stop_s_axi_rdata => dsp_cav1_p1_window_stop_s_axi_rdata,
    dsp_cav1_p1_window_stop_s_axi_rresp => dsp_cav1_p1_window_stop_s_axi_rresp,
    dsp_cav1_p1_window_stop_s_axi_rvalid => dsp_cav1_p1_window_stop_s_axi_rvalid,
    dsp_clk => dsp_clk_net
  );
  dsp_cav1_p2_amp_out_axi_lite_interface : entity work.dsp_cav1_p2_amp_out_axi_lite_interface 
  port map (
    cav1_p2_amp_out => cav1_p2_amp_out,
    dsp_cav1_p2_amp_out_s_axi_awaddr => dsp_cav1_p2_amp_out_s_axi_awaddr,
    dsp_cav1_p2_amp_out_s_axi_awvalid => dsp_cav1_p2_amp_out_s_axi_awvalid,
    dsp_cav1_p2_amp_out_s_axi_wdata => dsp_cav1_p2_amp_out_s_axi_wdata,
    dsp_cav1_p2_amp_out_s_axi_wstrb => dsp_cav1_p2_amp_out_s_axi_wstrb,
    dsp_cav1_p2_amp_out_s_axi_wvalid => dsp_cav1_p2_amp_out_s_axi_wvalid,
    dsp_cav1_p2_amp_out_s_axi_bready => dsp_cav1_p2_amp_out_s_axi_bready,
    dsp_cav1_p2_amp_out_s_axi_araddr => dsp_cav1_p2_amp_out_s_axi_araddr,
    dsp_cav1_p2_amp_out_s_axi_arvalid => dsp_cav1_p2_amp_out_s_axi_arvalid,
    dsp_cav1_p2_amp_out_s_axi_rready => dsp_cav1_p2_amp_out_s_axi_rready,
    dsp_cav1_p2_amp_out_aresetn => dsp_aresetn,
    dsp_cav1_p2_amp_out_aclk => dsp_clk,
    dsp_cav1_p2_amp_out_s_axi_awready => dsp_cav1_p2_amp_out_s_axi_awready,
    dsp_cav1_p2_amp_out_s_axi_wready => dsp_cav1_p2_amp_out_s_axi_wready,
    dsp_cav1_p2_amp_out_s_axi_bresp => dsp_cav1_p2_amp_out_s_axi_bresp,
    dsp_cav1_p2_amp_out_s_axi_bvalid => dsp_cav1_p2_amp_out_s_axi_bvalid,
    dsp_cav1_p2_amp_out_s_axi_arready => dsp_cav1_p2_amp_out_s_axi_arready,
    dsp_cav1_p2_amp_out_s_axi_rdata => dsp_cav1_p2_amp_out_s_axi_rdata,
    dsp_cav1_p2_amp_out_s_axi_rresp => dsp_cav1_p2_amp_out_s_axi_rresp,
    dsp_cav1_p2_amp_out_s_axi_rvalid => dsp_cav1_p2_amp_out_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x44
  );
  dsp_cav1_p2_chan_sel_axi_lite_interface : entity work.dsp_cav1_p2_chan_sel_axi_lite_interface 
  port map (
    dsp_cav1_p2_chan_sel_s_axi_awaddr => dsp_cav1_p2_chan_sel_s_axi_awaddr,
    dsp_cav1_p2_chan_sel_s_axi_awvalid => dsp_cav1_p2_chan_sel_s_axi_awvalid,
    dsp_cav1_p2_chan_sel_s_axi_wdata => dsp_cav1_p2_chan_sel_s_axi_wdata,
    dsp_cav1_p2_chan_sel_s_axi_wstrb => dsp_cav1_p2_chan_sel_s_axi_wstrb,
    dsp_cav1_p2_chan_sel_s_axi_wvalid => dsp_cav1_p2_chan_sel_s_axi_wvalid,
    dsp_cav1_p2_chan_sel_s_axi_bready => dsp_cav1_p2_chan_sel_s_axi_bready,
    dsp_cav1_p2_chan_sel_s_axi_araddr => dsp_cav1_p2_chan_sel_s_axi_araddr,
    dsp_cav1_p2_chan_sel_s_axi_arvalid => dsp_cav1_p2_chan_sel_s_axi_arvalid,
    dsp_cav1_p2_chan_sel_s_axi_rready => dsp_cav1_p2_chan_sel_s_axi_rready,
    dsp_cav1_p2_chan_sel_aresetn => dsp_aresetn,
    dsp_cav1_p2_chan_sel_aclk => dsp_clk,
    cav1_p2_chan_sel => cav1_p2_chan_sel,
    dsp_cav1_p2_chan_sel_s_axi_awready => dsp_cav1_p2_chan_sel_s_axi_awready,
    dsp_cav1_p2_chan_sel_s_axi_wready => dsp_cav1_p2_chan_sel_s_axi_wready,
    dsp_cav1_p2_chan_sel_s_axi_bresp => dsp_cav1_p2_chan_sel_s_axi_bresp,
    dsp_cav1_p2_chan_sel_s_axi_bvalid => dsp_cav1_p2_chan_sel_s_axi_bvalid,
    dsp_cav1_p2_chan_sel_s_axi_arready => dsp_cav1_p2_chan_sel_s_axi_arready,
    dsp_cav1_p2_chan_sel_s_axi_rdata => dsp_cav1_p2_chan_sel_s_axi_rdata,
    dsp_cav1_p2_chan_sel_s_axi_rresp => dsp_cav1_p2_chan_sel_s_axi_rresp,
    dsp_cav1_p2_chan_sel_s_axi_rvalid => dsp_cav1_p2_chan_sel_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x60
  );
  dsp_cav1_p2_comparison_i_axi_lite_interface : entity work.dsp_cav1_p2_comparison_i_axi_lite_interface 
  port map (
    cav1_p2_comparison_i => cav1_p2_comparison_i,
    dsp_cav1_p2_comparison_i_s_axi_awaddr => dsp_cav1_p2_comparison_i_s_axi_awaddr,
    dsp_cav1_p2_comparison_i_s_axi_awvalid => dsp_cav1_p2_comparison_i_s_axi_awvalid,
    dsp_cav1_p2_comparison_i_s_axi_wdata => dsp_cav1_p2_comparison_i_s_axi_wdata,
    dsp_cav1_p2_comparison_i_s_axi_wstrb => dsp_cav1_p2_comparison_i_s_axi_wstrb,
    dsp_cav1_p2_comparison_i_s_axi_wvalid => dsp_cav1_p2_comparison_i_s_axi_wvalid,
    dsp_cav1_p2_comparison_i_s_axi_bready => dsp_cav1_p2_comparison_i_s_axi_bready,
    dsp_cav1_p2_comparison_i_s_axi_araddr => dsp_cav1_p2_comparison_i_s_axi_araddr,
    dsp_cav1_p2_comparison_i_s_axi_arvalid => dsp_cav1_p2_comparison_i_s_axi_arvalid,
    dsp_cav1_p2_comparison_i_s_axi_rready => dsp_cav1_p2_comparison_i_s_axi_rready,
    dsp_cav1_p2_comparison_i_aresetn => dsp_aresetn,
    dsp_cav1_p2_comparison_i_aclk => dsp_clk,
    dsp_cav1_p2_comparison_i_s_axi_awready => dsp_cav1_p2_comparison_i_s_axi_awready,
    dsp_cav1_p2_comparison_i_s_axi_wready => dsp_cav1_p2_comparison_i_s_axi_wready,
    dsp_cav1_p2_comparison_i_s_axi_bresp => dsp_cav1_p2_comparison_i_s_axi_bresp,
    dsp_cav1_p2_comparison_i_s_axi_bvalid => dsp_cav1_p2_comparison_i_s_axi_bvalid,
    dsp_cav1_p2_comparison_i_s_axi_arready => dsp_cav1_p2_comparison_i_s_axi_arready,
    dsp_cav1_p2_comparison_i_s_axi_rdata => dsp_cav1_p2_comparison_i_s_axi_rdata,
    dsp_cav1_p2_comparison_i_s_axi_rresp => dsp_cav1_p2_comparison_i_s_axi_rresp,
    dsp_cav1_p2_comparison_i_s_axi_rvalid => dsp_cav1_p2_comparison_i_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x59
  );
  dsp_cav1_p2_comparison_phase_axi_lite_interface : entity work.dsp_cav1_p2_comparison_phase_axi_lite_interface 
  port map (
    cav1_p2_comparison_phase => cav1_p2_comparison_phase,
    dsp_cav1_p2_comparison_phase_s_axi_awaddr => dsp_cav1_p2_comparison_phase_s_axi_awaddr,
    dsp_cav1_p2_comparison_phase_s_axi_awvalid => dsp_cav1_p2_comparison_phase_s_axi_awvalid,
    dsp_cav1_p2_comparison_phase_s_axi_wdata => dsp_cav1_p2_comparison_phase_s_axi_wdata,
    dsp_cav1_p2_comparison_phase_s_axi_wstrb => dsp_cav1_p2_comparison_phase_s_axi_wstrb,
    dsp_cav1_p2_comparison_phase_s_axi_wvalid => dsp_cav1_p2_comparison_phase_s_axi_wvalid,
    dsp_cav1_p2_comparison_phase_s_axi_bready => dsp_cav1_p2_comparison_phase_s_axi_bready,
    dsp_cav1_p2_comparison_phase_s_axi_araddr => dsp_cav1_p2_comparison_phase_s_axi_araddr,
    dsp_cav1_p2_comparison_phase_s_axi_arvalid => dsp_cav1_p2_comparison_phase_s_axi_arvalid,
    dsp_cav1_p2_comparison_phase_s_axi_rready => dsp_cav1_p2_comparison_phase_s_axi_rready,
    dsp_cav1_p2_comparison_phase_aresetn => dsp_aresetn,
    dsp_cav1_p2_comparison_phase_aclk => dsp_clk,
    dsp_cav1_p2_comparison_phase_s_axi_awready => dsp_cav1_p2_comparison_phase_s_axi_awready,
    dsp_cav1_p2_comparison_phase_s_axi_wready => dsp_cav1_p2_comparison_phase_s_axi_wready,
    dsp_cav1_p2_comparison_phase_s_axi_bresp => dsp_cav1_p2_comparison_phase_s_axi_bresp,
    dsp_cav1_p2_comparison_phase_s_axi_bvalid => dsp_cav1_p2_comparison_phase_s_axi_bvalid,
    dsp_cav1_p2_comparison_phase_s_axi_arready => dsp_cav1_p2_comparison_phase_s_axi_arready,
    dsp_cav1_p2_comparison_phase_s_axi_rdata => dsp_cav1_p2_comparison_phase_s_axi_rdata,
    dsp_cav1_p2_comparison_phase_s_axi_rresp => dsp_cav1_p2_comparison_phase_s_axi_rresp,
    dsp_cav1_p2_comparison_phase_s_axi_rvalid => dsp_cav1_p2_comparison_phase_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x56
  );
  dsp_cav1_p2_comparison_q_axi_lite_interface : entity work.dsp_cav1_p2_comparison_q_axi_lite_interface 
  port map (
    cav1_p2_comparison_q => cav1_p2_comparison_q,
    dsp_cav1_p2_comparison_q_s_axi_awaddr => dsp_cav1_p2_comparison_q_s_axi_awaddr,
    dsp_cav1_p2_comparison_q_s_axi_awvalid => dsp_cav1_p2_comparison_q_s_axi_awvalid,
    dsp_cav1_p2_comparison_q_s_axi_wdata => dsp_cav1_p2_comparison_q_s_axi_wdata,
    dsp_cav1_p2_comparison_q_s_axi_wstrb => dsp_cav1_p2_comparison_q_s_axi_wstrb,
    dsp_cav1_p2_comparison_q_s_axi_wvalid => dsp_cav1_p2_comparison_q_s_axi_wvalid,
    dsp_cav1_p2_comparison_q_s_axi_bready => dsp_cav1_p2_comparison_q_s_axi_bready,
    dsp_cav1_p2_comparison_q_s_axi_araddr => dsp_cav1_p2_comparison_q_s_axi_araddr,
    dsp_cav1_p2_comparison_q_s_axi_arvalid => dsp_cav1_p2_comparison_q_s_axi_arvalid,
    dsp_cav1_p2_comparison_q_s_axi_rready => dsp_cav1_p2_comparison_q_s_axi_rready,
    dsp_cav1_p2_comparison_q_aresetn => dsp_aresetn,
    dsp_cav1_p2_comparison_q_aclk => dsp_clk,
    dsp_cav1_p2_comparison_q_s_axi_awready => dsp_cav1_p2_comparison_q_s_axi_awready,
    dsp_cav1_p2_comparison_q_s_axi_wready => dsp_cav1_p2_comparison_q_s_axi_wready,
    dsp_cav1_p2_comparison_q_s_axi_bresp => dsp_cav1_p2_comparison_q_s_axi_bresp,
    dsp_cav1_p2_comparison_q_s_axi_bvalid => dsp_cav1_p2_comparison_q_s_axi_bvalid,
    dsp_cav1_p2_comparison_q_s_axi_arready => dsp_cav1_p2_comparison_q_s_axi_arready,
    dsp_cav1_p2_comparison_q_s_axi_rdata => dsp_cav1_p2_comparison_q_s_axi_rdata,
    dsp_cav1_p2_comparison_q_s_axi_rresp => dsp_cav1_p2_comparison_q_s_axi_rresp,
    dsp_cav1_p2_comparison_q_s_axi_rvalid => dsp_cav1_p2_comparison_q_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x53
  );
  dsp_cav1_p2_dc_freq_axi_lite_interface : entity work.dsp_cav1_p2_dc_freq_axi_lite_interface 
  port map (
    cav1_p2_dc_freq => cav1_p2_dc_freq,
    dsp_cav1_p2_dc_freq_s_axi_awaddr => dsp_cav1_p2_dc_freq_s_axi_awaddr,
    dsp_cav1_p2_dc_freq_s_axi_awvalid => dsp_cav1_p2_dc_freq_s_axi_awvalid,
    dsp_cav1_p2_dc_freq_s_axi_wdata => dsp_cav1_p2_dc_freq_s_axi_wdata,
    dsp_cav1_p2_dc_freq_s_axi_wstrb => dsp_cav1_p2_dc_freq_s_axi_wstrb,
    dsp_cav1_p2_dc_freq_s_axi_wvalid => dsp_cav1_p2_dc_freq_s_axi_wvalid,
    dsp_cav1_p2_dc_freq_s_axi_bready => dsp_cav1_p2_dc_freq_s_axi_bready,
    dsp_cav1_p2_dc_freq_s_axi_araddr => dsp_cav1_p2_dc_freq_s_axi_araddr,
    dsp_cav1_p2_dc_freq_s_axi_arvalid => dsp_cav1_p2_dc_freq_s_axi_arvalid,
    dsp_cav1_p2_dc_freq_s_axi_rready => dsp_cav1_p2_dc_freq_s_axi_rready,
    dsp_cav1_p2_dc_freq_aresetn => dsp_aresetn,
    dsp_cav1_p2_dc_freq_aclk => dsp_clk,
    dsp_cav1_p2_dc_freq_s_axi_awready => dsp_cav1_p2_dc_freq_s_axi_awready,
    dsp_cav1_p2_dc_freq_s_axi_wready => dsp_cav1_p2_dc_freq_s_axi_wready,
    dsp_cav1_p2_dc_freq_s_axi_bresp => dsp_cav1_p2_dc_freq_s_axi_bresp,
    dsp_cav1_p2_dc_freq_s_axi_bvalid => dsp_cav1_p2_dc_freq_s_axi_bvalid,
    dsp_cav1_p2_dc_freq_s_axi_arready => dsp_cav1_p2_dc_freq_s_axi_arready,
    dsp_cav1_p2_dc_freq_s_axi_rdata => dsp_cav1_p2_dc_freq_s_axi_rdata,
    dsp_cav1_p2_dc_freq_s_axi_rresp => dsp_cav1_p2_dc_freq_s_axi_rresp,
    dsp_cav1_p2_dc_freq_s_axi_rvalid => dsp_cav1_p2_dc_freq_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x51
  );
  dsp_cav1_p2_dc_img_axi_lite_interface : entity work.dsp_cav1_p2_dc_img_axi_lite_interface 
  port map (
    cav1_p2_dc_img => cav1_p2_dc_img,
    dsp_cav1_p2_dc_img_s_axi_awaddr => dsp_cav1_p2_dc_img_s_axi_awaddr,
    dsp_cav1_p2_dc_img_s_axi_awvalid => dsp_cav1_p2_dc_img_s_axi_awvalid,
    dsp_cav1_p2_dc_img_s_axi_wdata => dsp_cav1_p2_dc_img_s_axi_wdata,
    dsp_cav1_p2_dc_img_s_axi_wstrb => dsp_cav1_p2_dc_img_s_axi_wstrb,
    dsp_cav1_p2_dc_img_s_axi_wvalid => dsp_cav1_p2_dc_img_s_axi_wvalid,
    dsp_cav1_p2_dc_img_s_axi_bready => dsp_cav1_p2_dc_img_s_axi_bready,
    dsp_cav1_p2_dc_img_s_axi_araddr => dsp_cav1_p2_dc_img_s_axi_araddr,
    dsp_cav1_p2_dc_img_s_axi_arvalid => dsp_cav1_p2_dc_img_s_axi_arvalid,
    dsp_cav1_p2_dc_img_s_axi_rready => dsp_cav1_p2_dc_img_s_axi_rready,
    dsp_cav1_p2_dc_img_aresetn => dsp_aresetn,
    dsp_cav1_p2_dc_img_aclk => dsp_clk,
    dsp_cav1_p2_dc_img_s_axi_awready => dsp_cav1_p2_dc_img_s_axi_awready,
    dsp_cav1_p2_dc_img_s_axi_wready => dsp_cav1_p2_dc_img_s_axi_wready,
    dsp_cav1_p2_dc_img_s_axi_bresp => dsp_cav1_p2_dc_img_s_axi_bresp,
    dsp_cav1_p2_dc_img_s_axi_bvalid => dsp_cav1_p2_dc_img_s_axi_bvalid,
    dsp_cav1_p2_dc_img_s_axi_arready => dsp_cav1_p2_dc_img_s_axi_arready,
    dsp_cav1_p2_dc_img_s_axi_rdata => dsp_cav1_p2_dc_img_s_axi_rdata,
    dsp_cav1_p2_dc_img_s_axi_rresp => dsp_cav1_p2_dc_img_s_axi_rresp,
    dsp_cav1_p2_dc_img_s_axi_rvalid => dsp_cav1_p2_dc_img_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x49
  );
  dsp_cav1_p2_dc_real_axi_lite_interface : entity work.dsp_cav1_p2_dc_real_axi_lite_interface 
  port map (
    cav1_p2_dc_real => cav1_p2_dc_real,
    dsp_cav1_p2_dc_real_s_axi_awaddr => dsp_cav1_p2_dc_real_s_axi_awaddr,
    dsp_cav1_p2_dc_real_s_axi_awvalid => dsp_cav1_p2_dc_real_s_axi_awvalid,
    dsp_cav1_p2_dc_real_s_axi_wdata => dsp_cav1_p2_dc_real_s_axi_wdata,
    dsp_cav1_p2_dc_real_s_axi_wstrb => dsp_cav1_p2_dc_real_s_axi_wstrb,
    dsp_cav1_p2_dc_real_s_axi_wvalid => dsp_cav1_p2_dc_real_s_axi_wvalid,
    dsp_cav1_p2_dc_real_s_axi_bready => dsp_cav1_p2_dc_real_s_axi_bready,
    dsp_cav1_p2_dc_real_s_axi_araddr => dsp_cav1_p2_dc_real_s_axi_araddr,
    dsp_cav1_p2_dc_real_s_axi_arvalid => dsp_cav1_p2_dc_real_s_axi_arvalid,
    dsp_cav1_p2_dc_real_s_axi_rready => dsp_cav1_p2_dc_real_s_axi_rready,
    dsp_cav1_p2_dc_real_aresetn => dsp_aresetn,
    dsp_cav1_p2_dc_real_aclk => dsp_clk,
    dsp_cav1_p2_dc_real_s_axi_awready => dsp_cav1_p2_dc_real_s_axi_awready,
    dsp_cav1_p2_dc_real_s_axi_wready => dsp_cav1_p2_dc_real_s_axi_wready,
    dsp_cav1_p2_dc_real_s_axi_bresp => dsp_cav1_p2_dc_real_s_axi_bresp,
    dsp_cav1_p2_dc_real_s_axi_bvalid => dsp_cav1_p2_dc_real_s_axi_bvalid,
    dsp_cav1_p2_dc_real_s_axi_arready => dsp_cav1_p2_dc_real_s_axi_arready,
    dsp_cav1_p2_dc_real_s_axi_rdata => dsp_cav1_p2_dc_real_s_axi_rdata,
    dsp_cav1_p2_dc_real_s_axi_rresp => dsp_cav1_p2_dc_real_s_axi_rresp,
    dsp_cav1_p2_dc_real_s_axi_rvalid => dsp_cav1_p2_dc_real_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x46
  );
  dsp_cav1_p2_if_amp_axi_lite_interface : entity work.dsp_cav1_p2_if_amp_axi_lite_interface 
  port map (
    cav1_p2_if_amp => cav1_p2_if_amp,
    dsp_cav1_p2_if_amp_s_axi_awaddr => dsp_cav1_p2_if_amp_s_axi_awaddr,
    dsp_cav1_p2_if_amp_s_axi_awvalid => dsp_cav1_p2_if_amp_s_axi_awvalid,
    dsp_cav1_p2_if_amp_s_axi_wdata => dsp_cav1_p2_if_amp_s_axi_wdata,
    dsp_cav1_p2_if_amp_s_axi_wstrb => dsp_cav1_p2_if_amp_s_axi_wstrb,
    dsp_cav1_p2_if_amp_s_axi_wvalid => dsp_cav1_p2_if_amp_s_axi_wvalid,
    dsp_cav1_p2_if_amp_s_axi_bready => dsp_cav1_p2_if_amp_s_axi_bready,
    dsp_cav1_p2_if_amp_s_axi_araddr => dsp_cav1_p2_if_amp_s_axi_araddr,
    dsp_cav1_p2_if_amp_s_axi_arvalid => dsp_cav1_p2_if_amp_s_axi_arvalid,
    dsp_cav1_p2_if_amp_s_axi_rready => dsp_cav1_p2_if_amp_s_axi_rready,
    dsp_cav1_p2_if_amp_aresetn => dsp_aresetn,
    dsp_cav1_p2_if_amp_aclk => dsp_clk,
    dsp_cav1_p2_if_amp_s_axi_awready => dsp_cav1_p2_if_amp_s_axi_awready,
    dsp_cav1_p2_if_amp_s_axi_wready => dsp_cav1_p2_if_amp_s_axi_wready,
    dsp_cav1_p2_if_amp_s_axi_bresp => dsp_cav1_p2_if_amp_s_axi_bresp,
    dsp_cav1_p2_if_amp_s_axi_bvalid => dsp_cav1_p2_if_amp_s_axi_bvalid,
    dsp_cav1_p2_if_amp_s_axi_arready => dsp_cav1_p2_if_amp_s_axi_arready,
    dsp_cav1_p2_if_amp_s_axi_rdata => dsp_cav1_p2_if_amp_s_axi_rdata,
    dsp_cav1_p2_if_amp_s_axi_rresp => dsp_cav1_p2_if_amp_s_axi_rresp,
    dsp_cav1_p2_if_amp_s_axi_rvalid => dsp_cav1_p2_if_amp_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x45
  );
  dsp_cav1_p2_if_i_axi_lite_interface : entity work.dsp_cav1_p2_if_i_axi_lite_interface 
  port map (
    cav1_p2_if_i => cav1_p2_if_i,
    dsp_cav1_p2_if_i_s_axi_awaddr => dsp_cav1_p2_if_i_s_axi_awaddr,
    dsp_cav1_p2_if_i_s_axi_awvalid => dsp_cav1_p2_if_i_s_axi_awvalid,
    dsp_cav1_p2_if_i_s_axi_wdata => dsp_cav1_p2_if_i_s_axi_wdata,
    dsp_cav1_p2_if_i_s_axi_wstrb => dsp_cav1_p2_if_i_s_axi_wstrb,
    dsp_cav1_p2_if_i_s_axi_wvalid => dsp_cav1_p2_if_i_s_axi_wvalid,
    dsp_cav1_p2_if_i_s_axi_bready => dsp_cav1_p2_if_i_s_axi_bready,
    dsp_cav1_p2_if_i_s_axi_araddr => dsp_cav1_p2_if_i_s_axi_araddr,
    dsp_cav1_p2_if_i_s_axi_arvalid => dsp_cav1_p2_if_i_s_axi_arvalid,
    dsp_cav1_p2_if_i_s_axi_rready => dsp_cav1_p2_if_i_s_axi_rready,
    dsp_cav1_p2_if_i_aresetn => dsp_aresetn,
    dsp_cav1_p2_if_i_aclk => dsp_clk,
    dsp_cav1_p2_if_i_s_axi_awready => dsp_cav1_p2_if_i_s_axi_awready,
    dsp_cav1_p2_if_i_s_axi_wready => dsp_cav1_p2_if_i_s_axi_wready,
    dsp_cav1_p2_if_i_s_axi_bresp => dsp_cav1_p2_if_i_s_axi_bresp,
    dsp_cav1_p2_if_i_s_axi_bvalid => dsp_cav1_p2_if_i_s_axi_bvalid,
    dsp_cav1_p2_if_i_s_axi_arready => dsp_cav1_p2_if_i_s_axi_arready,
    dsp_cav1_p2_if_i_s_axi_rdata => dsp_cav1_p2_if_i_s_axi_rdata,
    dsp_cav1_p2_if_i_s_axi_rresp => dsp_cav1_p2_if_i_s_axi_rresp,
    dsp_cav1_p2_if_i_s_axi_rvalid => dsp_cav1_p2_if_i_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x47
  );
  dsp_cav1_p2_if_phase_axi_lite_interface : entity work.dsp_cav1_p2_if_phase_axi_lite_interface 
  port map (
    cav1_p2_if_phase => cav1_p2_if_phase,
    dsp_cav1_p2_if_phase_s_axi_awaddr => dsp_cav1_p2_if_phase_s_axi_awaddr,
    dsp_cav1_p2_if_phase_s_axi_awvalid => dsp_cav1_p2_if_phase_s_axi_awvalid,
    dsp_cav1_p2_if_phase_s_axi_wdata => dsp_cav1_p2_if_phase_s_axi_wdata,
    dsp_cav1_p2_if_phase_s_axi_wstrb => dsp_cav1_p2_if_phase_s_axi_wstrb,
    dsp_cav1_p2_if_phase_s_axi_wvalid => dsp_cav1_p2_if_phase_s_axi_wvalid,
    dsp_cav1_p2_if_phase_s_axi_bready => dsp_cav1_p2_if_phase_s_axi_bready,
    dsp_cav1_p2_if_phase_s_axi_araddr => dsp_cav1_p2_if_phase_s_axi_araddr,
    dsp_cav1_p2_if_phase_s_axi_arvalid => dsp_cav1_p2_if_phase_s_axi_arvalid,
    dsp_cav1_p2_if_phase_s_axi_rready => dsp_cav1_p2_if_phase_s_axi_rready,
    dsp_cav1_p2_if_phase_aresetn => dsp_aresetn,
    dsp_cav1_p2_if_phase_aclk => dsp_clk,
    dsp_cav1_p2_if_phase_s_axi_awready => dsp_cav1_p2_if_phase_s_axi_awready,
    dsp_cav1_p2_if_phase_s_axi_wready => dsp_cav1_p2_if_phase_s_axi_wready,
    dsp_cav1_p2_if_phase_s_axi_bresp => dsp_cav1_p2_if_phase_s_axi_bresp,
    dsp_cav1_p2_if_phase_s_axi_bvalid => dsp_cav1_p2_if_phase_s_axi_bvalid,
    dsp_cav1_p2_if_phase_s_axi_arready => dsp_cav1_p2_if_phase_s_axi_arready,
    dsp_cav1_p2_if_phase_s_axi_rdata => dsp_cav1_p2_if_phase_s_axi_rdata,
    dsp_cav1_p2_if_phase_s_axi_rresp => dsp_cav1_p2_if_phase_s_axi_rresp,
    dsp_cav1_p2_if_phase_s_axi_rvalid => dsp_cav1_p2_if_phase_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x48
  );
  dsp_cav1_p2_if_q_axi_lite_interface : entity work.dsp_cav1_p2_if_q_axi_lite_interface 
  port map (
    cav1_p2_if_q => cav1_p2_if_q,
    dsp_cav1_p2_if_q_s_axi_awaddr => dsp_cav1_p2_if_q_s_axi_awaddr,
    dsp_cav1_p2_if_q_s_axi_awvalid => dsp_cav1_p2_if_q_s_axi_awvalid,
    dsp_cav1_p2_if_q_s_axi_wdata => dsp_cav1_p2_if_q_s_axi_wdata,
    dsp_cav1_p2_if_q_s_axi_wstrb => dsp_cav1_p2_if_q_s_axi_wstrb,
    dsp_cav1_p2_if_q_s_axi_wvalid => dsp_cav1_p2_if_q_s_axi_wvalid,
    dsp_cav1_p2_if_q_s_axi_bready => dsp_cav1_p2_if_q_s_axi_bready,
    dsp_cav1_p2_if_q_s_axi_araddr => dsp_cav1_p2_if_q_s_axi_araddr,
    dsp_cav1_p2_if_q_s_axi_arvalid => dsp_cav1_p2_if_q_s_axi_arvalid,
    dsp_cav1_p2_if_q_s_axi_rready => dsp_cav1_p2_if_q_s_axi_rready,
    dsp_cav1_p2_if_q_aresetn => dsp_aresetn,
    dsp_cav1_p2_if_q_aclk => dsp_clk,
    dsp_cav1_p2_if_q_s_axi_awready => dsp_cav1_p2_if_q_s_axi_awready,
    dsp_cav1_p2_if_q_s_axi_wready => dsp_cav1_p2_if_q_s_axi_wready,
    dsp_cav1_p2_if_q_s_axi_bresp => dsp_cav1_p2_if_q_s_axi_bresp,
    dsp_cav1_p2_if_q_s_axi_bvalid => dsp_cav1_p2_if_q_s_axi_bvalid,
    dsp_cav1_p2_if_q_s_axi_arready => dsp_cav1_p2_if_q_s_axi_arready,
    dsp_cav1_p2_if_q_s_axi_rdata => dsp_cav1_p2_if_q_s_axi_rdata,
    dsp_cav1_p2_if_q_s_axi_rresp => dsp_cav1_p2_if_q_s_axi_rresp,
    dsp_cav1_p2_if_q_s_axi_rvalid => dsp_cav1_p2_if_q_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x50
  );
  dsp_cav1_p2_integrated_i_axi_lite_interface : entity work.dsp_cav1_p2_integrated_i_axi_lite_interface 
  port map (
    cav1_p2_integrated_i => cav1_p2_integrated_i,
    dsp_cav1_p2_integrated_i_s_axi_awaddr => dsp_cav1_p2_integrated_i_s_axi_awaddr,
    dsp_cav1_p2_integrated_i_s_axi_awvalid => dsp_cav1_p2_integrated_i_s_axi_awvalid,
    dsp_cav1_p2_integrated_i_s_axi_wdata => dsp_cav1_p2_integrated_i_s_axi_wdata,
    dsp_cav1_p2_integrated_i_s_axi_wstrb => dsp_cav1_p2_integrated_i_s_axi_wstrb,
    dsp_cav1_p2_integrated_i_s_axi_wvalid => dsp_cav1_p2_integrated_i_s_axi_wvalid,
    dsp_cav1_p2_integrated_i_s_axi_bready => dsp_cav1_p2_integrated_i_s_axi_bready,
    dsp_cav1_p2_integrated_i_s_axi_araddr => dsp_cav1_p2_integrated_i_s_axi_araddr,
    dsp_cav1_p2_integrated_i_s_axi_arvalid => dsp_cav1_p2_integrated_i_s_axi_arvalid,
    dsp_cav1_p2_integrated_i_s_axi_rready => dsp_cav1_p2_integrated_i_s_axi_rready,
    dsp_cav1_p2_integrated_i_aresetn => dsp_aresetn,
    dsp_cav1_p2_integrated_i_aclk => dsp_clk,
    dsp_cav1_p2_integrated_i_s_axi_awready => dsp_cav1_p2_integrated_i_s_axi_awready,
    dsp_cav1_p2_integrated_i_s_axi_wready => dsp_cav1_p2_integrated_i_s_axi_wready,
    dsp_cav1_p2_integrated_i_s_axi_bresp => dsp_cav1_p2_integrated_i_s_axi_bresp,
    dsp_cav1_p2_integrated_i_s_axi_bvalid => dsp_cav1_p2_integrated_i_s_axi_bvalid,
    dsp_cav1_p2_integrated_i_s_axi_arready => dsp_cav1_p2_integrated_i_s_axi_arready,
    dsp_cav1_p2_integrated_i_s_axi_rdata => dsp_cav1_p2_integrated_i_s_axi_rdata,
    dsp_cav1_p2_integrated_i_s_axi_rresp => dsp_cav1_p2_integrated_i_s_axi_rresp,
    dsp_cav1_p2_integrated_i_s_axi_rvalid => dsp_cav1_p2_integrated_i_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x52
  );
  dsp_cav1_p2_integrated_q_axi_lite_interface : entity work.dsp_cav1_p2_integrated_q_axi_lite_interface 
  port map (
    cav1_p2_integrated_q => cav1_p2_integrated_q,
    dsp_cav1_p2_integrated_q_s_axi_awaddr => dsp_cav1_p2_integrated_q_s_axi_awaddr,
    dsp_cav1_p2_integrated_q_s_axi_awvalid => dsp_cav1_p2_integrated_q_s_axi_awvalid,
    dsp_cav1_p2_integrated_q_s_axi_wdata => dsp_cav1_p2_integrated_q_s_axi_wdata,
    dsp_cav1_p2_integrated_q_s_axi_wstrb => dsp_cav1_p2_integrated_q_s_axi_wstrb,
    dsp_cav1_p2_integrated_q_s_axi_wvalid => dsp_cav1_p2_integrated_q_s_axi_wvalid,
    dsp_cav1_p2_integrated_q_s_axi_bready => dsp_cav1_p2_integrated_q_s_axi_bready,
    dsp_cav1_p2_integrated_q_s_axi_araddr => dsp_cav1_p2_integrated_q_s_axi_araddr,
    dsp_cav1_p2_integrated_q_s_axi_arvalid => dsp_cav1_p2_integrated_q_s_axi_arvalid,
    dsp_cav1_p2_integrated_q_s_axi_rready => dsp_cav1_p2_integrated_q_s_axi_rready,
    dsp_cav1_p2_integrated_q_aresetn => dsp_aresetn,
    dsp_cav1_p2_integrated_q_aclk => dsp_clk,
    dsp_cav1_p2_integrated_q_s_axi_awready => dsp_cav1_p2_integrated_q_s_axi_awready,
    dsp_cav1_p2_integrated_q_s_axi_wready => dsp_cav1_p2_integrated_q_s_axi_wready,
    dsp_cav1_p2_integrated_q_s_axi_bresp => dsp_cav1_p2_integrated_q_s_axi_bresp,
    dsp_cav1_p2_integrated_q_s_axi_bvalid => dsp_cav1_p2_integrated_q_s_axi_bvalid,
    dsp_cav1_p2_integrated_q_s_axi_arready => dsp_cav1_p2_integrated_q_s_axi_arready,
    dsp_cav1_p2_integrated_q_s_axi_rdata => dsp_cav1_p2_integrated_q_s_axi_rdata,
    dsp_cav1_p2_integrated_q_s_axi_rresp => dsp_cav1_p2_integrated_q_s_axi_rresp,
    dsp_cav1_p2_integrated_q_s_axi_rvalid => dsp_cav1_p2_integrated_q_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x54
  );
  dsp_cav1_p2_phase_out_axi_lite_interface : entity work.dsp_cav1_p2_phase_out_axi_lite_interface 
  port map (
    cav1_p2_phase_out => cav1_p2_phase_out,
    dsp_cav1_p2_phase_out_s_axi_awaddr => dsp_cav1_p2_phase_out_s_axi_awaddr,
    dsp_cav1_p2_phase_out_s_axi_awvalid => dsp_cav1_p2_phase_out_s_axi_awvalid,
    dsp_cav1_p2_phase_out_s_axi_wdata => dsp_cav1_p2_phase_out_s_axi_wdata,
    dsp_cav1_p2_phase_out_s_axi_wstrb => dsp_cav1_p2_phase_out_s_axi_wstrb,
    dsp_cav1_p2_phase_out_s_axi_wvalid => dsp_cav1_p2_phase_out_s_axi_wvalid,
    dsp_cav1_p2_phase_out_s_axi_bready => dsp_cav1_p2_phase_out_s_axi_bready,
    dsp_cav1_p2_phase_out_s_axi_araddr => dsp_cav1_p2_phase_out_s_axi_araddr,
    dsp_cav1_p2_phase_out_s_axi_arvalid => dsp_cav1_p2_phase_out_s_axi_arvalid,
    dsp_cav1_p2_phase_out_s_axi_rready => dsp_cav1_p2_phase_out_s_axi_rready,
    dsp_cav1_p2_phase_out_aresetn => dsp_aresetn,
    dsp_cav1_p2_phase_out_aclk => dsp_clk,
    dsp_cav1_p2_phase_out_s_axi_awready => dsp_cav1_p2_phase_out_s_axi_awready,
    dsp_cav1_p2_phase_out_s_axi_wready => dsp_cav1_p2_phase_out_s_axi_wready,
    dsp_cav1_p2_phase_out_s_axi_bresp => dsp_cav1_p2_phase_out_s_axi_bresp,
    dsp_cav1_p2_phase_out_s_axi_bvalid => dsp_cav1_p2_phase_out_s_axi_bvalid,
    dsp_cav1_p2_phase_out_s_axi_arready => dsp_cav1_p2_phase_out_s_axi_arready,
    dsp_cav1_p2_phase_out_s_axi_rdata => dsp_cav1_p2_phase_out_s_axi_rdata,
    dsp_cav1_p2_phase_out_s_axi_rresp => dsp_cav1_p2_phase_out_s_axi_rresp,
    dsp_cav1_p2_phase_out_s_axi_rvalid => dsp_cav1_p2_phase_out_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x55
  );
  dsp_cav1_p2_window_start_axi_lite_interface : entity work.dsp_cav1_p2_window_start_axi_lite_interface 
  port map (
    dsp_cav1_p2_window_start_s_axi_awaddr => dsp_cav1_p2_window_start_s_axi_awaddr,
    dsp_cav1_p2_window_start_s_axi_awvalid => dsp_cav1_p2_window_start_s_axi_awvalid,
    dsp_cav1_p2_window_start_s_axi_wdata => dsp_cav1_p2_window_start_s_axi_wdata,
    dsp_cav1_p2_window_start_s_axi_wstrb => dsp_cav1_p2_window_start_s_axi_wstrb,
    dsp_cav1_p2_window_start_s_axi_wvalid => dsp_cav1_p2_window_start_s_axi_wvalid,
    dsp_cav1_p2_window_start_s_axi_bready => dsp_cav1_p2_window_start_s_axi_bready,
    dsp_cav1_p2_window_start_s_axi_araddr => dsp_cav1_p2_window_start_s_axi_araddr,
    dsp_cav1_p2_window_start_s_axi_arvalid => dsp_cav1_p2_window_start_s_axi_arvalid,
    dsp_cav1_p2_window_start_s_axi_rready => dsp_cav1_p2_window_start_s_axi_rready,
    dsp_cav1_p2_window_start_aresetn => dsp_aresetn,
    dsp_cav1_p2_window_start_aclk => dsp_clk,
    cav1_p2_window_start => cav1_p2_window_start,
    dsp_cav1_p2_window_start_s_axi_awready => dsp_cav1_p2_window_start_s_axi_awready,
    dsp_cav1_p2_window_start_s_axi_wready => dsp_cav1_p2_window_start_s_axi_wready,
    dsp_cav1_p2_window_start_s_axi_bresp => dsp_cav1_p2_window_start_s_axi_bresp,
    dsp_cav1_p2_window_start_s_axi_bvalid => dsp_cav1_p2_window_start_s_axi_bvalid,
    dsp_cav1_p2_window_start_s_axi_arready => dsp_cav1_p2_window_start_s_axi_arready,
    dsp_cav1_p2_window_start_s_axi_rdata => dsp_cav1_p2_window_start_s_axi_rdata,
    dsp_cav1_p2_window_start_s_axi_rresp => dsp_cav1_p2_window_start_s_axi_rresp,
    dsp_cav1_p2_window_start_s_axi_rvalid => dsp_cav1_p2_window_start_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x57
  );
  dsp_cav1_p2_window_stop_axi_lite_interface : entity work.dsp_cav1_p2_window_stop_axi_lite_interface 
  port map (
    dsp_cav1_p2_window_stop_s_axi_awaddr => dsp_cav1_p2_window_stop_s_axi_awaddr,
    dsp_cav1_p2_window_stop_s_axi_awvalid => dsp_cav1_p2_window_stop_s_axi_awvalid,
    dsp_cav1_p2_window_stop_s_axi_wdata => dsp_cav1_p2_window_stop_s_axi_wdata,
    dsp_cav1_p2_window_stop_s_axi_wstrb => dsp_cav1_p2_window_stop_s_axi_wstrb,
    dsp_cav1_p2_window_stop_s_axi_wvalid => dsp_cav1_p2_window_stop_s_axi_wvalid,
    dsp_cav1_p2_window_stop_s_axi_bready => dsp_cav1_p2_window_stop_s_axi_bready,
    dsp_cav1_p2_window_stop_s_axi_araddr => dsp_cav1_p2_window_stop_s_axi_araddr,
    dsp_cav1_p2_window_stop_s_axi_arvalid => dsp_cav1_p2_window_stop_s_axi_arvalid,
    dsp_cav1_p2_window_stop_s_axi_rready => dsp_cav1_p2_window_stop_s_axi_rready,
    dsp_cav1_p2_window_stop_aresetn => dsp_aresetn,
    dsp_cav1_p2_window_stop_aclk => dsp_clk,
    cav1_p2_window_stop => cav1_p2_window_stop,
    dsp_cav1_p2_window_stop_s_axi_awready => dsp_cav1_p2_window_stop_s_axi_awready,
    dsp_cav1_p2_window_stop_s_axi_wready => dsp_cav1_p2_window_stop_s_axi_wready,
    dsp_cav1_p2_window_stop_s_axi_bresp => dsp_cav1_p2_window_stop_s_axi_bresp,
    dsp_cav1_p2_window_stop_s_axi_bvalid => dsp_cav1_p2_window_stop_s_axi_bvalid,
    dsp_cav1_p2_window_stop_s_axi_arready => dsp_cav1_p2_window_stop_s_axi_arready,
    dsp_cav1_p2_window_stop_s_axi_rdata => dsp_cav1_p2_window_stop_s_axi_rdata,
    dsp_cav1_p2_window_stop_s_axi_rresp => dsp_cav1_p2_window_stop_s_axi_rresp,
    dsp_cav1_p2_window_stop_s_axi_rvalid => dsp_cav1_p2_window_stop_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x61
  );
  dsp_cav2_p1_amp_out_axi_lite_interface : entity work.dsp_cav2_p1_amp_out_axi_lite_interface 
  port map (
    cav2_p1_amp_out => cav2_p1_amp_out,
    dsp_cav2_p1_amp_out_s_axi_awaddr => dsp_cav2_p1_amp_out_s_axi_awaddr,
    dsp_cav2_p1_amp_out_s_axi_awvalid => dsp_cav2_p1_amp_out_s_axi_awvalid,
    dsp_cav2_p1_amp_out_s_axi_wdata => dsp_cav2_p1_amp_out_s_axi_wdata,
    dsp_cav2_p1_amp_out_s_axi_wstrb => dsp_cav2_p1_amp_out_s_axi_wstrb,
    dsp_cav2_p1_amp_out_s_axi_wvalid => dsp_cav2_p1_amp_out_s_axi_wvalid,
    dsp_cav2_p1_amp_out_s_axi_bready => dsp_cav2_p1_amp_out_s_axi_bready,
    dsp_cav2_p1_amp_out_s_axi_araddr => dsp_cav2_p1_amp_out_s_axi_araddr,
    dsp_cav2_p1_amp_out_s_axi_arvalid => dsp_cav2_p1_amp_out_s_axi_arvalid,
    dsp_cav2_p1_amp_out_s_axi_rready => dsp_cav2_p1_amp_out_s_axi_rready,
    dsp_cav2_p1_amp_out_aresetn => dsp_aresetn,
    dsp_cav2_p1_amp_out_aclk => dsp_clk,
    dsp_cav2_p1_amp_out_s_axi_awready => dsp_cav2_p1_amp_out_s_axi_awready,
    dsp_cav2_p1_amp_out_s_axi_wready => dsp_cav2_p1_amp_out_s_axi_wready,
    dsp_cav2_p1_amp_out_s_axi_bresp => dsp_cav2_p1_amp_out_s_axi_bresp,
    dsp_cav2_p1_amp_out_s_axi_bvalid => dsp_cav2_p1_amp_out_s_axi_bvalid,
    dsp_cav2_p1_amp_out_s_axi_arready => dsp_cav2_p1_amp_out_s_axi_arready,
    dsp_cav2_p1_amp_out_s_axi_rdata => dsp_cav2_p1_amp_out_s_axi_rdata,
    dsp_cav2_p1_amp_out_s_axi_rresp => dsp_cav2_p1_amp_out_s_axi_rresp,
    dsp_cav2_p1_amp_out_s_axi_rvalid => dsp_cav2_p1_amp_out_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x58
  );
  dsp_cav2_p1_chan_sel_axi_lite_interface : entity work.dsp_cav2_p1_chan_sel_axi_lite_interface 
  port map (
    dsp_cav2_p1_chan_sel_s_axi_awaddr => dsp_cav2_p1_chan_sel_s_axi_awaddr,
    dsp_cav2_p1_chan_sel_s_axi_awvalid => dsp_cav2_p1_chan_sel_s_axi_awvalid,
    dsp_cav2_p1_chan_sel_s_axi_wdata => dsp_cav2_p1_chan_sel_s_axi_wdata,
    dsp_cav2_p1_chan_sel_s_axi_wstrb => dsp_cav2_p1_chan_sel_s_axi_wstrb,
    dsp_cav2_p1_chan_sel_s_axi_wvalid => dsp_cav2_p1_chan_sel_s_axi_wvalid,
    dsp_cav2_p1_chan_sel_s_axi_bready => dsp_cav2_p1_chan_sel_s_axi_bready,
    dsp_cav2_p1_chan_sel_s_axi_araddr => dsp_cav2_p1_chan_sel_s_axi_araddr,
    dsp_cav2_p1_chan_sel_s_axi_arvalid => dsp_cav2_p1_chan_sel_s_axi_arvalid,
    dsp_cav2_p1_chan_sel_s_axi_rready => dsp_cav2_p1_chan_sel_s_axi_rready,
    dsp_cav2_p1_chan_sel_aresetn => dsp_aresetn,
    dsp_cav2_p1_chan_sel_aclk => dsp_clk,
    cav2_p1_chan_sel => cav2_p1_chan_sel,
    dsp_cav2_p1_chan_sel_s_axi_awready => dsp_cav2_p1_chan_sel_s_axi_awready,
    dsp_cav2_p1_chan_sel_s_axi_wready => dsp_cav2_p1_chan_sel_s_axi_wready,
    dsp_cav2_p1_chan_sel_s_axi_bresp => dsp_cav2_p1_chan_sel_s_axi_bresp,
    dsp_cav2_p1_chan_sel_s_axi_bvalid => dsp_cav2_p1_chan_sel_s_axi_bvalid,
    dsp_cav2_p1_chan_sel_s_axi_arready => dsp_cav2_p1_chan_sel_s_axi_arready,
    dsp_cav2_p1_chan_sel_s_axi_rdata => dsp_cav2_p1_chan_sel_s_axi_rdata,
    dsp_cav2_p1_chan_sel_s_axi_rresp => dsp_cav2_p1_chan_sel_s_axi_rresp,
    dsp_cav2_p1_chan_sel_s_axi_rvalid => dsp_cav2_p1_chan_sel_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x24
  );
  dsp_cav2_p1_comparison_i_axi_lite_interface : entity work.dsp_cav2_p1_comparison_i_axi_lite_interface 
  port map (
    cav2_p1_comparison_i => cav2_p1_comparison_i,
    dsp_cav2_p1_comparison_i_s_axi_awaddr => dsp_cav2_p1_comparison_i_s_axi_awaddr,
    dsp_cav2_p1_comparison_i_s_axi_awvalid => dsp_cav2_p1_comparison_i_s_axi_awvalid,
    dsp_cav2_p1_comparison_i_s_axi_wdata => dsp_cav2_p1_comparison_i_s_axi_wdata,
    dsp_cav2_p1_comparison_i_s_axi_wstrb => dsp_cav2_p1_comparison_i_s_axi_wstrb,
    dsp_cav2_p1_comparison_i_s_axi_wvalid => dsp_cav2_p1_comparison_i_s_axi_wvalid,
    dsp_cav2_p1_comparison_i_s_axi_bready => dsp_cav2_p1_comparison_i_s_axi_bready,
    dsp_cav2_p1_comparison_i_s_axi_araddr => dsp_cav2_p1_comparison_i_s_axi_araddr,
    dsp_cav2_p1_comparison_i_s_axi_arvalid => dsp_cav2_p1_comparison_i_s_axi_arvalid,
    dsp_cav2_p1_comparison_i_s_axi_rready => dsp_cav2_p1_comparison_i_s_axi_rready,
    dsp_cav2_p1_comparison_i_aresetn => dsp_aresetn,
    dsp_cav2_p1_comparison_i_aclk => dsp_clk,
    dsp_cav2_p1_comparison_i_s_axi_awready => dsp_cav2_p1_comparison_i_s_axi_awready,
    dsp_cav2_p1_comparison_i_s_axi_wready => dsp_cav2_p1_comparison_i_s_axi_wready,
    dsp_cav2_p1_comparison_i_s_axi_bresp => dsp_cav2_p1_comparison_i_s_axi_bresp,
    dsp_cav2_p1_comparison_i_s_axi_bvalid => dsp_cav2_p1_comparison_i_s_axi_bvalid,
    dsp_cav2_p1_comparison_i_s_axi_arready => dsp_cav2_p1_comparison_i_s_axi_arready,
    dsp_cav2_p1_comparison_i_s_axi_rdata => dsp_cav2_p1_comparison_i_s_axi_rdata,
    dsp_cav2_p1_comparison_i_s_axi_rresp => dsp_cav2_p1_comparison_i_s_axi_rresp,
    dsp_cav2_p1_comparison_i_s_axi_rvalid => dsp_cav2_p1_comparison_i_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x23
  );
  dsp_cav2_p1_comparison_phase_axi_lite_interface : entity work.dsp_cav2_p1_comparison_phase_axi_lite_interface 
  port map (
    cav2_p1_comparison_phase => cav2_p1_comparison_phase,
    dsp_cav2_p1_comparison_phase_s_axi_awaddr => dsp_cav2_p1_comparison_phase_s_axi_awaddr,
    dsp_cav2_p1_comparison_phase_s_axi_awvalid => dsp_cav2_p1_comparison_phase_s_axi_awvalid,
    dsp_cav2_p1_comparison_phase_s_axi_wdata => dsp_cav2_p1_comparison_phase_s_axi_wdata,
    dsp_cav2_p1_comparison_phase_s_axi_wstrb => dsp_cav2_p1_comparison_phase_s_axi_wstrb,
    dsp_cav2_p1_comparison_phase_s_axi_wvalid => dsp_cav2_p1_comparison_phase_s_axi_wvalid,
    dsp_cav2_p1_comparison_phase_s_axi_bready => dsp_cav2_p1_comparison_phase_s_axi_bready,
    dsp_cav2_p1_comparison_phase_s_axi_araddr => dsp_cav2_p1_comparison_phase_s_axi_araddr,
    dsp_cav2_p1_comparison_phase_s_axi_arvalid => dsp_cav2_p1_comparison_phase_s_axi_arvalid,
    dsp_cav2_p1_comparison_phase_s_axi_rready => dsp_cav2_p1_comparison_phase_s_axi_rready,
    dsp_cav2_p1_comparison_phase_aresetn => dsp_aresetn,
    dsp_cav2_p1_comparison_phase_aclk => dsp_clk,
    dsp_cav2_p1_comparison_phase_s_axi_awready => dsp_cav2_p1_comparison_phase_s_axi_awready,
    dsp_cav2_p1_comparison_phase_s_axi_wready => dsp_cav2_p1_comparison_phase_s_axi_wready,
    dsp_cav2_p1_comparison_phase_s_axi_bresp => dsp_cav2_p1_comparison_phase_s_axi_bresp,
    dsp_cav2_p1_comparison_phase_s_axi_bvalid => dsp_cav2_p1_comparison_phase_s_axi_bvalid,
    dsp_cav2_p1_comparison_phase_s_axi_arready => dsp_cav2_p1_comparison_phase_s_axi_arready,
    dsp_cav2_p1_comparison_phase_s_axi_rdata => dsp_cav2_p1_comparison_phase_s_axi_rdata,
    dsp_cav2_p1_comparison_phase_s_axi_rresp => dsp_cav2_p1_comparison_phase_s_axi_rresp,
    dsp_cav2_p1_comparison_phase_s_axi_rvalid => dsp_cav2_p1_comparison_phase_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x22
  );
  dsp_cav2_p1_comparison_q_axi_lite_interface : entity work.dsp_cav2_p1_comparison_q_axi_lite_interface 
  port map (
    cav1_p1_comparison_q_x0 => cav1_p1_comparison_q_x0,
    dsp_cav2_p1_comparison_q_s_axi_awaddr => dsp_cav2_p1_comparison_q_s_axi_awaddr,
    dsp_cav2_p1_comparison_q_s_axi_awvalid => dsp_cav2_p1_comparison_q_s_axi_awvalid,
    dsp_cav2_p1_comparison_q_s_axi_wdata => dsp_cav2_p1_comparison_q_s_axi_wdata,
    dsp_cav2_p1_comparison_q_s_axi_wstrb => dsp_cav2_p1_comparison_q_s_axi_wstrb,
    dsp_cav2_p1_comparison_q_s_axi_wvalid => dsp_cav2_p1_comparison_q_s_axi_wvalid,
    dsp_cav2_p1_comparison_q_s_axi_bready => dsp_cav2_p1_comparison_q_s_axi_bready,
    dsp_cav2_p1_comparison_q_s_axi_araddr => dsp_cav2_p1_comparison_q_s_axi_araddr,
    dsp_cav2_p1_comparison_q_s_axi_arvalid => dsp_cav2_p1_comparison_q_s_axi_arvalid,
    dsp_cav2_p1_comparison_q_s_axi_rready => dsp_cav2_p1_comparison_q_s_axi_rready,
    dsp_cav2_p1_comparison_q_aresetn => dsp_aresetn,
    dsp_cav2_p1_comparison_q_aclk => dsp_clk,
    dsp_cav2_p1_comparison_q_s_axi_awready => dsp_cav2_p1_comparison_q_s_axi_awready,
    dsp_cav2_p1_comparison_q_s_axi_wready => dsp_cav2_p1_comparison_q_s_axi_wready,
    dsp_cav2_p1_comparison_q_s_axi_bresp => dsp_cav2_p1_comparison_q_s_axi_bresp,
    dsp_cav2_p1_comparison_q_s_axi_bvalid => dsp_cav2_p1_comparison_q_s_axi_bvalid,
    dsp_cav2_p1_comparison_q_s_axi_arready => dsp_cav2_p1_comparison_q_s_axi_arready,
    dsp_cav2_p1_comparison_q_s_axi_rdata => dsp_cav2_p1_comparison_q_s_axi_rdata,
    dsp_cav2_p1_comparison_q_s_axi_rresp => dsp_cav2_p1_comparison_q_s_axi_rresp,
    dsp_cav2_p1_comparison_q_s_axi_rvalid => dsp_cav2_p1_comparison_q_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x21
  );
  dsp_cav2_p1_dc_freq_axi_lite_interface : entity work.dsp_cav2_p1_dc_freq_axi_lite_interface 
  port map (
    cav2_p1_dc_freq => cav2_p1_dc_freq,
    dsp_cav2_p1_dc_freq_s_axi_awaddr => dsp_cav2_p1_dc_freq_s_axi_awaddr,
    dsp_cav2_p1_dc_freq_s_axi_awvalid => dsp_cav2_p1_dc_freq_s_axi_awvalid,
    dsp_cav2_p1_dc_freq_s_axi_wdata => dsp_cav2_p1_dc_freq_s_axi_wdata,
    dsp_cav2_p1_dc_freq_s_axi_wstrb => dsp_cav2_p1_dc_freq_s_axi_wstrb,
    dsp_cav2_p1_dc_freq_s_axi_wvalid => dsp_cav2_p1_dc_freq_s_axi_wvalid,
    dsp_cav2_p1_dc_freq_s_axi_bready => dsp_cav2_p1_dc_freq_s_axi_bready,
    dsp_cav2_p1_dc_freq_s_axi_araddr => dsp_cav2_p1_dc_freq_s_axi_araddr,
    dsp_cav2_p1_dc_freq_s_axi_arvalid => dsp_cav2_p1_dc_freq_s_axi_arvalid,
    dsp_cav2_p1_dc_freq_s_axi_rready => dsp_cav2_p1_dc_freq_s_axi_rready,
    dsp_cav2_p1_dc_freq_aresetn => dsp_aresetn,
    dsp_cav2_p1_dc_freq_aclk => dsp_clk,
    dsp_cav2_p1_dc_freq_s_axi_awready => dsp_cav2_p1_dc_freq_s_axi_awready,
    dsp_cav2_p1_dc_freq_s_axi_wready => dsp_cav2_p1_dc_freq_s_axi_wready,
    dsp_cav2_p1_dc_freq_s_axi_bresp => dsp_cav2_p1_dc_freq_s_axi_bresp,
    dsp_cav2_p1_dc_freq_s_axi_bvalid => dsp_cav2_p1_dc_freq_s_axi_bvalid,
    dsp_cav2_p1_dc_freq_s_axi_arready => dsp_cav2_p1_dc_freq_s_axi_arready,
    dsp_cav2_p1_dc_freq_s_axi_rdata => dsp_cav2_p1_dc_freq_s_axi_rdata,
    dsp_cav2_p1_dc_freq_s_axi_rresp => dsp_cav2_p1_dc_freq_s_axi_rresp,
    dsp_cav2_p1_dc_freq_s_axi_rvalid => dsp_cav2_p1_dc_freq_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x35
  );
  dsp_cav2_p1_dc_img_axi_lite_interface : entity work.dsp_cav2_p1_dc_img_axi_lite_interface 
  port map (
    cav2_p1_dc_img => cav2_p1_dc_img,
    dsp_cav2_p1_dc_img_s_axi_awaddr => dsp_cav2_p1_dc_img_s_axi_awaddr,
    dsp_cav2_p1_dc_img_s_axi_awvalid => dsp_cav2_p1_dc_img_s_axi_awvalid,
    dsp_cav2_p1_dc_img_s_axi_wdata => dsp_cav2_p1_dc_img_s_axi_wdata,
    dsp_cav2_p1_dc_img_s_axi_wstrb => dsp_cav2_p1_dc_img_s_axi_wstrb,
    dsp_cav2_p1_dc_img_s_axi_wvalid => dsp_cav2_p1_dc_img_s_axi_wvalid,
    dsp_cav2_p1_dc_img_s_axi_bready => dsp_cav2_p1_dc_img_s_axi_bready,
    dsp_cav2_p1_dc_img_s_axi_araddr => dsp_cav2_p1_dc_img_s_axi_araddr,
    dsp_cav2_p1_dc_img_s_axi_arvalid => dsp_cav2_p1_dc_img_s_axi_arvalid,
    dsp_cav2_p1_dc_img_s_axi_rready => dsp_cav2_p1_dc_img_s_axi_rready,
    dsp_cav2_p1_dc_img_aresetn => dsp_aresetn,
    dsp_cav2_p1_dc_img_aclk => dsp_clk,
    dsp_cav2_p1_dc_img_s_axi_awready => dsp_cav2_p1_dc_img_s_axi_awready,
    dsp_cav2_p1_dc_img_s_axi_wready => dsp_cav2_p1_dc_img_s_axi_wready,
    dsp_cav2_p1_dc_img_s_axi_bresp => dsp_cav2_p1_dc_img_s_axi_bresp,
    dsp_cav2_p1_dc_img_s_axi_bvalid => dsp_cav2_p1_dc_img_s_axi_bvalid,
    dsp_cav2_p1_dc_img_s_axi_arready => dsp_cav2_p1_dc_img_s_axi_arready,
    dsp_cav2_p1_dc_img_s_axi_rdata => dsp_cav2_p1_dc_img_s_axi_rdata,
    dsp_cav2_p1_dc_img_s_axi_rresp => dsp_cav2_p1_dc_img_s_axi_rresp,
    dsp_cav2_p1_dc_img_s_axi_rvalid => dsp_cav2_p1_dc_img_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x20
  );
  dsp_cav2_p1_dc_real_axi_lite_interface : entity work.dsp_cav2_p1_dc_real_axi_lite_interface 
  port map (
    cav2_p1_dc_real => cav2_p1_dc_real,
    dsp_cav2_p1_dc_real_s_axi_awaddr => dsp_cav2_p1_dc_real_s_axi_awaddr,
    dsp_cav2_p1_dc_real_s_axi_awvalid => dsp_cav2_p1_dc_real_s_axi_awvalid,
    dsp_cav2_p1_dc_real_s_axi_wdata => dsp_cav2_p1_dc_real_s_axi_wdata,
    dsp_cav2_p1_dc_real_s_axi_wstrb => dsp_cav2_p1_dc_real_s_axi_wstrb,
    dsp_cav2_p1_dc_real_s_axi_wvalid => dsp_cav2_p1_dc_real_s_axi_wvalid,
    dsp_cav2_p1_dc_real_s_axi_bready => dsp_cav2_p1_dc_real_s_axi_bready,
    dsp_cav2_p1_dc_real_s_axi_araddr => dsp_cav2_p1_dc_real_s_axi_araddr,
    dsp_cav2_p1_dc_real_s_axi_arvalid => dsp_cav2_p1_dc_real_s_axi_arvalid,
    dsp_cav2_p1_dc_real_s_axi_rready => dsp_cav2_p1_dc_real_s_axi_rready,
    dsp_cav2_p1_dc_real_aresetn => dsp_aresetn,
    dsp_cav2_p1_dc_real_aclk => dsp_clk,
    dsp_cav2_p1_dc_real_s_axi_awready => dsp_cav2_p1_dc_real_s_axi_awready,
    dsp_cav2_p1_dc_real_s_axi_wready => dsp_cav2_p1_dc_real_s_axi_wready,
    dsp_cav2_p1_dc_real_s_axi_bresp => dsp_cav2_p1_dc_real_s_axi_bresp,
    dsp_cav2_p1_dc_real_s_axi_bvalid => dsp_cav2_p1_dc_real_s_axi_bvalid,
    dsp_cav2_p1_dc_real_s_axi_arready => dsp_cav2_p1_dc_real_s_axi_arready,
    dsp_cav2_p1_dc_real_s_axi_rdata => dsp_cav2_p1_dc_real_s_axi_rdata,
    dsp_cav2_p1_dc_real_s_axi_rresp => dsp_cav2_p1_dc_real_s_axi_rresp,
    dsp_cav2_p1_dc_real_s_axi_rvalid => dsp_cav2_p1_dc_real_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x18
  );
  dsp_cav2_p1_if_amp_axi_lite_interface : entity work.dsp_cav2_p1_if_amp_axi_lite_interface 
  port map (
    cav2_p1_if_amp => cav2_p1_if_amp,
    dsp_cav2_p1_if_amp_s_axi_awaddr => dsp_cav2_p1_if_amp_s_axi_awaddr,
    dsp_cav2_p1_if_amp_s_axi_awvalid => dsp_cav2_p1_if_amp_s_axi_awvalid,
    dsp_cav2_p1_if_amp_s_axi_wdata => dsp_cav2_p1_if_amp_s_axi_wdata,
    dsp_cav2_p1_if_amp_s_axi_wstrb => dsp_cav2_p1_if_amp_s_axi_wstrb,
    dsp_cav2_p1_if_amp_s_axi_wvalid => dsp_cav2_p1_if_amp_s_axi_wvalid,
    dsp_cav2_p1_if_amp_s_axi_bready => dsp_cav2_p1_if_amp_s_axi_bready,
    dsp_cav2_p1_if_amp_s_axi_araddr => dsp_cav2_p1_if_amp_s_axi_araddr,
    dsp_cav2_p1_if_amp_s_axi_arvalid => dsp_cav2_p1_if_amp_s_axi_arvalid,
    dsp_cav2_p1_if_amp_s_axi_rready => dsp_cav2_p1_if_amp_s_axi_rready,
    dsp_cav2_p1_if_amp_aresetn => dsp_aresetn,
    dsp_cav2_p1_if_amp_aclk => dsp_clk,
    dsp_cav2_p1_if_amp_s_axi_awready => dsp_cav2_p1_if_amp_s_axi_awready,
    dsp_cav2_p1_if_amp_s_axi_wready => dsp_cav2_p1_if_amp_s_axi_wready,
    dsp_cav2_p1_if_amp_s_axi_bresp => dsp_cav2_p1_if_amp_s_axi_bresp,
    dsp_cav2_p1_if_amp_s_axi_bvalid => dsp_cav2_p1_if_amp_s_axi_bvalid,
    dsp_cav2_p1_if_amp_s_axi_arready => dsp_cav2_p1_if_amp_s_axi_arready,
    dsp_cav2_p1_if_amp_s_axi_rdata => dsp_cav2_p1_if_amp_s_axi_rdata,
    dsp_cav2_p1_if_amp_s_axi_rresp => dsp_cav2_p1_if_amp_s_axi_rresp,
    dsp_cav2_p1_if_amp_s_axi_rvalid => dsp_cav2_p1_if_amp_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x17
  );
  dsp_cav2_p1_if_i_axi_lite_interface : entity work.dsp_cav2_p1_if_i_axi_lite_interface 
  port map (
    cav2_p1_if_i => cav2_p1_if_i,
    dsp_cav2_p1_if_i_s_axi_awaddr => dsp_cav2_p1_if_i_s_axi_awaddr,
    dsp_cav2_p1_if_i_s_axi_awvalid => dsp_cav2_p1_if_i_s_axi_awvalid,
    dsp_cav2_p1_if_i_s_axi_wdata => dsp_cav2_p1_if_i_s_axi_wdata,
    dsp_cav2_p1_if_i_s_axi_wstrb => dsp_cav2_p1_if_i_s_axi_wstrb,
    dsp_cav2_p1_if_i_s_axi_wvalid => dsp_cav2_p1_if_i_s_axi_wvalid,
    dsp_cav2_p1_if_i_s_axi_bready => dsp_cav2_p1_if_i_s_axi_bready,
    dsp_cav2_p1_if_i_s_axi_araddr => dsp_cav2_p1_if_i_s_axi_araddr,
    dsp_cav2_p1_if_i_s_axi_arvalid => dsp_cav2_p1_if_i_s_axi_arvalid,
    dsp_cav2_p1_if_i_s_axi_rready => dsp_cav2_p1_if_i_s_axi_rready,
    dsp_cav2_p1_if_i_aresetn => dsp_aresetn,
    dsp_cav2_p1_if_i_aclk => dsp_clk,
    dsp_cav2_p1_if_i_s_axi_awready => dsp_cav2_p1_if_i_s_axi_awready,
    dsp_cav2_p1_if_i_s_axi_wready => dsp_cav2_p1_if_i_s_axi_wready,
    dsp_cav2_p1_if_i_s_axi_bresp => dsp_cav2_p1_if_i_s_axi_bresp,
    dsp_cav2_p1_if_i_s_axi_bvalid => dsp_cav2_p1_if_i_s_axi_bvalid,
    dsp_cav2_p1_if_i_s_axi_arready => dsp_cav2_p1_if_i_s_axi_arready,
    dsp_cav2_p1_if_i_s_axi_rdata => dsp_cav2_p1_if_i_s_axi_rdata,
    dsp_cav2_p1_if_i_s_axi_rresp => dsp_cav2_p1_if_i_s_axi_rresp,
    dsp_cav2_p1_if_i_s_axi_rvalid => dsp_cav2_p1_if_i_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x5
  );
  dsp_cav2_p1_if_phase_axi_lite_interface : entity work.dsp_cav2_p1_if_phase_axi_lite_interface 
  port map (
    cav2_p1_if_phase => cav2_p1_if_phase,
    dsp_cav2_p1_if_phase_s_axi_awaddr => dsp_cav2_p1_if_phase_s_axi_awaddr,
    dsp_cav2_p1_if_phase_s_axi_awvalid => dsp_cav2_p1_if_phase_s_axi_awvalid,
    dsp_cav2_p1_if_phase_s_axi_wdata => dsp_cav2_p1_if_phase_s_axi_wdata,
    dsp_cav2_p1_if_phase_s_axi_wstrb => dsp_cav2_p1_if_phase_s_axi_wstrb,
    dsp_cav2_p1_if_phase_s_axi_wvalid => dsp_cav2_p1_if_phase_s_axi_wvalid,
    dsp_cav2_p1_if_phase_s_axi_bready => dsp_cav2_p1_if_phase_s_axi_bready,
    dsp_cav2_p1_if_phase_s_axi_araddr => dsp_cav2_p1_if_phase_s_axi_araddr,
    dsp_cav2_p1_if_phase_s_axi_arvalid => dsp_cav2_p1_if_phase_s_axi_arvalid,
    dsp_cav2_p1_if_phase_s_axi_rready => dsp_cav2_p1_if_phase_s_axi_rready,
    dsp_cav2_p1_if_phase_aresetn => dsp_aresetn,
    dsp_cav2_p1_if_phase_aclk => dsp_clk,
    dsp_cav2_p1_if_phase_s_axi_awready => dsp_cav2_p1_if_phase_s_axi_awready,
    dsp_cav2_p1_if_phase_s_axi_wready => dsp_cav2_p1_if_phase_s_axi_wready,
    dsp_cav2_p1_if_phase_s_axi_bresp => dsp_cav2_p1_if_phase_s_axi_bresp,
    dsp_cav2_p1_if_phase_s_axi_bvalid => dsp_cav2_p1_if_phase_s_axi_bvalid,
    dsp_cav2_p1_if_phase_s_axi_arready => dsp_cav2_p1_if_phase_s_axi_arready,
    dsp_cav2_p1_if_phase_s_axi_rdata => dsp_cav2_p1_if_phase_s_axi_rdata,
    dsp_cav2_p1_if_phase_s_axi_rresp => dsp_cav2_p1_if_phase_s_axi_rresp,
    dsp_cav2_p1_if_phase_s_axi_rvalid => dsp_cav2_p1_if_phase_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x14
  );
  dsp_cav2_p1_if_q_axi_lite_interface : entity work.dsp_cav2_p1_if_q_axi_lite_interface 
  port map (
    cav2_p1_if_q => cav2_p1_if_q,
    dsp_cav2_p1_if_q_s_axi_awaddr => dsp_cav2_p1_if_q_s_axi_awaddr,
    dsp_cav2_p1_if_q_s_axi_awvalid => dsp_cav2_p1_if_q_s_axi_awvalid,
    dsp_cav2_p1_if_q_s_axi_wdata => dsp_cav2_p1_if_q_s_axi_wdata,
    dsp_cav2_p1_if_q_s_axi_wstrb => dsp_cav2_p1_if_q_s_axi_wstrb,
    dsp_cav2_p1_if_q_s_axi_wvalid => dsp_cav2_p1_if_q_s_axi_wvalid,
    dsp_cav2_p1_if_q_s_axi_bready => dsp_cav2_p1_if_q_s_axi_bready,
    dsp_cav2_p1_if_q_s_axi_araddr => dsp_cav2_p1_if_q_s_axi_araddr,
    dsp_cav2_p1_if_q_s_axi_arvalid => dsp_cav2_p1_if_q_s_axi_arvalid,
    dsp_cav2_p1_if_q_s_axi_rready => dsp_cav2_p1_if_q_s_axi_rready,
    dsp_cav2_p1_if_q_aresetn => dsp_aresetn,
    dsp_cav2_p1_if_q_aclk => dsp_clk,
    dsp_cav2_p1_if_q_s_axi_awready => dsp_cav2_p1_if_q_s_axi_awready,
    dsp_cav2_p1_if_q_s_axi_wready => dsp_cav2_p1_if_q_s_axi_wready,
    dsp_cav2_p1_if_q_s_axi_bresp => dsp_cav2_p1_if_q_s_axi_bresp,
    dsp_cav2_p1_if_q_s_axi_bvalid => dsp_cav2_p1_if_q_s_axi_bvalid,
    dsp_cav2_p1_if_q_s_axi_arready => dsp_cav2_p1_if_q_s_axi_arready,
    dsp_cav2_p1_if_q_s_axi_rdata => dsp_cav2_p1_if_q_s_axi_rdata,
    dsp_cav2_p1_if_q_s_axi_rresp => dsp_cav2_p1_if_q_s_axi_rresp,
    dsp_cav2_p1_if_q_s_axi_rvalid => dsp_cav2_p1_if_q_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x12
  );
  dsp_cav2_p1_integrated_i_axi_lite_interface : entity work.dsp_cav2_p1_integrated_i_axi_lite_interface 
  port map (
    cav2_p1_integrated_i => cav2_p1_integrated_i,
    dsp_cav2_p1_integrated_i_s_axi_awaddr => dsp_cav2_p1_integrated_i_s_axi_awaddr,
    dsp_cav2_p1_integrated_i_s_axi_awvalid => dsp_cav2_p1_integrated_i_s_axi_awvalid,
    dsp_cav2_p1_integrated_i_s_axi_wdata => dsp_cav2_p1_integrated_i_s_axi_wdata,
    dsp_cav2_p1_integrated_i_s_axi_wstrb => dsp_cav2_p1_integrated_i_s_axi_wstrb,
    dsp_cav2_p1_integrated_i_s_axi_wvalid => dsp_cav2_p1_integrated_i_s_axi_wvalid,
    dsp_cav2_p1_integrated_i_s_axi_bready => dsp_cav2_p1_integrated_i_s_axi_bready,
    dsp_cav2_p1_integrated_i_s_axi_araddr => dsp_cav2_p1_integrated_i_s_axi_araddr,
    dsp_cav2_p1_integrated_i_s_axi_arvalid => dsp_cav2_p1_integrated_i_s_axi_arvalid,
    dsp_cav2_p1_integrated_i_s_axi_rready => dsp_cav2_p1_integrated_i_s_axi_rready,
    dsp_cav2_p1_integrated_i_aresetn => dsp_aresetn,
    dsp_cav2_p1_integrated_i_aclk => dsp_clk,
    dsp_cav2_p1_integrated_i_s_axi_awready => dsp_cav2_p1_integrated_i_s_axi_awready,
    dsp_cav2_p1_integrated_i_s_axi_wready => dsp_cav2_p1_integrated_i_s_axi_wready,
    dsp_cav2_p1_integrated_i_s_axi_bresp => dsp_cav2_p1_integrated_i_s_axi_bresp,
    dsp_cav2_p1_integrated_i_s_axi_bvalid => dsp_cav2_p1_integrated_i_s_axi_bvalid,
    dsp_cav2_p1_integrated_i_s_axi_arready => dsp_cav2_p1_integrated_i_s_axi_arready,
    dsp_cav2_p1_integrated_i_s_axi_rdata => dsp_cav2_p1_integrated_i_s_axi_rdata,
    dsp_cav2_p1_integrated_i_s_axi_rresp => dsp_cav2_p1_integrated_i_s_axi_rresp,
    dsp_cav2_p1_integrated_i_s_axi_rvalid => dsp_cav2_p1_integrated_i_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x11
  );
  dsp_cav2_p1_integrated_q_axi_lite_interface : entity work.dsp_cav2_p1_integrated_q_axi_lite_interface 
  port map (
    cav2_p1_integrated_q => cav2_p1_integrated_q,
    dsp_cav2_p1_integrated_q_s_axi_awaddr => dsp_cav2_p1_integrated_q_s_axi_awaddr,
    dsp_cav2_p1_integrated_q_s_axi_awvalid => dsp_cav2_p1_integrated_q_s_axi_awvalid,
    dsp_cav2_p1_integrated_q_s_axi_wdata => dsp_cav2_p1_integrated_q_s_axi_wdata,
    dsp_cav2_p1_integrated_q_s_axi_wstrb => dsp_cav2_p1_integrated_q_s_axi_wstrb,
    dsp_cav2_p1_integrated_q_s_axi_wvalid => dsp_cav2_p1_integrated_q_s_axi_wvalid,
    dsp_cav2_p1_integrated_q_s_axi_bready => dsp_cav2_p1_integrated_q_s_axi_bready,
    dsp_cav2_p1_integrated_q_s_axi_araddr => dsp_cav2_p1_integrated_q_s_axi_araddr,
    dsp_cav2_p1_integrated_q_s_axi_arvalid => dsp_cav2_p1_integrated_q_s_axi_arvalid,
    dsp_cav2_p1_integrated_q_s_axi_rready => dsp_cav2_p1_integrated_q_s_axi_rready,
    dsp_cav2_p1_integrated_q_aresetn => dsp_aresetn,
    dsp_cav2_p1_integrated_q_aclk => dsp_clk,
    dsp_cav2_p1_integrated_q_s_axi_awready => dsp_cav2_p1_integrated_q_s_axi_awready,
    dsp_cav2_p1_integrated_q_s_axi_wready => dsp_cav2_p1_integrated_q_s_axi_wready,
    dsp_cav2_p1_integrated_q_s_axi_bresp => dsp_cav2_p1_integrated_q_s_axi_bresp,
    dsp_cav2_p1_integrated_q_s_axi_bvalid => dsp_cav2_p1_integrated_q_s_axi_bvalid,
    dsp_cav2_p1_integrated_q_s_axi_arready => dsp_cav2_p1_integrated_q_s_axi_arready,
    dsp_cav2_p1_integrated_q_s_axi_rdata => dsp_cav2_p1_integrated_q_s_axi_rdata,
    dsp_cav2_p1_integrated_q_s_axi_rresp => dsp_cav2_p1_integrated_q_s_axi_rresp,
    dsp_cav2_p1_integrated_q_s_axi_rvalid => dsp_cav2_p1_integrated_q_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x9
  );
  dsp_cav2_p1_phase_out_axi_lite_interface : entity work.dsp_cav2_p1_phase_out_axi_lite_interface 
  port map (
    cav2_p1_phase_out => cav2_p1_phase_out,
    dsp_cav2_p1_phase_out_s_axi_awaddr => dsp_cav2_p1_phase_out_s_axi_awaddr,
    dsp_cav2_p1_phase_out_s_axi_awvalid => dsp_cav2_p1_phase_out_s_axi_awvalid,
    dsp_cav2_p1_phase_out_s_axi_wdata => dsp_cav2_p1_phase_out_s_axi_wdata,
    dsp_cav2_p1_phase_out_s_axi_wstrb => dsp_cav2_p1_phase_out_s_axi_wstrb,
    dsp_cav2_p1_phase_out_s_axi_wvalid => dsp_cav2_p1_phase_out_s_axi_wvalid,
    dsp_cav2_p1_phase_out_s_axi_bready => dsp_cav2_p1_phase_out_s_axi_bready,
    dsp_cav2_p1_phase_out_s_axi_araddr => dsp_cav2_p1_phase_out_s_axi_araddr,
    dsp_cav2_p1_phase_out_s_axi_arvalid => dsp_cav2_p1_phase_out_s_axi_arvalid,
    dsp_cav2_p1_phase_out_s_axi_rready => dsp_cav2_p1_phase_out_s_axi_rready,
    dsp_cav2_p1_phase_out_aresetn => dsp_aresetn,
    dsp_cav2_p1_phase_out_aclk => dsp_clk,
    dsp_cav2_p1_phase_out_s_axi_awready => dsp_cav2_p1_phase_out_s_axi_awready,
    dsp_cav2_p1_phase_out_s_axi_wready => dsp_cav2_p1_phase_out_s_axi_wready,
    dsp_cav2_p1_phase_out_s_axi_bresp => dsp_cav2_p1_phase_out_s_axi_bresp,
    dsp_cav2_p1_phase_out_s_axi_bvalid => dsp_cav2_p1_phase_out_s_axi_bvalid,
    dsp_cav2_p1_phase_out_s_axi_arready => dsp_cav2_p1_phase_out_s_axi_arready,
    dsp_cav2_p1_phase_out_s_axi_rdata => dsp_cav2_p1_phase_out_s_axi_rdata,
    dsp_cav2_p1_phase_out_s_axi_rresp => dsp_cav2_p1_phase_out_s_axi_rresp,
    dsp_cav2_p1_phase_out_s_axi_rvalid => dsp_cav2_p1_phase_out_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x7
  );
  dsp_cav2_p1_window_start_axi_lite_interface : entity work.dsp_cav2_p1_window_start_axi_lite_interface 
  port map (
    dsp_cav2_p1_window_start_s_axi_awaddr => dsp_cav2_p1_window_start_s_axi_awaddr,
    dsp_cav2_p1_window_start_s_axi_awvalid => dsp_cav2_p1_window_start_s_axi_awvalid,
    dsp_cav2_p1_window_start_s_axi_wdata => dsp_cav2_p1_window_start_s_axi_wdata,
    dsp_cav2_p1_window_start_s_axi_wstrb => dsp_cav2_p1_window_start_s_axi_wstrb,
    dsp_cav2_p1_window_start_s_axi_wvalid => dsp_cav2_p1_window_start_s_axi_wvalid,
    dsp_cav2_p1_window_start_s_axi_bready => dsp_cav2_p1_window_start_s_axi_bready,
    dsp_cav2_p1_window_start_s_axi_araddr => dsp_cav2_p1_window_start_s_axi_araddr,
    dsp_cav2_p1_window_start_s_axi_arvalid => dsp_cav2_p1_window_start_s_axi_arvalid,
    dsp_cav2_p1_window_start_s_axi_rready => dsp_cav2_p1_window_start_s_axi_rready,
    dsp_cav2_p1_window_start_aresetn => dsp_aresetn,
    dsp_cav2_p1_window_start_aclk => dsp_clk,
    cav2_p1_window_start => cav2_p1_window_start,
    dsp_cav2_p1_window_start_s_axi_awready => dsp_cav2_p1_window_start_s_axi_awready,
    dsp_cav2_p1_window_start_s_axi_wready => dsp_cav2_p1_window_start_s_axi_wready,
    dsp_cav2_p1_window_start_s_axi_bresp => dsp_cav2_p1_window_start_s_axi_bresp,
    dsp_cav2_p1_window_start_s_axi_bvalid => dsp_cav2_p1_window_start_s_axi_bvalid,
    dsp_cav2_p1_window_start_s_axi_arready => dsp_cav2_p1_window_start_s_axi_arready,
    dsp_cav2_p1_window_start_s_axi_rdata => dsp_cav2_p1_window_start_s_axi_rdata,
    dsp_cav2_p1_window_start_s_axi_rresp => dsp_cav2_p1_window_start_s_axi_rresp,
    dsp_cav2_p1_window_start_s_axi_rvalid => dsp_cav2_p1_window_start_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x6
  );
  dsp_cav2_p1_window_stop_axi_lite_interface : entity work.dsp_cav2_p1_window_stop_axi_lite_interface 
  port map (
    dsp_cav2_p1_window_stop_s_axi_awaddr => dsp_cav2_p1_window_stop_s_axi_awaddr,
    dsp_cav2_p1_window_stop_s_axi_awvalid => dsp_cav2_p1_window_stop_s_axi_awvalid,
    dsp_cav2_p1_window_stop_s_axi_wdata => dsp_cav2_p1_window_stop_s_axi_wdata,
    dsp_cav2_p1_window_stop_s_axi_wstrb => dsp_cav2_p1_window_stop_s_axi_wstrb,
    dsp_cav2_p1_window_stop_s_axi_wvalid => dsp_cav2_p1_window_stop_s_axi_wvalid,
    dsp_cav2_p1_window_stop_s_axi_bready => dsp_cav2_p1_window_stop_s_axi_bready,
    dsp_cav2_p1_window_stop_s_axi_araddr => dsp_cav2_p1_window_stop_s_axi_araddr,
    dsp_cav2_p1_window_stop_s_axi_arvalid => dsp_cav2_p1_window_stop_s_axi_arvalid,
    dsp_cav2_p1_window_stop_s_axi_rready => dsp_cav2_p1_window_stop_s_axi_rready,
    dsp_cav2_p1_window_stop_aresetn => dsp_aresetn,
    dsp_cav2_p1_window_stop_aclk => dsp_clk,
    cav2_p1_window_stop => cav2_p1_window_stop,
    dsp_cav2_p1_window_stop_s_axi_awready => dsp_cav2_p1_window_stop_s_axi_awready,
    dsp_cav2_p1_window_stop_s_axi_wready => dsp_cav2_p1_window_stop_s_axi_wready,
    dsp_cav2_p1_window_stop_s_axi_bresp => dsp_cav2_p1_window_stop_s_axi_bresp,
    dsp_cav2_p1_window_stop_s_axi_bvalid => dsp_cav2_p1_window_stop_s_axi_bvalid,
    dsp_cav2_p1_window_stop_s_axi_arready => dsp_cav2_p1_window_stop_s_axi_arready,
    dsp_cav2_p1_window_stop_s_axi_rdata => dsp_cav2_p1_window_stop_s_axi_rdata,
    dsp_cav2_p1_window_stop_s_axi_rresp => dsp_cav2_p1_window_stop_s_axi_rresp,
    dsp_cav2_p1_window_stop_s_axi_rvalid => dsp_cav2_p1_window_stop_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x43
  );
  dsp_cav2_p2_amp_out_axi_lite_interface : entity work.dsp_cav2_p2_amp_out_axi_lite_interface 
  port map (
    cav2_p2_amp_out => cav2_p2_amp_out,
    dsp_cav2_p2_amp_out_s_axi_awaddr => dsp_cav2_p2_amp_out_s_axi_awaddr,
    dsp_cav2_p2_amp_out_s_axi_awvalid => dsp_cav2_p2_amp_out_s_axi_awvalid,
    dsp_cav2_p2_amp_out_s_axi_wdata => dsp_cav2_p2_amp_out_s_axi_wdata,
    dsp_cav2_p2_amp_out_s_axi_wstrb => dsp_cav2_p2_amp_out_s_axi_wstrb,
    dsp_cav2_p2_amp_out_s_axi_wvalid => dsp_cav2_p2_amp_out_s_axi_wvalid,
    dsp_cav2_p2_amp_out_s_axi_bready => dsp_cav2_p2_amp_out_s_axi_bready,
    dsp_cav2_p2_amp_out_s_axi_araddr => dsp_cav2_p2_amp_out_s_axi_araddr,
    dsp_cav2_p2_amp_out_s_axi_arvalid => dsp_cav2_p2_amp_out_s_axi_arvalid,
    dsp_cav2_p2_amp_out_s_axi_rready => dsp_cav2_p2_amp_out_s_axi_rready,
    dsp_cav2_p2_amp_out_aresetn => dsp_aresetn,
    dsp_cav2_p2_amp_out_aclk => dsp_clk,
    dsp_cav2_p2_amp_out_s_axi_awready => dsp_cav2_p2_amp_out_s_axi_awready,
    dsp_cav2_p2_amp_out_s_axi_wready => dsp_cav2_p2_amp_out_s_axi_wready,
    dsp_cav2_p2_amp_out_s_axi_bresp => dsp_cav2_p2_amp_out_s_axi_bresp,
    dsp_cav2_p2_amp_out_s_axi_bvalid => dsp_cav2_p2_amp_out_s_axi_bvalid,
    dsp_cav2_p2_amp_out_s_axi_arready => dsp_cav2_p2_amp_out_s_axi_arready,
    dsp_cav2_p2_amp_out_s_axi_rdata => dsp_cav2_p2_amp_out_s_axi_rdata,
    dsp_cav2_p2_amp_out_s_axi_rresp => dsp_cav2_p2_amp_out_s_axi_rresp,
    dsp_cav2_p2_amp_out_s_axi_rvalid => dsp_cav2_p2_amp_out_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x42
  );
  dsp_cav2_p2_chan_sel_axi_lite_interface : entity work.dsp_cav2_p2_chan_sel_axi_lite_interface 
  port map (
    dsp_cav2_p2_chan_sel_s_axi_awaddr => dsp_cav2_p2_chan_sel_s_axi_awaddr,
    dsp_cav2_p2_chan_sel_s_axi_awvalid => dsp_cav2_p2_chan_sel_s_axi_awvalid,
    dsp_cav2_p2_chan_sel_s_axi_wdata => dsp_cav2_p2_chan_sel_s_axi_wdata,
    dsp_cav2_p2_chan_sel_s_axi_wstrb => dsp_cav2_p2_chan_sel_s_axi_wstrb,
    dsp_cav2_p2_chan_sel_s_axi_wvalid => dsp_cav2_p2_chan_sel_s_axi_wvalid,
    dsp_cav2_p2_chan_sel_s_axi_bready => dsp_cav2_p2_chan_sel_s_axi_bready,
    dsp_cav2_p2_chan_sel_s_axi_araddr => dsp_cav2_p2_chan_sel_s_axi_araddr,
    dsp_cav2_p2_chan_sel_s_axi_arvalid => dsp_cav2_p2_chan_sel_s_axi_arvalid,
    dsp_cav2_p2_chan_sel_s_axi_rready => dsp_cav2_p2_chan_sel_s_axi_rready,
    dsp_cav2_p2_chan_sel_aresetn => dsp_aresetn,
    dsp_cav2_p2_chan_sel_aclk => dsp_clk,
    cav2_p2_chan_sel => cav2_p2_chan_sel,
    dsp_cav2_p2_chan_sel_s_axi_awready => dsp_cav2_p2_chan_sel_s_axi_awready,
    dsp_cav2_p2_chan_sel_s_axi_wready => dsp_cav2_p2_chan_sel_s_axi_wready,
    dsp_cav2_p2_chan_sel_s_axi_bresp => dsp_cav2_p2_chan_sel_s_axi_bresp,
    dsp_cav2_p2_chan_sel_s_axi_bvalid => dsp_cav2_p2_chan_sel_s_axi_bvalid,
    dsp_cav2_p2_chan_sel_s_axi_arready => dsp_cav2_p2_chan_sel_s_axi_arready,
    dsp_cav2_p2_chan_sel_s_axi_rdata => dsp_cav2_p2_chan_sel_s_axi_rdata,
    dsp_cav2_p2_chan_sel_s_axi_rresp => dsp_cav2_p2_chan_sel_s_axi_rresp,
    dsp_cav2_p2_chan_sel_s_axi_rvalid => dsp_cav2_p2_chan_sel_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x40
  );
  dsp_cav2_p2_comparison_i_axi_lite_interface : entity work.dsp_cav2_p2_comparison_i_axi_lite_interface 
  port map (
    cav2_p2_comparison_i => cav2_p2_comparison_i,
    dsp_cav2_p2_comparison_i_s_axi_awaddr => dsp_cav2_p2_comparison_i_s_axi_awaddr,
    dsp_cav2_p2_comparison_i_s_axi_awvalid => dsp_cav2_p2_comparison_i_s_axi_awvalid,
    dsp_cav2_p2_comparison_i_s_axi_wdata => dsp_cav2_p2_comparison_i_s_axi_wdata,
    dsp_cav2_p2_comparison_i_s_axi_wstrb => dsp_cav2_p2_comparison_i_s_axi_wstrb,
    dsp_cav2_p2_comparison_i_s_axi_wvalid => dsp_cav2_p2_comparison_i_s_axi_wvalid,
    dsp_cav2_p2_comparison_i_s_axi_bready => dsp_cav2_p2_comparison_i_s_axi_bready,
    dsp_cav2_p2_comparison_i_s_axi_araddr => dsp_cav2_p2_comparison_i_s_axi_araddr,
    dsp_cav2_p2_comparison_i_s_axi_arvalid => dsp_cav2_p2_comparison_i_s_axi_arvalid,
    dsp_cav2_p2_comparison_i_s_axi_rready => dsp_cav2_p2_comparison_i_s_axi_rready,
    dsp_cav2_p2_comparison_i_aresetn => dsp_aresetn,
    dsp_cav2_p2_comparison_i_aclk => dsp_clk,
    dsp_cav2_p2_comparison_i_s_axi_awready => dsp_cav2_p2_comparison_i_s_axi_awready,
    dsp_cav2_p2_comparison_i_s_axi_wready => dsp_cav2_p2_comparison_i_s_axi_wready,
    dsp_cav2_p2_comparison_i_s_axi_bresp => dsp_cav2_p2_comparison_i_s_axi_bresp,
    dsp_cav2_p2_comparison_i_s_axi_bvalid => dsp_cav2_p2_comparison_i_s_axi_bvalid,
    dsp_cav2_p2_comparison_i_s_axi_arready => dsp_cav2_p2_comparison_i_s_axi_arready,
    dsp_cav2_p2_comparison_i_s_axi_rdata => dsp_cav2_p2_comparison_i_s_axi_rdata,
    dsp_cav2_p2_comparison_i_s_axi_rresp => dsp_cav2_p2_comparison_i_s_axi_rresp,
    dsp_cav2_p2_comparison_i_s_axi_rvalid => dsp_cav2_p2_comparison_i_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x39
  );
  dsp_cav2_p2_comparison_phase_axi_lite_interface : entity work.dsp_cav2_p2_comparison_phase_axi_lite_interface 
  port map (
    cav2_p2_comparison_phase => cav2_p2_comparison_phase,
    dsp_cav2_p2_comparison_phase_s_axi_awaddr => dsp_cav2_p2_comparison_phase_s_axi_awaddr,
    dsp_cav2_p2_comparison_phase_s_axi_awvalid => dsp_cav2_p2_comparison_phase_s_axi_awvalid,
    dsp_cav2_p2_comparison_phase_s_axi_wdata => dsp_cav2_p2_comparison_phase_s_axi_wdata,
    dsp_cav2_p2_comparison_phase_s_axi_wstrb => dsp_cav2_p2_comparison_phase_s_axi_wstrb,
    dsp_cav2_p2_comparison_phase_s_axi_wvalid => dsp_cav2_p2_comparison_phase_s_axi_wvalid,
    dsp_cav2_p2_comparison_phase_s_axi_bready => dsp_cav2_p2_comparison_phase_s_axi_bready,
    dsp_cav2_p2_comparison_phase_s_axi_araddr => dsp_cav2_p2_comparison_phase_s_axi_araddr,
    dsp_cav2_p2_comparison_phase_s_axi_arvalid => dsp_cav2_p2_comparison_phase_s_axi_arvalid,
    dsp_cav2_p2_comparison_phase_s_axi_rready => dsp_cav2_p2_comparison_phase_s_axi_rready,
    dsp_cav2_p2_comparison_phase_aresetn => dsp_aresetn,
    dsp_cav2_p2_comparison_phase_aclk => dsp_clk,
    dsp_cav2_p2_comparison_phase_s_axi_awready => dsp_cav2_p2_comparison_phase_s_axi_awready,
    dsp_cav2_p2_comparison_phase_s_axi_wready => dsp_cav2_p2_comparison_phase_s_axi_wready,
    dsp_cav2_p2_comparison_phase_s_axi_bresp => dsp_cav2_p2_comparison_phase_s_axi_bresp,
    dsp_cav2_p2_comparison_phase_s_axi_bvalid => dsp_cav2_p2_comparison_phase_s_axi_bvalid,
    dsp_cav2_p2_comparison_phase_s_axi_arready => dsp_cav2_p2_comparison_phase_s_axi_arready,
    dsp_cav2_p2_comparison_phase_s_axi_rdata => dsp_cav2_p2_comparison_phase_s_axi_rdata,
    dsp_cav2_p2_comparison_phase_s_axi_rresp => dsp_cav2_p2_comparison_phase_s_axi_rresp,
    dsp_cav2_p2_comparison_phase_s_axi_rvalid => dsp_cav2_p2_comparison_phase_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x37
  );
  dsp_cav2_p2_comparison_q_axi_lite_interface : entity work.dsp_cav2_p2_comparison_q_axi_lite_interface 
  port map (
    cav2_p2_comparison_q => cav2_p2_comparison_q,
    dsp_cav2_p2_comparison_q_s_axi_awaddr => dsp_cav2_p2_comparison_q_s_axi_awaddr,
    dsp_cav2_p2_comparison_q_s_axi_awvalid => dsp_cav2_p2_comparison_q_s_axi_awvalid,
    dsp_cav2_p2_comparison_q_s_axi_wdata => dsp_cav2_p2_comparison_q_s_axi_wdata,
    dsp_cav2_p2_comparison_q_s_axi_wstrb => dsp_cav2_p2_comparison_q_s_axi_wstrb,
    dsp_cav2_p2_comparison_q_s_axi_wvalid => dsp_cav2_p2_comparison_q_s_axi_wvalid,
    dsp_cav2_p2_comparison_q_s_axi_bready => dsp_cav2_p2_comparison_q_s_axi_bready,
    dsp_cav2_p2_comparison_q_s_axi_araddr => dsp_cav2_p2_comparison_q_s_axi_araddr,
    dsp_cav2_p2_comparison_q_s_axi_arvalid => dsp_cav2_p2_comparison_q_s_axi_arvalid,
    dsp_cav2_p2_comparison_q_s_axi_rready => dsp_cav2_p2_comparison_q_s_axi_rready,
    dsp_cav2_p2_comparison_q_aresetn => dsp_aresetn,
    dsp_cav2_p2_comparison_q_aclk => dsp_clk,
    dsp_cav2_p2_comparison_q_s_axi_awready => dsp_cav2_p2_comparison_q_s_axi_awready,
    dsp_cav2_p2_comparison_q_s_axi_wready => dsp_cav2_p2_comparison_q_s_axi_wready,
    dsp_cav2_p2_comparison_q_s_axi_bresp => dsp_cav2_p2_comparison_q_s_axi_bresp,
    dsp_cav2_p2_comparison_q_s_axi_bvalid => dsp_cav2_p2_comparison_q_s_axi_bvalid,
    dsp_cav2_p2_comparison_q_s_axi_arready => dsp_cav2_p2_comparison_q_s_axi_arready,
    dsp_cav2_p2_comparison_q_s_axi_rdata => dsp_cav2_p2_comparison_q_s_axi_rdata,
    dsp_cav2_p2_comparison_q_s_axi_rresp => dsp_cav2_p2_comparison_q_s_axi_rresp,
    dsp_cav2_p2_comparison_q_s_axi_rvalid => dsp_cav2_p2_comparison_q_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x36
  );
  dsp_cav2_p2_dc_freq_axi_lite_interface : entity work.dsp_cav2_p2_dc_freq_axi_lite_interface 
  port map (
    cav2_p2_dc_freq => cav2_p2_dc_freq,
    dsp_cav2_p2_dc_freq_s_axi_awaddr => dsp_cav2_p2_dc_freq_s_axi_awaddr,
    dsp_cav2_p2_dc_freq_s_axi_awvalid => dsp_cav2_p2_dc_freq_s_axi_awvalid,
    dsp_cav2_p2_dc_freq_s_axi_wdata => dsp_cav2_p2_dc_freq_s_axi_wdata,
    dsp_cav2_p2_dc_freq_s_axi_wstrb => dsp_cav2_p2_dc_freq_s_axi_wstrb,
    dsp_cav2_p2_dc_freq_s_axi_wvalid => dsp_cav2_p2_dc_freq_s_axi_wvalid,
    dsp_cav2_p2_dc_freq_s_axi_bready => dsp_cav2_p2_dc_freq_s_axi_bready,
    dsp_cav2_p2_dc_freq_s_axi_araddr => dsp_cav2_p2_dc_freq_s_axi_araddr,
    dsp_cav2_p2_dc_freq_s_axi_arvalid => dsp_cav2_p2_dc_freq_s_axi_arvalid,
    dsp_cav2_p2_dc_freq_s_axi_rready => dsp_cav2_p2_dc_freq_s_axi_rready,
    dsp_cav2_p2_dc_freq_aresetn => dsp_aresetn,
    dsp_cav2_p2_dc_freq_aclk => dsp_clk,
    dsp_cav2_p2_dc_freq_s_axi_awready => dsp_cav2_p2_dc_freq_s_axi_awready,
    dsp_cav2_p2_dc_freq_s_axi_wready => dsp_cav2_p2_dc_freq_s_axi_wready,
    dsp_cav2_p2_dc_freq_s_axi_bresp => dsp_cav2_p2_dc_freq_s_axi_bresp,
    dsp_cav2_p2_dc_freq_s_axi_bvalid => dsp_cav2_p2_dc_freq_s_axi_bvalid,
    dsp_cav2_p2_dc_freq_s_axi_arready => dsp_cav2_p2_dc_freq_s_axi_arready,
    dsp_cav2_p2_dc_freq_s_axi_rdata => dsp_cav2_p2_dc_freq_s_axi_rdata,
    dsp_cav2_p2_dc_freq_s_axi_rresp => dsp_cav2_p2_dc_freq_s_axi_rresp,
    dsp_cav2_p2_dc_freq_s_axi_rvalid => dsp_cav2_p2_dc_freq_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x34
  );
  dsp_cav2_p2_dc_img_axi_lite_interface : entity work.dsp_cav2_p2_dc_img_axi_lite_interface 
  port map (
    cav2_p2_dc_img => cav2_p2_dc_img,
    dsp_cav2_p2_dc_img_s_axi_awaddr => dsp_cav2_p2_dc_img_s_axi_awaddr,
    dsp_cav2_p2_dc_img_s_axi_awvalid => dsp_cav2_p2_dc_img_s_axi_awvalid,
    dsp_cav2_p2_dc_img_s_axi_wdata => dsp_cav2_p2_dc_img_s_axi_wdata,
    dsp_cav2_p2_dc_img_s_axi_wstrb => dsp_cav2_p2_dc_img_s_axi_wstrb,
    dsp_cav2_p2_dc_img_s_axi_wvalid => dsp_cav2_p2_dc_img_s_axi_wvalid,
    dsp_cav2_p2_dc_img_s_axi_bready => dsp_cav2_p2_dc_img_s_axi_bready,
    dsp_cav2_p2_dc_img_s_axi_araddr => dsp_cav2_p2_dc_img_s_axi_araddr,
    dsp_cav2_p2_dc_img_s_axi_arvalid => dsp_cav2_p2_dc_img_s_axi_arvalid,
    dsp_cav2_p2_dc_img_s_axi_rready => dsp_cav2_p2_dc_img_s_axi_rready,
    dsp_cav2_p2_dc_img_aresetn => dsp_aresetn,
    dsp_cav2_p2_dc_img_aclk => dsp_clk,
    dsp_cav2_p2_dc_img_s_axi_awready => dsp_cav2_p2_dc_img_s_axi_awready,
    dsp_cav2_p2_dc_img_s_axi_wready => dsp_cav2_p2_dc_img_s_axi_wready,
    dsp_cav2_p2_dc_img_s_axi_bresp => dsp_cav2_p2_dc_img_s_axi_bresp,
    dsp_cav2_p2_dc_img_s_axi_bvalid => dsp_cav2_p2_dc_img_s_axi_bvalid,
    dsp_cav2_p2_dc_img_s_axi_arready => dsp_cav2_p2_dc_img_s_axi_arready,
    dsp_cav2_p2_dc_img_s_axi_rdata => dsp_cav2_p2_dc_img_s_axi_rdata,
    dsp_cav2_p2_dc_img_s_axi_rresp => dsp_cav2_p2_dc_img_s_axi_rresp,
    dsp_cav2_p2_dc_img_s_axi_rvalid => dsp_cav2_p2_dc_img_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x33
  );
  dsp_cav2_p2_dc_real_axi_lite_interface : entity work.dsp_cav2_p2_dc_real_axi_lite_interface 
  port map (
    cav2_p2_dc_real => cav2_p2_dc_real,
    dsp_cav2_p2_dc_real_s_axi_awaddr => dsp_cav2_p2_dc_real_s_axi_awaddr,
    dsp_cav2_p2_dc_real_s_axi_awvalid => dsp_cav2_p2_dc_real_s_axi_awvalid,
    dsp_cav2_p2_dc_real_s_axi_wdata => dsp_cav2_p2_dc_real_s_axi_wdata,
    dsp_cav2_p2_dc_real_s_axi_wstrb => dsp_cav2_p2_dc_real_s_axi_wstrb,
    dsp_cav2_p2_dc_real_s_axi_wvalid => dsp_cav2_p2_dc_real_s_axi_wvalid,
    dsp_cav2_p2_dc_real_s_axi_bready => dsp_cav2_p2_dc_real_s_axi_bready,
    dsp_cav2_p2_dc_real_s_axi_araddr => dsp_cav2_p2_dc_real_s_axi_araddr,
    dsp_cav2_p2_dc_real_s_axi_arvalid => dsp_cav2_p2_dc_real_s_axi_arvalid,
    dsp_cav2_p2_dc_real_s_axi_rready => dsp_cav2_p2_dc_real_s_axi_rready,
    dsp_cav2_p2_dc_real_aresetn => dsp_aresetn,
    dsp_cav2_p2_dc_real_aclk => dsp_clk,
    dsp_cav2_p2_dc_real_s_axi_awready => dsp_cav2_p2_dc_real_s_axi_awready,
    dsp_cav2_p2_dc_real_s_axi_wready => dsp_cav2_p2_dc_real_s_axi_wready,
    dsp_cav2_p2_dc_real_s_axi_bresp => dsp_cav2_p2_dc_real_s_axi_bresp,
    dsp_cav2_p2_dc_real_s_axi_bvalid => dsp_cav2_p2_dc_real_s_axi_bvalid,
    dsp_cav2_p2_dc_real_s_axi_arready => dsp_cav2_p2_dc_real_s_axi_arready,
    dsp_cav2_p2_dc_real_s_axi_rdata => dsp_cav2_p2_dc_real_s_axi_rdata,
    dsp_cav2_p2_dc_real_s_axi_rresp => dsp_cav2_p2_dc_real_s_axi_rresp,
    dsp_cav2_p2_dc_real_s_axi_rvalid => dsp_cav2_p2_dc_real_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x31
  );
  dsp_cav2_p2_if_amp_axi_lite_interface : entity work.dsp_cav2_p2_if_amp_axi_lite_interface 
  port map (
    cav2_p2_if_amp => cav2_p2_if_amp,
    dsp_cav2_p2_if_amp_s_axi_awaddr => dsp_cav2_p2_if_amp_s_axi_awaddr,
    dsp_cav2_p2_if_amp_s_axi_awvalid => dsp_cav2_p2_if_amp_s_axi_awvalid,
    dsp_cav2_p2_if_amp_s_axi_wdata => dsp_cav2_p2_if_amp_s_axi_wdata,
    dsp_cav2_p2_if_amp_s_axi_wstrb => dsp_cav2_p2_if_amp_s_axi_wstrb,
    dsp_cav2_p2_if_amp_s_axi_wvalid => dsp_cav2_p2_if_amp_s_axi_wvalid,
    dsp_cav2_p2_if_amp_s_axi_bready => dsp_cav2_p2_if_amp_s_axi_bready,
    dsp_cav2_p2_if_amp_s_axi_araddr => dsp_cav2_p2_if_amp_s_axi_araddr,
    dsp_cav2_p2_if_amp_s_axi_arvalid => dsp_cav2_p2_if_amp_s_axi_arvalid,
    dsp_cav2_p2_if_amp_s_axi_rready => dsp_cav2_p2_if_amp_s_axi_rready,
    dsp_cav2_p2_if_amp_aresetn => dsp_aresetn,
    dsp_cav2_p2_if_amp_aclk => dsp_clk,
    dsp_cav2_p2_if_amp_s_axi_awready => dsp_cav2_p2_if_amp_s_axi_awready,
    dsp_cav2_p2_if_amp_s_axi_wready => dsp_cav2_p2_if_amp_s_axi_wready,
    dsp_cav2_p2_if_amp_s_axi_bresp => dsp_cav2_p2_if_amp_s_axi_bresp,
    dsp_cav2_p2_if_amp_s_axi_bvalid => dsp_cav2_p2_if_amp_s_axi_bvalid,
    dsp_cav2_p2_if_amp_s_axi_arready => dsp_cav2_p2_if_amp_s_axi_arready,
    dsp_cav2_p2_if_amp_s_axi_rdata => dsp_cav2_p2_if_amp_s_axi_rdata,
    dsp_cav2_p2_if_amp_s_axi_rresp => dsp_cav2_p2_if_amp_s_axi_rresp,
    dsp_cav2_p2_if_amp_s_axi_rvalid => dsp_cav2_p2_if_amp_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x30
  );
  dsp_cav2_p2_if_i_axi_lite_interface : entity work.dsp_cav2_p2_if_i_axi_lite_interface 
  port map (
    cav2_p2_if_i => cav2_p2_if_i,
    dsp_cav2_p2_if_i_s_axi_awaddr => dsp_cav2_p2_if_i_s_axi_awaddr,
    dsp_cav2_p2_if_i_s_axi_awvalid => dsp_cav2_p2_if_i_s_axi_awvalid,
    dsp_cav2_p2_if_i_s_axi_wdata => dsp_cav2_p2_if_i_s_axi_wdata,
    dsp_cav2_p2_if_i_s_axi_wstrb => dsp_cav2_p2_if_i_s_axi_wstrb,
    dsp_cav2_p2_if_i_s_axi_wvalid => dsp_cav2_p2_if_i_s_axi_wvalid,
    dsp_cav2_p2_if_i_s_axi_bready => dsp_cav2_p2_if_i_s_axi_bready,
    dsp_cav2_p2_if_i_s_axi_araddr => dsp_cav2_p2_if_i_s_axi_araddr,
    dsp_cav2_p2_if_i_s_axi_arvalid => dsp_cav2_p2_if_i_s_axi_arvalid,
    dsp_cav2_p2_if_i_s_axi_rready => dsp_cav2_p2_if_i_s_axi_rready,
    dsp_cav2_p2_if_i_aresetn => dsp_aresetn,
    dsp_cav2_p2_if_i_aclk => dsp_clk,
    dsp_cav2_p2_if_i_s_axi_awready => dsp_cav2_p2_if_i_s_axi_awready,
    dsp_cav2_p2_if_i_s_axi_wready => dsp_cav2_p2_if_i_s_axi_wready,
    dsp_cav2_p2_if_i_s_axi_bresp => dsp_cav2_p2_if_i_s_axi_bresp,
    dsp_cav2_p2_if_i_s_axi_bvalid => dsp_cav2_p2_if_i_s_axi_bvalid,
    dsp_cav2_p2_if_i_s_axi_arready => dsp_cav2_p2_if_i_s_axi_arready,
    dsp_cav2_p2_if_i_s_axi_rdata => dsp_cav2_p2_if_i_s_axi_rdata,
    dsp_cav2_p2_if_i_s_axi_rresp => dsp_cav2_p2_if_i_s_axi_rresp,
    dsp_cav2_p2_if_i_s_axi_rvalid => dsp_cav2_p2_if_i_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x28
  );
  dsp_cav2_p2_if_phase_axi_lite_interface : entity work.dsp_cav2_p2_if_phase_axi_lite_interface 
  port map (
    cav2_p2_if_phase => cav2_p2_if_phase,
    dsp_cav2_p2_if_phase_s_axi_awaddr => dsp_cav2_p2_if_phase_s_axi_awaddr,
    dsp_cav2_p2_if_phase_s_axi_awvalid => dsp_cav2_p2_if_phase_s_axi_awvalid,
    dsp_cav2_p2_if_phase_s_axi_wdata => dsp_cav2_p2_if_phase_s_axi_wdata,
    dsp_cav2_p2_if_phase_s_axi_wstrb => dsp_cav2_p2_if_phase_s_axi_wstrb,
    dsp_cav2_p2_if_phase_s_axi_wvalid => dsp_cav2_p2_if_phase_s_axi_wvalid,
    dsp_cav2_p2_if_phase_s_axi_bready => dsp_cav2_p2_if_phase_s_axi_bready,
    dsp_cav2_p2_if_phase_s_axi_araddr => dsp_cav2_p2_if_phase_s_axi_araddr,
    dsp_cav2_p2_if_phase_s_axi_arvalid => dsp_cav2_p2_if_phase_s_axi_arvalid,
    dsp_cav2_p2_if_phase_s_axi_rready => dsp_cav2_p2_if_phase_s_axi_rready,
    dsp_cav2_p2_if_phase_aresetn => dsp_aresetn,
    dsp_cav2_p2_if_phase_aclk => dsp_clk,
    dsp_cav2_p2_if_phase_s_axi_awready => dsp_cav2_p2_if_phase_s_axi_awready,
    dsp_cav2_p2_if_phase_s_axi_wready => dsp_cav2_p2_if_phase_s_axi_wready,
    dsp_cav2_p2_if_phase_s_axi_bresp => dsp_cav2_p2_if_phase_s_axi_bresp,
    dsp_cav2_p2_if_phase_s_axi_bvalid => dsp_cav2_p2_if_phase_s_axi_bvalid,
    dsp_cav2_p2_if_phase_s_axi_arready => dsp_cav2_p2_if_phase_s_axi_arready,
    dsp_cav2_p2_if_phase_s_axi_rdata => dsp_cav2_p2_if_phase_s_axi_rdata,
    dsp_cav2_p2_if_phase_s_axi_rresp => dsp_cav2_p2_if_phase_s_axi_rresp,
    dsp_cav2_p2_if_phase_s_axi_rvalid => dsp_cav2_p2_if_phase_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x27
  );
  dsp_cav2_p2_if_q_axi_lite_interface : entity work.dsp_cav2_p2_if_q_axi_lite_interface 
  port map (
    cav2_p2_if_q => cav2_p2_if_q,
    dsp_cav2_p2_if_q_s_axi_awaddr => dsp_cav2_p2_if_q_s_axi_awaddr,
    dsp_cav2_p2_if_q_s_axi_awvalid => dsp_cav2_p2_if_q_s_axi_awvalid,
    dsp_cav2_p2_if_q_s_axi_wdata => dsp_cav2_p2_if_q_s_axi_wdata,
    dsp_cav2_p2_if_q_s_axi_wstrb => dsp_cav2_p2_if_q_s_axi_wstrb,
    dsp_cav2_p2_if_q_s_axi_wvalid => dsp_cav2_p2_if_q_s_axi_wvalid,
    dsp_cav2_p2_if_q_s_axi_bready => dsp_cav2_p2_if_q_s_axi_bready,
    dsp_cav2_p2_if_q_s_axi_araddr => dsp_cav2_p2_if_q_s_axi_araddr,
    dsp_cav2_p2_if_q_s_axi_arvalid => dsp_cav2_p2_if_q_s_axi_arvalid,
    dsp_cav2_p2_if_q_s_axi_rready => dsp_cav2_p2_if_q_s_axi_rready,
    dsp_cav2_p2_if_q_aresetn => dsp_aresetn,
    dsp_cav2_p2_if_q_aclk => dsp_clk,
    dsp_cav2_p2_if_q_s_axi_awready => dsp_cav2_p2_if_q_s_axi_awready,
    dsp_cav2_p2_if_q_s_axi_wready => dsp_cav2_p2_if_q_s_axi_wready,
    dsp_cav2_p2_if_q_s_axi_bresp => dsp_cav2_p2_if_q_s_axi_bresp,
    dsp_cav2_p2_if_q_s_axi_bvalid => dsp_cav2_p2_if_q_s_axi_bvalid,
    dsp_cav2_p2_if_q_s_axi_arready => dsp_cav2_p2_if_q_s_axi_arready,
    dsp_cav2_p2_if_q_s_axi_rdata => dsp_cav2_p2_if_q_s_axi_rdata,
    dsp_cav2_p2_if_q_s_axi_rresp => dsp_cav2_p2_if_q_s_axi_rresp,
    dsp_cav2_p2_if_q_s_axi_rvalid => dsp_cav2_p2_if_q_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x26
  );
  dsp_cav2_p2_integrated_i_axi_lite_interface : entity work.dsp_cav2_p2_integrated_i_axi_lite_interface 
  port map (
    cav2_p2_integrated_i => cav2_p2_integrated_i,
    dsp_cav2_p2_integrated_i_s_axi_awaddr => dsp_cav2_p2_integrated_i_s_axi_awaddr,
    dsp_cav2_p2_integrated_i_s_axi_awvalid => dsp_cav2_p2_integrated_i_s_axi_awvalid,
    dsp_cav2_p2_integrated_i_s_axi_wdata => dsp_cav2_p2_integrated_i_s_axi_wdata,
    dsp_cav2_p2_integrated_i_s_axi_wstrb => dsp_cav2_p2_integrated_i_s_axi_wstrb,
    dsp_cav2_p2_integrated_i_s_axi_wvalid => dsp_cav2_p2_integrated_i_s_axi_wvalid,
    dsp_cav2_p2_integrated_i_s_axi_bready => dsp_cav2_p2_integrated_i_s_axi_bready,
    dsp_cav2_p2_integrated_i_s_axi_araddr => dsp_cav2_p2_integrated_i_s_axi_araddr,
    dsp_cav2_p2_integrated_i_s_axi_arvalid => dsp_cav2_p2_integrated_i_s_axi_arvalid,
    dsp_cav2_p2_integrated_i_s_axi_rready => dsp_cav2_p2_integrated_i_s_axi_rready,
    dsp_cav2_p2_integrated_i_aresetn => dsp_aresetn,
    dsp_cav2_p2_integrated_i_aclk => dsp_clk,
    dsp_cav2_p2_integrated_i_s_axi_awready => dsp_cav2_p2_integrated_i_s_axi_awready,
    dsp_cav2_p2_integrated_i_s_axi_wready => dsp_cav2_p2_integrated_i_s_axi_wready,
    dsp_cav2_p2_integrated_i_s_axi_bresp => dsp_cav2_p2_integrated_i_s_axi_bresp,
    dsp_cav2_p2_integrated_i_s_axi_bvalid => dsp_cav2_p2_integrated_i_s_axi_bvalid,
    dsp_cav2_p2_integrated_i_s_axi_arready => dsp_cav2_p2_integrated_i_s_axi_arready,
    dsp_cav2_p2_integrated_i_s_axi_rdata => dsp_cav2_p2_integrated_i_s_axi_rdata,
    dsp_cav2_p2_integrated_i_s_axi_rresp => dsp_cav2_p2_integrated_i_s_axi_rresp,
    dsp_cav2_p2_integrated_i_s_axi_rvalid => dsp_cav2_p2_integrated_i_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x29
  );
  dsp_cav2_p2_integrated_q_axi_lite_interface : entity work.dsp_cav2_p2_integrated_q_axi_lite_interface 
  port map (
    cav2_p2_integrated_q => cav2_p2_integrated_q,
    dsp_cav2_p2_integrated_q_s_axi_awaddr => dsp_cav2_p2_integrated_q_s_axi_awaddr,
    dsp_cav2_p2_integrated_q_s_axi_awvalid => dsp_cav2_p2_integrated_q_s_axi_awvalid,
    dsp_cav2_p2_integrated_q_s_axi_wdata => dsp_cav2_p2_integrated_q_s_axi_wdata,
    dsp_cav2_p2_integrated_q_s_axi_wstrb => dsp_cav2_p2_integrated_q_s_axi_wstrb,
    dsp_cav2_p2_integrated_q_s_axi_wvalid => dsp_cav2_p2_integrated_q_s_axi_wvalid,
    dsp_cav2_p2_integrated_q_s_axi_bready => dsp_cav2_p2_integrated_q_s_axi_bready,
    dsp_cav2_p2_integrated_q_s_axi_araddr => dsp_cav2_p2_integrated_q_s_axi_araddr,
    dsp_cav2_p2_integrated_q_s_axi_arvalid => dsp_cav2_p2_integrated_q_s_axi_arvalid,
    dsp_cav2_p2_integrated_q_s_axi_rready => dsp_cav2_p2_integrated_q_s_axi_rready,
    dsp_cav2_p2_integrated_q_aresetn => dsp_aresetn,
    dsp_cav2_p2_integrated_q_aclk => dsp_clk,
    dsp_cav2_p2_integrated_q_s_axi_awready => dsp_cav2_p2_integrated_q_s_axi_awready,
    dsp_cav2_p2_integrated_q_s_axi_wready => dsp_cav2_p2_integrated_q_s_axi_wready,
    dsp_cav2_p2_integrated_q_s_axi_bresp => dsp_cav2_p2_integrated_q_s_axi_bresp,
    dsp_cav2_p2_integrated_q_s_axi_bvalid => dsp_cav2_p2_integrated_q_s_axi_bvalid,
    dsp_cav2_p2_integrated_q_s_axi_arready => dsp_cav2_p2_integrated_q_s_axi_arready,
    dsp_cav2_p2_integrated_q_s_axi_rdata => dsp_cav2_p2_integrated_q_s_axi_rdata,
    dsp_cav2_p2_integrated_q_s_axi_rresp => dsp_cav2_p2_integrated_q_s_axi_rresp,
    dsp_cav2_p2_integrated_q_s_axi_rvalid => dsp_cav2_p2_integrated_q_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x32
  );
  dsp_cav2_p2_phase_out_axi_lite_interface : entity work.dsp_cav2_p2_phase_out_axi_lite_interface 
  port map (
    cav2_p2_phase_out => cav2_p2_phase_out,
    dsp_cav2_p2_phase_out_s_axi_awaddr => dsp_cav2_p2_phase_out_s_axi_awaddr,
    dsp_cav2_p2_phase_out_s_axi_awvalid => dsp_cav2_p2_phase_out_s_axi_awvalid,
    dsp_cav2_p2_phase_out_s_axi_wdata => dsp_cav2_p2_phase_out_s_axi_wdata,
    dsp_cav2_p2_phase_out_s_axi_wstrb => dsp_cav2_p2_phase_out_s_axi_wstrb,
    dsp_cav2_p2_phase_out_s_axi_wvalid => dsp_cav2_p2_phase_out_s_axi_wvalid,
    dsp_cav2_p2_phase_out_s_axi_bready => dsp_cav2_p2_phase_out_s_axi_bready,
    dsp_cav2_p2_phase_out_s_axi_araddr => dsp_cav2_p2_phase_out_s_axi_araddr,
    dsp_cav2_p2_phase_out_s_axi_arvalid => dsp_cav2_p2_phase_out_s_axi_arvalid,
    dsp_cav2_p2_phase_out_s_axi_rready => dsp_cav2_p2_phase_out_s_axi_rready,
    dsp_cav2_p2_phase_out_aresetn => dsp_aresetn,
    dsp_cav2_p2_phase_out_aclk => dsp_clk,
    dsp_cav2_p2_phase_out_s_axi_awready => dsp_cav2_p2_phase_out_s_axi_awready,
    dsp_cav2_p2_phase_out_s_axi_wready => dsp_cav2_p2_phase_out_s_axi_wready,
    dsp_cav2_p2_phase_out_s_axi_bresp => dsp_cav2_p2_phase_out_s_axi_bresp,
    dsp_cav2_p2_phase_out_s_axi_bvalid => dsp_cav2_p2_phase_out_s_axi_bvalid,
    dsp_cav2_p2_phase_out_s_axi_arready => dsp_cav2_p2_phase_out_s_axi_arready,
    dsp_cav2_p2_phase_out_s_axi_rdata => dsp_cav2_p2_phase_out_s_axi_rdata,
    dsp_cav2_p2_phase_out_s_axi_rresp => dsp_cav2_p2_phase_out_s_axi_rresp,
    dsp_cav2_p2_phase_out_s_axi_rvalid => dsp_cav2_p2_phase_out_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x25
  );
  dsp_cav2_p2_window_start_axi_lite_interface : entity work.dsp_cav2_p2_window_start_axi_lite_interface 
  port map (
    dsp_cav2_p2_window_start_s_axi_awaddr => dsp_cav2_p2_window_start_s_axi_awaddr,
    dsp_cav2_p2_window_start_s_axi_awvalid => dsp_cav2_p2_window_start_s_axi_awvalid,
    dsp_cav2_p2_window_start_s_axi_wdata => dsp_cav2_p2_window_start_s_axi_wdata,
    dsp_cav2_p2_window_start_s_axi_wstrb => dsp_cav2_p2_window_start_s_axi_wstrb,
    dsp_cav2_p2_window_start_s_axi_wvalid => dsp_cav2_p2_window_start_s_axi_wvalid,
    dsp_cav2_p2_window_start_s_axi_bready => dsp_cav2_p2_window_start_s_axi_bready,
    dsp_cav2_p2_window_start_s_axi_araddr => dsp_cav2_p2_window_start_s_axi_araddr,
    dsp_cav2_p2_window_start_s_axi_arvalid => dsp_cav2_p2_window_start_s_axi_arvalid,
    dsp_cav2_p2_window_start_s_axi_rready => dsp_cav2_p2_window_start_s_axi_rready,
    dsp_cav2_p2_window_start_aresetn => dsp_aresetn,
    dsp_cav2_p2_window_start_aclk => dsp_clk,
    cav2_p2_window_start => cav2_p2_window_start,
    dsp_cav2_p2_window_start_s_axi_awready => dsp_cav2_p2_window_start_s_axi_awready,
    dsp_cav2_p2_window_start_s_axi_wready => dsp_cav2_p2_window_start_s_axi_wready,
    dsp_cav2_p2_window_start_s_axi_bresp => dsp_cav2_p2_window_start_s_axi_bresp,
    dsp_cav2_p2_window_start_s_axi_bvalid => dsp_cav2_p2_window_start_s_axi_bvalid,
    dsp_cav2_p2_window_start_s_axi_arready => dsp_cav2_p2_window_start_s_axi_arready,
    dsp_cav2_p2_window_start_s_axi_rdata => dsp_cav2_p2_window_start_s_axi_rdata,
    dsp_cav2_p2_window_start_s_axi_rresp => dsp_cav2_p2_window_start_s_axi_rresp,
    dsp_cav2_p2_window_start_s_axi_rvalid => dsp_cav2_p2_window_start_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x38
  );
  dsp_cav2_p2_window_stop_axi_lite_interface : entity work.dsp_cav2_p2_window_stop_axi_lite_interface 
  port map (
    dsp_cav2_p2_window_stop_s_axi_awaddr => dsp_cav2_p2_window_stop_s_axi_awaddr,
    dsp_cav2_p2_window_stop_s_axi_awvalid => dsp_cav2_p2_window_stop_s_axi_awvalid,
    dsp_cav2_p2_window_stop_s_axi_wdata => dsp_cav2_p2_window_stop_s_axi_wdata,
    dsp_cav2_p2_window_stop_s_axi_wstrb => dsp_cav2_p2_window_stop_s_axi_wstrb,
    dsp_cav2_p2_window_stop_s_axi_wvalid => dsp_cav2_p2_window_stop_s_axi_wvalid,
    dsp_cav2_p2_window_stop_s_axi_bready => dsp_cav2_p2_window_stop_s_axi_bready,
    dsp_cav2_p2_window_stop_s_axi_araddr => dsp_cav2_p2_window_stop_s_axi_araddr,
    dsp_cav2_p2_window_stop_s_axi_arvalid => dsp_cav2_p2_window_stop_s_axi_arvalid,
    dsp_cav2_p2_window_stop_s_axi_rready => dsp_cav2_p2_window_stop_s_axi_rready,
    dsp_cav2_p2_window_stop_aresetn => dsp_aresetn,
    dsp_cav2_p2_window_stop_aclk => dsp_clk,
    cav2_p2_window_stop => cav2_p2_window_stop,
    dsp_cav2_p2_window_stop_s_axi_awready => dsp_cav2_p2_window_stop_s_axi_awready,
    dsp_cav2_p2_window_stop_s_axi_wready => dsp_cav2_p2_window_stop_s_axi_wready,
    dsp_cav2_p2_window_stop_s_axi_bresp => dsp_cav2_p2_window_stop_s_axi_bresp,
    dsp_cav2_p2_window_stop_s_axi_bvalid => dsp_cav2_p2_window_stop_s_axi_bvalid,
    dsp_cav2_p2_window_stop_s_axi_arready => dsp_cav2_p2_window_stop_s_axi_arready,
    dsp_cav2_p2_window_stop_s_axi_rdata => dsp_cav2_p2_window_stop_s_axi_rdata,
    dsp_cav2_p2_window_stop_s_axi_rresp => dsp_cav2_p2_window_stop_s_axi_rresp,
    dsp_cav2_p2_window_stop_s_axi_rvalid => dsp_cav2_p2_window_stop_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x41
  );
  dsp_ref_window_start_axi_lite_interface : entity work.dsp_ref_window_start_axi_lite_interface 
  port map (
    dsp_ref_window_start_s_axi_awaddr => dsp_ref_window_start_s_axi_awaddr,
    dsp_ref_window_start_s_axi_awvalid => dsp_ref_window_start_s_axi_awvalid,
    dsp_ref_window_start_s_axi_wdata => dsp_ref_window_start_s_axi_wdata,
    dsp_ref_window_start_s_axi_wstrb => dsp_ref_window_start_s_axi_wstrb,
    dsp_ref_window_start_s_axi_wvalid => dsp_ref_window_start_s_axi_wvalid,
    dsp_ref_window_start_s_axi_bready => dsp_ref_window_start_s_axi_bready,
    dsp_ref_window_start_s_axi_araddr => dsp_ref_window_start_s_axi_araddr,
    dsp_ref_window_start_s_axi_arvalid => dsp_ref_window_start_s_axi_arvalid,
    dsp_ref_window_start_s_axi_rready => dsp_ref_window_start_s_axi_rready,
    dsp_ref_window_start_aresetn => dsp_aresetn,
    dsp_ref_window_start_aclk => dsp_clk,
    ref_window_start => ref_window_start,
    dsp_ref_window_start_s_axi_awready => dsp_ref_window_start_s_axi_awready,
    dsp_ref_window_start_s_axi_wready => dsp_ref_window_start_s_axi_wready,
    dsp_ref_window_start_s_axi_bresp => dsp_ref_window_start_s_axi_bresp,
    dsp_ref_window_start_s_axi_bvalid => dsp_ref_window_start_s_axi_bvalid,
    dsp_ref_window_start_s_axi_arready => dsp_ref_window_start_s_axi_arready,
    dsp_ref_window_start_s_axi_rdata => dsp_ref_window_start_s_axi_rdata,
    dsp_ref_window_start_s_axi_rresp => dsp_ref_window_start_s_axi_rresp,
    dsp_ref_window_start_s_axi_rvalid => dsp_ref_window_start_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x15
  );
  dsp_ref_window_stop_axi_lite_interface : entity work.dsp_ref_window_stop_axi_lite_interface 
  port map (
    dsp_ref_window_stop_s_axi_awaddr => dsp_ref_window_stop_s_axi_awaddr,
    dsp_ref_window_stop_s_axi_awvalid => dsp_ref_window_stop_s_axi_awvalid,
    dsp_ref_window_stop_s_axi_wdata => dsp_ref_window_stop_s_axi_wdata,
    dsp_ref_window_stop_s_axi_wstrb => dsp_ref_window_stop_s_axi_wstrb,
    dsp_ref_window_stop_s_axi_wvalid => dsp_ref_window_stop_s_axi_wvalid,
    dsp_ref_window_stop_s_axi_bready => dsp_ref_window_stop_s_axi_bready,
    dsp_ref_window_stop_s_axi_araddr => dsp_ref_window_stop_s_axi_araddr,
    dsp_ref_window_stop_s_axi_arvalid => dsp_ref_window_stop_s_axi_arvalid,
    dsp_ref_window_stop_s_axi_rready => dsp_ref_window_stop_s_axi_rready,
    dsp_ref_window_stop_aresetn => dsp_aresetn,
    dsp_ref_window_stop_aclk => dsp_clk,
    ref_window_stop => ref_window_stop,
    dsp_ref_window_stop_s_axi_awready => dsp_ref_window_stop_s_axi_awready,
    dsp_ref_window_stop_s_axi_wready => dsp_ref_window_stop_s_axi_wready,
    dsp_ref_window_stop_s_axi_bresp => dsp_ref_window_stop_s_axi_bresp,
    dsp_ref_window_stop_s_axi_bvalid => dsp_ref_window_stop_s_axi_bvalid,
    dsp_ref_window_stop_s_axi_arready => dsp_ref_window_stop_s_axi_arready,
    dsp_ref_window_stop_s_axi_rdata => dsp_ref_window_stop_s_axi_rdata,
    dsp_ref_window_stop_s_axi_rresp => dsp_ref_window_stop_s_axi_rresp,
    dsp_ref_window_stop_s_axi_rvalid => dsp_ref_window_stop_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x8
  );
  dsp_rf_ref_amp_axi_lite_interface : entity work.dsp_rf_ref_amp_axi_lite_interface 
  port map (
    rf_ref_amp => rf_ref_amp,
    dsp_rf_ref_amp_s_axi_awaddr => dsp_rf_ref_amp_s_axi_awaddr,
    dsp_rf_ref_amp_s_axi_awvalid => dsp_rf_ref_amp_s_axi_awvalid,
    dsp_rf_ref_amp_s_axi_wdata => dsp_rf_ref_amp_s_axi_wdata,
    dsp_rf_ref_amp_s_axi_wstrb => dsp_rf_ref_amp_s_axi_wstrb,
    dsp_rf_ref_amp_s_axi_wvalid => dsp_rf_ref_amp_s_axi_wvalid,
    dsp_rf_ref_amp_s_axi_bready => dsp_rf_ref_amp_s_axi_bready,
    dsp_rf_ref_amp_s_axi_araddr => dsp_rf_ref_amp_s_axi_araddr,
    dsp_rf_ref_amp_s_axi_arvalid => dsp_rf_ref_amp_s_axi_arvalid,
    dsp_rf_ref_amp_s_axi_rready => dsp_rf_ref_amp_s_axi_rready,
    dsp_rf_ref_amp_aresetn => dsp_aresetn,
    dsp_rf_ref_amp_aclk => dsp_clk,
    dsp_rf_ref_amp_s_axi_awready => dsp_rf_ref_amp_s_axi_awready,
    dsp_rf_ref_amp_s_axi_wready => dsp_rf_ref_amp_s_axi_wready,
    dsp_rf_ref_amp_s_axi_bresp => dsp_rf_ref_amp_s_axi_bresp,
    dsp_rf_ref_amp_s_axi_bvalid => dsp_rf_ref_amp_s_axi_bvalid,
    dsp_rf_ref_amp_s_axi_arready => dsp_rf_ref_amp_s_axi_arready,
    dsp_rf_ref_amp_s_axi_rdata => dsp_rf_ref_amp_s_axi_rdata,
    dsp_rf_ref_amp_s_axi_rresp => dsp_rf_ref_amp_s_axi_rresp,
    dsp_rf_ref_amp_s_axi_rvalid => dsp_rf_ref_amp_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x10
  );
  dsp_rf_ref_chan_sel_axi_lite_interface : entity work.dsp_rf_ref_chan_sel_axi_lite_interface 
  port map (
    dsp_rf_ref_chan_sel_s_axi_awaddr => dsp_rf_ref_chan_sel_s_axi_awaddr,
    dsp_rf_ref_chan_sel_s_axi_awvalid => dsp_rf_ref_chan_sel_s_axi_awvalid,
    dsp_rf_ref_chan_sel_s_axi_wdata => dsp_rf_ref_chan_sel_s_axi_wdata,
    dsp_rf_ref_chan_sel_s_axi_wstrb => dsp_rf_ref_chan_sel_s_axi_wstrb,
    dsp_rf_ref_chan_sel_s_axi_wvalid => dsp_rf_ref_chan_sel_s_axi_wvalid,
    dsp_rf_ref_chan_sel_s_axi_bready => dsp_rf_ref_chan_sel_s_axi_bready,
    dsp_rf_ref_chan_sel_s_axi_araddr => dsp_rf_ref_chan_sel_s_axi_araddr,
    dsp_rf_ref_chan_sel_s_axi_arvalid => dsp_rf_ref_chan_sel_s_axi_arvalid,
    dsp_rf_ref_chan_sel_s_axi_rready => dsp_rf_ref_chan_sel_s_axi_rready,
    dsp_rf_ref_chan_sel_aresetn => dsp_aresetn,
    dsp_rf_ref_chan_sel_aclk => dsp_clk,
    rf_ref_chan_sel => rf_ref_chan_sel,
    dsp_rf_ref_chan_sel_s_axi_awready => dsp_rf_ref_chan_sel_s_axi_awready,
    dsp_rf_ref_chan_sel_s_axi_wready => dsp_rf_ref_chan_sel_s_axi_wready,
    dsp_rf_ref_chan_sel_s_axi_bresp => dsp_rf_ref_chan_sel_s_axi_bresp,
    dsp_rf_ref_chan_sel_s_axi_bvalid => dsp_rf_ref_chan_sel_s_axi_bvalid,
    dsp_rf_ref_chan_sel_s_axi_arready => dsp_rf_ref_chan_sel_s_axi_arready,
    dsp_rf_ref_chan_sel_s_axi_rdata => dsp_rf_ref_chan_sel_s_axi_rdata,
    dsp_rf_ref_chan_sel_s_axi_rresp => dsp_rf_ref_chan_sel_s_axi_rresp,
    dsp_rf_ref_chan_sel_s_axi_rvalid => dsp_rf_ref_chan_sel_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x13
  );
  dsp_rf_ref_i_axi_lite_interface : entity work.dsp_rf_ref_i_axi_lite_interface 
  port map (
    rf_ref_i => rf_ref_i,
    dsp_rf_ref_i_s_axi_awaddr => dsp_rf_ref_i_s_axi_awaddr,
    dsp_rf_ref_i_s_axi_awvalid => dsp_rf_ref_i_s_axi_awvalid,
    dsp_rf_ref_i_s_axi_wdata => dsp_rf_ref_i_s_axi_wdata,
    dsp_rf_ref_i_s_axi_wstrb => dsp_rf_ref_i_s_axi_wstrb,
    dsp_rf_ref_i_s_axi_wvalid => dsp_rf_ref_i_s_axi_wvalid,
    dsp_rf_ref_i_s_axi_bready => dsp_rf_ref_i_s_axi_bready,
    dsp_rf_ref_i_s_axi_araddr => dsp_rf_ref_i_s_axi_araddr,
    dsp_rf_ref_i_s_axi_arvalid => dsp_rf_ref_i_s_axi_arvalid,
    dsp_rf_ref_i_s_axi_rready => dsp_rf_ref_i_s_axi_rready,
    dsp_rf_ref_i_aresetn => dsp_aresetn,
    dsp_rf_ref_i_aclk => dsp_clk,
    dsp_rf_ref_i_s_axi_awready => dsp_rf_ref_i_s_axi_awready,
    dsp_rf_ref_i_s_axi_wready => dsp_rf_ref_i_s_axi_wready,
    dsp_rf_ref_i_s_axi_bresp => dsp_rf_ref_i_s_axi_bresp,
    dsp_rf_ref_i_s_axi_bvalid => dsp_rf_ref_i_s_axi_bvalid,
    dsp_rf_ref_i_s_axi_arready => dsp_rf_ref_i_s_axi_arready,
    dsp_rf_ref_i_s_axi_rdata => dsp_rf_ref_i_s_axi_rdata,
    dsp_rf_ref_i_s_axi_rresp => dsp_rf_ref_i_s_axi_rresp,
    dsp_rf_ref_i_s_axi_rvalid => dsp_rf_ref_i_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x16
  );
  dsp_rf_ref_phase_axi_lite_interface : entity work.dsp_rf_ref_phase_axi_lite_interface 
  port map (
    rf_ref_phase => rf_ref_phase,
    dsp_rf_ref_phase_s_axi_awaddr => dsp_rf_ref_phase_s_axi_awaddr,
    dsp_rf_ref_phase_s_axi_awvalid => dsp_rf_ref_phase_s_axi_awvalid,
    dsp_rf_ref_phase_s_axi_wdata => dsp_rf_ref_phase_s_axi_wdata,
    dsp_rf_ref_phase_s_axi_wstrb => dsp_rf_ref_phase_s_axi_wstrb,
    dsp_rf_ref_phase_s_axi_wvalid => dsp_rf_ref_phase_s_axi_wvalid,
    dsp_rf_ref_phase_s_axi_bready => dsp_rf_ref_phase_s_axi_bready,
    dsp_rf_ref_phase_s_axi_araddr => dsp_rf_ref_phase_s_axi_araddr,
    dsp_rf_ref_phase_s_axi_arvalid => dsp_rf_ref_phase_s_axi_arvalid,
    dsp_rf_ref_phase_s_axi_rready => dsp_rf_ref_phase_s_axi_rready,
    dsp_rf_ref_phase_aresetn => dsp_aresetn,
    dsp_rf_ref_phase_aclk => dsp_clk,
    dsp_rf_ref_phase_s_axi_awready => dsp_rf_ref_phase_s_axi_awready,
    dsp_rf_ref_phase_s_axi_wready => dsp_rf_ref_phase_s_axi_wready,
    dsp_rf_ref_phase_s_axi_bresp => dsp_rf_ref_phase_s_axi_bresp,
    dsp_rf_ref_phase_s_axi_bvalid => dsp_rf_ref_phase_s_axi_bvalid,
    dsp_rf_ref_phase_s_axi_arready => dsp_rf_ref_phase_s_axi_arready,
    dsp_rf_ref_phase_s_axi_rdata => dsp_rf_ref_phase_s_axi_rdata,
    dsp_rf_ref_phase_s_axi_rresp => dsp_rf_ref_phase_s_axi_rresp,
    dsp_rf_ref_phase_s_axi_rvalid => dsp_rf_ref_phase_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x19
  );
  dsp_rf_ref_q_axi_lite_interface : entity work.dsp_rf_ref_q_axi_lite_interface 
  port map (
    rf_ref_q => rf_ref_q,
    dsp_rf_ref_q_s_axi_awaddr => dsp_rf_ref_q_s_axi_awaddr,
    dsp_rf_ref_q_s_axi_awvalid => dsp_rf_ref_q_s_axi_awvalid,
    dsp_rf_ref_q_s_axi_wdata => dsp_rf_ref_q_s_axi_wdata,
    dsp_rf_ref_q_s_axi_wstrb => dsp_rf_ref_q_s_axi_wstrb,
    dsp_rf_ref_q_s_axi_wvalid => dsp_rf_ref_q_s_axi_wvalid,
    dsp_rf_ref_q_s_axi_bready => dsp_rf_ref_q_s_axi_bready,
    dsp_rf_ref_q_s_axi_araddr => dsp_rf_ref_q_s_axi_araddr,
    dsp_rf_ref_q_s_axi_arvalid => dsp_rf_ref_q_s_axi_arvalid,
    dsp_rf_ref_q_s_axi_rready => dsp_rf_ref_q_s_axi_rready,
    dsp_rf_ref_q_aresetn => dsp_aresetn,
    dsp_rf_ref_q_aclk => dsp_clk,
    dsp_rf_ref_q_s_axi_awready => dsp_rf_ref_q_s_axi_awready,
    dsp_rf_ref_q_s_axi_wready => dsp_rf_ref_q_s_axi_wready,
    dsp_rf_ref_q_s_axi_bresp => dsp_rf_ref_q_s_axi_bresp,
    dsp_rf_ref_q_s_axi_bvalid => dsp_rf_ref_q_s_axi_bvalid,
    dsp_rf_ref_q_s_axi_arready => dsp_rf_ref_q_s_axi_arready,
    dsp_rf_ref_q_s_axi_rdata => dsp_rf_ref_q_s_axi_rdata,
    dsp_rf_ref_q_s_axi_rresp => dsp_rf_ref_q_s_axi_rresp,
    dsp_rf_ref_q_s_axi_rvalid => dsp_rf_ref_q_s_axi_rvalid,
    dsp_clk => dsp_clk_net_x4
  );
  example_default_clock_driver : entity work.example_default_clock_driver 
  port map (
    axi_lite_sysclk => axi_lite_clk_net,
    axi_lite_sysce => '1',
    axi_lite_sysclr => '0',
    dsp_sysclk => dsp_clk_net_x4,
    dsp_sysce => '1',
    dsp_sysclr => '0',
    axi_lite_clk1 => clk_1_net_x0,
    axi_lite_ce1 => ce_1_net_x0,
    axi_lite_clk8 => clk_8_net,
    axi_lite_ce8 => ce_8_net,
    dsp_clk1 => clk_1_net,
    dsp_ce1 => ce_1_net,
    dsp_clk12 => clk_12_net,
    dsp_ce12 => ce_12_net
  );
  example_struct : entity work.example_struct 
  port map (
    scratchpad => scratchpad,
    cav1_nco_phase_adj => cav1_nco_phase_adj,
    cav1_nco_phase_reset => cav1_nco_phase_reset,
    cav1_p1_chan_sel => cav1_p1_chan_sel,
    cav1_p1_window_start => cav1_p1_window_start,
    cav1_p1_window_stop => cav1_p1_window_stop,
    cav1_p2_chan_sel => cav1_p2_chan_sel,
    cav1_p2_window_start => cav1_p2_window_start,
    cav1_p2_window_stop => cav1_p2_window_stop,
    cav2_nco_phase_adj => cav2_nco_phase_adj,
    cav2_nco_phase_reset => cav2_nco_phase_reset,
    cav2_p1_chan_sel => cav2_p1_chan_sel,
    cav2_p1_window_start => cav2_p1_window_start,
    cav2_p1_window_stop => cav2_p1_window_stop,
    cav2_p2_chan_sel => cav2_p2_chan_sel,
    cav2_p2_window_start => cav2_p2_window_start,
    cav2_p2_window_stop => cav2_p2_window_stop,
    amp => amp,
    ddcchannel => ddcchannel,
    ddci => ddci,
    ddcq => ddcq,
    ddcsync => ddcsync,
    phase => phase,
    phaseampchannel => phaseampchannel,
    phaseampsync => phaseampsync,
    ref_window_start => ref_window_start,
    ref_window_stop => ref_window_stop,
    rf_ref_chan_sel => rf_ref_chan_sel,
    clk_1_x0 => clk_1_net_x0,
    ce_1_x0 => ce_1_net_x0,
    clk_8 => clk_8_net,
    ce_8 => ce_8_net,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    clk_12 => clk_12_net,
    ce_12 => ce_12_net,
    status_0 => status_0,
    cav1_p1_amp_out => cav1_p1_amp_out,
    cav1_p1_comparison_i => cav1_p1_comparison_i,
    cav1_p1_comparison_phase => cav1_p1_comparison_phase,
    cav1_p1_comparison_q_x0 => cav1_p1_comparison_q,
    cav1_p1_dc_freq => cav1_p1_dc_freq,
    cav1_p1_dc_img => cav1_p1_dc_img,
    cav1_p1_dc_real => cav1_p1_dc_real,
    cav1_p1_if_amp => cav1_p1_if_amp,
    cav1_p1_if_i => cav1_p1_if_i,
    cav1_p1_if_phase => cav1_p1_if_phase,
    cav1_p1_if_q => cav1_p1_if_q,
    cav1_p1_integrated_i => cav1_p1_integrated_i,
    cav1_p1_integrated_q => cav1_p1_integrated_q,
    cav1_p1_phase_out => cav1_p1_phase_out,
    cav1_p2_amp_out => cav1_p2_amp_out,
    cav1_p2_comparison_i => cav1_p2_comparison_i,
    cav1_p2_comparison_phase => cav1_p2_comparison_phase,
    cav1_p2_comparison_q => cav1_p2_comparison_q,
    cav1_p2_dc_freq => cav1_p2_dc_freq,
    cav1_p2_dc_img => cav1_p2_dc_img,
    cav1_p2_dc_real => cav1_p2_dc_real,
    cav1_p2_if_amp => cav1_p2_if_amp,
    cav1_p2_if_i => cav1_p2_if_i,
    cav1_p2_if_phase => cav1_p2_if_phase,
    cav1_p2_if_q => cav1_p2_if_q,
    cav1_p2_integrated_i => cav1_p2_integrated_i,
    cav1_p2_integrated_q => cav1_p2_integrated_q,
    cav1_p2_phase_out => cav1_p2_phase_out,
    cav1_p1_comparison_q => cav1_p1_comparison_q_x0,
    cav2_p1_amp_out => cav2_p1_amp_out,
    cav2_p1_comparison_i => cav2_p1_comparison_i,
    cav2_p1_comparison_phase => cav2_p1_comparison_phase,
    cav2_p1_dc_freq => cav2_p1_dc_freq,
    cav2_p1_dc_img => cav2_p1_dc_img,
    cav2_p1_dc_real => cav2_p1_dc_real,
    cav2_p1_if_amp => cav2_p1_if_amp,
    cav2_p1_if_i => cav2_p1_if_i,
    cav2_p1_if_phase => cav2_p1_if_phase,
    cav2_p1_if_q => cav2_p1_if_q,
    cav2_p1_integrated_i => cav2_p1_integrated_i,
    cav2_p1_integrated_q => cav2_p1_integrated_q,
    cav2_p1_phase_out => cav2_p1_phase_out,
    cav2_p2_amp_out => cav2_p2_amp_out,
    cav2_p2_comparison_i => cav2_p2_comparison_i,
    cav2_p2_comparison_phase => cav2_p2_comparison_phase,
    cav2_p2_comparison_q => cav2_p2_comparison_q,
    cav2_p2_dc_freq => cav2_p2_dc_freq,
    cav2_p2_dc_img => cav2_p2_dc_img,
    cav2_p2_dc_real => cav2_p2_dc_real,
    cav2_p2_if_amp => cav2_p2_if_amp,
    cav2_p2_if_i => cav2_p2_if_i,
    cav2_p2_if_phase => cav2_p2_if_phase,
    cav2_p2_if_q => cav2_p2_if_q,
    cav2_p2_integrated_i => cav2_p2_integrated_i,
    cav2_p2_integrated_q => cav2_p2_integrated_q,
    cav2_p2_phase_out => cav2_p2_phase_out,
    rf_ref_amp => rf_ref_amp,
    rf_ref_i => rf_ref_i,
    rf_ref_phase => rf_ref_phase,
    rf_ref_q => rf_ref_q
  );
end structural;
