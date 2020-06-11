-- Generated from Simulink block exampleModel_bus_axi/example/BSA_ctl
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_bsa_ctl is
  port (
    in1_1 : in std_logic_vector( 1-1 downto 0 );
    in1_2 : in std_logic_vector( 1-1 downto 0 );
    in1_3 : in std_logic_vector( 1-1 downto 0 );
    in1_4 : in std_logic_vector( 1-1 downto 0 );
    in1_5 : in std_logic_vector( 1-1 downto 0 );
    in1_6 : in std_logic_vector( 1-1 downto 0 );
    in1_7 : in std_logic_vector( 1-1 downto 0 );
    in1_8 : in std_logic_vector( 1-1 downto 0 );
    in1_9 : in std_logic_vector( 1-1 downto 0 );
    in1_10 : in std_logic_vector( 1-1 downto 0 );
    in1_11 : in std_logic_vector( 2-1 downto 0 );
    in1_12 : in std_logic_vector( 2-1 downto 0 );
    in1_13 : in std_logic_vector( 2-1 downto 0 );
    in1_14 : in std_logic_vector( 2-1 downto 0 );
    in1_15 : in std_logic_vector( 2-1 downto 0 );
    in1_16 : in std_logic_vector( 2-1 downto 0 );
    in1_17 : in std_logic_vector( 2-1 downto 0 );
    in1_18 : in std_logic_vector( 2-1 downto 0 );
    clk_1_x0 : in std_logic;
    ce_1 : in std_logic;
    clk_1 : in std_logic;
    ce_1_x0 : in std_logic;
    diagnrst_ctl : out std_logic_vector( 1-1 downto 0 );
    diagnsync_ctl : out std_logic_vector( 1-1 downto 0 );
    diag8fixed_ctl : out std_logic_vector( 1-1 downto 0 );
    diag6sevr_ctl : out std_logic_vector( 2-1 downto 0 );
    diag2sevr_ctl : out std_logic_vector( 2-1 downto 0 );
    diag3sevr_ctl : out std_logic_vector( 2-1 downto 0 );
    diag4sevr_ctl : out std_logic_vector( 2-1 downto 0 );
    diag5sevr_ctl : out std_logic_vector( 2-1 downto 0 );
    diag7sevr_ctl : out std_logic_vector( 2-1 downto 0 );
    diag8sevr_ctl : out std_logic_vector( 2-1 downto 0 );
    diag1fixed_ctl : out std_logic_vector( 1-1 downto 0 );
    diag1sevr_ctl : out std_logic_vector( 2-1 downto 0 );
    diag2fixed_ctl : out std_logic_vector( 1-1 downto 0 );
    diag3fixed_ctl : out std_logic_vector( 1-1 downto 0 );
    diag4fixed_ctl : out std_logic_vector( 1-1 downto 0 );
    diag5fixed_ctl : out std_logic_vector( 1-1 downto 0 );
    diag6fixed_ctl : out std_logic_vector( 1-1 downto 0 );
    diag7fixed_ctl : out std_logic_vector( 1-1 downto 0 )
  );
end example_bsa_ctl;
architecture structural of example_bsa_ctl is 
  signal diag3fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag4fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diagnsync_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag2fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag4sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag5sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag6sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag7fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag8fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag1fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal register15_q_net : std_logic_vector( 2-1 downto 0 );
  signal diag2sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag3sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag1sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag5fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag6fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diagnrst_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag7sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag8sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal register35_q_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal register10_q_net : std_logic_vector( 1-1 downto 0 );
  signal register11_q_net : std_logic_vector( 2-1 downto 0 );
  signal register12_q_net : std_logic_vector( 2-1 downto 0 );
  signal register13_q_net : std_logic_vector( 2-1 downto 0 );
  signal register14_q_net : std_logic_vector( 2-1 downto 0 );
  signal register16_q_net : std_logic_vector( 2-1 downto 0 );
  signal register17_q_net : std_logic_vector( 2-1 downto 0 );
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal register3_q_net : std_logic_vector( 2-1 downto 0 );
  signal register4_q_net : std_logic_vector( 1-1 downto 0 );
  signal register5_q_net : std_logic_vector( 1-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal register7_q_net : std_logic_vector( 1-1 downto 0 );
  signal register8_q_net : std_logic_vector( 1-1 downto 0 );
  signal register9_q_net : std_logic_vector( 1-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
begin
  diagnrst_ctl_x0 <= in1_1;
  diagnsync_ctl_x0 <= in1_2;
  diag1fixed_ctl_x0 <= in1_3;
  diag2fixed_ctl_x0 <= in1_4;
  diag3fixed_ctl_x0 <= in1_5;
  diag4fixed_ctl_x0 <= in1_6;
  diag5fixed_ctl_x0 <= in1_7;
  diag6fixed_ctl_x0 <= in1_8;
  diag7fixed_ctl_x0 <= in1_9;
  diag8fixed_ctl_x0 <= in1_10;
  diag1sevr_ctl_x0 <= in1_11;
  diag2sevr_ctl_x0 <= in1_12;
  diag3sevr_ctl_x0 <= in1_13;
  diag4sevr_ctl_x0 <= in1_14;
  diag5sevr_ctl_x0 <= in1_15;
  diag6sevr_ctl_x0 <= in1_16;
  diag7sevr_ctl_x0 <= in1_17;
  diag8sevr_ctl_x0 <= in1_18;
  diagnrst_ctl <= register35_q_net;
  diagnsync_ctl <= register1_q_net;
  diag8fixed_ctl <= register10_q_net;
  diag6sevr_ctl <= register15_q_net;
  diag2sevr_ctl <= register11_q_net;
  diag3sevr_ctl <= register12_q_net;
  diag4sevr_ctl <= register13_q_net;
  diag5sevr_ctl <= register14_q_net;
  diag7sevr_ctl <= register16_q_net;
  diag8sevr_ctl <= register17_q_net;
  diag1fixed_ctl <= register2_q_net;
  diag1sevr_ctl <= register3_q_net;
  diag2fixed_ctl <= register4_q_net;
  diag3fixed_ctl <= register5_q_net;
  diag4fixed_ctl <= register6_q_net;
  diag5fixed_ctl <= register7_q_net;
  diag6fixed_ctl <= register8_q_net;
  diag7fixed_ctl <= register9_q_net;
  q_clk_net <= clk_1_x0;
  d_ce_net <= ce_1;
  d_clk_net <= clk_1;
  q_ce_net <= ce_1_x0;
  register1 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diagnsync_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register1_q_net
  );
  register10 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag8fixed_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register10_q_net
  );
  register11 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag2sevr_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register11_q_net
  );
  register12 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag3sevr_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register12_q_net
  );
  register13 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag4sevr_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register13_q_net
  );
  register14 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag5sevr_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register14_q_net
  );
  register15 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag6sevr_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register15_q_net
  );
  register16 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag7sevr_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register16_q_net
  );
  register17 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag8sevr_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register17_q_net
  );
  register2 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag1fixed_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register2_q_net
  );
  register3 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag1sevr_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register3_q_net
  );
  register35 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diagnrst_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register35_q_net
  );
  register4 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag2fixed_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register4_q_net
  );
  register5 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag3fixed_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register5_q_net
  );
  register6 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag4fixed_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register6_q_net
  );
  register8 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag6fixed_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register8_q_net
  );
  register9 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag7fixed_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register9_q_net
  );
  register7 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag5fixed_ctl_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register7_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_subsystem is
  port (
    cav1_p1_if_amp : in std_logic_vector( 18-1 downto 0 );
    cav1_p1_if_phase : in std_logic_vector( 18-1 downto 0 );
    cav1_p1_if_i : in std_logic_vector( 18-1 downto 0 );
    cav1_p1_if_q : in std_logic_vector( 18-1 downto 0 );
    cav1_p1_dc_real : in std_logic_vector( 29-1 downto 0 );
    cav1_p1_dc_img : in std_logic_vector( 29-1 downto 0 );
    cav1_p1_dc_freq : in std_logic_vector( 26-1 downto 0 );
    cav1_p1_integrated_i : in std_logic_vector( 18-1 downto 0 );
    cav1_p1_integrated_q : in std_logic_vector( 18-1 downto 0 );
    cav1_p1_phase_out : in std_logic_vector( 18-1 downto 0 );
    cav1_p1_amp_out : in std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_i : in std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_q : in std_logic_vector( 18-1 downto 0 );
    cav1_p1_comparison_phase : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_amp : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_phase : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_i : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_q : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_dc_real : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_dc_img : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_dc_freq : in std_logic_vector( 26-1 downto 0 );
    cav1_p2_integrated_i : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_q : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_phase_out : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_amp_out : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_i : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_q : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_phase : in std_logic_vector( 18-1 downto 0 );
    clk_1_x0 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    clk_1 : in std_logic;
    ce_1_x0 : in std_logic;
    p1_1 : out std_logic_vector( 18-1 downto 0 );
    p2_1 : out std_logic_vector( 18-1 downto 0 );
    p1_2 : out std_logic_vector( 18-1 downto 0 );
    p1_3 : out std_logic_vector( 18-1 downto 0 );
    p1_4 : out std_logic_vector( 18-1 downto 0 );
    p1_5 : out std_logic_vector( 29-1 downto 0 );
    p1_6 : out std_logic_vector( 29-1 downto 0 );
    p1_7 : out std_logic_vector( 26-1 downto 0 );
    p1_8 : out std_logic_vector( 18-1 downto 0 );
    p1_9 : out std_logic_vector( 18-1 downto 0 );
    p1_10 : out std_logic_vector( 18-1 downto 0 );
    p1_11 : out std_logic_vector( 18-1 downto 0 );
    p1_12 : out std_logic_vector( 18-1 downto 0 );
    p1_13 : out std_logic_vector( 18-1 downto 0 );
    p1_14 : out std_logic_vector( 18-1 downto 0 );
    p2_2 : out std_logic_vector( 18-1 downto 0 );
    p2_3 : out std_logic_vector( 18-1 downto 0 );
    p2_4 : out std_logic_vector( 18-1 downto 0 );
    p2_5 : out std_logic_vector( 18-1 downto 0 );
    p2_6 : out std_logic_vector( 18-1 downto 0 );
    p2_7 : out std_logic_vector( 26-1 downto 0 );
    p2_8 : out std_logic_vector( 18-1 downto 0 );
    p2_9 : out std_logic_vector( 18-1 downto 0 );
    p2_10 : out std_logic_vector( 18-1 downto 0 );
    p2_11 : out std_logic_vector( 18-1 downto 0 );
    p2_12 : out std_logic_vector( 18-1 downto 0 );
    p2_13 : out std_logic_vector( 18-1 downto 0 );
    p2_14 : out std_logic_vector( 18-1 downto 0 )
  );
end example_subsystem;
architecture structural of example_subsystem is 
  signal c1p1_if_amp : std_logic_vector( 18-1 downto 0 );
  signal c1p2_if_amp : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant18_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant19_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant21_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant23_op_net : std_logic_vector( 18-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net_x0 : std_logic;
  signal c1p1_if_phi : std_logic_vector( 18-1 downto 0 );
  signal c1p1_if_i : std_logic_vector( 18-1 downto 0 );
  signal c1p1_if_q : std_logic_vector( 18-1 downto 0 );
  signal c1p1_dc_i : std_logic_vector( 29-1 downto 0 );
  signal c1p1_dc_q : std_logic_vector( 29-1 downto 0 );
  signal c1p1_dc_freq : std_logic_vector( 26-1 downto 0 );
  signal c1p1_integ_i : std_logic_vector( 18-1 downto 0 );
  signal c1p1_integ_q : std_logic_vector( 18-1 downto 0 );
  signal c1p1_phi_out : std_logic_vector( 18-1 downto 0 );
  signal c1p1_amp_out : std_logic_vector( 18-1 downto 0 );
  signal c1p1_comp_i : std_logic_vector( 18-1 downto 0 );
  signal c1p1_comp_q : std_logic_vector( 18-1 downto 0 );
  signal c1p1_comp_phi : std_logic_vector( 18-1 downto 0 );
  signal c1p2_if_phi : std_logic_vector( 18-1 downto 0 );
  signal c1p2_if_i : std_logic_vector( 18-1 downto 0 );
  signal c1p2_if_q : std_logic_vector( 18-1 downto 0 );
  signal c1p2_dc_i : std_logic_vector( 18-1 downto 0 );
  signal c1p2_dc_q : std_logic_vector( 18-1 downto 0 );
  signal c1p2_dc_freq : std_logic_vector( 26-1 downto 0 );
  signal c1p2_integ_i : std_logic_vector( 18-1 downto 0 );
  signal c1p2_integ_q : std_logic_vector( 18-1 downto 0 );
  signal c1p2_phi_out : std_logic_vector( 18-1 downto 0 );
  signal c1p2_amp_out : std_logic_vector( 18-1 downto 0 );
  signal c1p2_comp_i : std_logic_vector( 18-1 downto 0 );
  signal c1p2_comp_q : std_logic_vector( 18-1 downto 0 );
  signal c1p2_comp_phi : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 29-1 downto 0 );
  signal register1_q_net : std_logic_vector( 29-1 downto 0 );
  signal constant_op_net : std_logic_vector( 26-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal d_clk_net : std_logic;
  signal down_sample1_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 18-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 26-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant12_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant14_op_net : std_logic_vector( 18-1 downto 0 );
  signal q_ce_net : std_logic;
  signal q_ce_net_x0 : std_logic;
begin
  p1_1 <= c1p1_if_amp;
  p2_1 <= c1p2_if_amp;
  p1_2 <= c1p1_if_phi;
  p1_3 <= c1p1_if_i;
  p1_4 <= c1p1_if_q;
  p1_5 <= c1p1_dc_i;
  p1_6 <= c1p1_dc_q;
  p1_7 <= c1p1_dc_freq;
  p1_8 <= c1p1_integ_i;
  p1_9 <= c1p1_integ_q;
  p1_10 <= c1p1_phi_out;
  p1_11 <= c1p1_amp_out;
  p1_12 <= c1p1_comp_i;
  p1_13 <= c1p1_comp_q;
  p1_14 <= c1p1_comp_phi;
  p2_2 <= c1p2_if_phi;
  p2_3 <= c1p2_if_i;
  p2_4 <= c1p2_if_q;
  p2_5 <= c1p2_dc_i;
  p2_6 <= c1p2_dc_q;
  p2_7 <= c1p2_dc_freq;
  p2_8 <= c1p2_integ_i;
  p2_9 <= c1p2_integ_q;
  p2_10 <= c1p2_phi_out;
  p2_11 <= c1p2_amp_out;
  p2_12 <= c1p2_comp_i;
  p2_13 <= c1p2_comp_q;
  p2_14 <= c1p2_comp_phi;
  down_sample1_q_net <= cav1_p1_if_amp;
  down_sample_q_net <= cav1_p1_if_phase;
  down_sample1_q_net_x2 <= cav1_p1_if_i;
  down_sample_q_net_x2 <= cav1_p1_if_q;
  register2_q_net <= cav1_p1_dc_real;
  register1_q_net <= cav1_p1_dc_img;
  constant_op_net <= cav1_p1_dc_freq;
  constant8_op_net <= cav1_p1_integrated_i;
  constant7_op_net <= cav1_p1_integrated_q;
  constant6_op_net <= cav1_p1_phase_out;
  constant5_op_net <= cav1_p1_amp_out;
  constant4_op_net <= cav1_p1_comparison_i;
  constant3_op_net <= cav1_p1_comparison_q;
  constant9_op_net <= cav1_p1_comparison_phase;
  down_sample1_q_net_x0 <= cav1_p2_if_amp;
  down_sample_q_net_x0 <= cav1_p2_if_phase;
  down_sample1_q_net_x1 <= cav1_p2_if_i;
  down_sample_q_net_x1 <= cav1_p2_if_q;
  convert_dout_net <= cav1_p2_dc_real;
  convert1_dout_net <= cav1_p2_dc_img;
  constant10_op_net <= cav1_p2_dc_freq;
  constant11_op_net <= cav1_p2_integrated_i;
  constant12_op_net <= cav1_p2_integrated_q;
  constant14_op_net <= cav1_p2_phase_out;
  constant18_op_net <= cav1_p2_amp_out;
  constant19_op_net <= cav1_p2_comparison_i;
  constant21_op_net <= cav1_p2_comparison_q;
  constant23_op_net <= cav1_p2_comparison_phase;
  q_clk_net <= clk_1_x0;
  d_ce_net <= ce_1;
  d_clk_net_x0 <= clk_12;
  q_ce_net <= ce_12;
  d_clk_net <= clk_1;
  q_ce_net_x0 <= ce_1_x0;
  register1 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net,
    d_clk => d_clk_net_x0,
    q_ce => q_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p1_if_phi
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
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p1_phi_out
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
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p1_amp_out
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
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p1_comp_i
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
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p1_comp_q
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
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p1_comp_phi
  );
  register15 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net_x0,
    d_clk => d_clk_net_x0,
    q_ce => q_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p2_if_phi
  );
  register16 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant14_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p2_phi_out
  );
  register17 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant18_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p2_amp_out
  );
  register18 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant19_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p2_comp_i
  );
  register19 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant21_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p2_comp_q
  );
  register2 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net_x2,
    d_clk => d_clk_net_x0,
    q_ce => q_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p1_if_i
  );
  register20 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant23_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p2_comp_phi
  );
  register21 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net_x1,
    d_clk => d_clk_net_x0,
    q_ce => q_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p2_if_i
  );
  register22 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net_x0,
    d_clk => d_clk_net_x0,
    q_ce => q_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p2_if_amp
  );
  register23 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net_x1,
    d_clk => d_clk_net_x0,
    q_ce => q_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p2_if_q
  );
  register24 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => convert_dout_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p2_dc_i
  );
  register25 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => convert1_dout_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p2_dc_q
  );
  register26 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant10_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p2_dc_freq
  );
  register27 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant11_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p2_integ_i
  );
  register28 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant12_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p2_integ_q
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
    d_clk => d_clk_net_x0,
    q_ce => q_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p1_if_amp
  );
  register4 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net_x2,
    d_clk => d_clk_net_x0,
    q_ce => q_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p1_if_q
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
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p1_dc_i
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
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p1_dc_q
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
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p1_dc_freq
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
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p1_integ_i
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
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c1p1_integ_q
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_subsystem2 is
  port (
    in1_1 : in std_logic_vector( 4-1 downto 0 );
    in1_2 : in std_logic_vector( 4-1 downto 0 );
    in1_7 : in std_logic_vector( 1-1 downto 0 );
    in1_8 : in std_logic_vector( 29-1 downto 0 );
    clk_1_x0 : in std_logic;
    ce_1 : in std_logic;
    clk_1 : in std_logic;
    ce_1_x0 : in std_logic;
    cav1_p1_chan_sel : out std_logic_vector( 4-1 downto 0 );
    cav1_p2_chan_sel : out std_logic_vector( 4-1 downto 0 );
    cav1_nco_phase_reset : out std_logic_vector( 1-1 downto 0 );
    cav1_nco_phase_adj : out std_logic_vector( 29-1 downto 0 )
  );
end example_subsystem2;
architecture structural of example_subsystem2 is 
  signal c1p1_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal c1p2_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal c1_nco_reset : std_logic_vector( 1-1 downto 0 );
  signal c1_nco_phi : std_logic_vector( 29-1 downto 0 );
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal register35_q_net : std_logic_vector( 1-1 downto 0 );
  signal register36_q_net : std_logic_vector( 29-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
begin
  c1p1_chan_sel <= in1_1;
  c1p2_chan_sel <= in1_2;
  c1_nco_reset <= in1_7;
  c1_nco_phi <= in1_8;
  cav1_p1_chan_sel <= register29_q_net;
  cav1_p2_chan_sel <= register30_q_net;
  cav1_nco_phase_reset <= register35_q_net;
  cav1_nco_phase_adj <= register36_q_net;
  q_clk_net <= clk_1_x0;
  d_ce_net <= ce_1;
  d_clk_net <= clk_1;
  q_ce_net <= ce_1_x0;
  register29 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    en => "1",
    rst => "0",
    d => c1p1_chan_sel,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register29_q_net
  );
  register30 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    en => "1",
    rst => "0",
    d => c1p2_chan_sel,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register30_q_net
  );
  register35 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => c1_nco_reset,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register35_q_net
  );
  register36 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => c1_nco_phi,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register36_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_subsystem3_x0 is
  port (
    rf_ref_amp : in std_logic_vector( 18-1 downto 0 );
    rf_ref_phase : in std_logic_vector( 18-1 downto 0 );
    rf_ref_i : in std_logic_vector( 18-1 downto 0 );
    rf_ref_q : in std_logic_vector( 18-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1_1 : out std_logic_vector( 18-1 downto 0 );
    out1_2 : out std_logic_vector( 18-1 downto 0 );
    out1_3 : out std_logic_vector( 18-1 downto 0 );
    out1_4 : out std_logic_vector( 18-1 downto 0 )
  );
end example_subsystem3_x0;
architecture structural of example_subsystem3_x0 is 
  signal q_ce_net : std_logic;
  signal d_clk_net_x0 : std_logic;
  signal q_ce_net_x0 : std_logic;
  signal ref_amp : std_logic_vector( 18-1 downto 0 );
  signal ref_phi : std_logic_vector( 18-1 downto 0 );
  signal ref_i : std_logic_vector( 18-1 downto 0 );
  signal ref_q : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal d_clk_net : std_logic;
begin
  out1_1 <= ref_amp;
  out1_2 <= ref_phi;
  out1_3 <= ref_i;
  out1_4 <= ref_q;
  down_sample1_q_net_x0 <= rf_ref_amp;
  down_sample_q_net_x0 <= rf_ref_phase;
  down_sample1_q_net <= rf_ref_i;
  down_sample_q_net <= rf_ref_q;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
  d_clk_net_x0 <= clk_1;
  q_ce_net_x0 <= ce_1;
  register1 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => d_clk_net_x0,
    d_ce => q_ce_net_x0,
    q => ref_phi
  );
  register2 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => d_clk_net_x0,
    d_ce => q_ce_net_x0,
    q => ref_i
  );
  register3 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net_x0,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => d_clk_net_x0,
    d_ce => q_ce_net_x0,
    q => ref_amp
  );
  register4 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => d_clk_net_x0,
    d_ce => q_ce_net_x0,
    q => ref_q
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/Subsystem4
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_subsystem4 is
  port (
    in1_3 : in std_logic_vector( 4-1 downto 0 );
    clk_1_x0 : in std_logic;
    ce_1 : in std_logic;
    clk_1 : in std_logic;
    ce_1_x0 : in std_logic;
    rf_ref_chan_sel : out std_logic_vector( 4-1 downto 0 )
  );
end example_subsystem4;
architecture structural of example_subsystem4 is 
  signal ref_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal register2_q_net : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
begin
  ref_chan_sel <= in1_3;
  rf_ref_chan_sel <= register2_q_net;
  q_clk_net <= clk_1_x0;
  d_ce_net <= ce_1;
  d_clk_net <= clk_1;
  q_ce_net <= ce_1_x0;
  register2 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    en => "1",
    rst => "0",
    d => ref_chan_sel,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register2_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/Subsystem5
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_subsystem5 is
  port (
    cav2_p1_if_amp : in std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_phase : in std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_i : in std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_q : in std_logic_vector( 18-1 downto 0 );
    cav2_p1_dc_real : in std_logic_vector( 29-1 downto 0 );
    cav2_p1_dc_img : in std_logic_vector( 29-1 downto 0 );
    cav2_p1_dc_freq : in std_logic_vector( 26-1 downto 0 );
    cav2_p1_integrated_i : in std_logic_vector( 18-1 downto 0 );
    cav2_p1_integrated_q : in std_logic_vector( 18-1 downto 0 );
    cav2_p1_phase_out : in std_logic_vector( 18-1 downto 0 );
    cav2_p1_amp_out : in std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_i : in std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_q : in std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_phase : in std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_amp : in std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_phase : in std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_i : in std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_q : in std_logic_vector( 18-1 downto 0 );
    cav2_p2_dc_real : in std_logic_vector( 29-1 downto 0 );
    cav2_p2_dc_img : in std_logic_vector( 29-1 downto 0 );
    cav2_p2_dc_freq : in std_logic_vector( 26-1 downto 0 );
    cav2_p2_integrated_i : in std_logic_vector( 18-1 downto 0 );
    cav2_p2_integrated_q : in std_logic_vector( 18-1 downto 0 );
    cav2_p2_phase_out : in std_logic_vector( 18-1 downto 0 );
    cav2_p2_amp_out : in std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_i : in std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_q : in std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_phase : in std_logic_vector( 18-1 downto 0 );
    clk_1_x0 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    clk_1 : in std_logic;
    ce_1_x0 : in std_logic;
    p1_1 : out std_logic_vector( 18-1 downto 0 );
    p2_1 : out std_logic_vector( 18-1 downto 0 );
    p1_2 : out std_logic_vector( 18-1 downto 0 );
    p1_3 : out std_logic_vector( 18-1 downto 0 );
    p1_4 : out std_logic_vector( 18-1 downto 0 );
    p1_5 : out std_logic_vector( 29-1 downto 0 );
    p1_6 : out std_logic_vector( 29-1 downto 0 );
    p1_7 : out std_logic_vector( 26-1 downto 0 );
    p1_8 : out std_logic_vector( 18-1 downto 0 );
    p1_9 : out std_logic_vector( 18-1 downto 0 );
    p1_10 : out std_logic_vector( 18-1 downto 0 );
    p1_11 : out std_logic_vector( 18-1 downto 0 );
    p1_12 : out std_logic_vector( 18-1 downto 0 );
    p1_13 : out std_logic_vector( 18-1 downto 0 );
    p1_14 : out std_logic_vector( 18-1 downto 0 );
    p2_2 : out std_logic_vector( 18-1 downto 0 );
    p2_3 : out std_logic_vector( 18-1 downto 0 );
    p2_4 : out std_logic_vector( 18-1 downto 0 );
    p2_5 : out std_logic_vector( 29-1 downto 0 );
    p2_6 : out std_logic_vector( 29-1 downto 0 );
    p2_7 : out std_logic_vector( 26-1 downto 0 );
    p2_8 : out std_logic_vector( 18-1 downto 0 );
    p2_9 : out std_logic_vector( 18-1 downto 0 );
    p2_10 : out std_logic_vector( 18-1 downto 0 );
    p2_11 : out std_logic_vector( 18-1 downto 0 );
    p2_12 : out std_logic_vector( 18-1 downto 0 );
    p2_13 : out std_logic_vector( 18-1 downto 0 );
    p2_14 : out std_logic_vector( 18-1 downto 0 )
  );
end example_subsystem5;
architecture structural of example_subsystem5 is 
  signal c2p1_if_amp : std_logic_vector( 18-1 downto 0 );
  signal c2p2_if_amp : std_logic_vector( 18-1 downto 0 );
  signal c2p1_if_phi : std_logic_vector( 18-1 downto 0 );
  signal c2p1_if_i : std_logic_vector( 18-1 downto 0 );
  signal c2p1_if_q : std_logic_vector( 18-1 downto 0 );
  signal c2p1_dc_i : std_logic_vector( 29-1 downto 0 );
  signal c2p1_dc_q : std_logic_vector( 29-1 downto 0 );
  signal c2p1_dc_freq : std_logic_vector( 26-1 downto 0 );
  signal c2p1_integ_i : std_logic_vector( 18-1 downto 0 );
  signal c2p1_integ_q : std_logic_vector( 18-1 downto 0 );
  signal c2p1_phi_out : std_logic_vector( 18-1 downto 0 );
  signal c2p1_amp_out : std_logic_vector( 18-1 downto 0 );
  signal c2p1_comp_i : std_logic_vector( 18-1 downto 0 );
  signal c2p1_comp_q : std_logic_vector( 18-1 downto 0 );
  signal c2p1_comp_phi : std_logic_vector( 18-1 downto 0 );
  signal c2p2_if_phi : std_logic_vector( 18-1 downto 0 );
  signal c2p2_if_i : std_logic_vector( 18-1 downto 0 );
  signal c2p2_if_q : std_logic_vector( 18-1 downto 0 );
  signal c2p2_dc_i : std_logic_vector( 29-1 downto 0 );
  signal c2p2_dc_q : std_logic_vector( 29-1 downto 0 );
  signal c2p2_dc_freq : std_logic_vector( 26-1 downto 0 );
  signal c2p2_integ_i : std_logic_vector( 18-1 downto 0 );
  signal c2p2_integ_q : std_logic_vector( 18-1 downto 0 );
  signal c2p2_phi_out : std_logic_vector( 18-1 downto 0 );
  signal c2p2_amp_out : std_logic_vector( 18-1 downto 0 );
  signal c2p2_comp_i : std_logic_vector( 18-1 downto 0 );
  signal c2p2_comp_q : std_logic_vector( 18-1 downto 0 );
  signal c2p2_comp_phi : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x2 : std_logic_vector( 18-1 downto 0 );
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
  signal down_sample1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal d_clk_net : std_logic;
  signal down_sample1_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register32_q_net : std_logic_vector( 29-1 downto 0 );
  signal register33_q_net : std_logic_vector( 29-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 26-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant12_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant14_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant18_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant19_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant21_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant23_op_net : std_logic_vector( 18-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net_x0 : std_logic;
  signal q_ce_net : std_logic;
  signal q_ce_net_x0 : std_logic;
begin
  p1_1 <= c2p1_if_amp;
  p2_1 <= c2p2_if_amp;
  p1_2 <= c2p1_if_phi;
  p1_3 <= c2p1_if_i;
  p1_4 <= c2p1_if_q;
  p1_5 <= c2p1_dc_i;
  p1_6 <= c2p1_dc_q;
  p1_7 <= c2p1_dc_freq;
  p1_8 <= c2p1_integ_i;
  p1_9 <= c2p1_integ_q;
  p1_10 <= c2p1_phi_out;
  p1_11 <= c2p1_amp_out;
  p1_12 <= c2p1_comp_i;
  p1_13 <= c2p1_comp_q;
  p1_14 <= c2p1_comp_phi;
  p2_2 <= c2p2_if_phi;
  p2_3 <= c2p2_if_i;
  p2_4 <= c2p2_if_q;
  p2_5 <= c2p2_dc_i;
  p2_6 <= c2p2_dc_q;
  p2_7 <= c2p2_dc_freq;
  p2_8 <= c2p2_integ_i;
  p2_9 <= c2p2_integ_q;
  p2_10 <= c2p2_phi_out;
  p2_11 <= c2p2_amp_out;
  p2_12 <= c2p2_comp_i;
  p2_13 <= c2p2_comp_q;
  p2_14 <= c2p2_comp_phi;
  down_sample1_q_net <= cav2_p1_if_amp;
  down_sample_q_net_x0 <= cav2_p1_if_phase;
  down_sample1_q_net_x2 <= cav2_p1_if_i;
  down_sample_q_net_x2 <= cav2_p1_if_q;
  register2_q_net <= cav2_p1_dc_real;
  register1_q_net <= cav2_p1_dc_img;
  constant_op_net <= cav2_p1_dc_freq;
  constant8_op_net <= cav2_p1_integrated_i;
  constant7_op_net <= cav2_p1_integrated_q;
  constant6_op_net <= cav2_p1_phase_out;
  constant5_op_net <= cav2_p1_amp_out;
  constant4_op_net <= cav2_p1_comparison_i;
  constant3_op_net <= cav2_p1_comparison_q;
  constant9_op_net <= cav2_p1_comparison_phase;
  down_sample1_q_net_x0 <= cav2_p2_if_amp;
  down_sample_q_net <= cav2_p2_if_phase;
  down_sample1_q_net_x1 <= cav2_p2_if_i;
  down_sample_q_net_x1 <= cav2_p2_if_q;
  register32_q_net <= cav2_p2_dc_real;
  register33_q_net <= cav2_p2_dc_img;
  constant10_op_net <= cav2_p2_dc_freq;
  constant11_op_net <= cav2_p2_integrated_i;
  constant12_op_net <= cav2_p2_integrated_q;
  constant14_op_net <= cav2_p2_phase_out;
  constant18_op_net <= cav2_p2_amp_out;
  constant19_op_net <= cav2_p2_comparison_i;
  constant21_op_net <= cav2_p2_comparison_q;
  constant23_op_net <= cav2_p2_comparison_phase;
  q_clk_net <= clk_1_x0;
  d_ce_net <= ce_1;
  d_clk_net_x0 <= clk_12;
  q_ce_net <= ce_12;
  d_clk_net <= clk_1;
  q_ce_net_x0 <= ce_1_x0;
  register1 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net_x0,
    d_clk => d_clk_net_x0,
    q_ce => q_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p1_if_phi
  );
  register10 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant5_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p1_amp_out
  );
  register11 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant4_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p1_comp_i
  );
  register12 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant3_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p1_comp_q
  );
  register13 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant9_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p1_comp_phi
  );
  register14 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net,
    d_clk => d_clk_net_x0,
    q_ce => q_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p2_if_phi
  );
  register15 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant18_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p2_amp_out
  );
  register16 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant19_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p2_comp_i
  );
  register17 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant21_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p2_comp_q
  );
  register18 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant23_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p2_comp_phi
  );
  register19 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net_x1,
    d_clk => d_clk_net_x0,
    q_ce => q_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p2_if_i
  );
  register2 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net_x2,
    d_clk => d_clk_net_x0,
    q_ce => q_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p1_if_i
  );
  register20 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net_x0,
    d_clk => d_clk_net_x0,
    q_ce => q_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p2_if_amp
  );
  register21 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net_x1,
    d_clk => d_clk_net_x0,
    q_ce => q_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p2_if_q
  );
  register22 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample1_q_net,
    d_clk => d_clk_net_x0,
    q_ce => q_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p1_if_amp
  );
  register23 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register32_q_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p2_dc_i
  );
  register24 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register33_q_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p2_dc_q
  );
  register25 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant10_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p2_dc_freq
  );
  register26 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant11_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p2_integ_i
  );
  register27 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant12_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p2_integ_q
  );
  register28 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant14_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p2_phi_out
  );
  register3 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample_q_net_x2,
    d_clk => d_clk_net_x0,
    q_ce => q_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p1_if_q
  );
  register4 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register2_q_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p1_dc_i
  );
  register5 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register1_q_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p1_dc_q
  );
  register6 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p1_dc_freq
  );
  register7 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant8_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p1_integ_i
  );
  register8 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant7_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p1_integ_q
  );
  register9 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant6_op_net,
    d_clk => q_clk_net,
    q_ce => d_ce_net,
    q_clk => d_clk_net,
    d_ce => q_ce_net_x0,
    q => c2p1_phi_out
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/Subsystem7
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_subsystem7 is
  port (
    in1_1 : in std_logic_vector( 4-1 downto 0 );
    in1_2 : in std_logic_vector( 4-1 downto 0 );
    in1_7 : in std_logic_vector( 1-1 downto 0 );
    in1_8 : in std_logic_vector( 29-1 downto 0 );
    clk_1_x0 : in std_logic;
    ce_1 : in std_logic;
    clk_1 : in std_logic;
    ce_1_x0 : in std_logic;
    cav2_nco_phase_reset : out std_logic_vector( 1-1 downto 0 );
    cav2_nco_phase_adj : out std_logic_vector( 29-1 downto 0 );
    cav2_p1_chan_sel : out std_logic_vector( 4-1 downto 0 );
    cav2_p2_chan_sel : out std_logic_vector( 4-1 downto 0 )
  );
end example_subsystem7;
architecture structural of example_subsystem7 is 
  signal c2p2_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal c2_nco_reset : std_logic_vector( 1-1 downto 0 );
  signal c2_nco_phi : std_logic_vector( 29-1 downto 0 );
  signal register35_q_net : std_logic_vector( 1-1 downto 0 );
  signal register36_q_net : std_logic_vector( 29-1 downto 0 );
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
  signal c2p1_chan_sel : std_logic_vector( 4-1 downto 0 );
begin
  c2p1_chan_sel <= in1_1;
  c2p2_chan_sel <= in1_2;
  c2_nco_reset <= in1_7;
  c2_nco_phi <= in1_8;
  cav2_nco_phase_reset <= register35_q_net;
  cav2_nco_phase_adj <= register36_q_net;
  cav2_p1_chan_sel <= register29_q_net;
  cav2_p2_chan_sel <= register30_q_net;
  q_clk_net <= clk_1_x0;
  d_ce_net <= ce_1;
  d_clk_net <= clk_1;
  q_ce_net <= ce_1_x0;
  register29 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    en => "1",
    rst => "0",
    d => c2p1_chan_sel,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register29_q_net
  );
  register30 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    en => "1",
    rst => "0",
    d => c2p2_chan_sel,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register30_q_net
  );
  register35 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => c2_nco_reset,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register35_q_net
  );
  register36 : entity work.example_xlAsynRegister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => c2_nco_phi,
    d_clk => d_clk_net,
    q_ce => q_ce_net,
    q_clk => q_clk_net,
    d_ce => d_ce_net,
    q => register36_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/axi_lite
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_axi_lite is
  port (
    in1_1 : in std_logic_vector( 18-1 downto 0 );
    in2_1 : in std_logic_vector( 18-1 downto 0 );
    in3_1 : in std_logic_vector( 18-1 downto 0 );
    in4_1 : in std_logic_vector( 18-1 downto 0 );
    in5_1 : in std_logic_vector( 18-1 downto 0 );
    in1_2 : in std_logic_vector( 18-1 downto 0 );
    in1_3 : in std_logic_vector( 18-1 downto 0 );
    in1_4 : in std_logic_vector( 18-1 downto 0 );
    in2_2 : in std_logic_vector( 18-1 downto 0 );
    in2_3 : in std_logic_vector( 18-1 downto 0 );
    in2_4 : in std_logic_vector( 18-1 downto 0 );
    in2_5 : in std_logic_vector( 29-1 downto 0 );
    in2_6 : in std_logic_vector( 29-1 downto 0 );
    in2_7 : in std_logic_vector( 26-1 downto 0 );
    in2_8 : in std_logic_vector( 18-1 downto 0 );
    in2_9 : in std_logic_vector( 18-1 downto 0 );
    in2_10 : in std_logic_vector( 18-1 downto 0 );
    in2_11 : in std_logic_vector( 18-1 downto 0 );
    in2_12 : in std_logic_vector( 18-1 downto 0 );
    in2_13 : in std_logic_vector( 18-1 downto 0 );
    in2_14 : in std_logic_vector( 18-1 downto 0 );
    in3_2 : in std_logic_vector( 18-1 downto 0 );
    in3_3 : in std_logic_vector( 18-1 downto 0 );
    in3_4 : in std_logic_vector( 18-1 downto 0 );
    in3_5 : in std_logic_vector( 18-1 downto 0 );
    in3_6 : in std_logic_vector( 18-1 downto 0 );
    in3_7 : in std_logic_vector( 26-1 downto 0 );
    in3_8 : in std_logic_vector( 18-1 downto 0 );
    in3_9 : in std_logic_vector( 18-1 downto 0 );
    in3_10 : in std_logic_vector( 18-1 downto 0 );
    in3_11 : in std_logic_vector( 18-1 downto 0 );
    in3_12 : in std_logic_vector( 18-1 downto 0 );
    in3_13 : in std_logic_vector( 18-1 downto 0 );
    in3_14 : in std_logic_vector( 18-1 downto 0 );
    in4_2 : in std_logic_vector( 18-1 downto 0 );
    in4_3 : in std_logic_vector( 18-1 downto 0 );
    in4_4 : in std_logic_vector( 18-1 downto 0 );
    in4_5 : in std_logic_vector( 29-1 downto 0 );
    in4_6 : in std_logic_vector( 29-1 downto 0 );
    in4_7 : in std_logic_vector( 26-1 downto 0 );
    in4_8 : in std_logic_vector( 18-1 downto 0 );
    in4_9 : in std_logic_vector( 18-1 downto 0 );
    in4_10 : in std_logic_vector( 18-1 downto 0 );
    in4_11 : in std_logic_vector( 18-1 downto 0 );
    in4_12 : in std_logic_vector( 18-1 downto 0 );
    in4_13 : in std_logic_vector( 18-1 downto 0 );
    in4_14 : in std_logic_vector( 18-1 downto 0 );
    in5_2 : in std_logic_vector( 18-1 downto 0 );
    in5_3 : in std_logic_vector( 18-1 downto 0 );
    in5_4 : in std_logic_vector( 18-1 downto 0 );
    in5_5 : in std_logic_vector( 29-1 downto 0 );
    in5_6 : in std_logic_vector( 29-1 downto 0 );
    in5_7 : in std_logic_vector( 26-1 downto 0 );
    in5_8 : in std_logic_vector( 18-1 downto 0 );
    in5_9 : in std_logic_vector( 18-1 downto 0 );
    in5_10 : in std_logic_vector( 18-1 downto 0 );
    in5_11 : in std_logic_vector( 18-1 downto 0 );
    in5_12 : in std_logic_vector( 18-1 downto 0 );
    in5_13 : in std_logic_vector( 18-1 downto 0 );
    in5_14 : in std_logic_vector( 18-1 downto 0 );
    cav1_nco_phase_adj : in std_logic_vector( 29-1 downto 0 );
    cav1_nco_phase_reset : in std_logic_vector( 1-1 downto 0 );
    cav1_p1_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav1_p2_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav2_nco_phase_adj : in std_logic_vector( 29-1 downto 0 );
    cav2_nco_phase_reset : in std_logic_vector( 1-1 downto 0 );
    cav2_p1_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav2_p2_chan_sel : in std_logic_vector( 4-1 downto 0 );
    diag1fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag1sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag2fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag2sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag3fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag3sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag4fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag4sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag5fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag5sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag6fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag6sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag7fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag7sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag8fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag8sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diagnrst_ctl : in std_logic_vector( 1-1 downto 0 );
    diagnsync_ctl : in std_logic_vector( 1-1 downto 0 );
    rf_ref_chan_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_8 : in std_logic;
    ce_8 : in std_logic;
    out2_1 : out std_logic_vector( 4-1 downto 0 );
    out3_1 : out std_logic_vector( 4-1 downto 0 );
    diag_ctl_1 : out std_logic_vector( 1-1 downto 0 );
    out1_3 : out std_logic_vector( 4-1 downto 0 );
    out2_2 : out std_logic_vector( 4-1 downto 0 );
    out2_7 : out std_logic_vector( 1-1 downto 0 );
    out2_8 : out std_logic_vector( 29-1 downto 0 );
    out3_2 : out std_logic_vector( 4-1 downto 0 );
    out3_7 : out std_logic_vector( 1-1 downto 0 );
    out3_8 : out std_logic_vector( 29-1 downto 0 );
    diag_ctl_2 : out std_logic_vector( 1-1 downto 0 );
    diag_ctl_3 : out std_logic_vector( 1-1 downto 0 );
    diag_ctl_4 : out std_logic_vector( 1-1 downto 0 );
    diag_ctl_5 : out std_logic_vector( 1-1 downto 0 );
    diag_ctl_6 : out std_logic_vector( 1-1 downto 0 );
    diag_ctl_7 : out std_logic_vector( 1-1 downto 0 );
    diag_ctl_8 : out std_logic_vector( 1-1 downto 0 );
    diag_ctl_9 : out std_logic_vector( 1-1 downto 0 );
    diag_ctl_10 : out std_logic_vector( 1-1 downto 0 );
    diag_ctl_11 : out std_logic_vector( 2-1 downto 0 );
    diag_ctl_12 : out std_logic_vector( 2-1 downto 0 );
    diag_ctl_13 : out std_logic_vector( 2-1 downto 0 );
    diag_ctl_14 : out std_logic_vector( 2-1 downto 0 );
    diag_ctl_15 : out std_logic_vector( 2-1 downto 0 );
    diag_ctl_16 : out std_logic_vector( 2-1 downto 0 );
    diag_ctl_17 : out std_logic_vector( 2-1 downto 0 );
    diag_ctl_18 : out std_logic_vector( 2-1 downto 0 );
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
    cav1_p1_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_dc_freq : out std_logic_vector( 26-1 downto 0 );
    cav1_p2_dc_img : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_dc_real : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_amp : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_q : out std_logic_vector( 18-1 downto 0 );
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
    rf_ref_q : out std_logic_vector( 18-1 downto 0 );
    status_0 : out std_logic_vector( 32-1 downto 0 )
  );
end example_axi_lite;
architecture structural of example_axi_lite is 
  signal register34_q_net : std_logic_vector( 18-1 downto 0 );
  signal register146_q_net : std_logic_vector( 4-1 downto 0 );
  signal register147_q_net : std_logic_vector( 4-1 downto 0 );
  signal register148_q_net : std_logic_vector( 4-1 downto 0 );
  signal register149_q_net : std_logic_vector( 4-1 downto 0 );
  signal register35_q_net : std_logic_vector( 18-1 downto 0 );
  signal register158_q_net : std_logic_vector( 1-1 downto 0 );
  signal register159_q_net : std_logic_vector( 1-1 downto 0 );
  signal register36_q_net : std_logic_vector( 18-1 downto 0 );
  signal register160_q_net : std_logic_vector( 29-1 downto 0 );
  signal register161_q_net : std_logic_vector( 29-1 downto 0 );
  signal register162_q_net : std_logic_vector( 1-1 downto 0 );
  signal register163_q_net : std_logic_vector( 1-1 downto 0 );
  signal register164_q_net : std_logic_vector( 1-1 downto 0 );
  signal register165_q_net : std_logic_vector( 1-1 downto 0 );
  signal register166_q_net : std_logic_vector( 1-1 downto 0 );
  signal register167_q_net : std_logic_vector( 1-1 downto 0 );
  signal register169_q_net : std_logic_vector( 2-1 downto 0 );
  signal register168_q_net : std_logic_vector( 2-1 downto 0 );
  signal register47_q_net : std_logic_vector( 18-1 downto 0 );
  signal register170_q_net : std_logic_vector( 1-1 downto 0 );
  signal register171_q_net : std_logic_vector( 1-1 downto 0 );
  signal register172_q_net : std_logic_vector( 2-1 downto 0 );
  signal register173_q_net : std_logic_vector( 2-1 downto 0 );
  signal register174_q_net : std_logic_vector( 1-1 downto 0 );
  signal register175_q_net : std_logic_vector( 1-1 downto 0 );
  signal register176_q_net : std_logic_vector( 2-1 downto 0 );
  signal register177_q_net : std_logic_vector( 2-1 downto 0 );
  signal register178_q_net : std_logic_vector( 1-1 downto 0 );
  signal register179_q_net : std_logic_vector( 1-1 downto 0 );
  signal register48_q_net : std_logic_vector( 18-1 downto 0 );
  signal register180_q_net : std_logic_vector( 2-1 downto 0 );
  signal register181_q_net : std_logic_vector( 2-1 downto 0 );
  signal register182_q_net : std_logic_vector( 1-1 downto 0 );
  signal register183_q_net : std_logic_vector( 1-1 downto 0 );
  signal register184_q_net : std_logic_vector( 1-1 downto 0 );
  signal register185_q_net : std_logic_vector( 1-1 downto 0 );
  signal register186_q_net : std_logic_vector( 1-1 downto 0 );
  signal register187_q_net : std_logic_vector( 1-1 downto 0 );
  signal register188_q_net : std_logic_vector( 1-1 downto 0 );
  signal register189_q_net : std_logic_vector( 1-1 downto 0 );
  signal register49_q_net : std_logic_vector( 18-1 downto 0 );
  signal register190_q_net : std_logic_vector( 2-1 downto 0 );
  signal register191_q_net : std_logic_vector( 2-1 downto 0 );
  signal register192_q_net : std_logic_vector( 2-1 downto 0 );
  signal register193_q_net : std_logic_vector( 2-1 downto 0 );
  signal register194_q_net : std_logic_vector( 2-1 downto 0 );
  signal register195_q_net : std_logic_vector( 2-1 downto 0 );
  signal register196_q_net : std_logic_vector( 2-1 downto 0 );
  signal register197_q_net : std_logic_vector( 2-1 downto 0 );
  signal register50_q_net : std_logic_vector( 18-1 downto 0 );
  signal register51_q_net : std_logic_vector( 18-1 downto 0 );
  signal register52_q_net : std_logic_vector( 18-1 downto 0 );
  signal register53_q_net : std_logic_vector( 18-1 downto 0 );
  signal register54_q_net : std_logic_vector( 18-1 downto 0 );
  signal register55_q_net : std_logic_vector( 18-1 downto 0 );
  signal register56_q_net : std_logic_vector( 18-1 downto 0 );
  signal versionnumber_op_net : std_logic_vector( 32-1 downto 0 );
  signal register57_q_net : std_logic_vector( 18-1 downto 0 );
  signal register58_q_net : std_logic_vector( 18-1 downto 0 );
  signal register39_q_net : std_logic_vector( 18-1 downto 0 );
  signal register59_q_net : std_logic_vector( 26-1 downto 0 );
  signal register40_q_net : std_logic_vector( 18-1 downto 0 );
  signal register41_q_net : std_logic_vector( 18-1 downto 0 );
  signal register42_q_net : std_logic_vector( 18-1 downto 0 );
  signal register43_q_net : std_logic_vector( 29-1 downto 0 );
  signal register44_q_net : std_logic_vector( 29-1 downto 0 );
  signal register45_q_net : std_logic_vector( 26-1 downto 0 );
  signal register60_q_net : std_logic_vector( 4-1 downto 0 );
  signal register61_q_net : std_logic_vector( 4-1 downto 0 );
  signal register62_q_net : std_logic_vector( 4-1 downto 0 );
  signal register63_q_net : std_logic_vector( 4-1 downto 0 );
  signal register72_q_net : std_logic_vector( 1-1 downto 0 );
  signal register73_q_net : std_logic_vector( 1-1 downto 0 );
  signal register74_q_net : std_logic_vector( 29-1 downto 0 );
  signal register75_q_net : std_logic_vector( 29-1 downto 0 );
  signal register77_q_net : std_logic_vector( 18-1 downto 0 );
  signal register79_q_net : std_logic_vector( 18-1 downto 0 );
  signal register81_q_net : std_logic_vector( 18-1 downto 0 );
  signal register83_q_net : std_logic_vector( 18-1 downto 0 );
  signal register88_q_net : std_logic_vector( 4-1 downto 0 );
  signal register89_q_net : std_logic_vector( 4-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register5_q_net : std_logic_vector( 18-1 downto 0 );
  signal register4_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 18-1 downto 0 );
  signal register10_q_net : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net : std_logic_vector( 18-1 downto 0 );
  signal register20_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register21_q_net : std_logic_vector( 18-1 downto 0 );
  signal register23_q_net : std_logic_vector( 18-1 downto 0 );
  signal register22_q_net : std_logic_vector( 18-1 downto 0 );
  signal register30_q_net : std_logic_vector( 26-1 downto 0 );
  signal register29_q_net : std_logic_vector( 18-1 downto 0 );
  signal register28_q_net : std_logic_vector( 18-1 downto 0 );
  signal register24_q_net : std_logic_vector( 18-1 downto 0 );
  signal register26_q_net : std_logic_vector( 18-1 downto 0 );
  signal register25_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register17_q_net : std_logic_vector( 18-1 downto 0 );
  signal register18_q_net : std_logic_vector( 18-1 downto 0 );
  signal register19_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav2_nco_phase_reset_net : std_logic_vector( 1-1 downto 0 );
  signal register93_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register94_q_net : std_logic_vector( 18-1 downto 0 );
  signal register96_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample48_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample49_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample5_q_net : std_logic_vector( 29-1 downto 0 );
  signal c1p1_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal c2p1_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal diagnrst_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal ref_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal c1p2_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal c1_nco_reset : std_logic_vector( 1-1 downto 0 );
  signal c1_nco_phi : std_logic_vector( 29-1 downto 0 );
  signal c2p2_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal c2_nco_reset : std_logic_vector( 1-1 downto 0 );
  signal c2_nco_phi : std_logic_vector( 29-1 downto 0 );
  signal diagnsync_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag1fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag2fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag3fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag4fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag5fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal register8_q_net : std_logic_vector( 29-1 downto 0 );
  signal diag6fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag7fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag8fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag1sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag2sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag3sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag4sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag5sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag6sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag7sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag8sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal ref_amp : std_logic_vector( 18-1 downto 0 );
  signal c1p1_if_amp : std_logic_vector( 18-1 downto 0 );
  signal c1p2_if_amp : std_logic_vector( 18-1 downto 0 );
  signal c2p1_if_amp : std_logic_vector( 18-1 downto 0 );
  signal c2p2_if_amp : std_logic_vector( 18-1 downto 0 );
  signal ref_phi : std_logic_vector( 18-1 downto 0 );
  signal ref_i : std_logic_vector( 18-1 downto 0 );
  signal ref_q : std_logic_vector( 18-1 downto 0 );
  signal c1p1_if_phi : std_logic_vector( 18-1 downto 0 );
  signal c1p1_if_i : std_logic_vector( 18-1 downto 0 );
  signal c1p1_if_q : std_logic_vector( 18-1 downto 0 );
  signal c1p1_dc_i : std_logic_vector( 29-1 downto 0 );
  signal c1p1_dc_q : std_logic_vector( 29-1 downto 0 );
  signal c1p1_dc_freq : std_logic_vector( 26-1 downto 0 );
  signal c1p1_integ_i : std_logic_vector( 18-1 downto 0 );
  signal c1p1_integ_q : std_logic_vector( 18-1 downto 0 );
  signal c1p2_comp_q : std_logic_vector( 18-1 downto 0 );
  signal c1p1_phi_out : std_logic_vector( 18-1 downto 0 );
  signal c1p1_amp_out : std_logic_vector( 18-1 downto 0 );
  signal c1p1_comp_i : std_logic_vector( 18-1 downto 0 );
  signal c1p1_comp_q : std_logic_vector( 18-1 downto 0 );
  signal c1p1_comp_phi : std_logic_vector( 18-1 downto 0 );
  signal c1p2_if_phi : std_logic_vector( 18-1 downto 0 );
  signal c1p2_if_i : std_logic_vector( 18-1 downto 0 );
  signal c1p2_if_q : std_logic_vector( 18-1 downto 0 );
  signal c1p2_dc_i : std_logic_vector( 18-1 downto 0 );
  signal c1p2_dc_q : std_logic_vector( 18-1 downto 0 );
  signal c1p2_dc_freq : std_logic_vector( 26-1 downto 0 );
  signal c1p2_integ_i : std_logic_vector( 18-1 downto 0 );
  signal c1p2_integ_q : std_logic_vector( 18-1 downto 0 );
  signal c1p2_phi_out : std_logic_vector( 18-1 downto 0 );
  signal c1p2_amp_out : std_logic_vector( 18-1 downto 0 );
  signal c1p2_comp_i : std_logic_vector( 18-1 downto 0 );
  signal cav2_nco_phase_adj_net : std_logic_vector( 29-1 downto 0 );
  signal c1p2_comp_phi : std_logic_vector( 18-1 downto 0 );
  signal c2p1_if_phi : std_logic_vector( 18-1 downto 0 );
  signal c2p1_if_i : std_logic_vector( 18-1 downto 0 );
  signal c2p1_if_q : std_logic_vector( 18-1 downto 0 );
  signal c2p1_dc_i : std_logic_vector( 29-1 downto 0 );
  signal c2p1_dc_q : std_logic_vector( 29-1 downto 0 );
  signal c2p1_dc_freq : std_logic_vector( 26-1 downto 0 );
  signal c2p1_integ_i : std_logic_vector( 18-1 downto 0 );
  signal c2p1_integ_q : std_logic_vector( 18-1 downto 0 );
  signal c2p1_phi_out : std_logic_vector( 18-1 downto 0 );
  signal c2p1_amp_out : std_logic_vector( 18-1 downto 0 );
  signal c2p1_comp_i : std_logic_vector( 18-1 downto 0 );
  signal c2p1_comp_q : std_logic_vector( 18-1 downto 0 );
  signal c2p1_comp_phi : std_logic_vector( 18-1 downto 0 );
  signal c2p2_if_phi : std_logic_vector( 18-1 downto 0 );
  signal c2p2_if_i : std_logic_vector( 18-1 downto 0 );
  signal c2p2_if_q : std_logic_vector( 18-1 downto 0 );
  signal c2p2_dc_i : std_logic_vector( 29-1 downto 0 );
  signal c2p2_dc_q : std_logic_vector( 29-1 downto 0 );
  signal c2p2_dc_freq : std_logic_vector( 26-1 downto 0 );
  signal c2p2_integ_i : std_logic_vector( 18-1 downto 0 );
  signal c2p2_integ_q : std_logic_vector( 18-1 downto 0 );
  signal c2p2_phi_out : std_logic_vector( 18-1 downto 0 );
  signal c2p2_amp_out : std_logic_vector( 18-1 downto 0 );
  signal c2p2_comp_i : std_logic_vector( 18-1 downto 0 );
  signal c2p2_comp_q : std_logic_vector( 18-1 downto 0 );
  signal c2p2_comp_phi : std_logic_vector( 18-1 downto 0 );
  signal cav1_nco_phase_adj_net : std_logic_vector( 29-1 downto 0 );
  signal cav1_nco_phase_reset_net : std_logic_vector( 1-1 downto 0 );
  signal register13_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav1_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register14_q_net : std_logic_vector( 18-1 downto 0 );
  signal register16_q_net : std_logic_vector( 18-1 downto 0 );
  signal register15_q_net : std_logic_vector( 18-1 downto 0 );
  signal register9_q_net : std_logic_vector( 26-1 downto 0 );
  signal register98_q_net : std_logic_vector( 18-1 downto 0 );
  signal register7_q_net : std_logic_vector( 29-1 downto 0 );
  signal register142_q_net : std_logic_vector( 18-1 downto 0 );
  signal register143_q_net : std_logic_vector( 18-1 downto 0 );
  signal register144_q_net : std_logic_vector( 18-1 downto 0 );
  signal register145_q_net : std_logic_vector( 18-1 downto 0 );
  signal register132_q_net : std_logic_vector( 18-1 downto 0 );
  signal register133_q_net : std_logic_vector( 18-1 downto 0 );
  signal register134_q_net : std_logic_vector( 18-1 downto 0 );
  signal register135_q_net : std_logic_vector( 18-1 downto 0 );
  signal register136_q_net : std_logic_vector( 29-1 downto 0 );
  signal register33_q_net : std_logic_vector( 18-1 downto 0 );
  signal register137_q_net : std_logic_vector( 29-1 downto 0 );
  signal register138_q_net : std_logic_vector( 26-1 downto 0 );
  signal register95_q_net : std_logic_vector( 18-1 downto 0 );
  signal register103_q_net : std_logic_vector( 26-1 downto 0 );
  signal register102_q_net : std_logic_vector( 29-1 downto 0 );
  signal register101_q_net : std_logic_vector( 29-1 downto 0 );
  signal register97_q_net : std_logic_vector( 18-1 downto 0 );
  signal register99_q_net : std_logic_vector( 18-1 downto 0 );
  signal register100_q_net : std_logic_vector( 18-1 downto 0 );
  signal register90_q_net : std_logic_vector( 18-1 downto 0 );
  signal register91_q_net : std_logic_vector( 18-1 downto 0 );
  signal register92_q_net : std_logic_vector( 18-1 downto 0 );
  signal register121_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register122_q_net : std_logic_vector( 18-1 downto 0 );
  signal register124_q_net : std_logic_vector( 18-1 downto 0 );
  signal register123_q_net : std_logic_vector( 18-1 downto 0 );
  signal register131_q_net : std_logic_vector( 26-1 downto 0 );
  signal register130_q_net : std_logic_vector( 29-1 downto 0 );
  signal register129_q_net : std_logic_vector( 29-1 downto 0 );
  signal register125_q_net : std_logic_vector( 18-1 downto 0 );
  signal register127_q_net : std_logic_vector( 18-1 downto 0 );
  signal register126_q_net : std_logic_vector( 18-1 downto 0 );
  signal register128_q_net : std_logic_vector( 18-1 downto 0 );
  signal register118_q_net : std_logic_vector( 18-1 downto 0 );
  signal register119_q_net : std_logic_vector( 18-1 downto 0 );
  signal register120_q_net : std_logic_vector( 18-1 downto 0 );
  signal diag1fixed_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diag1sevr_ctl_net : std_logic_vector( 2-1 downto 0 );
  signal diag2fixed_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diag2sevr_ctl_net : std_logic_vector( 2-1 downto 0 );
  signal diag3fixed_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diag3sevr_ctl_net : std_logic_vector( 2-1 downto 0 );
  signal diag4fixed_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diag4sevr_ctl_net : std_logic_vector( 2-1 downto 0 );
  signal diag5fixed_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diag5sevr_ctl_net : std_logic_vector( 2-1 downto 0 );
  signal diag6fixed_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diag6sevr_ctl_net : std_logic_vector( 2-1 downto 0 );
  signal diag7fixed_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diag7sevr_ctl_net : std_logic_vector( 2-1 downto 0 );
  signal diag8fixed_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diag8sevr_ctl_net : std_logic_vector( 2-1 downto 0 );
  signal diagnrst_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diagnsync_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal register76_q_net : std_logic_vector( 18-1 downto 0 );
  signal rf_ref_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register80_q_net : std_logic_vector( 18-1 downto 0 );
  signal register78_q_net : std_logic_vector( 18-1 downto 0 );
  signal register82_q_net : std_logic_vector( 18-1 downto 0 );
  signal register27_q_net : std_logic_vector( 32-1 downto 0 );
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample10_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample11_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample12_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample13_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample14_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample15_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample16_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample17_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample18_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample19_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample2_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample20_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample21_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample22_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample23_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample24_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample25_q_net : std_logic_vector( 26-1 downto 0 );
  signal down_sample26_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample27_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample28_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample29_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample3_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample30_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample31_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample32_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample33_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample34_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample35_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample36_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample37_q_net : std_logic_vector( 29-1 downto 0 );
  signal down_sample38_q_net : std_logic_vector( 29-1 downto 0 );
  signal down_sample39_q_net : std_logic_vector( 26-1 downto 0 );
  signal down_sample4_q_net : std_logic_vector( 29-1 downto 0 );
  signal down_sample40_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample41_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample42_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample43_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample44_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample45_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample46_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample47_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample50_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample51_q_net : std_logic_vector( 29-1 downto 0 );
  signal down_sample52_q_net : std_logic_vector( 29-1 downto 0 );
  signal down_sample53_q_net : std_logic_vector( 26-1 downto 0 );
  signal down_sample54_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample55_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample56_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample57_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample58_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample59_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample6_q_net : std_logic_vector( 26-1 downto 0 );
  signal down_sample60_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample7_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample8_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample9_q_net : std_logic_vector( 18-1 downto 0 );
  signal register46_q_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal register107_q_net : std_logic_vector( 18-1 downto 0 );
  signal register108_q_net : std_logic_vector( 29-1 downto 0 );
  signal register109_q_net : std_logic_vector( 29-1 downto 0 );
  signal register110_q_net : std_logic_vector( 26-1 downto 0 );
  signal register104_q_net : std_logic_vector( 18-1 downto 0 );
  signal register105_q_net : std_logic_vector( 18-1 downto 0 );
  signal register106_q_net : std_logic_vector( 18-1 downto 0 );
  signal register31_q_net : std_logic_vector( 18-1 downto 0 );
  signal register111_q_net : std_logic_vector( 18-1 downto 0 );
  signal register112_q_net : std_logic_vector( 18-1 downto 0 );
  signal register113_q_net : std_logic_vector( 18-1 downto 0 );
  signal register114_q_net : std_logic_vector( 18-1 downto 0 );
  signal register115_q_net : std_logic_vector( 18-1 downto 0 );
  signal register116_q_net : std_logic_vector( 18-1 downto 0 );
  signal register117_q_net : std_logic_vector( 18-1 downto 0 );
  signal register139_q_net : std_logic_vector( 18-1 downto 0 );
  signal register140_q_net : std_logic_vector( 18-1 downto 0 );
  signal register32_q_net : std_logic_vector( 18-1 downto 0 );
  signal register141_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out2_1 <= c1p1_chan_sel;
  out3_1 <= c2p1_chan_sel;
  diag_ctl_1 <= diagnrst_ctl_x0;
  out1_3 <= ref_chan_sel;
  out2_2 <= c1p2_chan_sel;
  out2_7 <= c1_nco_reset;
  out2_8 <= c1_nco_phi;
  out3_2 <= c2p2_chan_sel;
  out3_7 <= c2_nco_reset;
  out3_8 <= c2_nco_phi;
  diag_ctl_2 <= diagnsync_ctl_x0;
  diag_ctl_3 <= diag1fixed_ctl_x0;
  diag_ctl_4 <= diag2fixed_ctl_x0;
  diag_ctl_5 <= diag3fixed_ctl_x0;
  diag_ctl_6 <= diag4fixed_ctl_x0;
  diag_ctl_7 <= diag5fixed_ctl_x0;
  diag_ctl_8 <= diag6fixed_ctl_x0;
  diag_ctl_9 <= diag7fixed_ctl_x0;
  diag_ctl_10 <= diag8fixed_ctl_x0;
  diag_ctl_11 <= diag1sevr_ctl_x0;
  diag_ctl_12 <= diag2sevr_ctl_x0;
  diag_ctl_13 <= diag3sevr_ctl_x0;
  diag_ctl_14 <= diag4sevr_ctl_x0;
  diag_ctl_15 <= diag5sevr_ctl_x0;
  diag_ctl_16 <= diag6sevr_ctl_x0;
  diag_ctl_17 <= diag7sevr_ctl_x0;
  diag_ctl_18 <= diag8sevr_ctl_x0;
  ref_amp <= in1_1;
  c1p1_if_amp <= in2_1;
  c1p2_if_amp <= in3_1;
  c2p1_if_amp <= in4_1;
  c2p2_if_amp <= in5_1;
  ref_phi <= in1_2;
  ref_i <= in1_3;
  ref_q <= in1_4;
  c1p1_if_phi <= in2_2;
  c1p1_if_i <= in2_3;
  c1p1_if_q <= in2_4;
  c1p1_dc_i <= in2_5;
  c1p1_dc_q <= in2_6;
  c1p1_dc_freq <= in2_7;
  c1p1_integ_i <= in2_8;
  c1p1_integ_q <= in2_9;
  c1p1_phi_out <= in2_10;
  c1p1_amp_out <= in2_11;
  c1p1_comp_i <= in2_12;
  c1p1_comp_q <= in2_13;
  c1p1_comp_phi <= in2_14;
  c1p2_if_phi <= in3_2;
  c1p2_if_i <= in3_3;
  c1p2_if_q <= in3_4;
  c1p2_dc_i <= in3_5;
  c1p2_dc_q <= in3_6;
  c1p2_dc_freq <= in3_7;
  c1p2_integ_i <= in3_8;
  c1p2_integ_q <= in3_9;
  c1p2_phi_out <= in3_10;
  c1p2_amp_out <= in3_11;
  c1p2_comp_i <= in3_12;
  c1p2_comp_q <= in3_13;
  c1p2_comp_phi <= in3_14;
  c2p1_if_phi <= in4_2;
  c2p1_if_i <= in4_3;
  c2p1_if_q <= in4_4;
  c2p1_dc_i <= in4_5;
  c2p1_dc_q <= in4_6;
  c2p1_dc_freq <= in4_7;
  c2p1_integ_i <= in4_8;
  c2p1_integ_q <= in4_9;
  c2p1_phi_out <= in4_10;
  c2p1_amp_out <= in4_11;
  c2p1_comp_i <= in4_12;
  c2p1_comp_q <= in4_13;
  c2p1_comp_phi <= in4_14;
  c2p2_if_phi <= in5_2;
  c2p2_if_i <= in5_3;
  c2p2_if_q <= in5_4;
  c2p2_dc_i <= in5_5;
  c2p2_dc_q <= in5_6;
  c2p2_dc_freq <= in5_7;
  c2p2_integ_i <= in5_8;
  c2p2_integ_q <= in5_9;
  c2p2_phi_out <= in5_10;
  c2p2_amp_out <= in5_11;
  c2p2_comp_i <= in5_12;
  c2p2_comp_q <= in5_13;
  c2p2_comp_phi <= in5_14;
  cav1_nco_phase_adj_net <= cav1_nco_phase_adj;
  cav1_nco_phase_reset_net <= cav1_nco_phase_reset;
  cav1_p1_amp_out <= register13_q_net;
  cav1_p1_chan_sel_net <= cav1_p1_chan_sel;
  cav1_p1_comparison_i <= register14_q_net;
  cav1_p1_comparison_phase <= register16_q_net;
  cav1_p1_comparison_q <= register15_q_net;
  cav1_p1_dc_freq <= register9_q_net;
  cav1_p1_dc_img <= register8_q_net;
  cav1_p1_dc_real <= register7_q_net;
  cav1_p1_if_amp <= register3_q_net;
  cav1_p1_if_i <= register5_q_net;
  cav1_p1_if_phase <= register4_q_net;
  cav1_p1_if_q <= register6_q_net;
  cav1_p1_integrated_i <= register10_q_net;
  cav1_p1_integrated_q <= register11_q_net;
  cav1_p1_phase_out <= register12_q_net;
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
  cav1_p2_if_q <= register1_q_net;
  cav1_p2_integrated_i <= register17_q_net;
  cav1_p2_integrated_q <= register18_q_net;
  cav1_p2_phase_out <= register19_q_net;
  cav2_nco_phase_adj_net <= cav2_nco_phase_adj;
  cav2_nco_phase_reset_net <= cav2_nco_phase_reset;
  cav2_p1_amp_out <= register93_q_net;
  cav2_p1_chan_sel_net <= cav2_p1_chan_sel;
  cav2_p1_comparison_i <= register94_q_net;
  cav2_p1_comparison_phase <= register96_q_net;
  cav2_p1_comparison_q <= register95_q_net;
  cav2_p1_dc_freq <= register103_q_net;
  cav2_p1_dc_img <= register102_q_net;
  cav2_p1_dc_real <= register101_q_net;
  cav2_p1_if_amp <= register97_q_net;
  cav2_p1_if_i <= register99_q_net;
  cav2_p1_if_phase <= register98_q_net;
  cav2_p1_if_q <= register100_q_net;
  cav2_p1_integrated_i <= register90_q_net;
  cav2_p1_integrated_q <= register91_q_net;
  cav2_p1_phase_out <= register92_q_net;
  cav2_p2_amp_out <= register121_q_net;
  cav2_p2_chan_sel_net <= cav2_p2_chan_sel;
  cav2_p2_comparison_i <= register122_q_net;
  cav2_p2_comparison_phase <= register124_q_net;
  cav2_p2_comparison_q <= register123_q_net;
  cav2_p2_dc_freq <= register131_q_net;
  cav2_p2_dc_img <= register130_q_net;
  cav2_p2_dc_real <= register129_q_net;
  cav2_p2_if_amp <= register125_q_net;
  cav2_p2_if_i <= register127_q_net;
  cav2_p2_if_phase <= register126_q_net;
  cav2_p2_if_q <= register128_q_net;
  cav2_p2_integrated_i <= register118_q_net;
  cav2_p2_integrated_q <= register119_q_net;
  cav2_p2_phase_out <= register120_q_net;
  diag1fixed_ctl_net <= diag1fixed_ctl;
  diag1sevr_ctl_net <= diag1sevr_ctl;
  diag2fixed_ctl_net <= diag2fixed_ctl;
  diag2sevr_ctl_net <= diag2sevr_ctl;
  diag3fixed_ctl_net <= diag3fixed_ctl;
  diag3sevr_ctl_net <= diag3sevr_ctl;
  diag4fixed_ctl_net <= diag4fixed_ctl;
  diag4sevr_ctl_net <= diag4sevr_ctl;
  diag5fixed_ctl_net <= diag5fixed_ctl;
  diag5sevr_ctl_net <= diag5sevr_ctl;
  diag6fixed_ctl_net <= diag6fixed_ctl;
  diag6sevr_ctl_net <= diag6sevr_ctl;
  diag7fixed_ctl_net <= diag7fixed_ctl;
  diag7sevr_ctl_net <= diag7sevr_ctl;
  diag8fixed_ctl_net <= diag8fixed_ctl;
  diag8sevr_ctl_net <= diag8sevr_ctl;
  diagnrst_ctl_net <= diagnrst_ctl;
  diagnsync_ctl_net <= diagnsync_ctl;
  rf_ref_amp <= register76_q_net;
  rf_ref_chan_sel_net <= rf_ref_chan_sel;
  rf_ref_i <= register80_q_net;
  rf_ref_phase <= register78_q_net;
  rf_ref_q <= register82_q_net;
  status_0 <= register27_q_net;
  d_clk_net <= clk_1;
  q_ce_net <= ce_1;
  dest_clk_net <= clk_8;
  dest_ce_net <= ce_8;
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
    d => c1p1_if_phi,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample1_q_net
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
    d => c1p1_amp_out,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample10_q_net
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
    d => c1p1_if_amp,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample11_q_net
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
    d => c1p1_comp_i,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
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
    d => c1p1_comp_q,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
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
    d => c1p1_comp_phi,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample14_q_net
  );
  down_sample15 : entity work.example_xldsamp 
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
    d => c1p2_if_phi,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample15_q_net
  );
  down_sample16 : entity work.example_xldsamp 
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
    d => c1p2_amp_out,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample16_q_net
  );
  down_sample17 : entity work.example_xldsamp 
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
    d => c1p2_if_amp,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample17_q_net
  );
  down_sample18 : entity work.example_xldsamp 
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
    d => c1p2_comp_i,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample18_q_net
  );
  down_sample19 : entity work.example_xldsamp 
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
    d => c1p2_comp_q,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample19_q_net
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
    d => c1p1_if_i,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample2_q_net
  );
  down_sample20 : entity work.example_xldsamp 
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
    d => c1p2_comp_phi,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample20_q_net
  );
  down_sample21 : entity work.example_xldsamp 
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
    d => c1p2_if_i,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample21_q_net
  );
  down_sample22 : entity work.example_xldsamp 
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
    d => c1p2_if_q,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample22_q_net
  );
  down_sample23 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    ds_ratio => 8,
    latency => 1,
    phase => 7,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => c1p2_dc_i,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample23_q_net
  );
  down_sample24 : entity work.example_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    ds_ratio => 8,
    latency => 1,
    phase => 7,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => c1p2_dc_q,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample24_q_net
  );
  down_sample25 : entity work.example_xldsamp 
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
    d => c1p2_dc_freq,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample25_q_net
  );
  down_sample26 : entity work.example_xldsamp 
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
    d => c1p2_integ_i,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample26_q_net
  );
  down_sample27 : entity work.example_xldsamp 
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
    d => c1p2_integ_q,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample27_q_net
  );
  down_sample28 : entity work.example_xldsamp 
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
    d => c1p2_phi_out,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample28_q_net
  );
  down_sample29 : entity work.example_xldsamp 
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
    d => ref_amp,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample29_q_net
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
    d => c1p1_if_q,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample3_q_net
  );
  down_sample30 : entity work.example_xldsamp 
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
    d => ref_phi,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample30_q_net
  );
  down_sample31 : entity work.example_xldsamp 
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
    d => ref_i,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample31_q_net
  );
  down_sample32 : entity work.example_xldsamp 
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
    d => ref_q,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample32_q_net
  );
  down_sample33 : entity work.example_xldsamp 
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
    d => c2p1_if_amp,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample33_q_net
  );
  down_sample34 : entity work.example_xldsamp 
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
    d => c2p1_if_phi,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample34_q_net
  );
  down_sample35 : entity work.example_xldsamp 
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
    d => c2p1_if_i,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample35_q_net
  );
  down_sample36 : entity work.example_xldsamp 
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
    d => c2p1_if_q,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample36_q_net
  );
  down_sample37 : entity work.example_xldsamp 
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
    d => c2p1_dc_i,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample37_q_net
  );
  down_sample38 : entity work.example_xldsamp 
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
    d => c2p1_dc_q,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample38_q_net
  );
  down_sample39 : entity work.example_xldsamp 
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
    d => c2p1_dc_freq,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample39_q_net
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
    d => c1p1_dc_i,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample4_q_net
  );
  down_sample40 : entity work.example_xldsamp 
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
    d => c2p1_integ_i,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample40_q_net
  );
  down_sample41 : entity work.example_xldsamp 
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
    d => c2p1_integ_q,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample41_q_net
  );
  down_sample42 : entity work.example_xldsamp 
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
    d => c2p1_phi_out,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample42_q_net
  );
  down_sample43 : entity work.example_xldsamp 
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
    d => c2p1_amp_out,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample43_q_net
  );
  down_sample44 : entity work.example_xldsamp 
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
    d => c2p1_comp_i,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample44_q_net
  );
  down_sample45 : entity work.example_xldsamp 
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
    d => c2p1_comp_q,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample45_q_net
  );
  down_sample46 : entity work.example_xldsamp 
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
    d => c2p1_comp_phi,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample46_q_net
  );
  down_sample47 : entity work.example_xldsamp 
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
    d => c2p2_if_amp,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample47_q_net
  );
  down_sample48 : entity work.example_xldsamp 
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
    d => c2p2_if_phi,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample48_q_net
  );
  down_sample49 : entity work.example_xldsamp 
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
    d => c2p2_if_i,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample49_q_net
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
    d => c1p1_dc_q,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample5_q_net
  );
  down_sample50 : entity work.example_xldsamp 
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
    d => c2p2_if_q,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample50_q_net
  );
  down_sample51 : entity work.example_xldsamp 
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
    d => c2p2_dc_i,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample51_q_net
  );
  down_sample52 : entity work.example_xldsamp 
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
    d => c2p2_dc_q,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample52_q_net
  );
  down_sample53 : entity work.example_xldsamp 
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
    d => c2p2_dc_freq,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample53_q_net
  );
  down_sample54 : entity work.example_xldsamp 
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
    d => c2p2_integ_i,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample54_q_net
  );
  down_sample55 : entity work.example_xldsamp 
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
    d => c2p2_integ_q,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample55_q_net
  );
  down_sample56 : entity work.example_xldsamp 
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
    d => c2p2_phi_out,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample56_q_net
  );
  down_sample57 : entity work.example_xldsamp 
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
    d => c2p2_amp_out,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample57_q_net
  );
  down_sample58 : entity work.example_xldsamp 
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
    d => c2p2_comp_i,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample58_q_net
  );
  down_sample59 : entity work.example_xldsamp 
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
    d => c2p2_comp_q,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample59_q_net
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
    d => c1p1_dc_freq,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample6_q_net
  );
  down_sample60 : entity work.example_xldsamp 
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
    d => c2p2_comp_phi,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample60_q_net
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
    d => c1p1_integ_i,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
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
    d => c1p1_integ_q,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
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
    d => c1p1_phi_out,
    src_clk => d_clk_net,
    src_ce => q_ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample9_q_net
  );
  register1 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register46_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
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
    d => register2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register10_q_net
  );
  register100 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register107_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register100_q_net
  );
  register101 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register108_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register101_q_net
  );
  register102 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register109_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register102_q_net
  );
  register103 : entity work.example_xlregister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register110_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register103_q_net
  );
  register104 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample33_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register104_q_net
  );
  register105 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample34_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register105_q_net
  );
  register106 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample35_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register106_q_net
  );
  register107 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample36_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register107_q_net
  );
  register108 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample37_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register108_q_net
  );
  register109 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample38_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register109_q_net
  );
  register11 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register31_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register11_q_net
  );
  register110 : entity work.example_xlregister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample39_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register110_q_net
  );
  register111 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample40_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register111_q_net
  );
  register112 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample41_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register112_q_net
  );
  register113 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample42_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register113_q_net
  );
  register114 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample43_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register114_q_net
  );
  register115 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample44_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register115_q_net
  );
  register116 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample45_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register116_q_net
  );
  register117 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample46_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register117_q_net
  );
  register118 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register139_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register118_q_net
  );
  register119 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register140_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register119_q_net
  );
  register12 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register32_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register12_q_net
  );
  register120 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register141_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register120_q_net
  );
  register121 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register142_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register121_q_net
  );
  register122 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register143_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register122_q_net
  );
  register123 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register144_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register123_q_net
  );
  register124 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register145_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register124_q_net
  );
  register125 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register132_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register125_q_net
  );
  register126 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register133_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register126_q_net
  );
  register127 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register134_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register127_q_net
  );
  register128 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register135_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register128_q_net
  );
  register129 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register136_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register129_q_net
  );
  register13 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register33_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register13_q_net
  );
  register130 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register137_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register130_q_net
  );
  register131 : entity work.example_xlregister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register138_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register131_q_net
  );
  register132 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample47_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register132_q_net
  );
  register133 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample48_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register133_q_net
  );
  register134 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample49_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register134_q_net
  );
  register135 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample50_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register135_q_net
  );
  register136 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample51_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register136_q_net
  );
  register137 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample52_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register137_q_net
  );
  register138 : entity work.example_xlregister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample53_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register138_q_net
  );
  register139 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample54_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register139_q_net
  );
  register14 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register34_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register14_q_net
  );
  register140 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample55_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register140_q_net
  );
  register141 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample56_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register141_q_net
  );
  register142 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample57_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register142_q_net
  );
  register143 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample58_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register143_q_net
  );
  register144 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample59_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register144_q_net
  );
  register145 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample60_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register145_q_net
  );
  register146 : entity work.example_xlregister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register147_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register146_q_net
  );
  register147 : entity work.example_xlregister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    en => "1",
    rst => "0",
    d => cav2_p1_chan_sel_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register147_q_net
  );
  register148 : entity work.example_xlregister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register149_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register148_q_net
  );
  register149 : entity work.example_xlregister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    en => "1",
    rst => "0",
    d => cav2_p2_chan_sel_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register149_q_net
  );
  register15 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register35_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register15_q_net
  );
  register158 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register159_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register158_q_net
  );
  register159 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => cav2_nco_phase_reset_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register159_q_net
  );
  register16 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register36_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register16_q_net
  );
  register160 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register161_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register160_q_net
  );
  register161 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => cav2_nco_phase_adj_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register161_q_net
  );
  register162 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register163_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register162_q_net
  );
  register163 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diagnrst_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register163_q_net
  );
  register164 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register165_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register164_q_net
  );
  register165 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diagnsync_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register165_q_net
  );
  register166 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register167_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register166_q_net
  );
  register167 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag1fixed_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register167_q_net
  );
  register168 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => register169_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register168_q_net
  );
  register169 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag1sevr_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register169_q_net
  );
  register17 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register47_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register17_q_net
  );
  register170 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register171_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register170_q_net
  );
  register171 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag2fixed_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register171_q_net
  );
  register172 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => register173_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register172_q_net
  );
  register173 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag2sevr_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register173_q_net
  );
  register174 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register175_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register174_q_net
  );
  register175 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag3fixed_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register175_q_net
  );
  register176 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => register177_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register176_q_net
  );
  register177 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag3sevr_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register177_q_net
  );
  register178 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register179_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register178_q_net
  );
  register179 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag4fixed_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register179_q_net
  );
  register18 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register48_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register18_q_net
  );
  register180 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => register181_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register180_q_net
  );
  register181 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag4sevr_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register181_q_net
  );
  register182 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register183_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register182_q_net
  );
  register183 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag5fixed_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register183_q_net
  );
  register184 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register185_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register184_q_net
  );
  register185 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag6fixed_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register185_q_net
  );
  register186 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register187_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register186_q_net
  );
  register187 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag7fixed_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register187_q_net
  );
  register188 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register189_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register188_q_net
  );
  register189 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag8fixed_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register189_q_net
  );
  register19 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register49_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register19_q_net
  );
  register190 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => register191_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register190_q_net
  );
  register191 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag5sevr_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register191_q_net
  );
  register192 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => register193_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register192_q_net
  );
  register193 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag6sevr_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register193_q_net
  );
  register194 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => register195_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register194_q_net
  );
  register195 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag7sevr_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register195_q_net
  );
  register196 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => register197_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register196_q_net
  );
  register197 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => diag8sevr_ctl_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register197_q_net
  );
  register2 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample7_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
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
    d => register50_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
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
    d => register51_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
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
    d => register52_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
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
    d => register53_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
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
    d => register54_q_net,
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
    d => register55_q_net,
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
    d => register56_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register26_q_net
  );
  register27 : entity work.example_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => versionnumber_op_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register27_q_net
  );
  register28 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register57_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register28_q_net
  );
  register29 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register58_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
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
    d => register39_q_net,
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
    d => register59_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register30_q_net
  );
  register31 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample8_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register31_q_net
  );
  register32 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample9_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register32_q_net
  );
  register33 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample10_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register33_q_net
  );
  register34 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample12_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register34_q_net
  );
  register35 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample13_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register35_q_net
  );
  register36 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample14_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register36_q_net
  );
  register39 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample11_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register39_q_net
  );
  register4 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register40_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register4_q_net
  );
  register40 : entity work.example_xlregister 
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
    q => register40_q_net
  );
  register41 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register41_q_net
  );
  register42 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register42_q_net
  );
  register43 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register43_q_net
  );
  register44 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register44_q_net
  );
  register45 : entity work.example_xlregister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample6_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register45_q_net
  );
  register46 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample22_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register46_q_net
  );
  register47 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample26_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register47_q_net
  );
  register48 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample27_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register48_q_net
  );
  register49 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample28_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register49_q_net
  );
  register5 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register41_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register5_q_net
  );
  register50 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample16_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register50_q_net
  );
  register51 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample18_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register51_q_net
  );
  register52 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample19_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register52_q_net
  );
  register53 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample20_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register53_q_net
  );
  register54 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample17_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register54_q_net
  );
  register55 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample15_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register55_q_net
  );
  register56 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample21_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register56_q_net
  );
  register57 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample23_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register57_q_net
  );
  register58 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample24_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register58_q_net
  );
  register59 : entity work.example_xlregister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample25_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register59_q_net
  );
  register6 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register42_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register6_q_net
  );
  register60 : entity work.example_xlregister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register61_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register60_q_net
  );
  register61 : entity work.example_xlregister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    en => "1",
    rst => "0",
    d => cav1_p1_chan_sel_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register61_q_net
  );
  register62 : entity work.example_xlregister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register63_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register62_q_net
  );
  register63 : entity work.example_xlregister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    en => "1",
    rst => "0",
    d => cav1_p2_chan_sel_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register63_q_net
  );
  register7 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register43_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register7_q_net
  );
  register72 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register73_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register72_q_net
  );
  register73 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => cav1_nco_phase_reset_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register73_q_net
  );
  register74 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register75_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register74_q_net
  );
  register75 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => cav1_nco_phase_adj_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register75_q_net
  );
  register76 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register77_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register76_q_net
  );
  register77 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample29_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register77_q_net
  );
  register78 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register79_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register78_q_net
  );
  register79 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample30_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register79_q_net
  );
  register8 : entity work.example_xlregister 
  generic map (
    d_width => 29,
    init_value => b"00000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register44_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register8_q_net
  );
  register80 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register81_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register80_q_net
  );
  register81 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample31_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register81_q_net
  );
  register82 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register83_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register82_q_net
  );
  register83 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample32_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register83_q_net
  );
  register88 : entity work.example_xlregister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register89_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register88_q_net
  );
  register89 : entity work.example_xlregister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    en => "1",
    rst => "0",
    d => rf_ref_chan_sel_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register89_q_net
  );
  register9 : entity work.example_xlregister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register45_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register9_q_net
  );
  register90 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register111_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register90_q_net
  );
  register91 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register112_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register91_q_net
  );
  register92 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register113_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register92_q_net
  );
  register93 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register114_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register93_q_net
  );
  register94 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register115_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register94_q_net
  );
  register95 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register116_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register95_q_net
  );
  register96 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register117_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register96_q_net
  );
  register97 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register104_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register97_q_net
  );
  register98 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register105_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register98_q_net
  );
  register99 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register106_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => register99_q_net
  );
  up_sample1 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register72_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => c1_nco_reset
  );
  up_sample10 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 4,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 4
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register88_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => ref_chan_sel
  );
  up_sample11 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 4,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 4
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register146_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => c2p1_chan_sel
  );
  up_sample12 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 4,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 4
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register148_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => c2p2_chan_sel
  );
  up_sample17 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register158_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => c2_nco_reset
  );
  up_sample18 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 29,
    d_width => 29,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 29,
    q_width => 29
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register160_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => c2_nco_phi
  );
  up_sample19 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 4,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 4
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register60_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => c1p1_chan_sel
  );
  up_sample20 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register162_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diagnrst_ctl_x0
  );
  up_sample21 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register164_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diagnsync_ctl_x0
  );
  up_sample22 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register166_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diag1fixed_ctl_x0
  );
  up_sample23 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 2,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 2
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register168_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diag1sevr_ctl_x0
  );
  up_sample24 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register170_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diag2fixed_ctl_x0
  );
  up_sample25 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 2,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 2
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register172_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diag2sevr_ctl_x0
  );
  up_sample26 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register174_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diag3fixed_ctl_x0
  );
  up_sample27 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 2,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 2
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register176_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diag3sevr_ctl_x0
  );
  up_sample28 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register178_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diag4fixed_ctl_x0
  );
  up_sample29 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 2,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 2
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register180_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diag4sevr_ctl_x0
  );
  up_sample30 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register182_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diag5fixed_ctl_x0
  );
  up_sample31 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register184_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diag6fixed_ctl_x0
  );
  up_sample32 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register186_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diag7fixed_ctl_x0
  );
  up_sample33 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register188_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diag8fixed_ctl_x0
  );
  up_sample34 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 2,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 2
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register190_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diag5sevr_ctl_x0
  );
  up_sample35 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 2,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 2
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register192_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diag6sevr_ctl_x0
  );
  up_sample36 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 2,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 2
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register194_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diag7sevr_ctl_x0
  );
  up_sample37 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 2,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 2
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register196_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => diag8sevr_ctl_x0
  );
  up_sample6 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 4,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 4
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register62_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => c1p2_chan_sel
  );
  up_sample7 : entity work.example_xlusamp 
  generic map (
    copy_samples => 1,
    d_arith => xlUnsigned,
    d_bin_pt => 29,
    d_width => 29,
    latency => 1,
    q_arith => xlUnsigned,
    q_bin_pt => 29,
    q_width => 29
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => register74_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
    q => c1_nco_phi
  );
  versionnumber : entity work.sysgen_constant_0dde287d44 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => versionnumber_op_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/DDC NCO
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
  signal dds_compiler_6_0_m_axis_data_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal constant21_op_net : std_logic_vector( 1-1 downto 0 );
  signal dds_compiler_6_0_s_axis_phase_tready_net : std_logic;
  signal clock_enable_probe1_q_net : std_logic_vector( 1-1 downto 0 );
  signal nco_sin : std_logic_vector( 10-1 downto 0 );
  signal nco_cos : std_logic_vector( 10-1 downto 0 );
  signal register35_q_net : std_logic_vector( 1-1 downto 0 );
  signal register36_q_net : std_logic_vector( 29-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
begin
  tvalid <= clock_enable_probe1_q_net;
  sine <= nco_sin;
  cosine <= nco_cos;
  nco_out_1 <= nco_sin;
  nco_out_2 <= nco_cos;
  register35_q_net <= phase_reset;
  register36_q_net <= phase_ctrl;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  clock_enable_probe1 : entity work.example_xlceprobe 
  generic map (
    d_width => 1,
    q_width => 1
  )
  port map (
    d => dds_compiler_6_0_m_axis_data_tvalid_net,
    clk => q_clk_net,
    ce => d_ce_net,
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
    s_axis_phase_tdata_resync => register35_q_net,
    s_axis_phase_tdata_pinc => register36_q_net,
    m_axis_data_tready => constant21_op_net(0),
    clk => q_clk_net,
    ce => d_ce_net,
    s_axis_phase_tready => dds_compiler_6_0_s_axis_phase_tready_net,
    m_axis_data_tvalid => dds_compiler_6_0_m_axis_data_tvalid_net(0),
    m_axis_data_tdata_sine => nco_sin,
    m_axis_data_tdata_cosine => nco_cos
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/PA_select/Channel Select1
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
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal amp : std_logic_vector( 18-1 downto 0 );
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
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
  register29_q_net <= ch_sel;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => register29_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => constant13_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/PA_select
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
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
begin
  amp <= down_sample1_q_net;
  phase <= down_sample_q_net;
  amp_x0 <= pa_bus_1;
  register29_q_net <= pa_chan_sel;
  phase_x0 <= pa_bus_2;
  channel <= pa_bus_3;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
  channel_select1 : entity work.example_channel_select1_x2 
  port map (
    in0 => amp_x0,
    in1 => phase_x0,
    ch_id => channel,
    ch_sel => register29_q_net,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/PA_select1/Channel Select1
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
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
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
  register30_q_net <= ch_sel;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => register30_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => constant13_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/PA_select1
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
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
begin
  amp <= down_sample1_q_net;
  phase <= down_sample_q_net;
  amp_x0 <= pa_bus_1;
  register30_q_net <= pa_chan_sel;
  phase_x0 <= pa_bus_2;
  channel <= pa_bus_3;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
  channel_select1 : entity work.example_channel_select1_x3 
  port map (
    in0 => amp_x0,
    in1 => phase_x0,
    ch_id => channel,
    ch_sel => register30_q_net,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem1/Channel Select3
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
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
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
  register30_q_net <= ch_sel;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => register30_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => constant13_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem1
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
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
begin
  ddci <= down_sample1_q_net;
  ddcq <= down_sample_q_net;
  ddci_x0 <= iq_stream_in_1;
  register30_q_net <= iq_chan_sel;
  ddcq_x0 <= iq_stream_in_2;
  ddcchannel <= iq_stream_in_3;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
  channel_select3 : entity work.example_channel_select3_x3 
  port map (
    in0 => ddci_x0,
    in1 => ddcq_x0,
    ch_id => ddcchannel,
    ch_sel => register30_q_net,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem3/Channel Select3
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
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
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
  register29_q_net <= ch_sel;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => register29_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => constant13_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_subsystem3_x1 is
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
end example_subsystem3_x1;
architecture structural of example_subsystem3_x1 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ddci_x0 : std_logic_vector( 18-1 downto 0 );
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
begin
  ddci <= down_sample1_q_net;
  ddcq <= down_sample_q_net;
  ddci_x0 <= iq_stream_in_1;
  register29_q_net <= iq_chan_sel;
  ddcq_x0 <= iq_stream_in_2;
  ddcchannel <= iq_stream_in_3;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
  channel_select3 : entity work.example_channel_select3 
  port map (
    in0 => ddci_x0,
    in1 => ddcq_x0,
    ch_id => ddcchannel,
    ch_sel => register29_q_net,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1
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
    cav1_p1_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav1_nco_phase_reset : in std_logic_vector( 1-1 downto 0 );
    cav1_p2_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav1_nco_phase_adj : in std_logic_vector( 29-1 downto 0 );
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
    cav1_p2_dc_real : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_dc_img : out std_logic_vector( 18-1 downto 0 );
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
    cav1_p1_if_q : out std_logic_vector( 18-1 downto 0 )
  );
end example_cav1;
architecture structural of example_cav1 is 
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
  signal convert_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 18-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 26-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant12_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant14_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant18_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant19_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant21_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant23_op_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal register35_q_net : std_logic_vector( 1-1 downto 0 );
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal register36_q_net : std_logic_vector( 29-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
  signal clock_enable_probe1_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal nco_sin : std_logic_vector( 10-1 downto 0 );
  signal nco_cos : std_logic_vector( 10-1 downto 0 );
  signal clock_enable_probe_q_net : std_logic_vector( 1-1 downto 0 );
  signal clock_enable_probe1_q_net : std_logic_vector( 1-1 downto 0 );
  signal complex_multiplier_6_0_m_axis_dout_tvalid_net : std_logic;
  signal complex_multiplier_6_0_m_axis_dout_tdata_imag_net : std_logic_vector( 29-1 downto 0 );
  signal complex_multiplier_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 29-1 downto 0 );
  signal complex_multiplier_6_0_1_m_axis_dout_tvalid_net : std_logic;
  signal complex_multiplier_6_0_1_m_axis_dout_tdata_imag_net : std_logic_vector( 18-1 downto 0 );
  signal complex_multiplier_6_0_1_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal register32_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register33_q_net_x0 : std_logic_vector( 18-1 downto 0 );
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
  cav1_p2_dc_real <= convert_dout_net;
  cav1_p2_dc_img <= convert1_dout_net;
  cav1_p2_dc_freq <= constant10_op_net;
  cav1_p2_integrated_i <= constant11_op_net;
  cav1_p2_integrated_q <= constant12_op_net;
  cav1_p2_phase_out <= constant14_op_net;
  cav1_p2_amp_out <= constant18_op_net;
  cav1_p2_comparison_i <= constant19_op_net;
  cav1_p2_comparison_q <= constant21_op_net;
  cav1_p2_comparison_phase <= constant23_op_net;
  cav1_p2_if_amp <= down_sample1_q_net;
  cav1_p2_if_phase <= down_sample_q_net;
  cav1_p2_if_i <= down_sample1_q_net_x2;
  cav1_p2_if_q <= down_sample_q_net_x2;
  cav1_p1_if_amp <= down_sample1_q_net_x0;
  cav1_p1_if_phase <= down_sample_q_net_x0;
  cav1_p1_if_i <= down_sample1_q_net_x1;
  cav1_p1_if_q <= down_sample_q_net_x1;
  register29_q_net <= cav1_p1_chan_sel;
  register35_q_net <= cav1_nco_phase_reset;
  register30_q_net <= cav1_p2_chan_sel;
  register36_q_net <= cav1_nco_phase_adj;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
  ddc_nco : entity work.example_ddc_nco_x0 
  port map (
    phase_reset => register35_q_net,
    phase_ctrl => register36_q_net,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    tvalid => clock_enable_probe1_q_net_x0,
    sine => nco_sin,
    cosine => nco_cos,
    nco_out_1 => nco_sin,
    nco_out_2 => nco_cos
  );
  pa_select : entity work.example_pa_select_x1 
  port map (
    pa_bus_1 => amp,
    pa_chan_sel => register29_q_net,
    pa_bus_2 => phase,
    pa_bus_3 => channel,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    amp => down_sample1_q_net_x0,
    phase => down_sample_q_net_x0
  );
  pa_select1 : entity work.example_pa_select1_x0 
  port map (
    pa_bus_1 => amp,
    pa_chan_sel => register30_q_net,
    pa_bus_2 => phase,
    pa_bus_3 => channel,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    amp => down_sample1_q_net,
    phase => down_sample_q_net
  );
  subsystem1_x0 : entity work.example_subsystem1_x0 
  port map (
    iq_stream_in_1 => ddci,
    iq_chan_sel => register30_q_net,
    iq_stream_in_2 => ddcq,
    iq_stream_in_3 => ddcchannel,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    ddci => down_sample1_q_net_x2,
    ddcq => down_sample_q_net_x2
  );
  subsystem3 : entity work.example_subsystem3_x1 
  port map (
    iq_stream_in_1 => ddci,
    iq_chan_sel => register29_q_net,
    iq_stream_in_2 => ddcq,
    iq_stream_in_3 => ddcchannel,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    ddci => down_sample1_q_net_x1,
    ddcq => down_sample_q_net_x1
  );
  clock_enable_probe : entity work.example_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => down_sample_q_net_x1,
    clk => d_clk_net,
    ce => q_ce_net,
    q => clock_enable_probe_q_net
  );
  clock_enable_probe1 : entity work.example_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => down_sample_q_net_x2,
    clk => d_clk_net,
    ce => q_ce_net,
    q => clock_enable_probe1_q_net
  );
  complex_multiplier_6_0 : entity work.xlcomplex_multiplier_2db568568678b52ae60ddabdbca6b4fb 
  port map (
    s_axis_a_tvalid => clock_enable_probe_q_net(0),
    s_axis_a_tdata_imag => down_sample_q_net_x1,
    s_axis_a_tdata_real => down_sample1_q_net_x1,
    s_axis_b_tvalid => clock_enable_probe1_q_net_x0(0),
    s_axis_b_tdata_imag => nco_sin,
    s_axis_b_tdata_real => nco_cos,
    clk => q_clk_net,
    ce => d_ce_net,
    m_axis_dout_tvalid => complex_multiplier_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => complex_multiplier_6_0_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => complex_multiplier_6_0_m_axis_dout_tdata_real_net
  );
  complex_multiplier_6_0_1 : entity work.xlcomplex_multiplier_3714c308f0744230beef7291b402a51a 
  port map (
    s_axis_a_tvalid => clock_enable_probe1_q_net(0),
    s_axis_a_tdata_imag => down_sample_q_net_x2,
    s_axis_a_tdata_real => down_sample1_q_net_x2,
    s_axis_b_tvalid => clock_enable_probe1_q_net_x0(0),
    s_axis_b_tdata_imag => nco_sin,
    s_axis_b_tdata_real => nco_cos,
    clk => q_clk_net,
    ce => d_ce_net,
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
  convert : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 14,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 16,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register32_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert_dout_net
  );
  convert1 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 14,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 16,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register33_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert1_dout_net
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register1_q_net
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register2_q_net
  );
  register32 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_1_m_axis_dout_tdata_imag_net,
    en(0) => complex_multiplier_6_0_1_m_axis_dout_tvalid_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register32_q_net_x0
  );
  register33 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_1_m_axis_dout_tdata_real_net,
    en(0) => complex_multiplier_6_0_1_m_axis_dout_tvalid_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register33_q_net_x0
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/DDC NCO
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
  signal register35_q_net : std_logic_vector( 1-1 downto 0 );
  signal register36_q_net : std_logic_vector( 29-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal dds_compiler_6_0_m_axis_data_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal constant21_op_net : std_logic_vector( 1-1 downto 0 );
  signal dds_compiler_6_0_s_axis_phase_tready_net : std_logic;
begin
  tvalid <= clock_enable_probe1_q_net;
  sine <= nco_sin;
  cosine <= nco_cos;
  nco_out_1 <= nco_sin;
  nco_out_2 <= nco_cos;
  register35_q_net <= phase_reset;
  register36_q_net <= phase_ctrl;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  clock_enable_probe1 : entity work.example_xlceprobe 
  generic map (
    d_width => 1,
    q_width => 1
  )
  port map (
    d => dds_compiler_6_0_m_axis_data_tvalid_net,
    clk => q_clk_net,
    ce => d_ce_net,
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
    s_axis_phase_tdata_resync => register35_q_net,
    s_axis_phase_tdata_pinc => register36_q_net,
    m_axis_data_tready => constant21_op_net(0),
    clk => q_clk_net,
    ce => d_ce_net,
    s_axis_phase_tready => dds_compiler_6_0_s_axis_phase_tready_net,
    m_axis_data_tvalid => dds_compiler_6_0_m_axis_data_tvalid_net(0),
    m_axis_data_tdata_sine => nco_sin,
    m_axis_data_tdata_cosine => nco_cos
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/PA_select/Channel Select1
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
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
  signal constant13_op_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal last : std_logic_vector( 1-1 downto 0 );
begin
  out0 <= down_sample1_q_net;
  out1 <= down_sample_q_net;
  amp <= in0;
  phase <= in1;
  channel <= ch_id;
  register29_q_net <= ch_sel;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => register29_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => constant13_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/PA_select
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
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
begin
  amp <= down_sample1_q_net;
  phase <= down_sample_q_net;
  amp_x0 <= pa_bus_1;
  register29_q_net <= pa_chan_sel;
  phase_x0 <= pa_bus_2;
  channel <= pa_bus_3;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
  channel_select1 : entity work.example_channel_select1 
  port map (
    in0 => amp_x0,
    in1 => phase_x0,
    ch_id => channel,
    ch_sel => register29_q_net,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/PA_select1/Channel Select1
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
  signal last : std_logic_vector( 1-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal amp : std_logic_vector( 18-1 downto 0 );
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
  signal constant13_op_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
begin
  out0 <= down_sample1_q_net;
  out1 <= down_sample_q_net;
  amp <= in0;
  phase <= in1;
  channel <= ch_id;
  register30_q_net <= ch_sel;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => register30_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => constant13_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/PA_select1
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
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
begin
  amp <= down_sample1_q_net;
  phase <= down_sample_q_net;
  amp_x0 <= pa_bus_1;
  register30_q_net <= pa_chan_sel;
  phase_x0 <= pa_bus_2;
  channel <= pa_bus_3;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
  channel_select1 : entity work.example_channel_select1_x0 
  port map (
    in0 => amp_x0,
    in1 => phase_x0,
    ch_id => channel,
    ch_sel => register30_q_net,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem1/Channel Select3
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
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
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
  register30_q_net <= ch_sel;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => register30_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => constant13_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem1
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
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
begin
  ddci <= down_sample1_q_net;
  ddcq <= down_sample_q_net;
  ddci_x0 <= iq_stream_in_1;
  register30_q_net <= iq_chan_sel;
  ddcq_x0 <= iq_stream_in_2;
  ddcchannel <= iq_stream_in_3;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
  channel_select3 : entity work.example_channel_select3_x0 
  port map (
    in0 => ddci_x0,
    in1 => ddcq_x0,
    ch_id => ddcchannel,
    ch_sel => register30_q_net,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem3/Channel Select3
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
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
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
  register29_q_net <= ch_sel;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => register29_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => constant13_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem3
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
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
begin
  ddci <= down_sample1_q_net;
  ddcq <= down_sample_q_net;
  ddci_x0 <= iq_stream_in_1;
  register29_q_net <= iq_chan_sel;
  ddcq_x0 <= iq_stream_in_2;
  ddcchannel <= iq_stream_in_3;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
  channel_select3 : entity work.example_channel_select3_x1 
  port map (
    in0 => ddci_x0,
    in1 => ddcq_x0,
    ch_id => ddcchannel,
    ch_sel => register29_q_net,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2
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
    cav2_p1_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav2_p2_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav2_nco_phase_reset : in std_logic_vector( 1-1 downto 0 );
    cav2_nco_phase_adj : in std_logic_vector( 29-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    cav2_p1_dc_real : out std_logic_vector( 29-1 downto 0 );
    cav2_p1_dc_img : out std_logic_vector( 29-1 downto 0 );
    cav2_p1_dc_freq : out std_logic_vector( 26-1 downto 0 );
    cav2_p1_integrated_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_integrated_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_phase : out std_logic_vector( 18-1 downto 0 );
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
    cav2_p1_if_q : out std_logic_vector( 18-1 downto 0 )
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
  signal register32_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal register33_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 26-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant12_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant14_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant18_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant19_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant21_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant23_op_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal register35_q_net : std_logic_vector( 1-1 downto 0 );
  signal register36_q_net : std_logic_vector( 29-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
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
  cav2_p1_dc_real <= register2_q_net;
  cav2_p1_dc_img <= register1_q_net;
  cav2_p1_dc_freq <= constant_op_net;
  cav2_p1_integrated_i <= constant8_op_net;
  cav2_p1_integrated_q <= constant7_op_net;
  cav2_p1_phase_out <= constant6_op_net;
  cav2_p1_amp_out <= constant5_op_net;
  cav2_p1_comparison_i <= constant4_op_net;
  cav2_p1_comparison_q <= constant3_op_net;
  cav2_p1_comparison_phase <= constant9_op_net;
  cav2_p2_dc_real <= register32_q_net_x0;
  cav2_p2_dc_img <= register33_q_net_x0;
  cav2_p2_dc_freq <= constant10_op_net;
  cav2_p2_integrated_i <= constant11_op_net;
  cav2_p2_integrated_q <= constant12_op_net;
  cav2_p2_phase_out <= constant14_op_net;
  cav2_p2_amp_out <= constant18_op_net;
  cav2_p2_comparison_i <= constant19_op_net;
  cav2_p2_comparison_q <= constant21_op_net;
  cav2_p2_comparison_phase <= constant23_op_net;
  cav2_p2_if_amp <= down_sample1_q_net_x0;
  cav2_p2_if_phase <= down_sample_q_net;
  cav2_p2_if_i <= down_sample1_q_net_x1;
  cav2_p2_if_q <= down_sample_q_net_x1;
  cav2_p1_if_amp <= down_sample1_q_net;
  cav2_p1_if_phase <= down_sample_q_net_x0;
  cav2_p1_if_i <= down_sample1_q_net_x2;
  cav2_p1_if_q <= down_sample_q_net_x2;
  register29_q_net <= cav2_p1_chan_sel;
  register30_q_net <= cav2_p2_chan_sel;
  register35_q_net <= cav2_nco_phase_reset;
  register36_q_net <= cav2_nco_phase_adj;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
  ddc_nco : entity work.example_ddc_nco 
  port map (
    phase_reset => register35_q_net,
    phase_ctrl => register36_q_net,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    tvalid => clock_enable_probe1_q_net_x0,
    sine => nco_sin,
    cosine => nco_cos,
    nco_out_1 => nco_sin,
    nco_out_2 => nco_cos
  );
  pa_select : entity work.example_pa_select 
  port map (
    pa_bus_1 => amp,
    pa_chan_sel => register29_q_net,
    pa_bus_2 => phase,
    pa_bus_3 => channel,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    amp => down_sample1_q_net,
    phase => down_sample_q_net_x0
  );
  pa_select1 : entity work.example_pa_select1 
  port map (
    pa_bus_1 => amp,
    pa_chan_sel => register30_q_net,
    pa_bus_2 => phase,
    pa_bus_3 => channel,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    amp => down_sample1_q_net_x0,
    phase => down_sample_q_net
  );
  subsystem1_x0 : entity work.example_subsystem1 
  port map (
    iq_stream_in_1 => ddci,
    iq_chan_sel => register30_q_net,
    iq_stream_in_2 => ddcq,
    iq_stream_in_3 => ddcchannel,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    ddci => down_sample1_q_net_x1,
    ddcq => down_sample_q_net_x1
  );
  subsystem3 : entity work.example_subsystem3 
  port map (
    iq_stream_in_1 => ddci,
    iq_chan_sel => register29_q_net,
    iq_stream_in_2 => ddcq,
    iq_stream_in_3 => ddcchannel,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    ddci => down_sample1_q_net_x2,
    ddcq => down_sample_q_net_x2
  );
  clock_enable_probe : entity work.example_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => down_sample_q_net_x2,
    clk => d_clk_net,
    ce => q_ce_net,
    q => clock_enable_probe_q_net
  );
  clock_enable_probe1 : entity work.example_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => down_sample_q_net_x1,
    clk => d_clk_net,
    ce => q_ce_net,
    q => clock_enable_probe1_q_net
  );
  complex_multiplier_6_0 : entity work.xlcomplex_multiplier_2db568568678b52ae60ddabdbca6b4fb 
  port map (
    s_axis_a_tvalid => clock_enable_probe_q_net(0),
    s_axis_a_tdata_imag => down_sample_q_net_x2,
    s_axis_a_tdata_real => down_sample1_q_net_x2,
    s_axis_b_tvalid => clock_enable_probe1_q_net_x0(0),
    s_axis_b_tdata_imag => nco_sin,
    s_axis_b_tdata_real => nco_cos,
    clk => q_clk_net,
    ce => d_ce_net,
    m_axis_dout_tvalid => complex_multiplier_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => complex_multiplier_6_0_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => complex_multiplier_6_0_m_axis_dout_tdata_real_net
  );
  complex_multiplier_6_0_1 : entity work.xlcomplex_multiplier_2db568568678b52ae60ddabdbca6b4fb 
  port map (
    s_axis_a_tvalid => clock_enable_probe1_q_net(0),
    s_axis_a_tdata_imag => down_sample_q_net_x1,
    s_axis_a_tdata_real => down_sample1_q_net_x1,
    s_axis_b_tvalid => clock_enable_probe1_q_net_x0(0),
    s_axis_b_tdata_imag => nco_sin,
    s_axis_b_tdata_real => nco_cos,
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register1_q_net
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register2_q_net
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register32_q_net_x0
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register33_q_net_x0
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/RFLib_input
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
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
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
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  register25 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => amp_net,
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => ddcchannel_x0
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Ref/IQ_select/Channel Select3
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
  signal register2_q_net : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
  signal constant13_op_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net_x0 : std_logic_vector( 18-1 downto 0 );
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
  register2_q_net <= ch_sel;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    d => register2_q_net_x0,
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register2_q_net_x0
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => register2_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => ddcchannel,
    b => constant13_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Ref/IQ_select
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
  signal register2_q_net : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
begin
  ddci <= down_sample1_q_net;
  ddcq <= down_sample_q_net;
  ddci_x0 <= iq_stream_in_1;
  register2_q_net <= iq_chan_sel;
  ddcq_x0 <= iq_stream_in_2;
  ddcchannel <= iq_stream_in_3;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
  channel_select3 : entity work.example_channel_select3_x2 
  port map (
    in0 => ddci_x0,
    in1 => ddcq_x0,
    ch_id => ddcchannel,
    ch_sel => register2_q_net,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Ref/PA_select/Channel Select1
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
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal amp : std_logic_vector( 18-1 downto 0 );
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal register2_q_net : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
  signal constant13_op_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net_x0 : std_logic_vector( 18-1 downto 0 );
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
  register2_q_net <= ch_sel;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    d => register2_q_net_x0,
    src_clk => q_clk_net,
    src_ce => d_ce_net,
    dest_clk => d_clk_net,
    dest_ce => q_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register2_q_net_x0
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
    clk => q_clk_net,
    ce => d_ce_net,
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
    clk => q_clk_net,
    ce => d_ce_net,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => register2_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_e6d9f3f14a 
  port map (
    clr => '0',
    a => channel,
    b => constant13_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Ref/PA_select
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
  signal register2_q_net : std_logic_vector( 4-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
begin
  amp <= down_sample1_q_net;
  phase <= down_sample_q_net;
  amp_x0 <= pa_bus_1;
  register2_q_net <= pa_chan_sel;
  phase_x0 <= pa_bus_2;
  channel <= pa_bus_3;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
  channel_select1 : entity work.example_channel_select1_x1 
  port map (
    in0 => amp_x0,
    in1 => phase_x0,
    ch_id => channel,
    ch_sel => register2_q_net,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Ref
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
    rf_ref_q : out std_logic_vector( 18-1 downto 0 )
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
  signal register2_q_net : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
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
  register2_q_net <= rf_ref_chan_sel;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
  iq_select : entity work.example_iq_select 
  port map (
    iq_stream_in_1 => ddci,
    iq_chan_sel => register2_q_net,
    iq_stream_in_2 => ddcq,
    iq_stream_in_3 => ddcchannel,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    ddci => down_sample1_q_net,
    ddcq => down_sample_q_net
  );
  pa_select : entity work.example_pa_select_x0 
  port map (
    pa_bus_1 => amp,
    pa_chan_sel => register2_q_net,
    pa_bus_2 => phase,
    pa_bus_3 => channel,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    amp => down_sample1_q_net_x0,
    phase => down_sample_q_net_x0
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_dsp is
  port (
    diagnrst_ctl : in std_logic_vector( 1-1 downto 0 );
    diagnsync_ctl : in std_logic_vector( 1-1 downto 0 );
    diag4sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag5sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag6sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag7sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag8sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag8fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag1sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag2sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag3sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag1fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag2fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag3fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag4fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag5fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag6fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag7fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    amp : in std_logic_vector( 18-1 downto 0 );
    ddcchannel : in std_logic_vector( 4-1 downto 0 );
    ddci : in std_logic_vector( 18-1 downto 0 );
    ddcq : in std_logic_vector( 18-1 downto 0 );
    phase : in std_logic_vector( 18-1 downto 0 );
    phaseampchannel : in std_logic_vector( 4-1 downto 0 );
    cav1_nco_phase_adj : in std_logic_vector( 29-1 downto 0 );
    cav1_nco_phase_reset : in std_logic_vector( 1-1 downto 0 );
    cav1_p1_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav1_p2_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav2_nco_phase_adj : in std_logic_vector( 29-1 downto 0 );
    cav2_nco_phase_reset : in std_logic_vector( 1-1 downto 0 );
    cav2_p1_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav2_p2_chan_sel : in std_logic_vector( 4-1 downto 0 );
    rf_ref_chan_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    diag1data_x0 : out std_logic_vector( 18-1 downto 0 );
    diag2data_x0 : out std_logic_vector( 18-1 downto 0 );
    wfdata_2_x0 : out std_logic_vector( 18-1 downto 0 );
    wfdata_3_x0 : out std_logic_vector( 18-1 downto 0 );
    wfdata_4_x0 : out std_logic_vector( 18-1 downto 0 );
    wfdata_5_x0 : out std_logic_vector( 18-1 downto 0 );
    wfdata_6_x0 : out std_logic_vector( 18-1 downto 0 );
    wfdata_7_x0 : out std_logic_vector( 18-1 downto 0 );
    wfvalid_2_x0 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_3_x0 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_4_x0 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_5_x0 : out std_logic_vector( 1-1 downto 0 );
    diag3data_x0 : out std_logic_vector( 18-1 downto 0 );
    wfvalid_6_x0 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_7_x0 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_0_x0 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_1_x0 : out std_logic_vector( 1-1 downto 0 );
    diag4data_x0 : out std_logic_vector( 18-1 downto 0 );
    diag5data_x0 : out std_logic_vector( 18-1 downto 0 );
    diag6data : out std_logic_vector( 18-1 downto 0 );
    diag7data : out std_logic_vector( 18-1 downto 0 );
    diag8data : out std_logic_vector( 18-1 downto 0 );
    wfdata_0 : out std_logic_vector( 18-1 downto 0 );
    wfdata_1_x0 : out std_logic_vector( 18-1 downto 0 );
    diag8sevr : out std_logic_vector( 2-1 downto 0 );
    diag1data : out std_logic_vector( 32-1 downto 0 );
    diag1fixed : out std_logic_vector( 1-1 downto 0 );
    diag1sevr : out std_logic_vector( 2-1 downto 0 );
    diagnclk : out std_logic_vector( 1-1 downto 0 );
    diagnrst : out std_logic_vector( 1-1 downto 0 );
    diagnsync : out std_logic_vector( 1-1 downto 0 );
    diag7data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag6data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag5data : out std_logic_vector( 32-1 downto 0 );
    diag3data : out std_logic_vector( 32-1 downto 0 );
    diag2data : out std_logic_vector( 32-1 downto 0 );
    wfdata_0_x0 : out std_logic_vector( 32-1 downto 0 );
    diag4data : out std_logic_vector( 32-1 downto 0 );
    diag2fixed : out std_logic_vector( 1-1 downto 0 );
    diag3fixed : out std_logic_vector( 1-1 downto 0 );
    diag4fixed : out std_logic_vector( 1-1 downto 0 );
    diag8data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag5fixed : out std_logic_vector( 1-1 downto 0 );
    diag6fixed : out std_logic_vector( 1-1 downto 0 );
    diag7fixed : out std_logic_vector( 1-1 downto 0 );
    diag8fixed : out std_logic_vector( 1-1 downto 0 );
    diag2sevr : out std_logic_vector( 2-1 downto 0 );
    diag3sevr : out std_logic_vector( 2-1 downto 0 );
    diag4sevr : out std_logic_vector( 2-1 downto 0 );
    diag5sevr : out std_logic_vector( 2-1 downto 0 );
    diag6sevr : out std_logic_vector( 2-1 downto 0 );
    diag7sevr : out std_logic_vector( 2-1 downto 0 );
    wfvalid_0 : out std_logic_vector( 1-1 downto 0 );
    wfdata_1 : out std_logic_vector( 32-1 downto 0 );
    wfdata_2 : out std_logic_vector( 32-1 downto 0 );
    wfdata_3 : out std_logic_vector( 32-1 downto 0 );
    wfdata_4 : out std_logic_vector( 32-1 downto 0 );
    wfdata_5 : out std_logic_vector( 32-1 downto 0 );
    wfdata_6 : out std_logic_vector( 32-1 downto 0 );
    wfdata_7 : out std_logic_vector( 32-1 downto 0 );
    wfvalid_5 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_1 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_2 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_3 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_4 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_6 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_7 : out std_logic_vector( 1-1 downto 0 );
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
    cav1_p1_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_dc_freq : out std_logic_vector( 26-1 downto 0 );
    cav1_p2_dc_img : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_dc_real : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_amp : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_q : out std_logic_vector( 18-1 downto 0 );
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
end example_dsp;
architecture structural of example_dsp is 
  signal constant_op_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal constant13_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant24_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant25_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant27_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant28_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant29_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant30_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant33_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant34_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant35_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant36_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant16_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant37_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant38_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant31_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert24_dout_net : std_logic_vector( 32-1 downto 0 );
  signal constant32_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant17_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant18_op_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal constant19_op_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal constant20_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant21_op_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal constant22_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant23_op_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register35_q_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register13_q_net : std_logic_vector( 2-1 downto 0 );
  signal register14_q_net : std_logic_vector( 2-1 downto 0 );
  signal register15_q_net : std_logic_vector( 2-1 downto 0 );
  signal register16_q_net : std_logic_vector( 2-1 downto 0 );
  signal register17_q_net : std_logic_vector( 2-1 downto 0 );
  signal register10_q_net : std_logic_vector( 1-1 downto 0 );
  signal register3_q_net : std_logic_vector( 2-1 downto 0 );
  signal register11_q_net : std_logic_vector( 2-1 downto 0 );
  signal register12_q_net : std_logic_vector( 2-1 downto 0 );
  signal register2_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register4_q_net : std_logic_vector( 1-1 downto 0 );
  signal register5_q_net : std_logic_vector( 1-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal register7_q_net : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net_x1 : std_logic_vector( 4-1 downto 0 );
  signal register8_q_net : std_logic_vector( 1-1 downto 0 );
  signal register9_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert20_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert13_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert2_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert25_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert39_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert23_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert21_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert27_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert22_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert8_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert26_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert9_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert10_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert12_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert14_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert15_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert16_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert17_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert18_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert19_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert35_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert28_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert29_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert30_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert31_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert32_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert33_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert34_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert40_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert36_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert37_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert38_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert41_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert42_dout_net : std_logic_vector( 1-1 downto 0 );
  signal amp_net : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel_net : std_logic_vector( 4-1 downto 0 );
  signal ddci_net : std_logic_vector( 18-1 downto 0 );
  signal ddcq_net : std_logic_vector( 18-1 downto 0 );
  signal phase_net : std_logic_vector( 18-1 downto 0 );
  signal phaseampchannel_net : std_logic_vector( 4-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 26-1 downto 0 );
  signal register1_q_net : std_logic_vector( 29-1 downto 0 );
  signal register2_q_net : std_logic_vector( 29-1 downto 0 );
  signal down_sample1_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant18_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant19_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant23_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant21_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 26-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant12_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant14_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant9_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 29-1 downto 0 );
  signal register2_q_net_x3 : std_logic_vector( 29-1 downto 0 );
  signal down_sample1_q_net_x5 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x8 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x5 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x8 : std_logic_vector( 18-1 downto 0 );
  signal constant8_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant18_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant19_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant23_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant21_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant10_op_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal register33_q_net_x2 : std_logic_vector( 29-1 downto 0 );
  signal register32_q_net_x2 : std_logic_vector( 29-1 downto 0 );
  signal down_sample1_q_net_x6 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x7 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x6 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x7 : std_logic_vector( 18-1 downto 0 );
  signal constant11_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant12_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant14_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal register36_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal register35_q_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal register29_q_net_x1 : std_logic_vector( 4-1 downto 0 );
  signal register30_q_net_x0 : std_logic_vector( 4-1 downto 0 );
  signal register36_q_net : std_logic_vector( 29-1 downto 0 );
  signal register35_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
  signal amp_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddci_x0 : std_logic_vector( 18-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel_x0 : std_logic_vector( 4-1 downto 0 );
  signal register2_q_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal register16_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register15_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register14_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register13_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal register12_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal register11_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal register10_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal register9_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal register8_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal register7_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal register3_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register6_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register4_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register20_q_net : std_logic_vector( 1-1 downto 0 );
  signal register19_q_net : std_logic_vector( 1-1 downto 0 );
  signal register18_q_net : std_logic_vector( 1-1 downto 0 );
  signal register17_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 1-1 downto 0 );
  signal register22_q_net : std_logic_vector( 18-1 downto 0 );
  signal register23_q_net : std_logic_vector( 18-1 downto 0 );
  signal register27_q_net : std_logic_vector( 18-1 downto 0 );
  signal register26_q_net : std_logic_vector( 18-1 downto 0 );
  signal register24_q_net : std_logic_vector( 18-1 downto 0 );
  signal register25_q_net : std_logic_vector( 18-1 downto 0 );
  signal register5_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register21_q_net : std_logic_vector( 18-1 downto 0 );
  signal register35_q_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal register28_q_net : std_logic_vector( 18-1 downto 0 );
  signal register29_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal register30_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register31_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register32_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register34_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register33_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register40_q_net : std_logic_vector( 1-1 downto 0 );
  signal register42_q_net : std_logic_vector( 1-1 downto 0 );
  signal register36_q_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal register37_q_net : std_logic_vector( 1-1 downto 0 );
  signal register38_q_net : std_logic_vector( 1-1 downto 0 );
  signal register39_q_net : std_logic_vector( 1-1 downto 0 );
  signal register41_q_net : std_logic_vector( 1-1 downto 0 );
begin
  diag1data_x0 <= constant_op_net_x1;
  diag2data_x0 <= constant13_op_net;
  wfdata_2_x0 <= constant24_op_net;
  wfdata_3_x0 <= constant25_op_net;
  wfdata_4_x0 <= constant27_op_net;
  wfdata_5_x0 <= constant28_op_net;
  wfdata_6_x0 <= constant29_op_net;
  wfdata_7_x0 <= constant30_op_net;
  wfvalid_2_x0 <= constant33_op_net;
  wfvalid_3_x0 <= constant34_op_net;
  wfvalid_4_x0 <= constant35_op_net;
  wfvalid_5_x0 <= constant36_op_net;
  diag3data_x0 <= constant16_op_net;
  wfvalid_6_x0 <= constant37_op_net;
  wfvalid_7_x0 <= constant38_op_net;
  wfvalid_0_x0 <= constant31_op_net;
  wfvalid_1_x0 <= constant32_op_net;
  diag4data_x0 <= constant17_op_net;
  diag5data_x0 <= constant18_op_net_x1;
  diag6data <= constant19_op_net_x1;
  diag7data <= constant20_op_net;
  diag8data <= constant21_op_net_x1;
  wfdata_0 <= constant22_op_net;
  wfdata_1_x0 <= constant23_op_net_x1;
  register35_q_net <= diagnrst_ctl;
  register1_q_net_x0 <= diagnsync_ctl;
  register13_q_net <= diag4sevr_ctl;
  register14_q_net <= diag5sevr_ctl;
  register15_q_net <= diag6sevr_ctl;
  register16_q_net <= diag7sevr_ctl;
  register17_q_net <= diag8sevr_ctl;
  register10_q_net <= diag8fixed_ctl;
  register3_q_net <= diag1sevr_ctl;
  register11_q_net <= diag2sevr_ctl;
  register12_q_net <= diag3sevr_ctl;
  register2_q_net_x0 <= diag1fixed_ctl;
  register4_q_net <= diag2fixed_ctl;
  register5_q_net <= diag3fixed_ctl;
  register6_q_net <= diag4fixed_ctl;
  register7_q_net <= diag5fixed_ctl;
  register8_q_net <= diag6fixed_ctl;
  register9_q_net <= diag7fixed_ctl;
  diag8sevr <= convert20_dout_net;
  diag1data <= convert3_dout_net;
  diag1fixed <= convert4_dout_net;
  diag1sevr <= convert13_dout_net;
  diagnclk <= convert2_dout_net_x0;
  diagnrst <= convert_dout_net_x0;
  diagnsync <= convert1_dout_net_x0;
  diag7data_x0 <= convert25_dout_net;
  diag6data_x0 <= convert24_dout_net;
  diag5data <= convert23_dout_net;
  diag3data <= convert21_dout_net;
  diag2data <= convert5_dout_net;
  wfdata_0_x0 <= convert27_dout_net;
  diag4data <= convert22_dout_net;
  diag2fixed <= convert6_dout_net;
  diag3fixed <= convert7_dout_net;
  diag4fixed <= convert8_dout_net;
  diag8data_x0 <= convert26_dout_net;
  diag5fixed <= convert9_dout_net;
  diag6fixed <= convert10_dout_net;
  diag7fixed <= convert11_dout_net;
  diag8fixed <= convert12_dout_net;
  diag2sevr <= convert14_dout_net;
  diag3sevr <= convert15_dout_net;
  diag4sevr <= convert16_dout_net;
  diag5sevr <= convert17_dout_net;
  diag6sevr <= convert18_dout_net;
  diag7sevr <= convert19_dout_net;
  wfvalid_0 <= convert35_dout_net;
  wfdata_1 <= convert28_dout_net;
  wfdata_2 <= convert29_dout_net;
  wfdata_3 <= convert30_dout_net;
  wfdata_4 <= convert31_dout_net;
  wfdata_5 <= convert32_dout_net;
  wfdata_6 <= convert33_dout_net;
  wfdata_7 <= convert34_dout_net;
  wfvalid_5 <= convert40_dout_net;
  wfvalid_1 <= convert36_dout_net;
  wfvalid_2 <= convert37_dout_net;
  wfvalid_3 <= convert38_dout_net;
  wfvalid_4 <= convert39_dout_net;
  wfvalid_6 <= convert41_dout_net;
  wfvalid_7 <= convert42_dout_net;
  amp_net <= amp;
  ddcchannel_net <= ddcchannel;
  ddci_net <= ddci;
  ddcq_net <= ddcq;
  phase_net <= phase;
  phaseampchannel_net <= phaseampchannel;
  cav1_p1_amp_out <= constant5_op_net;
  cav1_p1_comparison_i <= constant4_op_net;
  cav1_p1_comparison_phase <= constant9_op_net;
  cav1_p1_comparison_q <= constant3_op_net;
  cav1_p1_dc_freq <= constant_op_net;
  cav1_p1_dc_img <= register1_q_net;
  cav1_p1_dc_real <= register2_q_net;
  cav1_p1_if_amp <= down_sample1_q_net_x2;
  cav1_p1_if_i <= down_sample1_q_net;
  cav1_p1_if_phase <= down_sample_q_net_x2;
  cav1_p1_if_q <= down_sample_q_net;
  cav1_p1_integrated_i <= constant8_op_net;
  cav1_p1_integrated_q <= constant7_op_net;
  cav1_p1_phase_out <= constant6_op_net;
  cav1_p2_amp_out <= constant18_op_net;
  cav1_p2_comparison_i <= constant19_op_net;
  cav1_p2_comparison_phase <= constant23_op_net;
  cav1_p2_comparison_q <= constant21_op_net;
  cav1_p2_dc_freq <= constant10_op_net;
  cav1_p2_dc_img <= convert1_dout_net;
  cav1_p2_dc_real <= convert_dout_net;
  cav1_p2_if_amp <= down_sample1_q_net_x1;
  cav1_p2_if_i <= down_sample1_q_net_x0;
  cav1_p2_if_phase <= down_sample_q_net_x1;
  cav1_p2_if_q <= down_sample_q_net_x0;
  cav1_p2_integrated_i <= constant11_op_net;
  cav1_p2_integrated_q <= constant12_op_net;
  cav1_p2_phase_out <= constant14_op_net;
  cav2_p1_amp_out <= constant5_op_net_x0;
  cav2_p1_comparison_i <= constant4_op_net_x0;
  cav2_p1_comparison_phase <= constant9_op_net_x0;
  cav2_p1_comparison_q <= constant3_op_net_x0;
  cav2_p1_dc_freq <= constant_op_net_x0;
  cav2_p1_dc_img <= register1_q_net_x3;
  cav2_p1_dc_real <= register2_q_net_x3;
  cav2_p1_if_amp <= down_sample1_q_net_x5;
  cav2_p1_if_i <= down_sample1_q_net_x8;
  cav2_p1_if_phase <= down_sample_q_net_x5;
  cav2_p1_if_q <= down_sample_q_net_x8;
  cav2_p1_integrated_i <= constant8_op_net_x0;
  cav2_p1_integrated_q <= constant7_op_net_x0;
  cav2_p1_phase_out <= constant6_op_net_x0;
  cav2_p2_amp_out <= constant18_op_net_x0;
  cav2_p2_comparison_i <= constant19_op_net_x0;
  cav2_p2_comparison_phase <= constant23_op_net_x0;
  cav2_p2_comparison_q <= constant21_op_net_x0;
  cav2_p2_dc_freq <= constant10_op_net_x0;
  cav2_p2_dc_img <= register33_q_net_x2;
  cav2_p2_dc_real <= register32_q_net_x2;
  cav2_p2_if_amp <= down_sample1_q_net_x6;
  cav2_p2_if_i <= down_sample1_q_net_x7;
  cav2_p2_if_phase <= down_sample_q_net_x6;
  cav2_p2_if_q <= down_sample_q_net_x7;
  cav2_p2_integrated_i <= constant11_op_net_x0;
  cav2_p2_integrated_q <= constant12_op_net_x0;
  cav2_p2_phase_out <= constant14_op_net_x0;
  rf_ref_amp <= down_sample1_q_net_x4;
  rf_ref_i <= down_sample1_q_net_x3;
  rf_ref_phase <= down_sample_q_net_x4;
  rf_ref_q <= down_sample_q_net_x3;
  register36_q_net_x0 <= cav1_nco_phase_adj;
  register35_q_net_x1 <= cav1_nco_phase_reset;
  register29_q_net_x1 <= cav1_p1_chan_sel;
  register30_q_net_x0 <= cav1_p2_chan_sel;
  register36_q_net <= cav2_nco_phase_adj;
  register35_q_net_x0 <= cav2_nco_phase_reset;
  register29_q_net <= cav2_p1_chan_sel;
  register30_q_net <= cav2_p2_chan_sel;
  register2_q_net_x1 <= rf_ref_chan_sel;
  q_clk_net <= clk_1;
  d_ce_net <= ce_1;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
  cav1 : entity work.example_cav1 
  port map (
    pa_stream_1 => amp_x0,
    iq_stream_1 => ddci_x0,
    pa_stream_2 => phase_x0,
    pa_stream_3 => channel,
    iq_stream_2 => ddcq_x0,
    iq_stream_3 => ddcchannel_x0,
    cav1_p1_chan_sel => register29_q_net_x1,
    cav1_nco_phase_reset => register35_q_net_x1,
    cav1_p2_chan_sel => register30_q_net_x0,
    cav1_nco_phase_adj => register36_q_net_x0,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    cav1_p1_dc_real => register2_q_net,
    cav1_p1_dc_img => register1_q_net,
    cav1_p1_dc_freq => constant_op_net,
    cav1_p1_integrated_i => constant8_op_net,
    cav1_p1_integrated_q => constant7_op_net,
    cav1_p1_phase_out => constant6_op_net,
    cav1_p1_amp_out => constant5_op_net,
    cav1_p1_comparison_i => constant4_op_net,
    cav1_p1_comparison_q => constant3_op_net,
    cav1_p1_comparison_phase => constant9_op_net,
    cav1_p2_dc_real => convert_dout_net,
    cav1_p2_dc_img => convert1_dout_net,
    cav1_p2_dc_freq => constant10_op_net,
    cav1_p2_integrated_i => constant11_op_net,
    cav1_p2_integrated_q => constant12_op_net,
    cav1_p2_phase_out => constant14_op_net,
    cav1_p2_amp_out => constant18_op_net,
    cav1_p2_comparison_i => constant19_op_net,
    cav1_p2_comparison_q => constant21_op_net,
    cav1_p2_comparison_phase => constant23_op_net,
    cav1_p2_if_amp => down_sample1_q_net_x1,
    cav1_p2_if_phase => down_sample_q_net_x1,
    cav1_p2_if_i => down_sample1_q_net_x0,
    cav1_p2_if_q => down_sample_q_net_x0,
    cav1_p1_if_amp => down_sample1_q_net_x2,
    cav1_p1_if_phase => down_sample_q_net_x2,
    cav1_p1_if_i => down_sample1_q_net,
    cav1_p1_if_q => down_sample_q_net
  );
  cav2 : entity work.example_cav2 
  port map (
    pa_stream_1 => amp_x0,
    iq_stream_1 => ddci_x0,
    pa_stream_2 => phase_x0,
    pa_stream_3 => channel,
    iq_stream_2 => ddcq_x0,
    iq_stream_3 => ddcchannel_x0,
    cav2_p1_chan_sel => register29_q_net,
    cav2_p2_chan_sel => register30_q_net,
    cav2_nco_phase_reset => register35_q_net_x0,
    cav2_nco_phase_adj => register36_q_net,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    cav2_p1_dc_real => register2_q_net_x3,
    cav2_p1_dc_img => register1_q_net_x3,
    cav2_p1_dc_freq => constant_op_net_x0,
    cav2_p1_integrated_i => constant8_op_net_x0,
    cav2_p1_integrated_q => constant7_op_net_x0,
    cav2_p1_phase_out => constant6_op_net_x0,
    cav2_p1_amp_out => constant5_op_net_x0,
    cav2_p1_comparison_i => constant4_op_net_x0,
    cav2_p1_comparison_q => constant3_op_net_x0,
    cav2_p1_comparison_phase => constant9_op_net_x0,
    cav2_p2_dc_real => register32_q_net_x2,
    cav2_p2_dc_img => register33_q_net_x2,
    cav2_p2_dc_freq => constant10_op_net_x0,
    cav2_p2_integrated_i => constant11_op_net_x0,
    cav2_p2_integrated_q => constant12_op_net_x0,
    cav2_p2_phase_out => constant14_op_net_x0,
    cav2_p2_amp_out => constant18_op_net_x0,
    cav2_p2_comparison_i => constant19_op_net_x0,
    cav2_p2_comparison_q => constant21_op_net_x0,
    cav2_p2_comparison_phase => constant23_op_net_x0,
    cav2_p2_if_amp => down_sample1_q_net_x6,
    cav2_p2_if_phase => down_sample_q_net_x6,
    cav2_p2_if_i => down_sample1_q_net_x7,
    cav2_p2_if_q => down_sample_q_net_x7,
    cav2_p1_if_amp => down_sample1_q_net_x5,
    cav2_p1_if_phase => down_sample_q_net_x5,
    cav2_p1_if_i => down_sample1_q_net_x8,
    cav2_p1_if_q => down_sample_q_net_x8
  );
  rflib_input : entity work.example_rflib_input 
  port map (
    amp => amp_net,
    ddcchannel => ddcchannel_net,
    ddci => ddci_net,
    ddcq => ddcq_net,
    phase => phase_net,
    phaseampchannel => phaseampchannel_net,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
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
    rf_ref_chan_sel => register2_q_net_x1,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    ref_amp => down_sample1_q_net_x4,
    ref_phi => down_sample_q_net_x4,
    ref_i => down_sample1_q_net_x3,
    ref_q => down_sample_q_net_x3,
    rf_ref_amp => down_sample1_q_net_x4,
    rf_ref_phase => down_sample_q_net_x4,
    rf_ref_i => down_sample1_q_net_x3,
    rf_ref_q => down_sample_q_net_x3
  );
  convert : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register2_q_net_x2,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert_dout_net_x0
  );
  convert1 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register1_q_net_x2,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert1_dout_net_x0
  );
  convert10 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register16_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert10_dout_net
  );
  convert11 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register15_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert11_dout_net
  );
  convert12 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register14_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert12_dout_net
  );
  convert13 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 2,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 2,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register13_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert13_dout_net
  );
  convert14 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 2,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 2,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register12_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert14_dout_net
  );
  convert15 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 2,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 2,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register11_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert15_dout_net
  );
  convert16 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 2,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 2,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register10_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert16_dout_net
  );
  convert17 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 2,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 2,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register9_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert17_dout_net
  );
  convert18 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 2,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 2,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register8_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert18_dout_net
  );
  convert19 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 2,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 2,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register7_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert19_dout_net
  );
  convert2 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register3_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert2_dout_net_x0
  );
  convert20 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 2,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 2,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register6_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert20_dout_net
  );
  convert3 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register4_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert4_dout_net
  );
  convert6 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register20_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert6_dout_net
  );
  convert7 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register19_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert7_dout_net
  );
  convert8 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register18_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert8_dout_net
  );
  convert9 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register17_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert9_dout_net
  );
  register_x0 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant_op_net_x1,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register_q_net
  );
  register1 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register1_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register1_q_net_x2
  );
  register10 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => register13_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register10_q_net_x0
  );
  register11 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => register12_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register11_q_net_x0
  );
  register12 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => register11_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register12_q_net_x0
  );
  register13 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => register3_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register13_q_net_x0
  );
  register14 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register10_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register14_q_net_x0
  );
  register15 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register9_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register15_q_net_x0
  );
  register16 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register8_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register16_q_net_x0
  );
  register17 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register7_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register17_q_net_x0
  );
  register18 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register6_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register18_q_net
  );
  register19 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register5_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register19_q_net
  );
  register2 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register35_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register2_q_net_x2
  );
  register20 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register4_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register20_q_net
  );
  register3 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => counter_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register3_q_net_x0
  );
  register4 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register2_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register4_q_net_x0
  );
  register6 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => register17_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register6_q_net_x0
  );
  register7 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => register16_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register7_q_net_x0
  );
  register8 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => register15_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register8_q_net_x0
  );
  register9 : entity work.example_xlregister 
  generic map (
    d_width => 2,
    init_value => b"00"
  )
  port map (
    en => "1",
    rst => "0",
    d => register14_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register9_q_net_x0
  );
  convert22 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register22_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert22_dout_net
  );
  register22 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant17_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register22_q_net
  );
  convert23 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register23_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert23_dout_net
  );
  convert27 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register27_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert27_dout_net
  );
  register27 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant22_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register27_q_net
  );
  convert26 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register26_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert26_dout_net
  );
  convert24 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register24_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert24_dout_net
  );
  convert25 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register25_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert25_dout_net
  );
  register23 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant18_op_net_x1,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register23_q_net
  );
  counter : entity work.sysgen_counter_6798bb4fe3 
  port map (
    clr => '0',
    clk => q_clk_net,
    ce => d_ce_net,
    op => counter_op_net
  );
  convert5 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register5_q_net_x0,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert5_dout_net
  );
  register5 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant13_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register5_q_net_x0
  );
  convert21 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register21_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert21_dout_net
  );
  register21 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant16_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register21_q_net
  );
  register24 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant19_op_net_x1,
    clk => q_clk_net,
    ce => d_ce_net,
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
    d => constant20_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
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
    d => constant21_op_net_x1,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register26_q_net
  );
  convert35 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register35_q_net_x2,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert35_dout_net
  );
  register35 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant31_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register35_q_net_x2
  );
  constant_x0 : entity work.sysgen_constant_d873ac5cdf 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net_x1
  );
  constant22 : entity work.sysgen_constant_d873ac5cdf 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant22_op_net
  );
  constant23 : entity work.sysgen_constant_48a67634d0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant23_op_net_x1
  );
  constant24 : entity work.sysgen_constant_269620dc0b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant24_op_net
  );
  constant25 : entity work.sysgen_constant_8ec6385cf2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant25_op_net
  );
  constant27 : entity work.sysgen_constant_7a5b50c0e3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant27_op_net
  );
  constant28 : entity work.sysgen_constant_aa3246cf9f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant28_op_net
  );
  constant29 : entity work.sysgen_constant_009691f9ed 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant29_op_net
  );
  constant30 : entity work.sysgen_constant_6910f0d900 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant30_op_net
  );
  constant13 : entity work.sysgen_constant_48a67634d0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  constant16 : entity work.sysgen_constant_269620dc0b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant16_op_net
  );
  constant17 : entity work.sysgen_constant_8ec6385cf2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant17_op_net
  );
  constant18 : entity work.sysgen_constant_7a5b50c0e3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant18_op_net_x1
  );
  constant19 : entity work.sysgen_constant_aa3246cf9f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant19_op_net_x1
  );
  constant20 : entity work.sysgen_constant_009691f9ed 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant20_op_net
  );
  constant21 : entity work.sysgen_constant_6910f0d900 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant21_op_net_x1
  );
  convert28 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register28_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert28_dout_net
  );
  register28 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant23_op_net_x1,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register28_q_net
  );
  convert29 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register29_q_net_x2,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert29_dout_net
  );
  register29 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant24_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register29_q_net_x2
  );
  convert30 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register30_q_net_x1,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert30_dout_net
  );
  register30 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant25_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register30_q_net_x1
  );
  convert31 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register31_q_net_x1,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert31_dout_net
  );
  register31 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant27_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register31_q_net_x1
  );
  convert32 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register32_q_net_x1,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert32_dout_net
  );
  register32 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant28_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register32_q_net_x1
  );
  convert34 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register34_q_net_x1,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert34_dout_net
  );
  register34 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant30_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register34_q_net_x1
  );
  convert33 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register33_q_net_x1,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert33_dout_net
  );
  register33 : entity work.example_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant29_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register33_q_net_x1
  );
  constant31 : entity work.sysgen_constant_146af16123 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant31_op_net
  );
  convert40 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register40_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert40_dout_net
  );
  register40 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant36_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register40_q_net
  );
  convert42 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register42_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert42_dout_net
  );
  register42 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant38_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register42_q_net
  );
  constant32 : entity work.sysgen_constant_146af16123 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant32_op_net
  );
  constant33 : entity work.sysgen_constant_146af16123 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant33_op_net
  );
  constant34 : entity work.sysgen_constant_146af16123 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant34_op_net
  );
  constant35 : entity work.sysgen_constant_146af16123 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant35_op_net
  );
  constant36 : entity work.sysgen_constant_146af16123 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant36_op_net
  );
  constant37 : entity work.sysgen_constant_146af16123 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant37_op_net
  );
  constant38 : entity work.sysgen_constant_146af16123 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant38_op_net
  );
  convert36 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register36_q_net_x1,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert36_dout_net
  );
  register36 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant32_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register36_q_net_x1
  );
  convert37 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register37_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert37_dout_net
  );
  register37 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant33_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register37_q_net
  );
  convert38 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register38_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert38_dout_net
  );
  register38 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant34_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register38_q_net
  );
  convert39 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register39_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert39_dout_net
  );
  register39 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant35_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register39_q_net
  );
  convert41 : entity work.example_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register41_q_net,
    clk => q_clk_net,
    ce => d_ce_net,
    dout => convert41_dout_net
  );
  register41 : entity work.example_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant37_op_net,
    clk => q_clk_net,
    ce => d_ce_net,
    q => register41_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example_struct
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_struct is
  port (
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
    diag1fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag1sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag2fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag2sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag3fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag3sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag4fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag4sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag5fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag5sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag6fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag6sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag7fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag7sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag8fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag8sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diagnrst_ctl : in std_logic_vector( 1-1 downto 0 );
    diagnsync_ctl : in std_logic_vector( 1-1 downto 0 );
    ref_window_start : in std_logic_vector( 16-1 downto 0 );
    ref_window_stop : in std_logic_vector( 16-1 downto 0 );
    rf_ref_chan_sel : in std_logic_vector( 4-1 downto 0 );
    scratchpad : in std_logic_vector( 32-1 downto 0 );
    amp : in std_logic_vector( 18-1 downto 0 );
    ddcchannel : in std_logic_vector( 4-1 downto 0 );
    ddci : in std_logic_vector( 18-1 downto 0 );
    ddcq : in std_logic_vector( 18-1 downto 0 );
    ddcsync : in std_logic_vector( 1-1 downto 0 );
    phase : in std_logic_vector( 18-1 downto 0 );
    phaseampchannel : in std_logic_vector( 4-1 downto 0 );
    phaseampsync : in std_logic_vector( 1-1 downto 0 );
    clk_1_x0 : in std_logic;
    ce_1_x0 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_8 : in std_logic;
    ce_8 : in std_logic;
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
    cav1_p1_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_dc_freq : out std_logic_vector( 26-1 downto 0 );
    cav1_p2_dc_img : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_dc_real : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_amp : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_phase : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_q : out std_logic_vector( 18-1 downto 0 );
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
    rf_ref_q : out std_logic_vector( 18-1 downto 0 );
    status_0 : out std_logic_vector( 32-1 downto 0 );
    diag8sevr : out std_logic_vector( 2-1 downto 0 );
    diag1data : out std_logic_vector( 32-1 downto 0 );
    diag1fixed : out std_logic_vector( 1-1 downto 0 );
    diag1sevr : out std_logic_vector( 2-1 downto 0 );
    diagnclk : out std_logic_vector( 1-1 downto 0 );
    diagnrst : out std_logic_vector( 1-1 downto 0 );
    diagnsync : out std_logic_vector( 1-1 downto 0 );
    diag7data : out std_logic_vector( 32-1 downto 0 );
    diag6data : out std_logic_vector( 32-1 downto 0 );
    diag5data : out std_logic_vector( 32-1 downto 0 );
    diag3data : out std_logic_vector( 32-1 downto 0 );
    diag2data : out std_logic_vector( 32-1 downto 0 );
    wfdata_0 : out std_logic_vector( 32-1 downto 0 );
    diag4data : out std_logic_vector( 32-1 downto 0 );
    diag2fixed : out std_logic_vector( 1-1 downto 0 );
    diag3fixed : out std_logic_vector( 1-1 downto 0 );
    diag4fixed : out std_logic_vector( 1-1 downto 0 );
    diag8data : out std_logic_vector( 32-1 downto 0 );
    diag5fixed : out std_logic_vector( 1-1 downto 0 );
    diag6fixed : out std_logic_vector( 1-1 downto 0 );
    diag7fixed : out std_logic_vector( 1-1 downto 0 );
    diag8fixed : out std_logic_vector( 1-1 downto 0 );
    diag2sevr : out std_logic_vector( 2-1 downto 0 );
    diag3sevr : out std_logic_vector( 2-1 downto 0 );
    diag4sevr : out std_logic_vector( 2-1 downto 0 );
    diag5sevr : out std_logic_vector( 2-1 downto 0 );
    diag6sevr : out std_logic_vector( 2-1 downto 0 );
    diag7sevr : out std_logic_vector( 2-1 downto 0 );
    wfvalid_0 : out std_logic_vector( 1-1 downto 0 );
    wfdata_1 : out std_logic_vector( 32-1 downto 0 );
    wfdata_2 : out std_logic_vector( 32-1 downto 0 );
    wfdata_3 : out std_logic_vector( 32-1 downto 0 );
    wfdata_4 : out std_logic_vector( 32-1 downto 0 );
    wfdata_5 : out std_logic_vector( 32-1 downto 0 );
    wfdata_6 : out std_logic_vector( 32-1 downto 0 );
    wfdata_7 : out std_logic_vector( 32-1 downto 0 );
    wfvalid_5 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_1 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_2 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_3 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_4 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_6 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_7 : out std_logic_vector( 1-1 downto 0 );
    gateway_out4 : out std_logic_vector( 29-1 downto 0 )
  );
end example_struct;
architecture structural of example_struct is 
  signal cav1_nco_phase_adj_net : std_logic_vector( 29-1 downto 0 );
  signal cav1_nco_phase_reset_net : std_logic_vector( 1-1 downto 0 );
  signal register13_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav1_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register14_q_net : std_logic_vector( 18-1 downto 0 );
  signal register16_q_net : std_logic_vector( 18-1 downto 0 );
  signal register15_q_net : std_logic_vector( 18-1 downto 0 );
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
  signal cav1_p1_window_start_net : std_logic_vector( 16-1 downto 0 );
  signal cav1_p1_window_stop_net : std_logic_vector( 16-1 downto 0 );
  signal register20_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register21_q_net : std_logic_vector( 18-1 downto 0 );
  signal register103_q_net : std_logic_vector( 26-1 downto 0 );
  signal register23_q_net : std_logic_vector( 18-1 downto 0 );
  signal register22_q_net : std_logic_vector( 18-1 downto 0 );
  signal register30_q_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal register29_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register28_q_net : std_logic_vector( 18-1 downto 0 );
  signal register24_q_net : std_logic_vector( 18-1 downto 0 );
  signal register26_q_net : std_logic_vector( 18-1 downto 0 );
  signal register25_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register17_q_net : std_logic_vector( 18-1 downto 0 );
  signal register18_q_net : std_logic_vector( 18-1 downto 0 );
  signal register19_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_window_start_net : std_logic_vector( 16-1 downto 0 );
  signal cav1_p2_window_stop_net : std_logic_vector( 16-1 downto 0 );
  signal cav2_nco_phase_adj_net : std_logic_vector( 29-1 downto 0 );
  signal cav2_nco_phase_reset_net : std_logic_vector( 1-1 downto 0 );
  signal register93_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register94_q_net : std_logic_vector( 18-1 downto 0 );
  signal register96_q_net : std_logic_vector( 18-1 downto 0 );
  signal register95_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert13_dout_net : std_logic_vector( 2-1 downto 0 );
  signal register102_q_net : std_logic_vector( 29-1 downto 0 );
  signal register101_q_net : std_logic_vector( 29-1 downto 0 );
  signal register97_q_net : std_logic_vector( 18-1 downto 0 );
  signal register99_q_net : std_logic_vector( 18-1 downto 0 );
  signal register98_q_net : std_logic_vector( 18-1 downto 0 );
  signal register100_q_net : std_logic_vector( 18-1 downto 0 );
  signal register90_q_net : std_logic_vector( 18-1 downto 0 );
  signal register91_q_net : std_logic_vector( 18-1 downto 0 );
  signal register92_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_window_start_net : std_logic_vector( 16-1 downto 0 );
  signal cav2_p1_window_stop_net : std_logic_vector( 16-1 downto 0 );
  signal register121_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register122_q_net : std_logic_vector( 18-1 downto 0 );
  signal register124_q_net : std_logic_vector( 18-1 downto 0 );
  signal register123_q_net : std_logic_vector( 18-1 downto 0 );
  signal register131_q_net : std_logic_vector( 26-1 downto 0 );
  signal register130_q_net : std_logic_vector( 29-1 downto 0 );
  signal register129_q_net : std_logic_vector( 29-1 downto 0 );
  signal register125_q_net : std_logic_vector( 18-1 downto 0 );
  signal register127_q_net : std_logic_vector( 18-1 downto 0 );
  signal register126_q_net : std_logic_vector( 18-1 downto 0 );
  signal register128_q_net : std_logic_vector( 18-1 downto 0 );
  signal register118_q_net : std_logic_vector( 18-1 downto 0 );
  signal register119_q_net : std_logic_vector( 18-1 downto 0 );
  signal register120_q_net : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_window_start_net : std_logic_vector( 16-1 downto 0 );
  signal cav2_p2_window_stop_net : std_logic_vector( 16-1 downto 0 );
  signal diagnrst_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diag1fixed_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diag1sevr_ctl_net : std_logic_vector( 2-1 downto 0 );
  signal diag2fixed_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diag2sevr_ctl_net : std_logic_vector( 2-1 downto 0 );
  signal diag3fixed_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diag3sevr_ctl_net : std_logic_vector( 2-1 downto 0 );
  signal diag4fixed_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diag4sevr_ctl_net : std_logic_vector( 2-1 downto 0 );
  signal diag5fixed_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diag5sevr_ctl_net : std_logic_vector( 2-1 downto 0 );
  signal diag6fixed_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diag6sevr_ctl_net : std_logic_vector( 2-1 downto 0 );
  signal diag7fixed_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diag7sevr_ctl_net : std_logic_vector( 2-1 downto 0 );
  signal diag8fixed_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal diag8sevr_ctl_net : std_logic_vector( 2-1 downto 0 );
  signal diagnsync_ctl_net : std_logic_vector( 1-1 downto 0 );
  signal ref_window_start_net : std_logic_vector( 16-1 downto 0 );
  signal ref_window_stop_net : std_logic_vector( 16-1 downto 0 );
  signal register76_q_net : std_logic_vector( 18-1 downto 0 );
  signal rf_ref_chan_sel_net : std_logic_vector( 4-1 downto 0 );
  signal register80_q_net : std_logic_vector( 18-1 downto 0 );
  signal register78_q_net : std_logic_vector( 18-1 downto 0 );
  signal register82_q_net : std_logic_vector( 18-1 downto 0 );
  signal scratchpad_net : std_logic_vector( 32-1 downto 0 );
  signal register27_q_net : std_logic_vector( 32-1 downto 0 );
  signal convert20_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert25_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert24_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert23_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert21_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert27_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert22_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert8_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert26_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert9_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert10_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert12_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert14_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert15_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert16_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert17_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert18_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert19_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert35_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert28_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert29_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert30_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert31_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert32_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert33_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert34_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert40_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert36_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert37_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert38_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert39_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert41_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert42_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register36_q_net_x0 : std_logic_vector( 29-1 downto 0 );
  signal amp_net : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel_net : std_logic_vector( 4-1 downto 0 );
  signal ddci_net : std_logic_vector( 18-1 downto 0 );
  signal ddcq_net : std_logic_vector( 18-1 downto 0 );
  signal ddcsync_net : std_logic_vector( 1-1 downto 0 );
  signal phase_net : std_logic_vector( 18-1 downto 0 );
  signal phaseampchannel_net : std_logic_vector( 4-1 downto 0 );
  signal phaseampsync_net : std_logic_vector( 1-1 downto 0 );
  signal q_clk_net : std_logic;
  signal d_ce_net : std_logic;
  signal d_clk_net : std_logic;
  signal q_ce_net : std_logic;
  signal d_clk_net_x0 : std_logic;
  signal q_ce_net_x0 : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal c1p1_if_amp : std_logic_vector( 18-1 downto 0 );
  signal diagnrst_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diagnsync_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag1fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag2fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag3fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag4fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag5fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag6fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag7fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag8fixed_ctl_x0 : std_logic_vector( 1-1 downto 0 );
  signal diag1sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag2sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag3sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag4sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag5sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag6sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag7sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal diag8sevr_ctl_x0 : std_logic_vector( 2-1 downto 0 );
  signal register35_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register10_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register15_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal register11_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal register12_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal register13_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal register14_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal register16_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal register17_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal register3_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal register4_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register5_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register6_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register7_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register8_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register9_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal c1p2_if_amp : std_logic_vector( 18-1 downto 0 );
  signal c1p1_if_phi : std_logic_vector( 18-1 downto 0 );
  signal c1p1_if_i : std_logic_vector( 18-1 downto 0 );
  signal c1p1_if_q : std_logic_vector( 18-1 downto 0 );
  signal c1p1_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal c1p2_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal c1p1_dc_i : std_logic_vector( 29-1 downto 0 );
  signal c1p1_dc_q : std_logic_vector( 29-1 downto 0 );
  signal c1p1_dc_freq : std_logic_vector( 26-1 downto 0 );
  signal c1p1_integ_i : std_logic_vector( 18-1 downto 0 );
  signal c1p1_integ_q : std_logic_vector( 18-1 downto 0 );
  signal c1p1_phi_out : std_logic_vector( 18-1 downto 0 );
  signal c1p1_amp_out : std_logic_vector( 18-1 downto 0 );
  signal c1p1_comp_i : std_logic_vector( 18-1 downto 0 );
  signal c1p1_comp_q : std_logic_vector( 18-1 downto 0 );
  signal c1p1_comp_phi : std_logic_vector( 18-1 downto 0 );
  signal c1p2_if_phi : std_logic_vector( 18-1 downto 0 );
  signal c1p2_if_i : std_logic_vector( 18-1 downto 0 );
  signal c1p2_if_q : std_logic_vector( 18-1 downto 0 );
  signal c1p2_dc_i : std_logic_vector( 18-1 downto 0 );
  signal c1p2_dc_q : std_logic_vector( 18-1 downto 0 );
  signal c1p2_dc_freq : std_logic_vector( 26-1 downto 0 );
  signal c1p2_integ_i : std_logic_vector( 18-1 downto 0 );
  signal c1p2_integ_q : std_logic_vector( 18-1 downto 0 );
  signal c1p2_phi_out : std_logic_vector( 18-1 downto 0 );
  signal c1p2_amp_out : std_logic_vector( 18-1 downto 0 );
  signal c1p2_comp_i : std_logic_vector( 18-1 downto 0 );
  signal c1p2_comp_q : std_logic_vector( 18-1 downto 0 );
  signal c1p2_comp_phi : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x6 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x7 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x5 : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net_x2 : std_logic_vector( 29-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 29-1 downto 0 );
  signal constant_op_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal constant8_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant9_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x5 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x7 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x6 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x8 : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant10_op_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal constant11_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant12_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant14_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant18_op_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal constant19_op_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal constant21_op_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal constant23_op_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal c1_nco_reset : std_logic_vector( 1-1 downto 0 );
  signal c1_nco_phi : std_logic_vector( 29-1 downto 0 );
  signal register29_q_net_x2 : std_logic_vector( 4-1 downto 0 );
  signal register30_q_net_x1 : std_logic_vector( 4-1 downto 0 );
  signal register35_q_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal ref_amp : std_logic_vector( 18-1 downto 0 );
  signal ref_phi : std_logic_vector( 18-1 downto 0 );
  signal ref_i : std_logic_vector( 18-1 downto 0 );
  signal ref_q : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x8 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal ref_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal register2_q_net_x0 : std_logic_vector( 4-1 downto 0 );
  signal c2p1_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal c2p2_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal c2p1_if_amp : std_logic_vector( 18-1 downto 0 );
  signal c2p2_if_amp : std_logic_vector( 18-1 downto 0 );
  signal c2p1_if_phi : std_logic_vector( 18-1 downto 0 );
  signal c2p1_if_i : std_logic_vector( 18-1 downto 0 );
  signal c2p1_if_q : std_logic_vector( 18-1 downto 0 );
  signal c2p1_dc_i : std_logic_vector( 29-1 downto 0 );
  signal c2p1_dc_q : std_logic_vector( 29-1 downto 0 );
  signal c2p1_dc_freq : std_logic_vector( 26-1 downto 0 );
  signal c2p1_integ_i : std_logic_vector( 18-1 downto 0 );
  signal c2p1_integ_q : std_logic_vector( 18-1 downto 0 );
  signal c2p1_phi_out : std_logic_vector( 18-1 downto 0 );
  signal c2p1_amp_out : std_logic_vector( 18-1 downto 0 );
  signal c2p1_comp_i : std_logic_vector( 18-1 downto 0 );
  signal c2p1_comp_q : std_logic_vector( 18-1 downto 0 );
  signal c2p1_comp_phi : std_logic_vector( 18-1 downto 0 );
  signal c2p2_if_phi : std_logic_vector( 18-1 downto 0 );
  signal c2p2_if_i : std_logic_vector( 18-1 downto 0 );
  signal c2p2_if_q : std_logic_vector( 18-1 downto 0 );
  signal c2p2_dc_i : std_logic_vector( 29-1 downto 0 );
  signal c2p2_dc_q : std_logic_vector( 29-1 downto 0 );
  signal c2p2_dc_freq : std_logic_vector( 26-1 downto 0 );
  signal c2p2_integ_i : std_logic_vector( 18-1 downto 0 );
  signal c2p2_integ_q : std_logic_vector( 18-1 downto 0 );
  signal c2p2_phi_out : std_logic_vector( 18-1 downto 0 );
  signal c2p2_amp_out : std_logic_vector( 18-1 downto 0 );
  signal c2p2_comp_i : std_logic_vector( 18-1 downto 0 );
  signal c2p2_comp_q : std_logic_vector( 18-1 downto 0 );
  signal c2p2_comp_phi : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net_x1 : std_logic_vector( 29-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 29-1 downto 0 );
  signal constant_op_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal register32_q_net_x1 : std_logic_vector( 29-1 downto 0 );
  signal register33_q_net_x1 : std_logic_vector( 29-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 26-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant12_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant14_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant18_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant19_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant21_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant23_op_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal c2_nco_reset : std_logic_vector( 1-1 downto 0 );
  signal c2_nco_phi : std_logic_vector( 29-1 downto 0 );
  signal register35_q_net : std_logic_vector( 1-1 downto 0 );
  signal register36_q_net : std_logic_vector( 29-1 downto 0 );
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal constant13_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant24_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant25_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant27_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant28_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant29_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant30_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant33_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant34_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant35_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant36_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant16_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant37_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant38_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant31_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant32_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant17_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant18_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant19_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant20_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant21_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant22_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant23_op_net : std_logic_vector( 18-1 downto 0 );
begin
  cav1_nco_phase_adj_net <= cav1_nco_phase_adj;
  cav1_nco_phase_reset_net <= cav1_nco_phase_reset;
  cav1_p1_amp_out <= register13_q_net;
  cav1_p1_chan_sel_net <= cav1_p1_chan_sel;
  cav1_p1_comparison_i <= register14_q_net;
  cav1_p1_comparison_phase <= register16_q_net;
  cav1_p1_comparison_q <= register15_q_net;
  cav1_p1_dc_freq <= register9_q_net;
  cav1_p1_dc_img <= register8_q_net;
  cav1_p1_dc_real <= register7_q_net;
  cav1_p1_if_amp <= register3_q_net;
  cav1_p1_if_i <= register5_q_net;
  cav1_p1_if_phase <= register4_q_net;
  cav1_p1_if_q <= register6_q_net;
  cav1_p1_integrated_i <= register10_q_net;
  cav1_p1_integrated_q <= register11_q_net;
  cav1_p1_phase_out <= register12_q_net;
  cav1_p1_window_start_net <= cav1_p1_window_start;
  cav1_p1_window_stop_net <= cav1_p1_window_stop;
  cav1_p2_amp_out <= register20_q_net;
  cav1_p2_chan_sel_net <= cav1_p2_chan_sel;
  cav1_p2_comparison_i <= register21_q_net;
  cav1_p2_comparison_phase <= register23_q_net;
  cav1_p2_comparison_q <= register22_q_net;
  cav1_p2_dc_freq <= register30_q_net_x0;
  cav1_p2_dc_img <= register29_q_net_x0;
  cav1_p2_dc_real <= register28_q_net;
  cav1_p2_if_amp <= register24_q_net;
  cav1_p2_if_i <= register26_q_net;
  cav1_p2_if_phase <= register25_q_net;
  cav1_p2_if_q <= register1_q_net;
  cav1_p2_integrated_i <= register17_q_net;
  cav1_p2_integrated_q <= register18_q_net;
  cav1_p2_phase_out <= register19_q_net;
  cav1_p2_window_start_net <= cav1_p2_window_start;
  cav1_p2_window_stop_net <= cav1_p2_window_stop;
  cav2_nco_phase_adj_net <= cav2_nco_phase_adj;
  cav2_nco_phase_reset_net <= cav2_nco_phase_reset;
  cav2_p1_amp_out <= register93_q_net;
  cav2_p1_chan_sel_net <= cav2_p1_chan_sel;
  cav2_p1_comparison_i <= register94_q_net;
  cav2_p1_comparison_phase <= register96_q_net;
  cav2_p1_comparison_q <= register95_q_net;
  cav2_p1_dc_freq <= register103_q_net;
  cav2_p1_dc_img <= register102_q_net;
  cav2_p1_dc_real <= register101_q_net;
  cav2_p1_if_amp <= register97_q_net;
  cav2_p1_if_i <= register99_q_net;
  cav2_p1_if_phase <= register98_q_net;
  cav2_p1_if_q <= register100_q_net;
  cav2_p1_integrated_i <= register90_q_net;
  cav2_p1_integrated_q <= register91_q_net;
  cav2_p1_phase_out <= register92_q_net;
  cav2_p1_window_start_net <= cav2_p1_window_start;
  cav2_p1_window_stop_net <= cav2_p1_window_stop;
  cav2_p2_amp_out <= register121_q_net;
  cav2_p2_chan_sel_net <= cav2_p2_chan_sel;
  cav2_p2_comparison_i <= register122_q_net;
  cav2_p2_comparison_phase <= register124_q_net;
  cav2_p2_comparison_q <= register123_q_net;
  cav2_p2_dc_freq <= register131_q_net;
  cav2_p2_dc_img <= register130_q_net;
  cav2_p2_dc_real <= register129_q_net;
  cav2_p2_if_amp <= register125_q_net;
  cav2_p2_if_i <= register127_q_net;
  cav2_p2_if_phase <= register126_q_net;
  cav2_p2_if_q <= register128_q_net;
  cav2_p2_integrated_i <= register118_q_net;
  cav2_p2_integrated_q <= register119_q_net;
  cav2_p2_phase_out <= register120_q_net;
  cav2_p2_window_start_net <= cav2_p2_window_start;
  cav2_p2_window_stop_net <= cav2_p2_window_stop;
  diag1fixed_ctl_net <= diag1fixed_ctl;
  diag1sevr_ctl_net <= diag1sevr_ctl;
  diag2fixed_ctl_net <= diag2fixed_ctl;
  diag2sevr_ctl_net <= diag2sevr_ctl;
  diag3fixed_ctl_net <= diag3fixed_ctl;
  diag3sevr_ctl_net <= diag3sevr_ctl;
  diag4fixed_ctl_net <= diag4fixed_ctl;
  diag4sevr_ctl_net <= diag4sevr_ctl;
  diag5fixed_ctl_net <= diag5fixed_ctl;
  diag5sevr_ctl_net <= diag5sevr_ctl;
  diag6fixed_ctl_net <= diag6fixed_ctl;
  diag6sevr_ctl_net <= diag6sevr_ctl;
  diag7fixed_ctl_net <= diag7fixed_ctl;
  diag7sevr_ctl_net <= diag7sevr_ctl;
  diag8fixed_ctl_net <= diag8fixed_ctl;
  diag8sevr_ctl_net <= diag8sevr_ctl;
  diagnrst_ctl_net <= diagnrst_ctl;
  diagnsync_ctl_net <= diagnsync_ctl;
  ref_window_start_net <= ref_window_start;
  ref_window_stop_net <= ref_window_stop;
  rf_ref_amp <= register76_q_net;
  rf_ref_chan_sel_net <= rf_ref_chan_sel;
  rf_ref_i <= register80_q_net;
  rf_ref_phase <= register78_q_net;
  rf_ref_q <= register82_q_net;
  scratchpad_net <= scratchpad;
  status_0 <= register27_q_net;
  diag8sevr <= convert20_dout_net;
  diag1data <= convert3_dout_net;
  diag1fixed <= convert4_dout_net;
  diag1sevr <= convert13_dout_net;
  diagnclk <= convert2_dout_net;
  diagnrst <= convert_dout_net;
  diagnsync <= convert1_dout_net;
  diag7data <= convert25_dout_net;
  diag6data <= convert24_dout_net;
  diag5data <= convert23_dout_net;
  diag3data <= convert21_dout_net;
  diag2data <= convert5_dout_net;
  wfdata_0 <= convert27_dout_net;
  diag4data <= convert22_dout_net;
  diag2fixed <= convert6_dout_net;
  diag3fixed <= convert7_dout_net;
  diag4fixed <= convert8_dout_net;
  diag8data <= convert26_dout_net;
  diag5fixed <= convert9_dout_net;
  diag6fixed <= convert10_dout_net;
  diag7fixed <= convert11_dout_net;
  diag8fixed <= convert12_dout_net;
  diag2sevr <= convert14_dout_net;
  diag3sevr <= convert15_dout_net;
  diag4sevr <= convert16_dout_net;
  diag5sevr <= convert17_dout_net;
  diag6sevr <= convert18_dout_net;
  diag7sevr <= convert19_dout_net;
  wfvalid_0 <= convert35_dout_net;
  wfdata_1 <= convert28_dout_net;
  wfdata_2 <= convert29_dout_net;
  wfdata_3 <= convert30_dout_net;
  wfdata_4 <= convert31_dout_net;
  wfdata_5 <= convert32_dout_net;
  wfdata_6 <= convert33_dout_net;
  wfdata_7 <= convert34_dout_net;
  wfvalid_5 <= convert40_dout_net;
  wfvalid_1 <= convert36_dout_net;
  wfvalid_2 <= convert37_dout_net;
  wfvalid_3 <= convert38_dout_net;
  wfvalid_4 <= convert39_dout_net;
  wfvalid_6 <= convert41_dout_net;
  wfvalid_7 <= convert42_dout_net;
  gateway_out4 <= register36_q_net_x0;
  amp_net <= amp;
  ddcchannel_net <= ddcchannel;
  ddci_net <= ddci;
  ddcq_net <= ddcq;
  ddcsync_net <= ddcsync;
  phase_net <= phase;
  phaseampchannel_net <= phaseampchannel;
  phaseampsync_net <= phaseampsync;
  q_clk_net <= clk_1_x0;
  d_ce_net <= ce_1_x0;
  d_clk_net <= clk_12;
  q_ce_net <= ce_12;
  d_clk_net_x0 <= clk_1;
  q_ce_net_x0 <= ce_1;
  dest_clk_net <= clk_8;
  dest_ce_net <= ce_8;
  bsa_ctl : entity work.example_bsa_ctl 
  port map (
    in1_1 => diagnrst_ctl_x0,
    in1_2 => diagnsync_ctl_x0,
    in1_3 => diag1fixed_ctl_x0,
    in1_4 => diag2fixed_ctl_x0,
    in1_5 => diag3fixed_ctl_x0,
    in1_6 => diag4fixed_ctl_x0,
    in1_7 => diag5fixed_ctl_x0,
    in1_8 => diag6fixed_ctl_x0,
    in1_9 => diag7fixed_ctl_x0,
    in1_10 => diag8fixed_ctl_x0,
    in1_11 => diag1sevr_ctl_x0,
    in1_12 => diag2sevr_ctl_x0,
    in1_13 => diag3sevr_ctl_x0,
    in1_14 => diag4sevr_ctl_x0,
    in1_15 => diag5sevr_ctl_x0,
    in1_16 => diag6sevr_ctl_x0,
    in1_17 => diag7sevr_ctl_x0,
    in1_18 => diag8sevr_ctl_x0,
    clk_1_x0 => q_clk_net,
    ce_1 => d_ce_net,
    clk_1 => d_clk_net_x0,
    ce_1_x0 => q_ce_net_x0,
    diagnrst_ctl => register35_q_net_x0,
    diagnsync_ctl => register1_q_net_x0,
    diag8fixed_ctl => register10_q_net_x0,
    diag6sevr_ctl => register15_q_net_x0,
    diag2sevr_ctl => register11_q_net_x0,
    diag3sevr_ctl => register12_q_net_x0,
    diag4sevr_ctl => register13_q_net_x0,
    diag5sevr_ctl => register14_q_net_x0,
    diag7sevr_ctl => register16_q_net_x0,
    diag8sevr_ctl => register17_q_net_x0,
    diag1fixed_ctl => register2_q_net,
    diag1sevr_ctl => register3_q_net_x0,
    diag2fixed_ctl => register4_q_net_x0,
    diag3fixed_ctl => register5_q_net_x0,
    diag4fixed_ctl => register6_q_net_x0,
    diag5fixed_ctl => register7_q_net_x0,
    diag6fixed_ctl => register8_q_net_x0,
    diag7fixed_ctl => register9_q_net_x0
  );
  subsystem : entity work.example_subsystem 
  port map (
    cav1_p1_if_amp => down_sample1_q_net_x4,
    cav1_p1_if_phase => down_sample_q_net_x6,
    cav1_p1_if_i => down_sample1_q_net_x7,
    cav1_p1_if_q => down_sample_q_net_x5,
    cav1_p1_dc_real => register2_q_net_x2,
    cav1_p1_dc_img => register1_q_net_x3,
    cav1_p1_dc_freq => constant_op_net_x1,
    cav1_p1_integrated_i => constant8_op_net_x0,
    cav1_p1_integrated_q => constant7_op_net_x0,
    cav1_p1_phase_out => constant6_op_net_x0,
    cav1_p1_amp_out => constant5_op_net_x0,
    cav1_p1_comparison_i => constant4_op_net_x0,
    cav1_p1_comparison_q => constant3_op_net_x0,
    cav1_p1_comparison_phase => constant9_op_net_x0,
    cav1_p2_if_amp => down_sample1_q_net_x5,
    cav1_p2_if_phase => down_sample_q_net_x7,
    cav1_p2_if_i => down_sample1_q_net_x6,
    cav1_p2_if_q => down_sample_q_net_x8,
    cav1_p2_dc_real => convert_dout_net_x0,
    cav1_p2_dc_img => convert1_dout_net_x0,
    cav1_p2_dc_freq => constant10_op_net_x0,
    cav1_p2_integrated_i => constant11_op_net_x0,
    cav1_p2_integrated_q => constant12_op_net_x0,
    cav1_p2_phase_out => constant14_op_net_x0,
    cav1_p2_amp_out => constant18_op_net_x1,
    cav1_p2_comparison_i => constant19_op_net_x1,
    cav1_p2_comparison_q => constant21_op_net_x1,
    cav1_p2_comparison_phase => constant23_op_net_x1,
    clk_1_x0 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    clk_1 => d_clk_net_x0,
    ce_1_x0 => q_ce_net_x0,
    p1_1 => c1p1_if_amp,
    p2_1 => c1p2_if_amp,
    p1_2 => c1p1_if_phi,
    p1_3 => c1p1_if_i,
    p1_4 => c1p1_if_q,
    p1_5 => c1p1_dc_i,
    p1_6 => c1p1_dc_q,
    p1_7 => c1p1_dc_freq,
    p1_8 => c1p1_integ_i,
    p1_9 => c1p1_integ_q,
    p1_10 => c1p1_phi_out,
    p1_11 => c1p1_amp_out,
    p1_12 => c1p1_comp_i,
    p1_13 => c1p1_comp_q,
    p1_14 => c1p1_comp_phi,
    p2_2 => c1p2_if_phi,
    p2_3 => c1p2_if_i,
    p2_4 => c1p2_if_q,
    p2_5 => c1p2_dc_i,
    p2_6 => c1p2_dc_q,
    p2_7 => c1p2_dc_freq,
    p2_8 => c1p2_integ_i,
    p2_9 => c1p2_integ_q,
    p2_10 => c1p2_phi_out,
    p2_11 => c1p2_amp_out,
    p2_12 => c1p2_comp_i,
    p2_13 => c1p2_comp_q,
    p2_14 => c1p2_comp_phi
  );
  subsystem2_x0 : entity work.example_subsystem2 
  port map (
    in1_1 => c1p1_chan_sel,
    in1_2 => c1p2_chan_sel,
    in1_7 => c1_nco_reset,
    in1_8 => c1_nco_phi,
    clk_1_x0 => q_clk_net,
    ce_1 => d_ce_net,
    clk_1 => d_clk_net_x0,
    ce_1_x0 => q_ce_net_x0,
    cav1_p1_chan_sel => register29_q_net_x2,
    cav1_p2_chan_sel => register30_q_net_x1,
    cav1_nco_phase_reset => register35_q_net_x1,
    cav1_nco_phase_adj => register36_q_net_x0
  );
  subsystem3 : entity work.example_subsystem3_x0 
  port map (
    rf_ref_amp => down_sample1_q_net,
    rf_ref_phase => down_sample_q_net,
    rf_ref_i => down_sample1_q_net_x8,
    rf_ref_q => down_sample_q_net_x4,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    clk_1 => d_clk_net_x0,
    ce_1 => q_ce_net_x0,
    out1_1 => ref_amp,
    out1_2 => ref_phi,
    out1_3 => ref_i,
    out1_4 => ref_q
  );
  subsystem4 : entity work.example_subsystem4 
  port map (
    in1_3 => ref_chan_sel,
    clk_1_x0 => q_clk_net,
    ce_1 => d_ce_net,
    clk_1 => d_clk_net_x0,
    ce_1_x0 => q_ce_net_x0,
    rf_ref_chan_sel => register2_q_net_x0
  );
  subsystem5 : entity work.example_subsystem5 
  port map (
    cav2_p1_if_amp => down_sample1_q_net_x0,
    cav2_p1_if_phase => down_sample_q_net_x0,
    cav2_p1_if_i => down_sample1_q_net_x3,
    cav2_p1_if_q => down_sample_q_net_x3,
    cav2_p1_dc_real => register2_q_net_x1,
    cav2_p1_dc_img => register1_q_net_x2,
    cav2_p1_dc_freq => constant_op_net_x0,
    cav2_p1_integrated_i => constant8_op_net,
    cav2_p1_integrated_q => constant7_op_net,
    cav2_p1_phase_out => constant6_op_net,
    cav2_p1_amp_out => constant5_op_net,
    cav2_p1_comparison_i => constant4_op_net,
    cav2_p1_comparison_q => constant3_op_net,
    cav2_p1_comparison_phase => constant9_op_net,
    cav2_p2_if_amp => down_sample1_q_net_x1,
    cav2_p2_if_phase => down_sample_q_net_x1,
    cav2_p2_if_i => down_sample1_q_net_x2,
    cav2_p2_if_q => down_sample_q_net_x2,
    cav2_p2_dc_real => register32_q_net_x1,
    cav2_p2_dc_img => register33_q_net_x1,
    cav2_p2_dc_freq => constant10_op_net,
    cav2_p2_integrated_i => constant11_op_net,
    cav2_p2_integrated_q => constant12_op_net,
    cav2_p2_phase_out => constant14_op_net,
    cav2_p2_amp_out => constant18_op_net_x0,
    cav2_p2_comparison_i => constant19_op_net_x0,
    cav2_p2_comparison_q => constant21_op_net_x0,
    cav2_p2_comparison_phase => constant23_op_net_x0,
    clk_1_x0 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    clk_1 => d_clk_net_x0,
    ce_1_x0 => q_ce_net_x0,
    p1_1 => c2p1_if_amp,
    p2_1 => c2p2_if_amp,
    p1_2 => c2p1_if_phi,
    p1_3 => c2p1_if_i,
    p1_4 => c2p1_if_q,
    p1_5 => c2p1_dc_i,
    p1_6 => c2p1_dc_q,
    p1_7 => c2p1_dc_freq,
    p1_8 => c2p1_integ_i,
    p1_9 => c2p1_integ_q,
    p1_10 => c2p1_phi_out,
    p1_11 => c2p1_amp_out,
    p1_12 => c2p1_comp_i,
    p1_13 => c2p1_comp_q,
    p1_14 => c2p1_comp_phi,
    p2_2 => c2p2_if_phi,
    p2_3 => c2p2_if_i,
    p2_4 => c2p2_if_q,
    p2_5 => c2p2_dc_i,
    p2_6 => c2p2_dc_q,
    p2_7 => c2p2_dc_freq,
    p2_8 => c2p2_integ_i,
    p2_9 => c2p2_integ_q,
    p2_10 => c2p2_phi_out,
    p2_11 => c2p2_amp_out,
    p2_12 => c2p2_comp_i,
    p2_13 => c2p2_comp_q,
    p2_14 => c2p2_comp_phi
  );
  subsystem7 : entity work.example_subsystem7 
  port map (
    in1_1 => c2p1_chan_sel,
    in1_2 => c2p2_chan_sel,
    in1_7 => c2_nco_reset,
    in1_8 => c2_nco_phi,
    clk_1_x0 => q_clk_net,
    ce_1 => d_ce_net,
    clk_1 => d_clk_net_x0,
    ce_1_x0 => q_ce_net_x0,
    cav2_nco_phase_reset => register35_q_net,
    cav2_nco_phase_adj => register36_q_net,
    cav2_p1_chan_sel => register29_q_net,
    cav2_p2_chan_sel => register30_q_net
  );
  axi_lite : entity work.example_axi_lite 
  port map (
    in1_1 => ref_amp,
    in2_1 => c1p1_if_amp,
    in3_1 => c1p2_if_amp,
    in4_1 => c2p1_if_amp,
    in5_1 => c2p2_if_amp,
    in1_2 => ref_phi,
    in1_3 => ref_i,
    in1_4 => ref_q,
    in2_2 => c1p1_if_phi,
    in2_3 => c1p1_if_i,
    in2_4 => c1p1_if_q,
    in2_5 => c1p1_dc_i,
    in2_6 => c1p1_dc_q,
    in2_7 => c1p1_dc_freq,
    in2_8 => c1p1_integ_i,
    in2_9 => c1p1_integ_q,
    in2_10 => c1p1_phi_out,
    in2_11 => c1p1_amp_out,
    in2_12 => c1p1_comp_i,
    in2_13 => c1p1_comp_q,
    in2_14 => c1p1_comp_phi,
    in3_2 => c1p2_if_phi,
    in3_3 => c1p2_if_i,
    in3_4 => c1p2_if_q,
    in3_5 => c1p2_dc_i,
    in3_6 => c1p2_dc_q,
    in3_7 => c1p2_dc_freq,
    in3_8 => c1p2_integ_i,
    in3_9 => c1p2_integ_q,
    in3_10 => c1p2_phi_out,
    in3_11 => c1p2_amp_out,
    in3_12 => c1p2_comp_i,
    in3_13 => c1p2_comp_q,
    in3_14 => c1p2_comp_phi,
    in4_2 => c2p1_if_phi,
    in4_3 => c2p1_if_i,
    in4_4 => c2p1_if_q,
    in4_5 => c2p1_dc_i,
    in4_6 => c2p1_dc_q,
    in4_7 => c2p1_dc_freq,
    in4_8 => c2p1_integ_i,
    in4_9 => c2p1_integ_q,
    in4_10 => c2p1_phi_out,
    in4_11 => c2p1_amp_out,
    in4_12 => c2p1_comp_i,
    in4_13 => c2p1_comp_q,
    in4_14 => c2p1_comp_phi,
    in5_2 => c2p2_if_phi,
    in5_3 => c2p2_if_i,
    in5_4 => c2p2_if_q,
    in5_5 => c2p2_dc_i,
    in5_6 => c2p2_dc_q,
    in5_7 => c2p2_dc_freq,
    in5_8 => c2p2_integ_i,
    in5_9 => c2p2_integ_q,
    in5_10 => c2p2_phi_out,
    in5_11 => c2p2_amp_out,
    in5_12 => c2p2_comp_i,
    in5_13 => c2p2_comp_q,
    in5_14 => c2p2_comp_phi,
    cav1_nco_phase_adj => cav1_nco_phase_adj_net,
    cav1_nco_phase_reset => cav1_nco_phase_reset_net,
    cav1_p1_chan_sel => cav1_p1_chan_sel_net,
    cav1_p2_chan_sel => cav1_p2_chan_sel_net,
    cav2_nco_phase_adj => cav2_nco_phase_adj_net,
    cav2_nco_phase_reset => cav2_nco_phase_reset_net,
    cav2_p1_chan_sel => cav2_p1_chan_sel_net,
    cav2_p2_chan_sel => cav2_p2_chan_sel_net,
    diag1fixed_ctl => diag1fixed_ctl_net,
    diag1sevr_ctl => diag1sevr_ctl_net,
    diag2fixed_ctl => diag2fixed_ctl_net,
    diag2sevr_ctl => diag2sevr_ctl_net,
    diag3fixed_ctl => diag3fixed_ctl_net,
    diag3sevr_ctl => diag3sevr_ctl_net,
    diag4fixed_ctl => diag4fixed_ctl_net,
    diag4sevr_ctl => diag4sevr_ctl_net,
    diag5fixed_ctl => diag5fixed_ctl_net,
    diag5sevr_ctl => diag5sevr_ctl_net,
    diag6fixed_ctl => diag6fixed_ctl_net,
    diag6sevr_ctl => diag6sevr_ctl_net,
    diag7fixed_ctl => diag7fixed_ctl_net,
    diag7sevr_ctl => diag7sevr_ctl_net,
    diag8fixed_ctl => diag8fixed_ctl_net,
    diag8sevr_ctl => diag8sevr_ctl_net,
    diagnrst_ctl => diagnrst_ctl_net,
    diagnsync_ctl => diagnsync_ctl_net,
    rf_ref_chan_sel => rf_ref_chan_sel_net,
    clk_1 => d_clk_net_x0,
    ce_1 => q_ce_net_x0,
    clk_8 => dest_clk_net,
    ce_8 => dest_ce_net,
    out2_1 => c1p1_chan_sel,
    out3_1 => c2p1_chan_sel,
    diag_ctl_1 => diagnrst_ctl_x0,
    out1_3 => ref_chan_sel,
    out2_2 => c1p2_chan_sel,
    out2_7 => c1_nco_reset,
    out2_8 => c1_nco_phi,
    out3_2 => c2p2_chan_sel,
    out3_7 => c2_nco_reset,
    out3_8 => c2_nco_phi,
    diag_ctl_2 => diagnsync_ctl_x0,
    diag_ctl_3 => diag1fixed_ctl_x0,
    diag_ctl_4 => diag2fixed_ctl_x0,
    diag_ctl_5 => diag3fixed_ctl_x0,
    diag_ctl_6 => diag4fixed_ctl_x0,
    diag_ctl_7 => diag5fixed_ctl_x0,
    diag_ctl_8 => diag6fixed_ctl_x0,
    diag_ctl_9 => diag7fixed_ctl_x0,
    diag_ctl_10 => diag8fixed_ctl_x0,
    diag_ctl_11 => diag1sevr_ctl_x0,
    diag_ctl_12 => diag2sevr_ctl_x0,
    diag_ctl_13 => diag3sevr_ctl_x0,
    diag_ctl_14 => diag4sevr_ctl_x0,
    diag_ctl_15 => diag5sevr_ctl_x0,
    diag_ctl_16 => diag6sevr_ctl_x0,
    diag_ctl_17 => diag7sevr_ctl_x0,
    diag_ctl_18 => diag8sevr_ctl_x0,
    cav1_p1_amp_out => register13_q_net,
    cav1_p1_comparison_i => register14_q_net,
    cav1_p1_comparison_phase => register16_q_net,
    cav1_p1_comparison_q => register15_q_net,
    cav1_p1_dc_freq => register9_q_net,
    cav1_p1_dc_img => register8_q_net,
    cav1_p1_dc_real => register7_q_net,
    cav1_p1_if_amp => register3_q_net,
    cav1_p1_if_i => register5_q_net,
    cav1_p1_if_phase => register4_q_net,
    cav1_p1_if_q => register6_q_net,
    cav1_p1_integrated_i => register10_q_net,
    cav1_p1_integrated_q => register11_q_net,
    cav1_p1_phase_out => register12_q_net,
    cav1_p2_amp_out => register20_q_net,
    cav1_p2_comparison_i => register21_q_net,
    cav1_p2_comparison_phase => register23_q_net,
    cav1_p2_comparison_q => register22_q_net,
    cav1_p2_dc_freq => register30_q_net_x0,
    cav1_p2_dc_img => register29_q_net_x0,
    cav1_p2_dc_real => register28_q_net,
    cav1_p2_if_amp => register24_q_net,
    cav1_p2_if_i => register26_q_net,
    cav1_p2_if_phase => register25_q_net,
    cav1_p2_if_q => register1_q_net,
    cav1_p2_integrated_i => register17_q_net,
    cav1_p2_integrated_q => register18_q_net,
    cav1_p2_phase_out => register19_q_net,
    cav2_p1_amp_out => register93_q_net,
    cav2_p1_comparison_i => register94_q_net,
    cav2_p1_comparison_phase => register96_q_net,
    cav2_p1_comparison_q => register95_q_net,
    cav2_p1_dc_freq => register103_q_net,
    cav2_p1_dc_img => register102_q_net,
    cav2_p1_dc_real => register101_q_net,
    cav2_p1_if_amp => register97_q_net,
    cav2_p1_if_i => register99_q_net,
    cav2_p1_if_phase => register98_q_net,
    cav2_p1_if_q => register100_q_net,
    cav2_p1_integrated_i => register90_q_net,
    cav2_p1_integrated_q => register91_q_net,
    cav2_p1_phase_out => register92_q_net,
    cav2_p2_amp_out => register121_q_net,
    cav2_p2_comparison_i => register122_q_net,
    cav2_p2_comparison_phase => register124_q_net,
    cav2_p2_comparison_q => register123_q_net,
    cav2_p2_dc_freq => register131_q_net,
    cav2_p2_dc_img => register130_q_net,
    cav2_p2_dc_real => register129_q_net,
    cav2_p2_if_amp => register125_q_net,
    cav2_p2_if_i => register127_q_net,
    cav2_p2_if_phase => register126_q_net,
    cav2_p2_if_q => register128_q_net,
    cav2_p2_integrated_i => register118_q_net,
    cav2_p2_integrated_q => register119_q_net,
    cav2_p2_phase_out => register120_q_net,
    rf_ref_amp => register76_q_net,
    rf_ref_i => register80_q_net,
    rf_ref_phase => register78_q_net,
    rf_ref_q => register82_q_net,
    status_0 => register27_q_net
  );
  dsp : entity work.example_dsp 
  port map (
    diagnrst_ctl => register35_q_net_x0,
    diagnsync_ctl => register1_q_net_x0,
    diag4sevr_ctl => register13_q_net_x0,
    diag5sevr_ctl => register14_q_net_x0,
    diag6sevr_ctl => register15_q_net_x0,
    diag7sevr_ctl => register16_q_net_x0,
    diag8sevr_ctl => register17_q_net_x0,
    diag8fixed_ctl => register10_q_net_x0,
    diag1sevr_ctl => register3_q_net_x0,
    diag2sevr_ctl => register11_q_net_x0,
    diag3sevr_ctl => register12_q_net_x0,
    diag1fixed_ctl => register2_q_net,
    diag2fixed_ctl => register4_q_net_x0,
    diag3fixed_ctl => register5_q_net_x0,
    diag4fixed_ctl => register6_q_net_x0,
    diag5fixed_ctl => register7_q_net_x0,
    diag6fixed_ctl => register8_q_net_x0,
    diag7fixed_ctl => register9_q_net_x0,
    amp => amp_net,
    ddcchannel => ddcchannel_net,
    ddci => ddci_net,
    ddcq => ddcq_net,
    phase => phase_net,
    phaseampchannel => phaseampchannel_net,
    cav1_nco_phase_adj => register36_q_net_x0,
    cav1_nco_phase_reset => register35_q_net_x1,
    cav1_p1_chan_sel => register29_q_net_x2,
    cav1_p2_chan_sel => register30_q_net_x1,
    cav2_nco_phase_adj => register36_q_net,
    cav2_nco_phase_reset => register35_q_net,
    cav2_p1_chan_sel => register29_q_net,
    cav2_p2_chan_sel => register30_q_net,
    rf_ref_chan_sel => register2_q_net_x0,
    clk_1 => q_clk_net,
    ce_1 => d_ce_net,
    clk_12 => d_clk_net,
    ce_12 => q_ce_net,
    diag1data_x0 => constant_op_net,
    diag2data_x0 => constant13_op_net,
    wfdata_2_x0 => constant24_op_net,
    wfdata_3_x0 => constant25_op_net,
    wfdata_4_x0 => constant27_op_net,
    wfdata_5_x0 => constant28_op_net,
    wfdata_6_x0 => constant29_op_net,
    wfdata_7_x0 => constant30_op_net,
    wfvalid_2_x0 => constant33_op_net,
    wfvalid_3_x0 => constant34_op_net,
    wfvalid_4_x0 => constant35_op_net,
    wfvalid_5_x0 => constant36_op_net,
    diag3data_x0 => constant16_op_net,
    wfvalid_6_x0 => constant37_op_net,
    wfvalid_7_x0 => constant38_op_net,
    wfvalid_0_x0 => constant31_op_net,
    wfvalid_1_x0 => constant32_op_net,
    diag4data_x0 => constant17_op_net,
    diag5data_x0 => constant18_op_net,
    diag6data => constant19_op_net,
    diag7data => constant20_op_net,
    diag8data => constant21_op_net,
    wfdata_0 => constant22_op_net,
    wfdata_1_x0 => constant23_op_net,
    diag8sevr => convert20_dout_net,
    diag1data => convert3_dout_net,
    diag1fixed => convert4_dout_net,
    diag1sevr => convert13_dout_net,
    diagnclk => convert2_dout_net,
    diagnrst => convert_dout_net,
    diagnsync => convert1_dout_net,
    diag7data_x0 => convert25_dout_net,
    diag6data_x0 => convert24_dout_net,
    diag5data => convert23_dout_net,
    diag3data => convert21_dout_net,
    diag2data => convert5_dout_net,
    wfdata_0_x0 => convert27_dout_net,
    diag4data => convert22_dout_net,
    diag2fixed => convert6_dout_net,
    diag3fixed => convert7_dout_net,
    diag4fixed => convert8_dout_net,
    diag8data_x0 => convert26_dout_net,
    diag5fixed => convert9_dout_net,
    diag6fixed => convert10_dout_net,
    diag7fixed => convert11_dout_net,
    diag8fixed => convert12_dout_net,
    diag2sevr => convert14_dout_net,
    diag3sevr => convert15_dout_net,
    diag4sevr => convert16_dout_net,
    diag5sevr => convert17_dout_net,
    diag6sevr => convert18_dout_net,
    diag7sevr => convert19_dout_net,
    wfvalid_0 => convert35_dout_net,
    wfdata_1 => convert28_dout_net,
    wfdata_2 => convert29_dout_net,
    wfdata_3 => convert30_dout_net,
    wfdata_4 => convert31_dout_net,
    wfdata_5 => convert32_dout_net,
    wfdata_6 => convert33_dout_net,
    wfdata_7 => convert34_dout_net,
    wfvalid_5 => convert40_dout_net,
    wfvalid_1 => convert36_dout_net,
    wfvalid_2 => convert37_dout_net,
    wfvalid_3 => convert38_dout_net,
    wfvalid_4 => convert39_dout_net,
    wfvalid_6 => convert41_dout_net,
    wfvalid_7 => convert42_dout_net,
    cav1_p1_amp_out => constant5_op_net_x0,
    cav1_p1_comparison_i => constant4_op_net_x0,
    cav1_p1_comparison_phase => constant9_op_net_x0,
    cav1_p1_comparison_q => constant3_op_net_x0,
    cav1_p1_dc_freq => constant_op_net_x1,
    cav1_p1_dc_img => register1_q_net_x3,
    cav1_p1_dc_real => register2_q_net_x2,
    cav1_p1_if_amp => down_sample1_q_net_x4,
    cav1_p1_if_i => down_sample1_q_net_x7,
    cav1_p1_if_phase => down_sample_q_net_x6,
    cav1_p1_if_q => down_sample_q_net_x5,
    cav1_p1_integrated_i => constant8_op_net_x0,
    cav1_p1_integrated_q => constant7_op_net_x0,
    cav1_p1_phase_out => constant6_op_net_x0,
    cav1_p2_amp_out => constant18_op_net_x1,
    cav1_p2_comparison_i => constant19_op_net_x1,
    cav1_p2_comparison_phase => constant23_op_net_x1,
    cav1_p2_comparison_q => constant21_op_net_x1,
    cav1_p2_dc_freq => constant10_op_net_x0,
    cav1_p2_dc_img => convert1_dout_net_x0,
    cav1_p2_dc_real => convert_dout_net_x0,
    cav1_p2_if_amp => down_sample1_q_net_x5,
    cav1_p2_if_i => down_sample1_q_net_x6,
    cav1_p2_if_phase => down_sample_q_net_x7,
    cav1_p2_if_q => down_sample_q_net_x8,
    cav1_p2_integrated_i => constant11_op_net_x0,
    cav1_p2_integrated_q => constant12_op_net_x0,
    cav1_p2_phase_out => constant14_op_net_x0,
    cav2_p1_amp_out => constant5_op_net,
    cav2_p1_comparison_i => constant4_op_net,
    cav2_p1_comparison_phase => constant9_op_net,
    cav2_p1_comparison_q => constant3_op_net,
    cav2_p1_dc_freq => constant_op_net_x0,
    cav2_p1_dc_img => register1_q_net_x2,
    cav2_p1_dc_real => register2_q_net_x1,
    cav2_p1_if_amp => down_sample1_q_net_x0,
    cav2_p1_if_i => down_sample1_q_net_x3,
    cav2_p1_if_phase => down_sample_q_net_x0,
    cav2_p1_if_q => down_sample_q_net_x3,
    cav2_p1_integrated_i => constant8_op_net,
    cav2_p1_integrated_q => constant7_op_net,
    cav2_p1_phase_out => constant6_op_net,
    cav2_p2_amp_out => constant18_op_net_x0,
    cav2_p2_comparison_i => constant19_op_net_x0,
    cav2_p2_comparison_phase => constant23_op_net_x0,
    cav2_p2_comparison_q => constant21_op_net_x0,
    cav2_p2_dc_freq => constant10_op_net,
    cav2_p2_dc_img => register33_q_net_x1,
    cav2_p2_dc_real => register32_q_net_x1,
    cav2_p2_if_amp => down_sample1_q_net_x1,
    cav2_p2_if_i => down_sample1_q_net_x2,
    cav2_p2_if_phase => down_sample_q_net_x1,
    cav2_p2_if_q => down_sample_q_net_x2,
    cav2_p2_integrated_i => constant11_op_net,
    cav2_p2_integrated_q => constant12_op_net,
    cav2_p2_phase_out => constant14_op_net,
    rf_ref_amp => down_sample1_q_net,
    rf_ref_i => down_sample1_q_net_x8,
    rf_ref_phase => down_sample_q_net,
    rf_ref_q => down_sample_q_net_x4
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example_default_clock_driver is
  port (
    dsp_sysclk : in std_logic;
    dsp_sysce : in std_logic;
    dsp_sysclr : in std_logic;
    axi_lite_sysclk : in std_logic;
    axi_lite_sysce : in std_logic;
    axi_lite_sysclr : in std_logic;
    dsp_clk1 : out std_logic;
    dsp_ce1 : out std_logic;
    dsp_clk12 : out std_logic;
    dsp_ce12 : out std_logic;
    axi_lite_clk1 : out std_logic;
    axi_lite_ce1 : out std_logic;
    axi_lite_clk8 : out std_logic;
    axi_lite_ce8 : out std_logic
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
    sysclk => dsp_sysclk,
    sysce => dsp_sysce,
    sysclr => dsp_sysclr,
    clk => dsp_clk1,
    ce => dsp_ce1
  );
  clockdriver_x1 : entity work.xlclockdriver 
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
  clockdriver_x0 : entity work.xlclockdriver 
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
  clockdriver : entity work.xlclockdriver 
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
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity example is
  port (
    diag1fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag1sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag2fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag2sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag3fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag3sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag4fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag4sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag5fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag5sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag6fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag6sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag7fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag7sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diag8fixed_ctl : in std_logic_vector( 1-1 downto 0 );
    diag8sevr_ctl : in std_logic_vector( 2-1 downto 0 );
    diagnrst_ctl : in std_logic_vector( 1-1 downto 0 );
    diagnsync_ctl : in std_logic_vector( 1-1 downto 0 );
    amp : in std_logic_vector( 18-1 downto 0 );
    ddcchannel : in std_logic_vector( 4-1 downto 0 );
    ddci : in std_logic_vector( 18-1 downto 0 );
    ddcq : in std_logic_vector( 18-1 downto 0 );
    ddcsync : in std_logic_vector( 1-1 downto 0 );
    phase : in std_logic_vector( 18-1 downto 0 );
    phaseampchannel : in std_logic_vector( 4-1 downto 0 );
    phaseampsync : in std_logic_vector( 1-1 downto 0 );
    dsp_clk : in std_logic;
    axi_lite_clk : in std_logic;
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
    diag8sevr : out std_logic_vector( 2-1 downto 0 );
    diag1data : out std_logic_vector( 32-1 downto 0 );
    diag1fixed : out std_logic_vector( 1-1 downto 0 );
    diag1sevr : out std_logic_vector( 2-1 downto 0 );
    diagnclk : out std_logic_vector( 1-1 downto 0 );
    diagnrst : out std_logic_vector( 1-1 downto 0 );
    diagnsync : out std_logic_vector( 1-1 downto 0 );
    diag7data : out std_logic_vector( 32-1 downto 0 );
    diag6data : out std_logic_vector( 32-1 downto 0 );
    diag5data : out std_logic_vector( 32-1 downto 0 );
    diag3data : out std_logic_vector( 32-1 downto 0 );
    diag2data : out std_logic_vector( 32-1 downto 0 );
    wfdata_0 : out std_logic_vector( 32-1 downto 0 );
    diag4data : out std_logic_vector( 32-1 downto 0 );
    diag2fixed : out std_logic_vector( 1-1 downto 0 );
    diag3fixed : out std_logic_vector( 1-1 downto 0 );
    diag4fixed : out std_logic_vector( 1-1 downto 0 );
    diag8data : out std_logic_vector( 32-1 downto 0 );
    diag5fixed : out std_logic_vector( 1-1 downto 0 );
    diag6fixed : out std_logic_vector( 1-1 downto 0 );
    diag7fixed : out std_logic_vector( 1-1 downto 0 );
    diag8fixed : out std_logic_vector( 1-1 downto 0 );
    diag2sevr : out std_logic_vector( 2-1 downto 0 );
    diag3sevr : out std_logic_vector( 2-1 downto 0 );
    diag4sevr : out std_logic_vector( 2-1 downto 0 );
    diag5sevr : out std_logic_vector( 2-1 downto 0 );
    diag6sevr : out std_logic_vector( 2-1 downto 0 );
    diag7sevr : out std_logic_vector( 2-1 downto 0 );
    wfvalid_0 : out std_logic_vector( 1-1 downto 0 );
    wfdata_1 : out std_logic_vector( 32-1 downto 0 );
    wfdata_2 : out std_logic_vector( 32-1 downto 0 );
    wfdata_3 : out std_logic_vector( 32-1 downto 0 );
    wfdata_4 : out std_logic_vector( 32-1 downto 0 );
    wfdata_5 : out std_logic_vector( 32-1 downto 0 );
    wfdata_6 : out std_logic_vector( 32-1 downto 0 );
    wfdata_7 : out std_logic_vector( 32-1 downto 0 );
    wfvalid_5 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_1 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_2 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_3 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_4 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_6 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_7 : out std_logic_vector( 1-1 downto 0 );
    gateway_out4 : out std_logic_vector( 29-1 downto 0 );
    axi_lite_s_axi_awready : out std_logic;
    axi_lite_s_axi_wready : out std_logic;
    axi_lite_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    axi_lite_s_axi_bvalid : out std_logic;
    axi_lite_s_axi_arready : out std_logic;
    axi_lite_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    axi_lite_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    axi_lite_s_axi_rvalid : out std_logic
  );
end example;
architecture structural of example is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "example,sysgen_core_2017_4,{,compilation=Synthesized Checkpoint,block_icon_display=Default,family=kintexu,part=xcku040,speed=-2-e,package=ffva1156,synthesis_language=vhdl,hdl_library=work,synthesis_strategy=Flow_PerfOptimized_high,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=1,ce_clr=0,clock_period=-10,system_simulink_period=-1,waveform_viewer=1,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=5e-05,abs=2,addsub=2,ceprobe=6,cmpy_v6_0=4,constant=71,convert=47,cordic_v6_0=1,counter=2,dds_compiler_v6_0=2,delay=32,divide=2,dsamp=90,register=437,relational=20,usamp=37,}";
  signal cav1_nco_phase_adj : std_logic_vector( 29-1 downto 0 );
  signal cav1_nco_phase_reset : std_logic_vector( 1-1 downto 0 );
  signal cav1_p1_amp_out : std_logic_vector( 18-1 downto 0 );
  signal cav1_p1_chan_sel : std_logic_vector( 4-1 downto 0 );
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
  signal cav1_p1_window_start : std_logic_vector( 16-1 downto 0 );
  signal cav1_p1_window_stop : std_logic_vector( 16-1 downto 0 );
  signal cav1_p2_amp_out : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal cav1_p2_comparison_i : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_comparison_phase : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_comparison_q : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_dc_freq : std_logic_vector( 26-1 downto 0 );
  signal cav1_p2_dc_img : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_dc_real : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_if_amp : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_if_i : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_if_phase : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_if_q : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_integrated_i : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_integrated_q : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_if_phase : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_phase_out : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_window_start : std_logic_vector( 16-1 downto 0 );
  signal cav1_p2_window_stop : std_logic_vector( 16-1 downto 0 );
  signal cav2_nco_phase_adj : std_logic_vector( 29-1 downto 0 );
  signal cav2_nco_phase_reset : std_logic_vector( 1-1 downto 0 );
  signal cav2_p1_amp_out : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal cav2_p1_comparison_i : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_comparison_phase : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_comparison_q : std_logic_vector( 18-1 downto 0 );
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
  signal cav2_p2_if_amp : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_if_i : std_logic_vector( 18-1 downto 0 );
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
  signal scratchpad : std_logic_vector( 32-1 downto 0 );
  signal status_0 : std_logic_vector( 32-1 downto 0 );
  signal clk_1_net_x0 : std_logic;
  signal ce_1_net_x0 : std_logic;
  signal clk_12_net : std_logic;
  signal ce_12_net : std_logic;
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
  signal clk_8_net : std_logic;
  signal ce_8_net : std_logic;
  signal axi_lite_clk_net : std_logic;
begin
  axi_lite_axi_lite_interface : entity work.axi_lite_axi_lite_interface 
  port map (
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
    cav2_p1_amp_out => cav2_p1_amp_out,
    cav2_p1_comparison_i => cav2_p1_comparison_i,
    cav2_p1_comparison_phase => cav2_p1_comparison_phase,
    cav2_p1_comparison_q => cav2_p1_comparison_q,
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
    rf_ref_q => rf_ref_q,
    status_0 => status_0,
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
    rf_ref_chan_sel => rf_ref_chan_sel,
    ref_window_stop => ref_window_stop,
    ref_window_start => ref_window_start,
    cav2_p2_window_stop => cav2_p2_window_stop,
    cav2_p2_window_start => cav2_p2_window_start,
    cav2_p2_chan_sel => cav2_p2_chan_sel,
    cav2_p1_window_stop => cav2_p1_window_stop,
    cav2_p1_window_start => cav2_p1_window_start,
    cav2_p1_chan_sel => cav2_p1_chan_sel,
    cav2_nco_phase_reset => cav2_nco_phase_reset,
    cav2_nco_phase_adj => cav2_nco_phase_adj,
    cav1_p2_window_stop => cav1_p2_window_stop,
    cav1_p2_window_start => cav1_p2_window_start,
    cav1_p2_chan_sel => cav1_p2_chan_sel,
    cav1_p1_window_stop => cav1_p1_window_stop,
    cav1_p1_window_start => cav1_p1_window_start,
    cav1_p1_chan_sel => cav1_p1_chan_sel,
    cav1_nco_phase_reset => cav1_nco_phase_reset,
    cav1_nco_phase_adj => cav1_nco_phase_adj,
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
  example_default_clock_driver : entity work.example_default_clock_driver 
  port map (
    dsp_sysclk => dsp_clk,
    dsp_sysce => '1',
    dsp_sysclr => '0',
    axi_lite_sysclk => axi_lite_clk_net,
    axi_lite_sysce => '1',
    axi_lite_sysclr => '0',
    dsp_clk1 => clk_1_net_x0,
    dsp_ce1 => ce_1_net_x0,
    dsp_clk12 => clk_12_net,
    dsp_ce12 => ce_12_net,
    axi_lite_clk1 => clk_1_net,
    axi_lite_ce1 => ce_1_net,
    axi_lite_clk8 => clk_8_net,
    axi_lite_ce8 => ce_8_net
  );
  example_struct : entity work.example_struct 
  port map (
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
    diag1fixed_ctl => diag1fixed_ctl,
    diag1sevr_ctl => diag1sevr_ctl,
    diag2fixed_ctl => diag2fixed_ctl,
    diag2sevr_ctl => diag2sevr_ctl,
    diag3fixed_ctl => diag3fixed_ctl,
    diag3sevr_ctl => diag3sevr_ctl,
    diag4fixed_ctl => diag4fixed_ctl,
    diag4sevr_ctl => diag4sevr_ctl,
    diag5fixed_ctl => diag5fixed_ctl,
    diag5sevr_ctl => diag5sevr_ctl,
    diag6fixed_ctl => diag6fixed_ctl,
    diag6sevr_ctl => diag6sevr_ctl,
    diag7fixed_ctl => diag7fixed_ctl,
    diag7sevr_ctl => diag7sevr_ctl,
    diag8fixed_ctl => diag8fixed_ctl,
    diag8sevr_ctl => diag8sevr_ctl,
    diagnrst_ctl => diagnrst_ctl,
    diagnsync_ctl => diagnsync_ctl,
    ref_window_start => ref_window_start,
    ref_window_stop => ref_window_stop,
    rf_ref_chan_sel => rf_ref_chan_sel,
    scratchpad => scratchpad,
    amp => amp,
    ddcchannel => ddcchannel,
    ddci => ddci,
    ddcq => ddcq,
    ddcsync => ddcsync,
    phase => phase,
    phaseampchannel => phaseampchannel,
    phaseampsync => phaseampsync,
    clk_1_x0 => clk_1_net_x0,
    ce_1_x0 => ce_1_net_x0,
    clk_12 => clk_12_net,
    ce_12 => ce_12_net,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    clk_8 => clk_8_net,
    ce_8 => ce_8_net,
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
    cav2_p1_amp_out => cav2_p1_amp_out,
    cav2_p1_comparison_i => cav2_p1_comparison_i,
    cav2_p1_comparison_phase => cav2_p1_comparison_phase,
    cav2_p1_comparison_q => cav2_p1_comparison_q,
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
    rf_ref_q => rf_ref_q,
    status_0 => status_0,
    diag8sevr => diag8sevr,
    diag1data => diag1data,
    diag1fixed => diag1fixed,
    diag1sevr => diag1sevr,
    diagnclk => diagnclk,
    diagnrst => diagnrst,
    diagnsync => diagnsync,
    diag7data => diag7data,
    diag6data => diag6data,
    diag5data => diag5data,
    diag3data => diag3data,
    diag2data => diag2data,
    wfdata_0 => wfdata_0,
    diag4data => diag4data,
    diag2fixed => diag2fixed,
    diag3fixed => diag3fixed,
    diag4fixed => diag4fixed,
    diag8data => diag8data,
    diag5fixed => diag5fixed,
    diag6fixed => diag6fixed,
    diag7fixed => diag7fixed,
    diag8fixed => diag8fixed,
    diag2sevr => diag2sevr,
    diag3sevr => diag3sevr,
    diag4sevr => diag4sevr,
    diag5sevr => diag5sevr,
    diag6sevr => diag6sevr,
    diag7sevr => diag7sevr,
    wfvalid_0 => wfvalid_0,
    wfdata_1 => wfdata_1,
    wfdata_2 => wfdata_2,
    wfdata_3 => wfdata_3,
    wfdata_4 => wfdata_4,
    wfdata_5 => wfdata_5,
    wfdata_6 => wfdata_6,
    wfdata_7 => wfdata_7,
    wfvalid_5 => wfvalid_5,
    wfvalid_1 => wfvalid_1,
    wfvalid_2 => wfvalid_2,
    wfvalid_3 => wfvalid_3,
    wfvalid_4 => wfvalid_4,
    wfvalid_6 => wfvalid_6,
    wfvalid_7 => wfvalid_7,
    gateway_out4 => gateway_out4
  );
end structural;