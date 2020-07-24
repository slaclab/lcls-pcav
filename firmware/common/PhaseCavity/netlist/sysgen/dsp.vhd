-- Generated from Simulink block exampleModel_bus_axi/example/dsp/BSA_streaming
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_bsa_streaming is
  port (
    diagnsync_ctl : in std_logic_vector( 1-1 downto 0 );
    diag7data : in std_logic_vector( 18-1 downto 0 );
    diag15data : in std_logic_vector( 18-1 downto 0 );
    diag6data : in std_logic_vector( 18-1 downto 0 );
    diag5data : in std_logic_vector( 18-1 downto 0 );
    diag4data : in std_logic_vector( 18-1 downto 0 );
    diag3data : in std_logic_vector( 18-1 downto 0 );
    diag2data : in std_logic_vector( 18-1 downto 0 );
    wfdata_0 : in std_logic_vector( 26-1 downto 0 );
    wfdata_1 : in std_logic_vector( 26-1 downto 0 );
    wfdata_2 : in std_logic_vector( 18-1 downto 0 );
    wfdata_3 : in std_logic_vector( 18-1 downto 0 );
    wfdata_4 : in std_logic_vector( 18-1 downto 0 );
    wfdata_5 : in std_logic_vector( 18-1 downto 0 );
    wfdata_6 : in std_logic_vector( 18-1 downto 0 );
    wfdata_7 : in std_logic_vector( 18-1 downto 0 );
    wfvalid_0 : in std_logic_vector( 1-1 downto 0 );
    wfvalid_1 : in std_logic_vector( 1-1 downto 0 );
    wfvalid_6 : in std_logic_vector( 1-1 downto 0 );
    wfvalid_7 : in std_logic_vector( 1-1 downto 0 );
    diag1data : in std_logic_vector( 18-1 downto 0 );
    diag8data : in std_logic_vector( 18-1 downto 0 );
    diag14data_x0 : in std_logic_vector( 18-1 downto 0 );
    diag9data : in std_logic_vector( 18-1 downto 0 );
    diag16data : in std_logic_vector( 18-1 downto 0 );
    diag13data_x0 : in std_logic_vector( 18-1 downto 0 );
    diag12data_x0 : in std_logic_vector( 18-1 downto 0 );
    diag11data_x0 : in std_logic_vector( 18-1 downto 0 );
    diag10data_x0 : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    diagnrst_ctl : out std_logic_vector( 1-1 downto 0 );
    diag6fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag2sevr_ctl : out std_logic_vector( 3-1 downto 0 );
    diag3sevr_ctl : out std_logic_vector( 3-1 downto 0 );
    diag4sevr_ctl : out std_logic_vector( 3-1 downto 0 );
    diag5sevr_ctl : out std_logic_vector( 3-1 downto 0 );
    diag6sevr_ctl : out std_logic_vector( 3-1 downto 0 );
    diag7sevr_ctl : out std_logic_vector( 3-1 downto 0 );
    diag8sevr_ctl : out std_logic_vector( 3-1 downto 0 );
    diag14fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag13fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag15fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag5fixed : out std_logic_vector( 1-1 downto 0 );
    diag12fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag11fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag10fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag9fixed : out std_logic_vector( 1-1 downto 0 );
    diag7fixed : out std_logic_vector( 1-1 downto 0 );
    diag16fixed : out std_logic_vector( 1-1 downto 0 );
    diag4fixed : out std_logic_vector( 1-1 downto 0 );
    diag22fixed : out std_logic_vector( 1-1 downto 0 );
    diag21fixed : out std_logic_vector( 1-1 downto 0 );
    diag23fixed : out std_logic_vector( 1-1 downto 0 );
    diag20fixed : out std_logic_vector( 1-1 downto 0 );
    diag19fixed : out std_logic_vector( 1-1 downto 0 );
    diag18fixed : out std_logic_vector( 1-1 downto 0 );
    diag3fixed : out std_logic_vector( 1-1 downto 0 );
    diag17fixed : out std_logic_vector( 1-1 downto 0 );
    diag24fixed : out std_logic_vector( 1-1 downto 0 );
    diag18data : out std_logic_vector( 18-1 downto 0 );
    diag17data : out std_logic_vector( 18-1 downto 0 );
    diag19data : out std_logic_vector( 18-1 downto 0 );
    diag20data : out std_logic_vector( 18-1 downto 0 );
    diag21data : out std_logic_vector( 18-1 downto 0 );
    diag22data : out std_logic_vector( 18-1 downto 0 );
    diag23data : out std_logic_vector( 18-1 downto 0 );
    diag24data : out std_logic_vector( 18-1 downto 0 );
    diag2fixed : out std_logic_vector( 1-1 downto 0 );
    diag30fixed : out std_logic_vector( 1-1 downto 0 );
    diag29fixed : out std_logic_vector( 1-1 downto 0 );
    diag31fixed : out std_logic_vector( 1-1 downto 0 );
    diag28fixed : out std_logic_vector( 1-1 downto 0 );
    diag27fixed : out std_logic_vector( 1-1 downto 0 );
    diag26fixed : out std_logic_vector( 1-1 downto 0 );
    diag25fixed : out std_logic_vector( 1-1 downto 0 );
    diag26data : out std_logic_vector( 18-1 downto 0 );
    diag25data : out std_logic_vector( 18-1 downto 0 );
    diag1fixed : out std_logic_vector( 1-1 downto 0 );
    diag27data : out std_logic_vector( 18-1 downto 0 );
    diag28data : out std_logic_vector( 18-1 downto 0 );
    diag29data : out std_logic_vector( 18-1 downto 0 );
    diag30data : out std_logic_vector( 18-1 downto 0 );
    diag31data : out std_logic_vector( 18-1 downto 0 );
    diag8fixed : out std_logic_vector( 1-1 downto 0 );
    diag1sevr_ctl : out std_logic_vector( 3-1 downto 0 );
    diag10data : out std_logic_vector( 32-1 downto 0 );
    diag10fixed : out std_logic_vector( 1-1 downto 0 );
    diag10sevr : out std_logic_vector( 2-1 downto 0 );
    diag11data : out std_logic_vector( 32-1 downto 0 );
    diag11fixed : out std_logic_vector( 1-1 downto 0 );
    diag11sevr : out std_logic_vector( 2-1 downto 0 );
    diag12data : out std_logic_vector( 32-1 downto 0 );
    diag12fixed : out std_logic_vector( 1-1 downto 0 );
    diag12sevr : out std_logic_vector( 2-1 downto 0 );
    diag13data : out std_logic_vector( 32-1 downto 0 );
    diag13fixed : out std_logic_vector( 1-1 downto 0 );
    diag13sevr : out std_logic_vector( 2-1 downto 0 );
    diag14data : out std_logic_vector( 32-1 downto 0 );
    diag14fixed : out std_logic_vector( 1-1 downto 0 );
    diag14sevr : out std_logic_vector( 2-1 downto 0 );
    diag15data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag15fixed : out std_logic_vector( 1-1 downto 0 );
    diag15sevr : out std_logic_vector( 2-1 downto 0 );
    diag16data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag16fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag16sevr : out std_logic_vector( 2-1 downto 0 );
    diag17data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag17fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag17sevr : out std_logic_vector( 2-1 downto 0 );
    diag18data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag18fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag18sevr : out std_logic_vector( 2-1 downto 0 );
    diag19data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag19fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag19sevr : out std_logic_vector( 2-1 downto 0 );
    diag1data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag1fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag1sevr : out std_logic_vector( 2-1 downto 0 );
    diag20data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag20fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag20sevr : out std_logic_vector( 2-1 downto 0 );
    diag21data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag21fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag21sevr : out std_logic_vector( 2-1 downto 0 );
    diag22data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag22fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag22sevr : out std_logic_vector( 2-1 downto 0 );
    diag23data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag23fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag23sevr : out std_logic_vector( 2-1 downto 0 );
    diag24data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag24fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag24sevr : out std_logic_vector( 2-1 downto 0 );
    diag25data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag25fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag25sevr : out std_logic_vector( 2-1 downto 0 );
    diag26data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag26fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag26sevr : out std_logic_vector( 2-1 downto 0 );
    diag27data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag27fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag27sevr : out std_logic_vector( 2-1 downto 0 );
    diag28data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag28fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag28sevr : out std_logic_vector( 2-1 downto 0 );
    diag29data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag29fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag29sevr : out std_logic_vector( 2-1 downto 0 );
    diag2data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag2fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag2sevr : out std_logic_vector( 2-1 downto 0 );
    diag30data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag30fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag30sevr : out std_logic_vector( 2-1 downto 0 );
    diag31data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag31fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag31sevr : out std_logic_vector( 2-1 downto 0 );
    diag3data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag3fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag3sevr : out std_logic_vector( 2-1 downto 0 );
    diag4data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag4fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag4sevr : out std_logic_vector( 2-1 downto 0 );
    diag5data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag5fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag5sevr : out std_logic_vector( 2-1 downto 0 );
    diag6data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag6fixed : out std_logic_vector( 1-1 downto 0 );
    diag6sevr : out std_logic_vector( 2-1 downto 0 );
    diag7data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag7fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag7sevr : out std_logic_vector( 2-1 downto 0 );
    diag8data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag8fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag8sevr : out std_logic_vector( 2-1 downto 0 );
    diag9data_x0 : out std_logic_vector( 32-1 downto 0 );
    diag9fixed_x0 : out std_logic_vector( 1-1 downto 0 );
    diag9sevr : out std_logic_vector( 2-1 downto 0 );
    diagnclk : out std_logic_vector( 1-1 downto 0 );
    diagnrst : out std_logic_vector( 1-1 downto 0 );
    diagnsync : out std_logic_vector( 1-1 downto 0 );
    wfdata_0_x0 : out std_logic_vector( 32-1 downto 0 );
    wfdata_1_x0 : out std_logic_vector( 32-1 downto 0 );
    wfdata_2_x0 : out std_logic_vector( 32-1 downto 0 );
    wfdata_3_x0 : out std_logic_vector( 32-1 downto 0 );
    wfdata_4_x0 : out std_logic_vector( 32-1 downto 0 );
    wfdata_5_x0 : out std_logic_vector( 32-1 downto 0 );
    wfdata_6_x0 : out std_logic_vector( 32-1 downto 0 );
    wfdata_7_x0 : out std_logic_vector( 32-1 downto 0 );
    wfvalid_0_x0 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_1_x0 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_2 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_3 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_4 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_5 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_6_x0 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_7_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_bsa_streaming;
architecture structural of dsp_bsa_streaming is 
  signal constant68_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant85_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant67_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant70_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant71_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant72_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant90_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant73_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant66_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant84_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant103_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant104_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant83_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant86_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant87_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant88_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant89_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant82_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant80_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant32_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant81_op_net : std_logic_vector( 18-1 downto 0 );
  signal nco_sin_x0 : std_logic_vector( 26-1 downto 0 );
  signal mux14_y_net : std_logic_vector( 32-1 downto 0 );
  signal constant91_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant92_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant93_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant94_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant100_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant101_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant99_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant102_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert55_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert75_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux12_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert56_dout_net : std_logic_vector( 1-1 downto 0 );
  signal constant105_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant78_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant79_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant77_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant76_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant75_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant74_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant112_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal register13_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register13_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net : std_logic_vector( 18-1 downto 0 );
  signal register13_q_net : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal nco_sin : std_logic_vector( 26-1 downto 0 );
  signal convert88_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux18_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert5_dout_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant29_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant30_op_net : std_logic_vector( 18-1 downto 0 );
  signal ce_net_x0 : std_logic;
  signal relational7_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational7_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal constant37_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant38_op_net : std_logic_vector( 1-1 downto 0 );
  signal register12_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register13_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal mux11_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert19_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert12_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert20_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert54_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert65_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert76_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux13_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert57_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert77_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert58_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert78_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux15_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert51_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert79_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux16_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert52_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert80_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux10_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert53_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert81_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux17_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert62_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert82_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux19_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert71_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert83_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux20_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert72_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert84_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert13_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux21_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert73_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert85_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux22_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert74_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert86_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux23_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert59_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert87_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux24_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert60_dout_net : std_logic_vector( 1-1 downto 0 );
  signal constant15_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant16_op_net : std_logic_vector( 3-1 downto 0 );
  signal convert61_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert89_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux25_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert66_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert90_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux27_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert67_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert91_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux28_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert68_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert92_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux29_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert69_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert93_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux30_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert70_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert94_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux4_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert6_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert14_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux31_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert63_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert95_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux32_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert64_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert96_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux5_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert15_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux6_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert8_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert16_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux7_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert9_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert17_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux8_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert10_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert18_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux9_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal constant47_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant48_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant49_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant50_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert27_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert28_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert29_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert30_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert31_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert32_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert33_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert34_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert35_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert36_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert37_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert38_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert39_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert40_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert41_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert42_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal clk_net_x0 : std_logic;
  signal constant10_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant12_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant13_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant14_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant17_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant18_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant19_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant20_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant21_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant22_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant23_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant24_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant25_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant26_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant27_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant28_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant29_op_net_x0 : std_logic_vector( 3-1 downto 0 );
  signal constant30_op_net_x0 : std_logic_vector( 3-1 downto 0 );
  signal constant33_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant34_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant35_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant36_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant37_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal constant38_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal constant39_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant40_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant41_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant42_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant43_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant44_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant45_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant46_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert123_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register123_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert124_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register124_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert125_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register125_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert126_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register127_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant51_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant52_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant53_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant54_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant55_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant56_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant57_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant58_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant59_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant60_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant61_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant62_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant63_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant65_op_net : std_logic_vector( 3-1 downto 0 );
  signal convert121_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register121_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert122_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register122_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 3-1 downto 0 );
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal register16_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert100_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register101_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert101_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register102_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert102_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register103_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert103_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert104_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register104_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert105_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register105_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert106_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register106_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert107_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register107_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert108_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register108_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert109_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register109_q_net : std_logic_vector( 18-1 downto 0 );
  signal register15_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert110_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register110_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert111_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register111_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert112_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register112_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert113_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register114_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert114_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register115_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert115_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register116_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert116_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert117_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register117_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert118_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register118_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert119_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register119_q_net : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal convert120_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register120_q_net : std_logic_vector( 18-1 downto 0 );
  signal register53_q_net : std_logic_vector( 1-1 downto 0 );
  signal register52_q_net : std_logic_vector( 1-1 downto 0 );
  signal register51_q_net : std_logic_vector( 1-1 downto 0 );
  signal register58_q_net : std_logic_vector( 1-1 downto 0 );
  signal register90_q_net : std_logic_vector( 3-1 downto 0 );
  signal register89_q_net : std_logic_vector( 3-1 downto 0 );
  signal register87_q_net : std_logic_vector( 3-1 downto 0 );
  signal register95_q_net : std_logic_vector( 3-1 downto 0 );
  signal register94_q_net : std_logic_vector( 3-1 downto 0 );
  signal register92_q_net : std_logic_vector( 3-1 downto 0 );
  signal convert97_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register98_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert98_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register99_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert127_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register128_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert128_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register113_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert129_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register130_q_net : std_logic_vector( 18-1 downto 0 );
  signal register13_q_net_x3 : std_logic_vector( 3-1 downto 0 );
  signal convert130_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register131_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert132_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert133_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register133_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert135_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register135_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert136_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register136_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert137_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register137_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert138_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register138_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert139_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register139_q_net : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net_x3 : std_logic_vector( 3-1 downto 0 );
  signal convert140_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register140_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert141_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register141_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert142_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register143_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert143_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register144_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert144_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register129_q_net : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x3 : std_logic_vector( 3-1 downto 0 );
  signal register10_q_net : std_logic_vector( 3-1 downto 0 );
  signal register9_q_net : std_logic_vector( 3-1 downto 0 );
  signal register8_q_net : std_logic_vector( 3-1 downto 0 );
  signal register7_q_net : std_logic_vector( 3-1 downto 0 );
  signal register3_q_net : std_logic_vector( 1-1 downto 0 );
  signal register6_q_net : std_logic_vector( 3-1 downto 0 );
  signal convert21_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register21_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert22_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register22_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert23_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register23_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert24_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register24_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert25_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register25_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert26_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register26_q_net : std_logic_vector( 18-1 downto 0 );
  signal register27_q_net : std_logic_vector( 26-1 downto 0 );
  signal register28_q_net : std_logic_vector( 26-1 downto 0 );
  signal register29_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register30_q_net : std_logic_vector( 18-1 downto 0 );
  signal register31_q_net : std_logic_vector( 18-1 downto 0 );
  signal register32_q_net : std_logic_vector( 18-1 downto 0 );
  signal register33_q_net : std_logic_vector( 18-1 downto 0 );
  signal register34_q_net : std_logic_vector( 18-1 downto 0 );
  signal register35_q_net : std_logic_vector( 1-1 downto 0 );
  signal register36_q_net : std_logic_vector( 1-1 downto 0 );
  signal register37_q_net : std_logic_vector( 1-1 downto 0 );
  signal register38_q_net : std_logic_vector( 1-1 downto 0 );
  signal register39_q_net : std_logic_vector( 1-1 downto 0 );
  signal register4_q_net : std_logic_vector( 1-1 downto 0 );
  signal register40_q_net : std_logic_vector( 1-1 downto 0 );
  signal register41_q_net : std_logic_vector( 1-1 downto 0 );
  signal register42_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert43_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register43_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert44_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register44_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert45_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register45_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert46_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register46_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert47_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register47_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert48_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register48_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert49_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register49_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert5_dout_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register5_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert50_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register50_q_net : std_logic_vector( 18-1 downto 0 );
  signal register57_q_net : std_logic_vector( 1-1 downto 0 );
  signal register56_q_net : std_logic_vector( 1-1 downto 0 );
  signal register55_q_net : std_logic_vector( 1-1 downto 0 );
  signal register54_q_net : std_logic_vector( 1-1 downto 0 );
  signal register61_q_net : std_logic_vector( 1-1 downto 0 );
  signal register20_q_net : std_logic_vector( 1-1 downto 0 );
  signal register60_q_net : std_logic_vector( 1-1 downto 0 );
  signal register59_q_net : std_logic_vector( 1-1 downto 0 );
  signal register66_q_net : std_logic_vector( 1-1 downto 0 );
  signal register69_q_net : std_logic_vector( 1-1 downto 0 );
  signal register68_q_net : std_logic_vector( 1-1 downto 0 );
  signal register77_q_net : std_logic_vector( 3-1 downto 0 );
  signal register74_q_net : std_logic_vector( 1-1 downto 0 );
  signal register73_q_net : std_logic_vector( 1-1 downto 0 );
  signal register72_q_net : std_logic_vector( 1-1 downto 0 );
  signal register71_q_net : std_logic_vector( 1-1 downto 0 );
  signal register19_q_net : std_logic_vector( 1-1 downto 0 );
  signal register70_q_net : std_logic_vector( 1-1 downto 0 );
  signal register65_q_net : std_logic_vector( 1-1 downto 0 );
  signal register64_q_net : std_logic_vector( 1-1 downto 0 );
  signal register63_q_net : std_logic_vector( 1-1 downto 0 );
  signal register62_q_net : std_logic_vector( 1-1 downto 0 );
  signal register76_q_net : std_logic_vector( 3-1 downto 0 );
  signal register75_q_net : std_logic_vector( 3-1 downto 0 );
  signal register67_q_net : std_logic_vector( 3-1 downto 0 );
  signal register81_q_net : std_logic_vector( 3-1 downto 0 );
  signal register80_q_net : std_logic_vector( 3-1 downto 0 );
  signal register18_q_net : std_logic_vector( 1-1 downto 0 );
  signal register79_q_net : std_logic_vector( 3-1 downto 0 );
  signal register78_q_net : std_logic_vector( 3-1 downto 0 );
  signal register85_q_net : std_logic_vector( 3-1 downto 0 );
  signal register84_q_net : std_logic_vector( 3-1 downto 0 );
  signal register83_q_net : std_logic_vector( 3-1 downto 0 );
  signal register82_q_net : std_logic_vector( 3-1 downto 0 );
  signal register96_q_net : std_logic_vector( 3-1 downto 0 );
  signal register93_q_net : std_logic_vector( 3-1 downto 0 );
  signal register88_q_net : std_logic_vector( 3-1 downto 0 );
  signal register86_q_net : std_logic_vector( 3-1 downto 0 );
  signal register17_q_net : std_logic_vector( 1-1 downto 0 );
  signal register91_q_net : std_logic_vector( 3-1 downto 0 );
  signal convert99_dout_net : std_logic_vector( 18-1 downto 0 );
  signal register100_q_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 1-1 downto 0 );
  signal register97_q_net : std_logic_vector( 18-1 downto 0 );
  signal register126_q_net : std_logic_vector( 18-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register142_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant64_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant31_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant69_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
begin
  diagnrst_ctl <= constant31_op_net;
  diag6fixed_x0 <= constant3_op_net;
  diag2sevr_ctl <= constant64_op_net;
  diag3sevr_ctl <= constant64_op_net;
  diag4sevr_ctl <= constant64_op_net;
  diag5sevr_ctl <= constant64_op_net;
  diag6sevr_ctl <= constant64_op_net;
  diag7sevr_ctl <= constant64_op_net;
  diag8sevr_ctl <= constant64_op_net;
  diag14fixed_x0 <= constant68_op_net;
  diag13fixed_x0 <= constant69_op_net;
  diag15fixed_x0 <= constant67_op_net;
  diag5fixed <= constant4_op_net;
  diag12fixed_x0 <= constant70_op_net;
  diag11fixed_x0 <= constant71_op_net;
  diag10fixed_x0 <= constant72_op_net;
  diag9fixed <= constant73_op_net;
  diag7fixed <= constant2_op_net;
  diag16fixed <= constant66_op_net;
  diag4fixed <= constant5_op_net;
  diag22fixed <= constant84_op_net;
  diag21fixed <= constant85_op_net;
  diag23fixed <= constant83_op_net;
  diag20fixed <= constant86_op_net;
  diag19fixed <= constant87_op_net;
  diag18fixed <= constant88_op_net;
  diag3fixed <= constant6_op_net;
  diag17fixed <= constant89_op_net;
  diag24fixed <= constant82_op_net;
  diag18data <= constant80_op_net;
  diag17data <= constant32_op_net;
  diag19data <= constant81_op_net;
  diag20data <= constant90_op_net;
  diag21data <= constant91_op_net;
  diag22data <= constant92_op_net;
  diag23data <= constant93_op_net;
  diag24data <= constant94_op_net;
  diag2fixed <= constant7_op_net;
  diag30fixed <= constant100_op_net;
  diag29fixed <= constant101_op_net;
  diag31fixed <= constant99_op_net;
  diag28fixed <= constant102_op_net;
  diag27fixed <= constant103_op_net;
  diag26fixed <= constant104_op_net;
  diag25fixed <= constant105_op_net;
  diag26data <= constant78_op_net;
  diag25data <= constant79_op_net;
  diag1fixed <= constant8_op_net;
  diag27data <= constant77_op_net;
  diag28data <= constant76_op_net;
  diag29data <= constant75_op_net;
  diag30data <= constant74_op_net;
  diag31data <= constant112_op_net;
  diag8fixed <= constant1_op_net;
  diag1sevr_ctl <= constant64_op_net;
  logical_y_net <= diagnsync_ctl;
  register13_q_net_x0 <= diag7data;
  register13_q_net_x1 <= diag15data;
  register11_q_net <= diag6data;
  register12_q_net <= diag5data;
  register14_q_net <= diag4data;
  register13_q_net <= diag3data;
  register11_q_net_x0 <= diag2data;
  nco_sin <= wfdata_0;
  nco_sin_x0 <= wfdata_1;
  convert6_dout_net <= wfdata_2;
  convert5_dout_net <= wfdata_3;
  convert1_dout_net <= wfdata_4;
  convert5_dout_net_x0 <= wfdata_5;
  constant29_op_net <= wfdata_6;
  constant30_op_net <= wfdata_7;
  relational7_op_net <= wfvalid_0;
  relational7_op_net_x0 <= wfvalid_1;
  constant37_op_net <= wfvalid_6;
  constant38_op_net <= wfvalid_7;
  register12_q_net_x0 <= diag1data;
  register14_q_net_x2 <= diag8data;
  register11_q_net_x1 <= diag14data_x0;
  register12_q_net_x2 <= diag9data;
  register14_q_net_x0 <= diag16data;
  register12_q_net_x1 <= diag13data_x0;
  register14_q_net_x1 <= diag12data_x0;
  register13_q_net_x2 <= diag11data_x0;
  register11_q_net_x2 <= diag10data_x0;
  diag10data <= mux11_y_net;
  diag10fixed <= convert55_dout_net;
  diag10sevr <= convert75_dout_net;
  diag11data <= mux12_y_net;
  diag11fixed <= convert56_dout_net;
  diag11sevr <= convert76_dout_net;
  diag12data <= mux13_y_net;
  diag12fixed <= convert57_dout_net;
  diag12sevr <= convert77_dout_net;
  diag13data <= mux14_y_net;
  diag13fixed <= convert58_dout_net;
  diag13sevr <= convert78_dout_net;
  diag14data <= mux15_y_net;
  diag14fixed <= convert51_dout_net;
  diag14sevr <= convert79_dout_net;
  diag15data_x0 <= mux16_y_net;
  diag15fixed <= convert52_dout_net;
  diag15sevr <= convert80_dout_net;
  diag16data_x0 <= mux10_y_net;
  diag16fixed_x0 <= convert53_dout_net;
  diag16sevr <= convert81_dout_net;
  diag17data_x0 <= mux17_y_net;
  diag17fixed_x0 <= convert62_dout_net;
  diag17sevr <= convert82_dout_net;
  diag18data_x0 <= mux19_y_net;
  diag18fixed_x0 <= convert71_dout_net;
  diag18sevr <= convert83_dout_net;
  diag19data_x0 <= mux20_y_net;
  diag19fixed_x0 <= convert72_dout_net;
  diag19sevr <= convert84_dout_net;
  diag1data_x0 <= mux2_y_net;
  diag1fixed_x0 <= convert4_dout_net;
  diag1sevr <= convert13_dout_net;
  diag20data_x0 <= mux21_y_net;
  diag20fixed_x0 <= convert73_dout_net;
  diag20sevr <= convert85_dout_net;
  diag21data_x0 <= mux22_y_net;
  diag21fixed_x0 <= convert74_dout_net;
  diag21sevr <= convert86_dout_net;
  diag22data_x0 <= mux23_y_net;
  diag22fixed_x0 <= convert59_dout_net;
  diag22sevr <= convert87_dout_net;
  diag23data_x0 <= mux24_y_net;
  diag23fixed_x0 <= convert60_dout_net;
  diag23sevr <= convert88_dout_net;
  diag24data_x0 <= mux18_y_net;
  diag24fixed_x0 <= convert61_dout_net;
  diag24sevr <= convert89_dout_net;
  diag25data_x0 <= mux25_y_net;
  diag25fixed_x0 <= convert66_dout_net;
  diag25sevr <= convert90_dout_net;
  diag26data_x0 <= mux27_y_net;
  diag26fixed_x0 <= convert67_dout_net;
  diag26sevr <= convert91_dout_net;
  diag27data_x0 <= mux28_y_net;
  diag27fixed_x0 <= convert68_dout_net;
  diag27sevr <= convert92_dout_net;
  diag28data_x0 <= mux29_y_net;
  diag28fixed_x0 <= convert69_dout_net;
  diag28sevr <= convert93_dout_net;
  diag29data_x0 <= mux30_y_net;
  diag29fixed_x0 <= convert70_dout_net;
  diag29sevr <= convert94_dout_net;
  diag2data_x0 <= mux4_y_net;
  diag2fixed_x0 <= convert6_dout_net_x0;
  diag2sevr <= convert14_dout_net;
  diag30data_x0 <= mux31_y_net;
  diag30fixed_x0 <= convert63_dout_net;
  diag30sevr <= convert95_dout_net;
  diag31data_x0 <= mux32_y_net;
  diag31fixed_x0 <= convert64_dout_net;
  diag31sevr <= convert96_dout_net;
  diag3data_x0 <= mux5_y_net;
  diag3fixed_x0 <= convert7_dout_net;
  diag3sevr <= convert15_dout_net;
  diag4data_x0 <= mux6_y_net;
  diag4fixed_x0 <= convert8_dout_net;
  diag4sevr <= convert16_dout_net;
  diag5data_x0 <= mux7_y_net;
  diag5fixed_x0 <= convert9_dout_net;
  diag5sevr <= convert17_dout_net;
  diag6data_x0 <= mux8_y_net;
  diag6fixed <= convert10_dout_net;
  diag6sevr <= convert18_dout_net;
  diag7data_x0 <= mux9_y_net;
  diag7fixed_x0 <= convert11_dout_net;
  diag7sevr <= convert19_dout_net;
  diag8data_x0 <= mux3_y_net;
  diag8fixed_x0 <= convert12_dout_net;
  diag8sevr <= convert20_dout_net;
  diag9data_x0 <= mux1_y_net;
  diag9fixed_x0 <= convert54_dout_net;
  diag9sevr <= convert65_dout_net;
  diagnclk <= convert2_dout_net;
  diagnrst <= convert_dout_net;
  diagnsync <= convert1_dout_net_x0;
  wfdata_0_x0 <= convert27_dout_net;
  wfdata_1_x0 <= convert28_dout_net;
  wfdata_2_x0 <= convert29_dout_net;
  wfdata_3_x0 <= convert30_dout_net;
  wfdata_4_x0 <= convert31_dout_net;
  wfdata_5_x0 <= convert32_dout_net;
  wfdata_6_x0 <= convert33_dout_net;
  wfdata_7_x0 <= convert34_dout_net;
  wfvalid_0_x0 <= convert35_dout_net;
  wfvalid_1_x0 <= convert36_dout_net;
  wfvalid_2 <= convert37_dout_net;
  wfvalid_3 <= convert38_dout_net;
  wfvalid_4 <= convert39_dout_net;
  wfvalid_5 <= convert40_dout_net;
  wfvalid_6_x0 <= convert41_dout_net;
  wfvalid_7_x0 <= convert42_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clk_net_x0 <= clk_12;
  ce_net_x0 <= ce_12;
  constant1 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant10 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant10_op_net
  );
  constant100 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant100_op_net
  );
  constant101 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant101_op_net
  );
  constant102 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant102_op_net
  );
  constant103 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant103_op_net
  );
  constant104 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant104_op_net
  );
  constant105 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant105_op_net
  );
  constant11 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant11_op_net
  );
  constant112 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant112_op_net
  );
  constant12 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant12_op_net
  );
  constant13 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  constant14 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant14_op_net
  );
  constant15 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant15_op_net
  );
  constant16 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant16_op_net
  );
  constant17 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant17_op_net
  );
  constant18 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant18_op_net
  );
  constant19 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant19_op_net
  );
  constant2 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant20 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant20_op_net
  );
  constant21 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant21_op_net
  );
  constant22 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant22_op_net
  );
  constant23 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant23_op_net
  );
  constant24 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant24_op_net
  );
  constant25 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant25_op_net
  );
  constant26 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant26_op_net
  );
  constant27 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant27_op_net
  );
  constant28 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant28_op_net
  );
  constant29 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant29_op_net_x0
  );
  constant3 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant30 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant30_op_net_x0
  );
  constant31 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant31_op_net
  );
  constant32 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant32_op_net
  );
  constant33 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant33_op_net
  );
  constant34 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant34_op_net
  );
  constant35 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant35_op_net
  );
  constant36 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant36_op_net
  );
  constant37 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant37_op_net_x0
  );
  constant38 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant38_op_net_x0
  );
  constant39 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant39_op_net
  );
  constant4 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant40 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant40_op_net
  );
  constant41 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant41_op_net
  );
  constant42 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant42_op_net
  );
  constant43 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant43_op_net
  );
  constant44 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant44_op_net
  );
  constant45 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant45_op_net
  );
  constant46 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant46_op_net
  );
  constant47 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant47_op_net
  );
  constant48 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant48_op_net
  );
  constant49 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant49_op_net
  );
  constant5 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant50 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant50_op_net
  );
  constant51 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant51_op_net
  );
  constant52 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant52_op_net
  );
  constant53 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant53_op_net
  );
  constant54 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant54_op_net
  );
  constant55 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant55_op_net
  );
  constant56 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant56_op_net
  );
  constant57 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant57_op_net
  );
  constant58 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant58_op_net
  );
  constant59 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant59_op_net
  );
  constant6 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant60 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant60_op_net
  );
  constant61 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant61_op_net
  );
  constant62 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant62_op_net
  );
  constant63 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant63_op_net
  );
  constant64 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant64_op_net
  );
  constant65 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant65_op_net
  );
  constant66 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant66_op_net
  );
  constant67 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant67_op_net
  );
  constant68 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant68_op_net
  );
  constant69 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant69_op_net
  );
  constant7 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant70 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant70_op_net
  );
  constant71 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant71_op_net
  );
  constant72 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant72_op_net
  );
  constant73 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant73_op_net
  );
  constant74 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant74_op_net
  );
  constant75 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant75_op_net
  );
  constant76 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant76_op_net
  );
  constant77 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant77_op_net
  );
  constant78 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant78_op_net
  );
  constant79 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant79_op_net
  );
  constant8 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  constant80 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant80_op_net
  );
  constant81 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant81_op_net
  );
  constant82 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant82_op_net
  );
  constant83 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant83_op_net
  );
  constant84 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant84_op_net
  );
  constant85 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant85_op_net
  );
  constant86 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant86_op_net
  );
  constant87 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant87_op_net
  );
  constant88 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant88_op_net
  );
  constant89 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant89_op_net
  );
  constant9 : entity work.sysgen_constant_e10d3c3aea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  constant90 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant90_op_net
  );
  constant91 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant91_op_net
  );
  constant92 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant92_op_net
  );
  constant93 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant93_op_net
  );
  constant94 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant94_op_net
  );
  constant99 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant99_op_net
  );
  convert : entity work.dsp_xlconvert 
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
    din => register2_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert_dout_net
  );
  convert1 : entity work.dsp_xlconvert 
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
    din => register1_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert1_dout_net_x0
  );
  convert10 : entity work.dsp_xlconvert 
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
    din => register16_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert10_dout_net
  );
  convert100 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register101_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert100_dout_net
  );
  convert101 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register102_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert101_dout_net
  );
  convert102 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register103_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert102_dout_net
  );
  convert103 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register12_q_net_x2,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert103_dout_net
  );
  convert104 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
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
    din => register104_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert104_dout_net
  );
  convert105 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
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
    din => register105_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert105_dout_net
  );
  convert106 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
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
    din => register106_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert106_dout_net
  );
  convert107 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
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
    din => register107_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert107_dout_net
  );
  convert108 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
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
    din => register108_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert108_dout_net
  );
  convert109 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
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
    din => register109_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert109_dout_net
  );
  convert11 : entity work.dsp_xlconvert 
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
    din => register15_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert11_dout_net
  );
  convert110 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
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
    din => register110_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert110_dout_net
  );
  convert111 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register111_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert111_dout_net
  );
  convert112 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
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
    din => register112_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert112_dout_net
  );
  convert113 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register114_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert113_dout_net
  );
  convert114 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register115_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert114_dout_net
  );
  convert115 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register116_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert115_dout_net
  );
  convert116 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => constant32_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert116_dout_net
  );
  convert117 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
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
    din => register117_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert117_dout_net
  );
  convert118 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
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
    din => register118_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert118_dout_net
  );
  convert119 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
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
    din => register119_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert119_dout_net
  );
  convert12 : entity work.dsp_xlconvert 
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
    din => register14_q_net_x3,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert12_dout_net
  );
  convert120 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
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
    din => register120_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert120_dout_net
  );
  convert121 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
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
    din => register121_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert121_dout_net
  );
  convert122 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
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
    din => register122_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert122_dout_net
  );
  convert123 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
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
    din => register123_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert123_dout_net
  );
  convert124 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register124_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert124_dout_net
  );
  convert125 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
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
    din => register125_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert125_dout_net
  );
  convert126 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register127_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert126_dout_net
  );
  convert127 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register128_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert127_dout_net
  );
  convert128 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register113_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert128_dout_net
  );
  convert129 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register130_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert129_dout_net
  );
  convert13 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register13_q_net_x3,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert13_dout_net
  );
  convert130 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register131_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert130_dout_net
  );
  convert132 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => constant79_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert132_dout_net
  );
  convert133 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
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
    din => register133_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert133_dout_net
  );
  convert135 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
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
    din => register135_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert135_dout_net
  );
  convert136 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
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
    din => register136_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert136_dout_net
  );
  convert137 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
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
    din => register137_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert137_dout_net
  );
  convert138 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
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
    din => register138_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert138_dout_net
  );
  convert139 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
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
    din => register139_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert139_dout_net
  );
  convert14 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register12_q_net_x3,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert14_dout_net
  );
  convert140 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register140_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert140_dout_net
  );
  convert141 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
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
    din => register141_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert141_dout_net
  );
  convert142 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register143_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert142_dout_net
  );
  convert143 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register144_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert143_dout_net
  );
  convert144 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register129_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert144_dout_net
  );
  convert15 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register11_q_net_x3,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert15_dout_net
  );
  convert16 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register10_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert16_dout_net
  );
  convert17 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register9_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert17_dout_net
  );
  convert18 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register8_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert18_dout_net
  );
  convert19 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register7_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert19_dout_net
  );
  convert2 : entity work.dsp_xlconvert 
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
    din => register3_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert20 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register6_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert20_dout_net
  );
  convert21 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register21_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert21_dout_net
  );
  convert22 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register22_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert22_dout_net
  );
  convert23 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register23_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert23_dout_net
  );
  convert24 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register24_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert24_dout_net
  );
  convert25 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register25_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert25_dout_net
  );
  convert26 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register26_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert26_dout_net
  );
  convert27 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 24,
    din_width => 26,
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert27_dout_net
  );
  convert28 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 24,
    din_width => 26,
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert28_dout_net
  );
  convert29 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
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
    din => register29_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert29_dout_net
  );
  convert3 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register12_q_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert3_dout_net
  );
  convert30 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
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
    din => register30_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert30_dout_net
  );
  convert31 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
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
    din => register31_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert31_dout_net
  );
  convert32 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
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
    din => register32_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert32_dout_net
  );
  convert33 : entity work.dsp_xlconvert 
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
    din => register33_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert33_dout_net
  );
  convert34 : entity work.dsp_xlconvert 
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
    din => register34_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert34_dout_net
  );
  convert35 : entity work.dsp_xlconvert 
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
    din => register35_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert35_dout_net
  );
  convert36 : entity work.dsp_xlconvert 
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
    din => register36_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert36_dout_net
  );
  convert37 : entity work.dsp_xlconvert 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert37_dout_net
  );
  convert38 : entity work.dsp_xlconvert 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert38_dout_net
  );
  convert39 : entity work.dsp_xlconvert 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert39_dout_net
  );
  convert4 : entity work.dsp_xlconvert 
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
    din => register4_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert4_dout_net
  );
  convert40 : entity work.dsp_xlconvert 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert40_dout_net
  );
  convert41 : entity work.dsp_xlconvert 
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
    clk => clk_net,
    ce => ce_net,
    dout => convert41_dout_net
  );
  convert42 : entity work.dsp_xlconvert 
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
    clk => clk_net,
    ce => ce_net,
    dout => convert42_dout_net
  );
  convert43 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
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
    din => register43_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert43_dout_net
  );
  convert44 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
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
    din => register44_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert44_dout_net
  );
  convert45 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
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
    din => register45_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert45_dout_net
  );
  convert46 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
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
    din => register46_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert46_dout_net
  );
  convert47 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
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
    din => register47_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert47_dout_net
  );
  convert48 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
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
    din => register48_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert48_dout_net
  );
  convert49 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
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
    din => register49_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert49_dout_net
  );
  convert5 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register5_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert5_dout_net_x1
  );
  convert50 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
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
    din => register50_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert50_dout_net
  );
  convert51 : entity work.dsp_xlconvert 
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
    din => register53_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert51_dout_net
  );
  convert52 : entity work.dsp_xlconvert 
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
    din => register52_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert52_dout_net
  );
  convert53 : entity work.dsp_xlconvert 
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
    din => register51_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert53_dout_net
  );
  convert54 : entity work.dsp_xlconvert 
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
    din => register58_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert54_dout_net
  );
  convert55 : entity work.dsp_xlconvert 
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
    din => register57_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert55_dout_net
  );
  convert56 : entity work.dsp_xlconvert 
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
    din => register56_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert56_dout_net
  );
  convert57 : entity work.dsp_xlconvert 
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
    din => register55_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert57_dout_net
  );
  convert58 : entity work.dsp_xlconvert 
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
    din => register54_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert58_dout_net
  );
  convert59 : entity work.dsp_xlconvert 
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
    din => register61_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert59_dout_net
  );
  convert6 : entity work.dsp_xlconvert 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert6_dout_net_x0
  );
  convert60 : entity work.dsp_xlconvert 
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
    din => register60_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert60_dout_net
  );
  convert61 : entity work.dsp_xlconvert 
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
    din => register59_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert61_dout_net
  );
  convert62 : entity work.dsp_xlconvert 
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
    din => register66_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert62_dout_net
  );
  convert63 : entity work.dsp_xlconvert 
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
    din => register69_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert63_dout_net
  );
  convert64 : entity work.dsp_xlconvert 
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
    din => register68_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert64_dout_net
  );
  convert65 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register77_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert65_dout_net
  );
  convert66 : entity work.dsp_xlconvert 
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
    din => register74_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert66_dout_net
  );
  convert67 : entity work.dsp_xlconvert 
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
    din => register73_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert67_dout_net
  );
  convert68 : entity work.dsp_xlconvert 
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
    din => register72_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert68_dout_net
  );
  convert69 : entity work.dsp_xlconvert 
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
    din => register71_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert69_dout_net
  );
  convert7 : entity work.dsp_xlconvert 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert7_dout_net
  );
  convert70 : entity work.dsp_xlconvert 
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
    din => register70_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert70_dout_net
  );
  convert71 : entity work.dsp_xlconvert 
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
    din => register65_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert71_dout_net
  );
  convert72 : entity work.dsp_xlconvert 
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
    din => register64_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert72_dout_net
  );
  convert73 : entity work.dsp_xlconvert 
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
    din => register63_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert73_dout_net
  );
  convert74 : entity work.dsp_xlconvert 
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
    din => register62_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert74_dout_net
  );
  convert75 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register76_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert75_dout_net
  );
  convert76 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register75_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert76_dout_net
  );
  convert77 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register67_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert77_dout_net
  );
  convert78 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register81_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert78_dout_net
  );
  convert79 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register80_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert79_dout_net
  );
  convert8 : entity work.dsp_xlconvert 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert8_dout_net
  );
  convert80 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register79_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert80_dout_net
  );
  convert81 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register78_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert81_dout_net
  );
  convert82 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register85_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert82_dout_net
  );
  convert83 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register84_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert83_dout_net
  );
  convert84 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register83_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert84_dout_net
  );
  convert85 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register82_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert85_dout_net
  );
  convert86 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register96_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert86_dout_net
  );
  convert87 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register93_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert87_dout_net
  );
  convert88 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register88_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert88_dout_net
  );
  convert89 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register86_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert89_dout_net
  );
  convert9 : entity work.dsp_xlconvert 
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
    din => register17_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert9_dout_net
  );
  convert90 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register91_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert90_dout_net
  );
  convert91 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register90_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert91_dout_net
  );
  convert92 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register89_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert92_dout_net
  );
  convert93 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register87_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert93_dout_net
  );
  convert94 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register95_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert94_dout_net
  );
  convert95 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register94_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert95_dout_net
  );
  convert96 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 3,
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
    din => register92_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert96_dout_net
  );
  convert97 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register98_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert97_dout_net
  );
  convert98 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register99_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert98_dout_net
  );
  convert99 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 18,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register100_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert99_dout_net
  );
  counter : entity work.sysgen_counter_c5a19dcaf5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  mux1 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant73_op_net,
    d0 => register97_q_net,
    d1 => convert104_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => mux1_y_net
  );
  mux10 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant66_op_net,
    d0 => convert102_dout_net,
    d1 => convert105_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => mux10_y_net
  );
  mux11 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant72_op_net,
    d0 => convert111_dout_net,
    d1 => convert112_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => mux11_y_net
  );
  mux12 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant71_op_net,
    d0 => convert97_dout_net,
    d1 => convert106_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => mux12_y_net
  );
  mux13 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant70_op_net,
    d0 => convert98_dout_net,
    d1 => convert107_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => mux13_y_net
  );
  mux14 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant69_op_net,
    d0 => convert99_dout_net,
    d1 => convert108_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => mux14_y_net
  );
  mux15 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant68_op_net,
    d0 => convert100_dout_net,
    d1 => convert109_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => mux15_y_net
  );
  mux16 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant67_op_net,
    d0 => convert101_dout_net,
    d1 => convert110_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => mux16_y_net
  );
  mux17 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant89_op_net,
    d0 => register126_q_net,
    d1 => convert117_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux17_y_net
  );
  mux18 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant82_op_net,
    d0 => convert115_dout_net,
    d1 => convert118_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux18_y_net
  );
  mux19 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant88_op_net,
    d0 => convert124_dout_net,
    d1 => convert125_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux19_y_net
  );
  mux2 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant8_op_net,
    d0 => register_q_net,
    d1 => convert43_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => mux2_y_net
  );
  mux20 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant87_op_net,
    d0 => convert126_dout_net,
    d1 => convert119_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux20_y_net
  );
  mux21 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant86_op_net,
    d0 => convert127_dout_net,
    d1 => convert120_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux21_y_net
  );
  mux22 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant85_op_net,
    d0 => convert128_dout_net,
    d1 => convert121_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux22_y_net
  );
  mux23 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant84_op_net,
    d0 => convert113_dout_net,
    d1 => convert122_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux23_y_net
  );
  mux24 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant83_op_net,
    d0 => convert114_dout_net,
    d1 => convert123_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux24_y_net
  );
  mux25 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant105_op_net,
    d0 => register142_q_net,
    d1 => convert133_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux25_y_net
  );
  mux27 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant104_op_net,
    d0 => convert140_dout_net,
    d1 => convert141_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux27_y_net
  );
  mux28 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant103_op_net,
    d0 => convert142_dout_net,
    d1 => convert135_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux28_y_net
  );
  mux29 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant102_op_net,
    d0 => convert143_dout_net,
    d1 => convert136_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux29_y_net
  );
  mux3 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant1_op_net,
    d0 => convert26_dout_net,
    d1 => convert44_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => mux3_y_net
  );
  mux30 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant101_op_net,
    d0 => convert144_dout_net,
    d1 => convert137_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux30_y_net
  );
  mux31 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant100_op_net,
    d0 => convert129_dout_net,
    d1 => convert138_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux31_y_net
  );
  mux32 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant99_op_net,
    d0 => convert130_dout_net,
    d1 => convert139_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux32_y_net
  );
  mux4 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant7_op_net,
    d0 => convert5_dout_net_x1,
    d1 => convert50_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => mux4_y_net
  );
  mux5 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant6_op_net,
    d0 => convert21_dout_net,
    d1 => convert45_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => mux5_y_net
  );
  mux6 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant5_op_net,
    d0 => convert22_dout_net,
    d1 => convert46_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => mux6_y_net
  );
  mux7 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant4_op_net,
    d0 => convert23_dout_net,
    d1 => convert47_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => mux7_y_net
  );
  mux8 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant3_op_net,
    d0 => convert24_dout_net,
    d1 => convert48_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => mux8_y_net
  );
  mux9 : entity work.sysgen_mux_abb1c38929 
  port map (
    clr => '0',
    sel => constant2_op_net,
    d0 => convert25_dout_net,
    d1 => convert49_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => mux9_y_net
  );
  register_x0 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => convert3_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register_q_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => logical_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register1_q_net
  );
  register10 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant64_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register10_q_net
  );
  register100 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register12_q_net_x1,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register100_q_net
  );
  register101 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register11_q_net_x1,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register101_q_net
  );
  register102 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register13_q_net_x1,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register102_q_net
  );
  register103 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register14_q_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register103_q_net
  );
  register104 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register12_q_net_x2,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register104_q_net
  );
  register105 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register14_q_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register105_q_net
  );
  register106 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register13_q_net_x2,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register106_q_net
  );
  register107 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register14_q_net_x1,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register107_q_net
  );
  register108 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register12_q_net_x1,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register108_q_net
  );
  register109 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register11_q_net_x1,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register109_q_net
  );
  register11 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant64_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register11_q_net_x3
  );
  register110 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register13_q_net_x1,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register110_q_net
  );
  register111 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register11_q_net_x2,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register111_q_net
  );
  register112 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register11_q_net_x2,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register112_q_net
  );
  register113 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant91_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register113_q_net
  );
  register114 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant92_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register114_q_net
  );
  register115 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant93_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register115_q_net
  );
  register116 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant94_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register116_q_net
  );
  register117 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant32_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register117_q_net
  );
  register118 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant94_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register118_q_net
  );
  register119 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant81_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register119_q_net
  );
  register12 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant64_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register12_q_net_x3
  );
  register120 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant90_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register120_q_net
  );
  register121 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant91_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register121_q_net
  );
  register122 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant92_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register122_q_net
  );
  register123 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant93_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register123_q_net
  );
  register124 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant80_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register124_q_net
  );
  register125 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant80_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register125_q_net
  );
  register126 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => convert116_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register126_q_net
  );
  register127 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant81_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register127_q_net
  );
  register128 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant90_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register128_q_net
  );
  register129 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant75_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register129_q_net
  );
  register13 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant64_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register13_q_net_x3
  );
  register130 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant74_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register130_q_net
  );
  register131 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant112_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register131_q_net
  );
  register133 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant79_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register133_q_net
  );
  register135 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant77_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register135_q_net
  );
  register136 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant76_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register136_q_net
  );
  register137 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant75_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register137_q_net
  );
  register138 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant74_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register138_q_net
  );
  register139 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant112_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register139_q_net
  );
  register14 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant40_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register14_q_net_x3
  );
  register140 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant78_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register140_q_net
  );
  register141 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant78_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register141_q_net
  );
  register142 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => convert132_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register142_q_net
  );
  register143 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant77_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register143_q_net
  );
  register144 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant76_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register144_q_net
  );
  register15 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant39_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register15_q_net
  );
  register16 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant38_op_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register16_q_net
  );
  register17 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant37_op_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register17_q_net
  );
  register18 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant36_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register18_q_net
  );
  register19 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant35_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register19_q_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant31_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register2_q_net
  );
  register20 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant34_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register20_q_net
  );
  register21 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register13_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register21_q_net
  );
  register22 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register14_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register22_q_net
  );
  register23 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register12_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register23_q_net
  );
  register24 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register11_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register24_q_net
  );
  register25 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register13_q_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register25_q_net
  );
  register26 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register14_q_net_x2,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register26_q_net
  );
  register27 : entity work.dsp_xlregister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => nco_sin,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register27_q_net
  );
  register28 : entity work.dsp_xlregister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => nco_sin_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register28_q_net
  );
  register29 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => convert6_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register29_q_net
  );
  register3 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  register30 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => convert5_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register30_q_net
  );
  register31 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => convert1_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register31_q_net
  );
  register32 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => convert5_dout_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register32_q_net
  );
  register33 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant29_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register33_q_net
  );
  register34 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant30_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register34_q_net
  );
  register35 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => relational7_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register35_q_net
  );
  register36 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => relational7_op_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register36_q_net
  );
  register37 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => relational7_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register37_q_net
  );
  register38 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => relational7_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register38_q_net
  );
  register39 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => relational7_op_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register39_q_net
  );
  register4 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant33_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register4_q_net
  );
  register40 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => relational7_op_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register40_q_net
  );
  register41 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant37_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register41_q_net
  );
  register42 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant38_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register42_q_net
  );
  register43 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register12_q_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register43_q_net
  );
  register44 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register14_q_net_x2,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register44_q_net
  );
  register45 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register13_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register45_q_net
  );
  register46 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register14_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register46_q_net
  );
  register47 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register12_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register47_q_net
  );
  register48 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register11_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register48_q_net
  );
  register49 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register13_q_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register49_q_net
  );
  register5 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register11_q_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register5_q_net
  );
  register50 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register11_q_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register50_q_net
  );
  register51 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant48_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register51_q_net
  );
  register52 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant47_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register52_q_net
  );
  register53 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant46_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register53_q_net
  );
  register54 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant45_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register54_q_net
  );
  register55 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant44_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register55_q_net
  );
  register56 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant43_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register56_q_net
  );
  register57 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant42_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register57_q_net
  );
  register58 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant41_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register58_q_net
  );
  register59 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant56_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register59_q_net
  );
  register6 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant64_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register6_q_net
  );
  register60 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant55_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register60_q_net
  );
  register61 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant54_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register61_q_net
  );
  register62 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant53_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register62_q_net
  );
  register63 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant52_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register63_q_net
  );
  register64 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant51_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register64_q_net
  );
  register65 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant50_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register65_q_net
  );
  register66 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant49_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register66_q_net
  );
  register67 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant12_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register67_q_net
  );
  register68 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant63_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register68_q_net
  );
  register69 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant62_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register69_q_net
  );
  register7 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant64_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register7_q_net
  );
  register70 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant61_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register70_q_net
  );
  register71 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant60_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register71_q_net
  );
  register72 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant59_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register72_q_net
  );
  register73 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant58_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register73_q_net
  );
  register74 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant57_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register74_q_net
  );
  register75 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant11_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register75_q_net
  );
  register76 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant10_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register76_q_net
  );
  register77 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant9_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register77_q_net
  );
  register78 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant16_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register78_q_net
  );
  register79 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant15_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register79_q_net
  );
  register8 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant64_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register8_q_net
  );
  register80 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant14_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register80_q_net
  );
  register81 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant13_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register81_q_net
  );
  register82 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant20_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register82_q_net
  );
  register83 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant19_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register83_q_net
  );
  register84 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant18_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register84_q_net
  );
  register85 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant17_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register85_q_net
  );
  register86 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant24_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register86_q_net
  );
  register87 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant28_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register87_q_net
  );
  register88 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant23_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register88_q_net
  );
  register89 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant27_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register89_q_net
  );
  register9 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant64_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register9_q_net
  );
  register90 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant26_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register90_q_net
  );
  register91 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant25_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register91_q_net
  );
  register92 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant65_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register92_q_net
  );
  register93 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant22_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register93_q_net
  );
  register94 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant30_op_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register94_q_net
  );
  register95 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant29_op_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register95_q_net
  );
  register96 : entity work.dsp_xlregister 
  generic map (
    d_width => 3,
    init_value => b"000"
  )
  port map (
    en => "1",
    rst => "0",
    d => constant21_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register96_q_net
  );
  register97 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => convert103_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register97_q_net
  );
  register98 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register13_q_net_x2,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register98_q_net
  );
  register99 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register14_q_net_x1,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register99_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/DDC NCO/four_point_avg1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_four_point_avg1 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_four_point_avg1;
architecture structural of dsp_four_point_avg1 is 
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal cmult_p_net : std_logic_vector( 18-1 downto 0 );
  signal cmult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal cmult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
begin
  out1 <= addsub3_s_net;
  phase <= in1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult_p_net,
    b => cmult1_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult2_p_net,
    b => cmult3_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub2_s_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  cmult : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_bin_pt => 14,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 16,
    c_output_width => 34,
    core_name0 => "dsp_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => phase,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult_p_net
  );
  cmult1 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_bin_pt => 14,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 16,
    c_output_width => 34,
    core_name0 => "dsp_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult1_p_net
  );
  cmult2 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_bin_pt => 14,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 16,
    c_output_width => 34,
    core_name0 => "dsp_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult2_p_net
  );
  cmult3 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_bin_pt => 14,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 16,
    c_output_width => 34,
    core_name0 => "dsp_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult3_p_net
  );
  delay1 : entity work.dsp_xldelay 
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
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/DDC NCO
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_ddc_nco is
  port (
    phase_ctrl : in std_logic_vector( 32-1 downto 0 );
    phase_reset : in std_logic_vector( 1-1 downto 0 );
    flo_c1p2_window : in std_logic_vector( 1-1 downto 0 );
    cav1_p2_if_i : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_q : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    tvalid : out std_logic;
    sine : out std_logic_vector( 26-1 downto 0 );
    cosine : out std_logic_vector( 26-1 downto 0 );
    nco_out_1 : out std_logic_vector( 26-1 downto 0 );
    nco_out_2 : out std_logic_vector( 26-1 downto 0 );
    gateway_out10 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15 : out std_logic_vector( 18-1 downto 0 );
    gateway_out16 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3 : out std_logic_vector( 26-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5 : out std_logic_vector( 26-1 downto 0 );
    gateway_out6 : out std_logic_vector( 18-1 downto 0 );
    gateway_out7 : out std_logic_vector( 34-1 downto 0 );
    gateway_out8 : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_ddc_nco;
architecture structural of dsp_ddc_nco is 
  signal dds_compiler_6_0_m_axis_data_tvalid_net : std_logic;
  signal nco_sin : std_logic_vector( 26-1 downto 0 );
  signal nco_cos : std_logic_vector( 26-1 downto 0 );
  signal down_sample6_q_net : std_logic_vector( 32-1 downto 0 );
  signal register7_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 18-1 downto 0 );
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal fir_compiler_7_2_m_axis_data_tdata_real_net : std_logic_vector( 34-1 downto 0 );
  signal fir_compiler_7_2_m_axis_data_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net_x0 : std_logic;
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tvalid_net : std_logic;
  signal down_sample3_q_net : std_logic;
  signal clock_enable_probe1_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant21_op_net : std_logic_vector( 1-1 downto 0 );
  signal dds_compiler_6_0_s_axis_phase_tready_net : std_logic;
  signal fir_compiler_7_2_s_axis_data_tready_net : std_logic;
begin
  tvalid <= dds_compiler_6_0_m_axis_data_tvalid_net;
  sine <= nco_sin;
  cosine <= nco_cos;
  nco_out_1 <= nco_sin;
  nco_out_2 <= nco_cos;
  down_sample6_q_net <= phase_ctrl;
  register7_q_net <= phase_reset;
  convert2_dout_net <= flo_c1p2_window;
  down_sample1_q_net <= cav1_p2_if_i;
  down_sample_q_net <= cav1_p2_if_q;
  gateway_out10 <= mult2_p_net;
  gateway_out15 <= convert_dout_net;
  gateway_out16 <= convert1_dout_net;
  gateway_out3 <= nco_sin;
  gateway_out4 <= phase;
  gateway_out5 <= nco_cos;
  gateway_out6 <= cordic_6_0_m_axis_dout_tdata_real_net;
  gateway_out7 <= fir_compiler_7_2_m_axis_data_tdata_real_net;
  gateway_out8 <= fir_compiler_7_2_m_axis_data_tvalid_net;
  clk_net_x0 <= clk_1;
  ce_net <= ce_1;
  clk_net <= clk_12;
  ce_net_x0 <= ce_12;
  four_point_avg1_x3 : entity work.dsp_four_point_avg1 
  port map (
    in1 => phase,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    out1 => addsub3_s_net
  );
  cordic_6_0 : entity work.xlcordic_508e230f269385a677d56937823ab702 
  port map (
    s_axis_cartesian_tvalid => down_sample3_q_net,
    s_axis_cartesian_tdata_imag => convert_dout_net,
    s_axis_cartesian_tdata_real => convert1_dout_net,
    clk => clk_net,
    ce => ce_net_x0,
    m_axis_dout_tvalid => cordic_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_phase => phase,
    m_axis_dout_tdata_real => cordic_6_0_m_axis_dout_tdata_real_net
  );
  clock_enable_probe1 : entity work.dsp_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => down_sample_q_net,
    clk => clk_net,
    ce => ce_net_x0,
    q => clock_enable_probe1_q_net
  );
  constant21 : entity work.sysgen_constant_0b5fa36c3d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant21_op_net
  );
  convert : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
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
    din => down_sample_q_net,
    clk => clk_net,
    ce => ce_net_x0,
    dout => convert_dout_net
  );
  convert1 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
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
    din => down_sample1_q_net,
    clk => clk_net,
    ce => ce_net_x0,
    dout => convert1_dout_net
  );
  dds_compiler_6_0 : entity work.xldds_compiler_444acb262cbc67c949c2a465a00fd7f3 
  port map (
    s_axis_phase_tvalid => constant21_op_net(0),
    s_axis_phase_tdata_resync => register7_q_net,
    s_axis_phase_tdata_pinc => down_sample6_q_net,
    m_axis_data_tready => constant21_op_net(0),
    clk => clk_net,
    ce => ce_net_x0,
    s_axis_phase_tready => dds_compiler_6_0_s_axis_phase_tready_net,
    m_axis_data_tvalid => dds_compiler_6_0_m_axis_data_tvalid_net,
    m_axis_data_tdata_sine => nco_sin,
    m_axis_data_tdata_cosine => nco_cos
  );
  down_sample3 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => clock_enable_probe1_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net_x0,
    q(0) => down_sample3_q_net
  );
  fir_compiler_7_2 : entity work.xlfir_compiler_efa33372c7dc03aeedc3e51951561a81 
  port map (
    s_axis_data_tdata_real => mult2_p_net,
    src_clk => clk_net,
    src_ce => ce_net_x0,
    clk => clk_net_x0,
    ce => ce_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    clk_logic_12 => clk_net,
    ce_logic_12 => ce_net_x0,
    s_axis_data_tready => fir_compiler_7_2_s_axis_data_tready_net,
    m_axis_data_tvalid => fir_compiler_7_2_m_axis_data_tvalid_net(0),
    m_axis_data_tdata_real => fir_compiler_7_2_m_axis_data_tdata_real_net
  );
  mult2 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 1,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 1,
    c_a_width => 1,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 1,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 15,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => convert2_dout_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net_x0,
    core_clk => clk_net,
    core_ce => ce_net_x0,
    p => mult2_p_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/IQ_integration
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_iq_integration is
  port (
    cav_windowed_imag : in std_logic_vector( 18-1 downto 0 );
    cav_windowed_real : in std_logic_vector( 18-1 downto 0 );
    ref_windowed_i : in std_logic_vector( 18-1 downto 0 );
    ref_windowed_q : in std_logic_vector( 18-1 downto 0 );
    window_profile : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    cav_int_q : out std_logic_vector( 20-1 downto 0 );
    cav_int_i : out std_logic_vector( 20-1 downto 0 );
    ref_int_i : out std_logic_vector( 20-1 downto 0 );
    ref_int_q : out std_logic_vector( 20-1 downto 0 );
    gateway_out : out std_logic_vector( 1-1 downto 0 );
    gateway_out1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13 : out std_logic_vector( 32-1 downto 0 );
    gateway_out15 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17 : out std_logic_vector( 32-1 downto 0 );
    gateway_out18 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7 : out std_logic_vector( 32-1 downto 0 );
    gateway_out9 : out std_logic_vector( 32-1 downto 0 )
  );
end dsp_iq_integration;
architecture structural of dsp_iq_integration is 
  signal convert10_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert9_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 20-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal register12_q_net : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter3_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator3_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator_q_net : std_logic_vector( 32-1 downto 0 );
  signal accumulator2_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator1_q_net : std_logic_vector( 32-1 downto 0 );
  signal register11_q_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 1-1 downto 0 );
begin
  cav_int_q <= convert10_dout_net;
  cav_int_i <= convert9_dout_net;
  ref_int_i <= convert2_dout_net;
  ref_int_q <= convert4_dout_net;
  mult2_p_net <= cav_windowed_imag;
  mult_p_net <= cav_windowed_real;
  mult4_p_net <= ref_windowed_i;
  mult5_p_net <= ref_windowed_q;
  convert11_dout_net <= window_profile;
  gateway_out <= inverter_op_net;
  gateway_out1 <= convert2_dout_net;
  gateway_out11 <= register1_q_net;
  gateway_out12 <= convert4_dout_net;
  gateway_out13 <= register12_q_net;
  gateway_out15 <= register2_q_net;
  gateway_out16 <= inverter3_op_net;
  gateway_out17 <= accumulator3_q_net;
  gateway_out18 <= register1_q_net;
  gateway_out2 <= inverter2_op_net;
  gateway_out22 <= convert9_dout_net;
  gateway_out23 <= convert10_dout_net;
  gateway_out3 <= accumulator_q_net;
  gateway_out4 <= accumulator2_q_net;
  gateway_out6 <= inverter1_op_net;
  gateway_out7 <= accumulator1_q_net;
  gateway_out9 <= register11_q_net;
  clk_net <= clk_12;
  ce_net <= ce_12;
  accumulator : entity work.sysgen_accum_4cc7c6dd2c 
  port map (
    clr => '0',
    b => mult2_p_net,
    rst => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator_q_net
  );
  accumulator1 : entity work.sysgen_accum_4cc7c6dd2c 
  port map (
    clr => '0',
    b => mult_p_net,
    rst => inverter1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator1_q_net
  );
  accumulator2 : entity work.sysgen_accum_4cc7c6dd2c 
  port map (
    clr => '0',
    b => mult4_p_net,
    rst => inverter2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator2_q_net
  );
  accumulator3 : entity work.sysgen_accum_4cc7c6dd2c 
  port map (
    clr => '0',
    b => mult5_p_net,
    rst => inverter3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator3_q_net
  );
  convert1 : entity work.dsp_xlconvert 
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
    din => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert10 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 18,
    dout_width => 20,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register12_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert10_dout_net
  );
  convert2 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 18,
    dout_width => 20,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity work.dsp_xlconvert 
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
    din => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 18,
    dout_width => 20,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity work.dsp_xlconvert 
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
    din => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert6 : entity work.dsp_xlconvert 
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
    din => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert6_dout_net
  );
  convert9 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 18,
    dout_width => 20,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register11_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert9_dout_net
  );
  inverter : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert5_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert6_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  inverter2 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  inverter3 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter3_op_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => accumulator2_q_net,
    en => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register11 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => accumulator1_q_net,
    en => convert6_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register11_q_net
  );
  register12 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => accumulator_q_net,
    en => convert5_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register12_q_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => accumulator3_q_net,
    en => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/IQ_integration1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_iq_integration1 is
  port (
    cav_windowed_imag : in std_logic_vector( 18-1 downto 0 );
    cav_windowed_real : in std_logic_vector( 18-1 downto 0 );
    ref_windowed_i : in std_logic_vector( 18-1 downto 0 );
    ref_windowed_q : in std_logic_vector( 18-1 downto 0 );
    window_profile : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    cav_int_q : out std_logic_vector( 20-1 downto 0 );
    cav_int_i : out std_logic_vector( 20-1 downto 0 );
    ref_int_i : out std_logic_vector( 20-1 downto 0 );
    ref_int_q : out std_logic_vector( 20-1 downto 0 );
    gateway_out : out std_logic_vector( 1-1 downto 0 );
    gateway_out1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13 : out std_logic_vector( 32-1 downto 0 );
    gateway_out15 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7 : out std_logic_vector( 32-1 downto 0 );
    gateway_out9 : out std_logic_vector( 32-1 downto 0 )
  );
end dsp_iq_integration1;
architecture structural of dsp_iq_integration1 is 
  signal convert9_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert10_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 20-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal register12_q_net : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter3_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator3_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator_q_net : std_logic_vector( 32-1 downto 0 );
  signal accumulator2_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator1_q_net : std_logic_vector( 32-1 downto 0 );
  signal register11_q_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 1-1 downto 0 );
begin
  cav_int_q <= convert10_dout_net;
  cav_int_i <= convert9_dout_net;
  ref_int_i <= convert2_dout_net;
  ref_int_q <= convert4_dout_net;
  mult2_p_net <= cav_windowed_imag;
  mult_p_net <= cav_windowed_real;
  mult4_p_net <= ref_windowed_i;
  mult5_p_net <= ref_windowed_q;
  convert11_dout_net <= window_profile;
  gateway_out <= inverter_op_net;
  gateway_out1 <= convert2_dout_net;
  gateway_out11 <= register1_q_net;
  gateway_out12 <= convert4_dout_net;
  gateway_out13 <= register12_q_net;
  gateway_out15 <= register2_q_net;
  gateway_out16 <= inverter3_op_net;
  gateway_out17 <= accumulator3_q_net;
  gateway_out2 <= inverter2_op_net;
  gateway_out22 <= convert9_dout_net;
  gateway_out23 <= convert10_dout_net;
  gateway_out3 <= accumulator_q_net;
  gateway_out4 <= accumulator2_q_net;
  gateway_out6 <= inverter1_op_net;
  gateway_out7 <= accumulator1_q_net;
  gateway_out9 <= register11_q_net;
  clk_net <= clk_12;
  ce_net <= ce_12;
  accumulator : entity work.sysgen_accum_4cc7c6dd2c 
  port map (
    clr => '0',
    b => mult2_p_net,
    rst => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator_q_net
  );
  accumulator1 : entity work.sysgen_accum_4cc7c6dd2c 
  port map (
    clr => '0',
    b => mult_p_net,
    rst => inverter1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator1_q_net
  );
  accumulator2 : entity work.sysgen_accum_4cc7c6dd2c 
  port map (
    clr => '0',
    b => mult4_p_net,
    rst => inverter2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator2_q_net
  );
  accumulator3 : entity work.sysgen_accum_4cc7c6dd2c 
  port map (
    clr => '0',
    b => mult5_p_net,
    rst => inverter3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator3_q_net
  );
  convert1 : entity work.dsp_xlconvert 
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
    din => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert10 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 18,
    dout_width => 20,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register12_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert10_dout_net
  );
  convert2 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 18,
    dout_width => 20,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity work.dsp_xlconvert 
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
    din => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 18,
    dout_width => 20,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity work.dsp_xlconvert 
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
    din => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert6 : entity work.dsp_xlconvert 
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
    din => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert6_dout_net
  );
  convert9 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 18,
    dout_width => 20,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register11_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert9_dout_net
  );
  inverter : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert5_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert6_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  inverter2 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  inverter3 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter3_op_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => accumulator2_q_net,
    en => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register11 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => accumulator1_q_net,
    en => convert6_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register11_q_net
  );
  register12 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => accumulator_q_net,
    en => convert5_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register12_q_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => accumulator3_q_net,
    en => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Masking_n_delay
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_masking_n_delay_x0 is
  port (
    phi_reset_trig : in std_logic_vector( 1-1 downto 0 );
    start_pt : in std_logic_vector( 16-1 downto 0 );
    stop_pt : in std_logic_vector( 16-1 downto 0 );
    delay_amt : in std_logic_vector( 16-1 downto 0 );
    delay_latch : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    trig_reset : out std_logic_vector( 1-1 downto 0 );
    counter_x0 : out std_logic_vector( 16-1 downto 0 );
    eval_window : out std_logic_vector( 1-1 downto 0 );
    integral_trig : out std_logic_vector( 1-1 downto 0 );
    flo_window : out std_logic_vector( 1-1 downto 0 );
    stream_valid : out std_logic_vector( 1-1 downto 0 );
    delay_val : out std_logic_vector( 16-1 downto 0 );
    gateway_out1 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out4 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7 : out std_logic_vector( 1-1 downto 0 );
    gateway_out8 : out std_logic_vector( 1-1 downto 0 );
    gateway_out9 : out std_logic_vector( 16-1 downto 0 )
  );
end dsp_masking_n_delay_x0;
architecture structural of dsp_masking_n_delay_x0 is 
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal relational7_op_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 16-1 downto 0 );
  signal down_sample2_q_net : std_logic_vector( 1-1 downto 0 );
  signal register33_q_net : std_logic_vector( 16-1 downto 0 );
  signal register34_q_net : std_logic_vector( 16-1 downto 0 );
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 16-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal register10_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert8_dout_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 16-1 downto 0 );
  signal down_sample2_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 16-1 downto 0 );
  signal register5_q_net : std_logic_vector( 16-1 downto 0 );
  signal register6_q_net : std_logic_vector( 16-1 downto 0 );
  signal relational6_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
begin
  trig_reset <= convert3_dout_net;
  counter_x0 <= counter_op_net;
  eval_window <= convert11_dout_net;
  integral_trig <= convert5_dout_net;
  flo_window <= convert2_dout_net;
  stream_valid <= relational7_op_net;
  delay_val <= register_q_net;
  down_sample2_q_net <= phi_reset_trig;
  register33_q_net <= start_pt;
  register34_q_net <= stop_pt;
  register2_q_net <= delay_amt;
  delay2_q_net <= delay_latch;
  gateway_out1 <= delay5_q_net;
  gateway_out2 <= delay3_q_net;
  gateway_out27 <= relational4_op_net;
  gateway_out28 <= relational3_op_net;
  gateway_out29 <= convert11_dout_net;
  gateway_out3 <= convert7_dout_net;
  gateway_out4 <= counter_op_net;
  gateway_out5 <= convert5_dout_net;
  gateway_out6 <= convert3_dout_net;
  gateway_out7 <= register1_q_net;
  gateway_out8 <= convert2_dout_net;
  gateway_out9 <= delay8_q_net;
  clk_net_x0 <= clk_1;
  ce_net_x0 <= ce_1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "dsp_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => delay3_q_net,
    b => constant11_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub4 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "dsp_c_addsub_v12_0_i1",
    en_arith => xlUnsigned,
    en_bin_pt => 0,
    en_width => 1,
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    a => register_q_net,
    b => register2_q_net,
    en => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  constant1 : entity work.sysgen_constant_b2ceed5a46 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant11 : entity work.sysgen_constant_9a84ae6da1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant11_op_net
  );
  constant2 : entity work.sysgen_constant_6f518e0398 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity work.sysgen_constant_284465ef96 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  convert11 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
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
    din => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert11_dout_net
  );
  convert2 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
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
    din => logical2_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity work.dsp_xlconvert 
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
    din => register10_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert5 : entity work.dsp_xlconvert 
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
    din => relational5_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert7 : entity work.dsp_xlconvert 
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
    din => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert7_dout_net
  );
  convert8 : entity work.dsp_xlconvert 
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
    din => relational4_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert8_dout_net
  );
  counter : entity work.dsp_xlcounter_free 
  generic map (
    core_name0 => "dsp_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 16
  )
  port map (
    clr => '0',
    rst => convert3_dout_net,
    en => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => down_sample1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net_x0
  );
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => down_sample2_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity work.dsp_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  delay7 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay7_q_net
  );
  down_sample1 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 16,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 16
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register5_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample1_q_net
  );
  down_sample2 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 16,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 16
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register6_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample2_q_net_x0
  );
  logical1 : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => convert8_dout_net,
    d1 => convert7_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical2 : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => relational6_op_net,
    d1 => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net
  );
  register_x0 : entity work.dsp_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000101100"
  )
  port map (
    rst => "0",
    d => addsub4_s_net,
    en => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => convert3_dout_net,
    en => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register10 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register10_q_net
  );
  register5 : entity work.dsp_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register33_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register5_q_net
  );
  register6 : entity work.dsp_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000001100100"
  )
  port map (
    en => "1",
    rst => "0",
    d => register34_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register6_q_net
  );
  relational1 : entity work.sysgen_relational_f85cc5971b 
  port map (
    clr => '0',
    a => delay7_q_net,
    b => constant2_op_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity work.sysgen_relational_23c51632d4 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  relational3 : entity work.sysgen_relational_f85cc5971b 
  port map (
    clr => '0',
    a => delay4_q_net,
    b => delay3_q_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
  relational4 : entity work.sysgen_relational_05a57d317e 
  port map (
    clr => '0',
    a => delay1_q_net,
    b => delay2_q_net_x0,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational4_op_net
  );
  relational5 : entity work.sysgen_relational_f85cc5971b 
  port map (
    clr => '0',
    a => counter_op_net,
    b => addsub1_s_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational5_op_net
  );
  relational6 : entity work.sysgen_relational_05a57d317e 
  port map (
    clr => '0',
    a => delay6_q_net,
    b => constant3_op_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational6_op_net
  );
  relational7 : entity work.sysgen_relational_cb99e2a0a4 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational7_op_net
  );
  delay8 : entity work.dsp_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay8_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/PA_conversion1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_pa_conversion1 is
  port (
    cav_int_q : in std_logic_vector( 20-1 downto 0 );
    cav_int_i : in std_logic_vector( 20-1 downto 0 );
    ref_int_q : in std_logic_vector( 20-1 downto 0 );
    ref_int_i : in std_logic_vector( 20-1 downto 0 );
    integration_trig : in std_logic_vector( 1-1 downto 0 );
    cal_coefficient : in std_logic_vector( 18-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    phi_diff : out std_logic_vector( 18-1 downto 0 );
    ref_phi_out : out std_logic_vector( 18-1 downto 0 );
    ref_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav_phi_out : out std_logic_vector( 18-1 downto 0 );
    cav_amp_out : out std_logic_vector( 18-1 downto 0 );
    gateway_out : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_pa_conversion1;
architecture structural of dsp_pa_conversion1 is 
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter3_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter4_op_net : std_logic_vector( 1-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net : std_logic_vector( 18-1 downto 0 );
  signal register13_q_net : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert10_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert9_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal down_sample7_q_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_1_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_1_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_1_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
begin
  phi_diff <= addsub_s_net;
  ref_phi_out <= register11_q_net;
  ref_amp_out <= register12_q_net;
  cav_phi_out <= register13_q_net;
  cav_amp_out <= register14_q_net;
  convert10_dout_net <= cav_int_q;
  convert9_dout_net <= cav_int_i;
  convert4_dout_net <= ref_int_q;
  convert2_dout_net <= ref_int_i;
  convert5_dout_net <= integration_trig;
  down_sample7_q_net <= cal_coefficient;
  gateway_out <= cordic_6_0_2_m_axis_dout_tvalid_net;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub1_s_net,
    b => register11_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 17,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 21,
    core_name0 => "dsp_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 21,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => register13_q_net,
    b => down_sample7_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  cordic_6_0_1 : entity work.xlcordic_ed33df41e5c40f9ca57299f65da9e20e 
  port map (
    s_axis_cartesian_tvalid => convert5_dout_net(0),
    s_axis_cartesian_tdata_imag => convert10_dout_net,
    s_axis_cartesian_tdata_real => convert9_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_1_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_phase => cordic_6_0_1_m_axis_dout_tdata_phase_net,
    m_axis_dout_tdata_real => cordic_6_0_1_m_axis_dout_tdata_real_net
  );
  cordic_6_0_2 : entity work.xlcordic_ed33df41e5c40f9ca57299f65da9e20e 
  port map (
    s_axis_cartesian_tvalid => convert5_dout_net(0),
    s_axis_cartesian_tdata_imag => convert4_dout_net,
    s_axis_cartesian_tdata_real => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_2_m_axis_dout_tvalid_net(0),
    m_axis_dout_tdata_phase => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    m_axis_dout_tdata_real => cordic_6_0_2_m_axis_dout_tdata_real_net
  );
  delay : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_1_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_1_m_axis_dout_tdata_phase_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_2_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  inverter1 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => cordic_6_0_2_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  inverter2 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip(0) => cordic_6_0_1_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  inverter3 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip(0) => cordic_6_0_1_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter3_op_net
  );
  inverter4 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => cordic_6_0_2_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter4_op_net
  );
  register11 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay3_q_net,
    en => inverter1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register11_q_net
  );
  register12 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay2_q_net,
    en => inverter4_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register12_q_net
  );
  register13 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => inverter2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register13_q_net
  );
  register14 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => inverter3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register14_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/PA_conversion2
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_pa_conversion2 is
  port (
    cav_int_q : in std_logic_vector( 20-1 downto 0 );
    cav_int_i : in std_logic_vector( 20-1 downto 0 );
    ref_int_q : in std_logic_vector( 20-1 downto 0 );
    ref_int_i : in std_logic_vector( 20-1 downto 0 );
    integration_trig : in std_logic_vector( 1-1 downto 0 );
    cal_coefficient : in std_logic_vector( 18-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    phi_diff : out std_logic_vector( 18-1 downto 0 );
    ref_phi_out : out std_logic_vector( 18-1 downto 0 );
    ref_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav_phi_out : out std_logic_vector( 18-1 downto 0 );
    cav_amp_out : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_pa_conversion2;
architecture structural of dsp_pa_conversion2 is 
  signal register11_q_net : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net : std_logic_vector( 18-1 downto 0 );
  signal register13_q_net : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert10_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert9_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal down_sample3_q_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_1_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_1_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_1_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter3_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter4_op_net : std_logic_vector( 1-1 downto 0 );
begin
  phi_diff <= addsub_s_net;
  ref_phi_out <= register11_q_net;
  ref_amp_out <= register12_q_net;
  cav_phi_out <= register13_q_net;
  cav_amp_out <= register14_q_net;
  convert10_dout_net <= cav_int_q;
  convert9_dout_net <= cav_int_i;
  convert4_dout_net <= ref_int_q;
  convert2_dout_net <= ref_int_i;
  convert5_dout_net <= integration_trig;
  down_sample3_q_net <= cal_coefficient;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub1_s_net,
    b => register11_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 17,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 21,
    core_name0 => "dsp_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 21,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => register13_q_net,
    b => down_sample3_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  cordic_6_0_1 : entity work.xlcordic_ed33df41e5c40f9ca57299f65da9e20e 
  port map (
    s_axis_cartesian_tvalid => convert5_dout_net(0),
    s_axis_cartesian_tdata_imag => convert10_dout_net,
    s_axis_cartesian_tdata_real => convert9_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_1_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_phase => cordic_6_0_1_m_axis_dout_tdata_phase_net,
    m_axis_dout_tdata_real => cordic_6_0_1_m_axis_dout_tdata_real_net
  );
  cordic_6_0_2 : entity work.xlcordic_ed33df41e5c40f9ca57299f65da9e20e 
  port map (
    s_axis_cartesian_tvalid => convert5_dout_net(0),
    s_axis_cartesian_tdata_imag => convert4_dout_net,
    s_axis_cartesian_tdata_real => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_2_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_phase => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    m_axis_dout_tdata_real => cordic_6_0_2_m_axis_dout_tdata_real_net
  );
  delay : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_1_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_1_m_axis_dout_tdata_phase_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_2_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  inverter1 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip(0) => cordic_6_0_2_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  inverter2 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip(0) => cordic_6_0_1_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  inverter3 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip(0) => cordic_6_0_1_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter3_op_net
  );
  inverter4 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip(0) => cordic_6_0_2_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter4_op_net
  );
  register11 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay3_q_net,
    en => inverter1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register11_q_net
  );
  register12 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay2_q_net,
    en => inverter4_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register12_q_net
  );
  register13 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => inverter2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register13_q_net
  );
  register14 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => inverter3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register14_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem1/Channel Select3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_channel_select3_x0 is
  port (
    in0 : in std_logic_vector( 18-1 downto 0 );
    in1 : in std_logic_vector( 18-1 downto 0 );
    in2 : in std_logic_vector( 1-1 downto 0 );
    ch_id : in std_logic_vector( 4-1 downto 0 );
    ch_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out0 : out std_logic_vector( 18-1 downto 0 );
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_channel_select3_x0;
architecture structural of dsp_channel_select3_x0 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ddci : std_logic_vector( 18-1 downto 0 );
  signal ddcq : std_logic_vector( 18-1 downto 0 );
  signal ddcsync : std_logic_vector( 1-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
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
  ddcsync <= in2;
  ddcchannel <= ch_id;
  register30_q_net <= ch_sel;
  clk_net_x0 <= clk_1;
  ce_net_x0 <= ce_1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  constant13 : entity work.sysgen_constant_ddcd7f6a05 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  delay : entity work.dsp_xldelay 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay_q_net
  );
  delay1 : entity work.dsp_xldelay 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay1_q_net
  );
  down_sample : entity work.dsp_xldsamp 
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
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity work.dsp_xldsamp 
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
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample1_q_net
  );
  register_x0 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => relational_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register_q_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => relational_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register1_q_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register1_q_net,
    en => register6_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register2_q_net
  );
  register3 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register_q_net,
    en => register6_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register3_q_net
  );
  register6 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => last,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_bc41c4add6 
  port map (
    clr => '0',
    a => ddcchannel,
    b => register30_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_bc41c4add6 
  port map (
    clr => '0',
    a => ddcchannel,
    b => constant13_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem1_x2 is
  port (
    iq_stream_in_1 : in std_logic_vector( 18-1 downto 0 );
    iq_chan_sel : in std_logic_vector( 4-1 downto 0 );
    iq_stream_in_2 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_in_3 : in std_logic_vector( 4-1 downto 0 );
    iq_stream_in_4 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    ddci : out std_logic_vector( 18-1 downto 0 );
    ddcq : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_subsystem1_x2;
architecture structural of dsp_subsystem1_x2 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ddci_x0 : std_logic_vector( 18-1 downto 0 );
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal ddcsync : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
begin
  ddci <= down_sample1_q_net;
  ddcq <= down_sample_q_net;
  ddci_x0 <= iq_stream_in_1;
  register30_q_net <= iq_chan_sel;
  ddcq_x0 <= iq_stream_in_2;
  ddcchannel <= iq_stream_in_3;
  ddcsync <= iq_stream_in_4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clk_net_x0 <= clk_12;
  ce_net_x0 <= ce_12;
  channel_select3 : entity work.dsp_channel_select3_x0 
  port map (
    in0 => ddci_x0,
    in1 => ddcq_x0,
    in2 => ddcsync,
    ch_id => ddcchannel,
    ch_sel => register30_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => clk_net_x0,
    ce_12 => ce_net_x0,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem2/freq_err1/delta_phi/phase_latching
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_phase_latching_x2 is
  port (
    phase : in std_logic_vector( 18-1 downto 0 );
    window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    stop_value : out std_logic_vector( 18-1 downto 0 );
    start_value : out std_logic_vector( 18-1 downto 0 );
    gateway_out1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_phase_latching_x2;
architecture structural of dsp_phase_latching_x2 is 
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 2-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 2-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  stop_value <= register1_q_net;
  start_value <= register_q_net;
  mult3_p_net <= phase;
  convert2_dout_net <= window;
  convert3_dout_net <= reset;
  gateway_out1 <= relational1_op_net;
  gateway_out2 <= delay5_q_net;
  gateway_out3 <= register_q_net;
  gateway_out4 <= register1_q_net;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub1 : entity work.sysgen_addsub_7574ef6005 
  port map (
    clr => '0',
    a => convert2_dout_net,
    b => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity work.sysgen_addsub_7574ef6005 
  port map (
    clr => '0',
    a => delay6_q_net,
    b => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  constant2 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  delay4 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  register_x0 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    d => mult3_p_net,
    rst => convert3_dout_net,
    en => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    d => mult3_p_net,
    rst => convert3_dout_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational : entity work.sysgen_relational_a5f9590f9b 
  port map (
    clr => '0',
    a => addsub1_s_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_a5f9590f9b 
  port map (
    clr => '0',
    a => addsub2_s_net,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem2/freq_err1/delta_phi
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_delta_phi_x2 is
  port (
    phase : in std_logic_vector( 18-1 downto 0 );
    window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    d_phi : out std_logic_vector( 32-1 downto 0 );
    gateway_out27 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_delta_phi_x2;
architecture structural of dsp_delta_phi_x2 is 
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 19-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  d_phi <= mult1_p_net;
  mult3_p_net <= phase;
  convert2_dout_net <= window;
  convert3_dout_net <= reset;
  gateway_out27 <= addsub3_s_net;
  gateway_out28 <= register_q_net;
  gateway_out29 <= register1_q_net;
  gateway_out3 <= mult1_p_net;
  gateway_out1 <= relational1_op_net;
  gateway_out2 <= delay5_q_net;
  gateway_out3_x0 <= register_q_net;
  gateway_out4 <= register1_q_net;
  clk_net <= clk_12;
  ce_net <= ce_12;
  phase_latching : entity work.dsp_phase_latching_x2 
  port map (
    phase => mult3_p_net,
    window => convert2_dout_net,
    reset => convert3_dout_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    stop_value => register1_q_net,
    start_value => register_q_net,
    gateway_out1 => relational1_op_net,
    gateway_out2 => delay5_q_net,
    gateway_out3 => register_q_net,
    gateway_out4 => register1_q_net
  );
  addsub3 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i2",
    en_arith => xlUnsigned,
    en_bin_pt => 0,
    en_width => 1,
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 19
  )
  port map (
    clr => '0',
    a => register1_q_net,
    b => register_q_net,
    en => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  constant4 : entity work.sysgen_constant_803072cb09 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  convert1 : entity work.dsp_xlconvert 
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
    din => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  inverter : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  mult1 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 19,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 19,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 19,
    c_output_width => 37,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i4",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 30,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub3_s_net,
    b => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem2/freq_err1/delta_t
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_delta_t_x2 is
  port (
    window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    dt : out std_logic_vector( 32-1 downto 0 );
    gateway_out1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2 : out std_logic_vector( 10-1 downto 0 )
  );
end dsp_delta_t_x2;
architecture structural of dsp_delta_t_x2 is 
  signal mult_p_net : std_logic_vector( 32-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net : std_logic_vector( 10-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant5_op_net : std_logic_vector( 32-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 10-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  dt <= mult_p_net;
  convert2_dout_net <= window;
  convert3_dout_net <= reset;
  gateway_out1 <= mult_p_net;
  gateway_out2 <= register2_q_net;
  clk_net <= clk_12;
  ce_net <= ce_12;
  constant5 : entity work.sysgen_constant_2a802540ac 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  convert1 : entity work.dsp_xlconvert 
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
    din => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  counter2 : entity work.dsp_xlcounter_free 
  generic map (
    core_name0 => "dsp_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    clr => '0',
    rst => convert3_dout_net,
    en => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  inverter : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  mult : entity work.dsp_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 10,
    b_arith => xlUnsigned,
    b_bin_pt => 32,
    b_width => 32,
    c_a_type => 1,
    c_a_width => 10,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 10,
    c_output_width => 42,
    c_type => 1,
    core_name0 => "dsp_mult_gen_v12_0_i5",
    extra_registers => 1,
    multsign => 1,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 32,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => register2_q_net,
    b => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 10,
    init_value => b"0000000000"
  )
  port map (
    d => counter2_op_net,
    rst => convert3_dout_net,
    en => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem2/freq_err1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_freq_err1_x2 is
  port (
    raw_phase : in std_logic_vector( 18-1 downto 0 );
    window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    c1p2_pt_cntr : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    nco_err : out std_logic_vector( 32-1 downto 0 );
    freq_err : out std_logic_vector( 32-1 downto 0 );
    gateway_out11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out27 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x0 : out std_logic_vector( 10-1 downto 0 )
  );
end dsp_freq_err1_x2;
architecture structural of dsp_freq_err1_x2 is 
  signal convert_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 19-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 10-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net_x0 : std_logic;
  signal constant8_op_net : std_logic_vector( 26-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 96-1 downto 0 );
  signal divide_op_net : std_logic_vector( 63-1 downto 0 );
  signal divide1_op_net : std_logic_vector( 96-1 downto 0 );
begin
  nco_err <= convert_dout_net;
  freq_err <= convert1_dout_net;
  cordic_6_0_2_m_axis_dout_tdata_phase_net <= raw_phase;
  convert2_dout_net <= window;
  convert3_dout_net_x0 <= reset;
  counter_op_net <= c1p2_pt_cntr;
  gateway_out11 <= convert_dout_net;
  gateway_out19 <= mult3_p_net;
  gateway_out5_x0 <= convert1_dout_net;
  gateway_out27 <= addsub3_s_net;
  gateway_out28 <= register_q_net;
  gateway_out29 <= register1_q_net;
  gateway_out3_x0 <= mult1_p_net;
  gateway_out <= mult3_p_net;
  gateway_out1_x0 <= relational1_op_net;
  gateway_out2 <= delay5_q_net;
  gateway_out3 <= register_q_net;
  gateway_out4 <= register1_q_net;
  gateway_out5 <= convert3_dout_net;
  gateway_out1 <= mult_p_net;
  gateway_out2_x0 <= register2_q_net;
  clk_net_x0 <= clk_1;
  ce_net <= ce_1;
  clk_net <= clk_12;
  ce_net_x0 <= ce_12;
  delta_phi : entity work.dsp_delta_phi_x2 
  port map (
    phase => mult3_p_net,
    window => convert2_dout_net,
    reset => convert3_dout_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    d_phi => mult1_p_net,
    gateway_out27 => addsub3_s_net,
    gateway_out28 => register_q_net,
    gateway_out29 => register1_q_net,
    gateway_out3 => mult1_p_net,
    gateway_out1 => relational1_op_net,
    gateway_out2 => delay5_q_net,
    gateway_out3_x0 => register_q_net,
    gateway_out4 => register1_q_net
  );
  delta_t : entity work.dsp_delta_t_x2 
  port map (
    window => convert2_dout_net,
    reset => convert3_dout_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    dt => mult_p_net,
    gateway_out1 => mult_p_net,
    gateway_out2 => register2_q_net
  );
  constant8 : entity work.sysgen_constant_912aa38159 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  convert : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 33,
    din_width => 96,
    dout_arith => 2,
    dout_bin_pt => 32,
    dout_width => 32,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => down_sample_q_net,
    clk => clk_net,
    ce => ce_net_x0,
    dout => convert_dout_net
  );
  convert1 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 31,
    din_width => 63,
    dout_arith => 2,
    dout_bin_pt => 10,
    dout_width => 32,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => divide_op_net,
    clk => clk_net_x0,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert3 : entity work.dsp_xlconvert 
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
    din => convert3_dout_net_x0,
    clk => clk_net,
    ce => ce_net_x0,
    dout => convert3_dout_net
  );
  divide : entity work.xldivider_generator_6dbb83f3f73569f6ccb183eb64606384 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => mult1_p_net,
    b => mult_p_net,
    clk => clk_net_x0,
    ce => ce_net,
    op => divide_op_net
  );
  divide1 : entity work.xldivider_generator_2ace49429baf61df4bf778f752b8034f 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => divide_op_net,
    b => constant8_op_net,
    clk => clk_net_x0,
    ce => ce_net,
    op => divide1_op_net
  );
  down_sample : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 33,
    d_width => 96,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 33,
    q_width => 96
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => divide1_op_net,
    src_clk => clk_net_x0,
    src_ce => ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net_x0,
    q => down_sample_q_net
  );
  mult3 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 1,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_a_type => 1,
    c_a_width => 1,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 1,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i3",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 15,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => convert2_dout_net,
    b => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    clk => clk_net,
    ce => ce_net_x0,
    core_clk => clk_net,
    core_ce => ce_net_x0,
    p => mult3_p_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem2_x3 is
  port (
    imag : in std_logic_vector( 18-1 downto 0 );
    real : in std_logic_vector( 18-1 downto 0 );
    flo_window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    c1p2_pt_cntr : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    nco_err_fb : out std_logic_vector( 32-1 downto 0 );
    freq_err : out std_logic_vector( 32-1 downto 0 );
    gateway_out1_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out27 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2 : out std_logic_vector( 10-1 downto 0 )
  );
end dsp_subsystem2_x3;
architecture structural of dsp_subsystem2_x3 is 
  signal convert_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 19-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 10-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net_x0 : std_logic;
  signal cordic_6_0_2_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_2_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample5_q_net : std_logic;
  signal clock_enable_probe4_q_net : std_logic_vector( 1-1 downto 0 );
begin
  nco_err_fb <= convert_dout_net;
  freq_err <= convert1_dout_net;
  mult2_p_net <= imag;
  mult_p_net <= real;
  convert2_dout_net <= flo_window;
  convert3_dout_net <= reset;
  counter_op_net <= c1p2_pt_cntr;
  gateway_out1_x0 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out11 <= convert_dout_net;
  gateway_out19 <= mult3_p_net;
  gateway_out2_x0 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out3 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out5_x0 <= convert1_dout_net;
  gateway_out27 <= addsub3_s_net;
  gateway_out28 <= register_q_net;
  gateway_out29 <= register1_q_net;
  gateway_out3_x1 <= mult1_p_net;
  gateway_out <= mult3_p_net;
  gateway_out1_x1 <= relational1_op_net;
  gateway_out2_x1 <= delay5_q_net;
  gateway_out3_x0 <= register_q_net;
  gateway_out4 <= register1_q_net;
  gateway_out5 <= convert3_dout_net_x0;
  gateway_out1 <= mult_p_net_x0;
  gateway_out2 <= register2_q_net;
  clk_net_x0 <= clk_1;
  ce_net <= ce_1;
  clk_net <= clk_12;
  ce_net_x0 <= ce_12;
  freq_err1 : entity work.dsp_freq_err1_x2 
  port map (
    raw_phase => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    window => convert2_dout_net,
    reset => convert3_dout_net,
    c1p2_pt_cntr => counter_op_net,
    clk_1 => clk_net_x0,
    ce_1 => ce_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    nco_err => convert_dout_net,
    freq_err => convert1_dout_net,
    gateway_out11 => convert_dout_net,
    gateway_out19 => mult3_p_net,
    gateway_out5_x0 => convert1_dout_net,
    gateway_out27 => addsub3_s_net,
    gateway_out28 => register_q_net,
    gateway_out29 => register1_q_net,
    gateway_out3_x0 => mult1_p_net,
    gateway_out => mult3_p_net,
    gateway_out1_x0 => relational1_op_net,
    gateway_out2 => delay5_q_net,
    gateway_out3 => register_q_net,
    gateway_out4 => register1_q_net,
    gateway_out5 => convert3_dout_net_x0,
    gateway_out1 => mult_p_net_x0,
    gateway_out2_x0 => register2_q_net
  );
  cordic_6_0_2 : entity work.xlcordic_508e230f269385a677d56937823ab702 
  port map (
    s_axis_cartesian_tvalid => down_sample5_q_net,
    s_axis_cartesian_tdata_imag => mult2_p_net,
    s_axis_cartesian_tdata_real => mult_p_net,
    clk => clk_net,
    ce => ce_net_x0,
    m_axis_dout_tvalid => cordic_6_0_2_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_phase => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    m_axis_dout_tdata_real => cordic_6_0_2_m_axis_dout_tdata_real_net
  );
  clock_enable_probe4 : entity work.dsp_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => mult2_p_net,
    clk => clk_net,
    ce => ce_net_x0,
    q => clock_enable_probe4_q_net
  );
  down_sample5 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => clock_enable_probe4_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net_x0,
    q(0) => down_sample5_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem3/Channel Select3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_channel_select3 is
  port (
    in0 : in std_logic_vector( 18-1 downto 0 );
    in1 : in std_logic_vector( 18-1 downto 0 );
    in2 : in std_logic_vector( 1-1 downto 0 );
    ch_id : in std_logic_vector( 4-1 downto 0 );
    ch_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out0 : out std_logic_vector( 18-1 downto 0 );
    out1 : out std_logic_vector( 18-1 downto 0 );
    out2 : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_channel_select3;
architecture structural of dsp_channel_select3 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample2_q_net : std_logic_vector( 1-1 downto 0 );
  signal ddci : std_logic_vector( 18-1 downto 0 );
  signal ddcq : std_logic_vector( 18-1 downto 0 );
  signal ddcsync : std_logic_vector( 1-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant13_op_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal register5_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal register4_q_net : std_logic_vector( 1-1 downto 0 );
  signal last : std_logic_vector( 1-1 downto 0 );
begin
  out0 <= down_sample1_q_net;
  out1 <= down_sample_q_net;
  out2 <= down_sample2_q_net;
  ddci <= in0;
  ddcq <= in1;
  ddcsync <= in2;
  ddcchannel <= ch_id;
  register29_q_net <= ch_sel;
  clk_net_x0 <= clk_1;
  ce_net_x0 <= ce_1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  constant13 : entity work.sysgen_constant_ddcd7f6a05 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  delay : entity work.dsp_xldelay 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay_q_net
  );
  delay1 : entity work.dsp_xldelay 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => ddcsync,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay2_q_net
  );
  down_sample : entity work.dsp_xldsamp 
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
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity work.dsp_xldsamp 
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
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample1_q_net
  );
  down_sample2 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register5_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample2_q_net
  );
  register_x0 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => relational_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register_q_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => relational_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register1_q_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register1_q_net,
    en => register6_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register2_q_net
  );
  register3 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register_q_net,
    en => register6_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register3_q_net
  );
  register4 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => delay2_q_net,
    en => relational_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register4_q_net
  );
  register5 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => register4_q_net,
    en => register6_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register5_q_net
  );
  register6 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => last,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_bc41c4add6 
  port map (
    clr => '0',
    a => ddcchannel,
    b => register29_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_bc41c4add6 
  port map (
    clr => '0',
    a => ddcchannel,
    b => constant13_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem3_x2 is
  port (
    iq_stream_in_1 : in std_logic_vector( 18-1 downto 0 );
    iq_chan_sel : in std_logic_vector( 4-1 downto 0 );
    iq_stream_in_2 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_in_3 : in std_logic_vector( 4-1 downto 0 );
    iq_stream_in_4 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    ddci : out std_logic_vector( 18-1 downto 0 );
    ddcq : out std_logic_vector( 18-1 downto 0 );
    sync : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_subsystem3_x2;
architecture structural of dsp_subsystem3_x2 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample2_q_net : std_logic_vector( 1-1 downto 0 );
  signal ddci_x0 : std_logic_vector( 18-1 downto 0 );
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal ddcsync : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
begin
  ddci <= down_sample1_q_net;
  ddcq <= down_sample_q_net;
  sync <= down_sample2_q_net;
  ddci_x0 <= iq_stream_in_1;
  register29_q_net <= iq_chan_sel;
  ddcq_x0 <= iq_stream_in_2;
  ddcchannel <= iq_stream_in_3;
  ddcsync <= iq_stream_in_4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clk_net_x0 <= clk_12;
  ce_net_x0 <= ce_12;
  channel_select3 : entity work.dsp_channel_select3 
  port map (
    in0 => ddci_x0,
    in1 => ddcq_x0,
    in2 => ddcsync,
    ch_id => ddcchannel,
    ch_sel => register29_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => clk_net_x0,
    ce_12 => ce_net_x0,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net,
    out2 => down_sample2_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem4/freq_err1/delta_phi/phase_latching
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_phase_latching_x1 is
  port (
    phase : in std_logic_vector( 18-1 downto 0 );
    window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    stop_value : out std_logic_vector( 18-1 downto 0 );
    start_value : out std_logic_vector( 18-1 downto 0 );
    gateway_out1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_phase_latching_x1;
architecture structural of dsp_phase_latching_x1 is 
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 2-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 2-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  stop_value <= register1_q_net;
  start_value <= register_q_net;
  mult3_p_net <= phase;
  convert2_dout_net <= window;
  convert3_dout_net <= reset;
  gateway_out1 <= relational1_op_net;
  gateway_out2 <= delay5_q_net;
  gateway_out3 <= register_q_net;
  gateway_out4 <= register1_q_net;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub1 : entity work.sysgen_addsub_7574ef6005 
  port map (
    clr => '0',
    a => convert2_dout_net,
    b => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity work.sysgen_addsub_7574ef6005 
  port map (
    clr => '0',
    a => delay6_q_net,
    b => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  constant2 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  delay4 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  register_x0 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    d => mult3_p_net,
    rst => convert3_dout_net,
    en => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    d => mult3_p_net,
    rst => convert3_dout_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational : entity work.sysgen_relational_a5f9590f9b 
  port map (
    clr => '0',
    a => addsub1_s_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_a5f9590f9b 
  port map (
    clr => '0',
    a => addsub2_s_net,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem4/freq_err1/delta_phi
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_delta_phi_x1 is
  port (
    phase : in std_logic_vector( 18-1 downto 0 );
    window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    d_phi : out std_logic_vector( 32-1 downto 0 );
    gateway_out27 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_delta_phi_x1;
architecture structural of dsp_delta_phi_x1 is 
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 19-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  d_phi <= mult1_p_net;
  mult3_p_net <= phase;
  convert2_dout_net <= window;
  convert3_dout_net <= reset;
  gateway_out27 <= addsub3_s_net;
  gateway_out28 <= register_q_net;
  gateway_out29 <= register1_q_net;
  gateway_out3 <= mult1_p_net;
  gateway_out1 <= relational1_op_net;
  gateway_out2 <= delay5_q_net;
  gateway_out3_x0 <= register_q_net;
  gateway_out4 <= register1_q_net;
  clk_net <= clk_12;
  ce_net <= ce_12;
  phase_latching : entity work.dsp_phase_latching_x1 
  port map (
    phase => mult3_p_net,
    window => convert2_dout_net,
    reset => convert3_dout_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    stop_value => register1_q_net,
    start_value => register_q_net,
    gateway_out1 => relational1_op_net,
    gateway_out2 => delay5_q_net,
    gateway_out3 => register_q_net,
    gateway_out4 => register1_q_net
  );
  addsub3 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i2",
    en_arith => xlUnsigned,
    en_bin_pt => 0,
    en_width => 1,
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 19
  )
  port map (
    clr => '0',
    a => register1_q_net,
    b => register_q_net,
    en => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  constant4 : entity work.sysgen_constant_803072cb09 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  convert1 : entity work.dsp_xlconvert 
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
    din => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  inverter : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  mult1 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 19,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 19,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 19,
    c_output_width => 37,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i4",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 30,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub3_s_net,
    b => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem4/freq_err1/delta_t
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_delta_t_x1 is
  port (
    window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    dt : out std_logic_vector( 32-1 downto 0 );
    gateway_out1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2 : out std_logic_vector( 10-1 downto 0 )
  );
end dsp_delta_t_x1;
architecture structural of dsp_delta_t_x1 is 
  signal mult_p_net : std_logic_vector( 32-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net : std_logic_vector( 10-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant5_op_net : std_logic_vector( 32-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 10-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  dt <= mult_p_net;
  convert2_dout_net <= window;
  convert3_dout_net <= reset;
  gateway_out1 <= mult_p_net;
  gateway_out2 <= register2_q_net;
  clk_net <= clk_12;
  ce_net <= ce_12;
  constant5 : entity work.sysgen_constant_2a802540ac 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  convert1 : entity work.dsp_xlconvert 
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
    din => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  counter2 : entity work.dsp_xlcounter_free 
  generic map (
    core_name0 => "dsp_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    clr => '0',
    rst => convert3_dout_net,
    en => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  inverter : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  mult : entity work.dsp_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 10,
    b_arith => xlUnsigned,
    b_bin_pt => 32,
    b_width => 32,
    c_a_type => 1,
    c_a_width => 10,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 10,
    c_output_width => 42,
    c_type => 1,
    core_name0 => "dsp_mult_gen_v12_0_i5",
    extra_registers => 1,
    multsign => 1,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 32,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => register2_q_net,
    b => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 10,
    init_value => b"0000000000"
  )
  port map (
    d => counter2_op_net,
    rst => convert3_dout_net,
    en => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem4/freq_err1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_freq_err1_x1 is
  port (
    raw_phase : in std_logic_vector( 18-1 downto 0 );
    window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    c1p2_pt_cntr : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    nco_err : out std_logic_vector( 32-1 downto 0 );
    freq_err : out std_logic_vector( 32-1 downto 0 );
    gateway_out11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out27 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out : out std_logic_vector( 18-1 downto 0 );
    gateway_out1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x0 : out std_logic_vector( 10-1 downto 0 )
  );
end dsp_freq_err1_x1;
architecture structural of dsp_freq_err1_x1 is 
  signal convert_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 19-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 10-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net_x0 : std_logic;
  signal constant8_op_net : std_logic_vector( 26-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 96-1 downto 0 );
  signal divide_op_net : std_logic_vector( 63-1 downto 0 );
  signal divide1_op_net : std_logic_vector( 96-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
begin
  nco_err <= convert_dout_net;
  freq_err <= convert1_dout_net;
  cordic_6_0_2_m_axis_dout_tdata_phase_net <= raw_phase;
  convert2_dout_net <= window;
  convert3_dout_net_x0 <= reset;
  counter_op_net <= c1p2_pt_cntr;
  gateway_out11 <= convert_dout_net;
  gateway_out19 <= mult3_p_net;
  gateway_out5_x0 <= convert1_dout_net;
  gateway_out6 <= logical_y_net;
  gateway_out27 <= addsub3_s_net;
  gateway_out28 <= register_q_net;
  gateway_out29 <= register1_q_net;
  gateway_out3 <= mult1_p_net;
  gateway_out <= mult3_p_net;
  gateway_out1 <= relational1_op_net;
  gateway_out2 <= delay5_q_net;
  gateway_out3_x0 <= register_q_net;
  gateway_out4 <= register1_q_net;
  gateway_out5 <= convert3_dout_net;
  gateway_out1_x0 <= mult_p_net;
  gateway_out2_x0 <= register2_q_net;
  clk_net_x0 <= clk_1;
  ce_net <= ce_1;
  clk_net <= clk_12;
  ce_net_x0 <= ce_12;
  delta_phi : entity work.dsp_delta_phi_x1 
  port map (
    phase => mult3_p_net,
    window => convert2_dout_net,
    reset => convert3_dout_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    d_phi => mult1_p_net,
    gateway_out27 => addsub3_s_net,
    gateway_out28 => register_q_net,
    gateway_out29 => register1_q_net,
    gateway_out3 => mult1_p_net,
    gateway_out1 => relational1_op_net,
    gateway_out2 => delay5_q_net,
    gateway_out3_x0 => register_q_net,
    gateway_out4 => register1_q_net
  );
  delta_t : entity work.dsp_delta_t_x1 
  port map (
    window => convert2_dout_net,
    reset => convert3_dout_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    dt => mult_p_net,
    gateway_out1 => mult_p_net,
    gateway_out2 => register2_q_net
  );
  constant8 : entity work.sysgen_constant_912aa38159 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  convert : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 33,
    din_width => 96,
    dout_arith => 2,
    dout_bin_pt => 32,
    dout_width => 32,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => down_sample_q_net,
    clk => clk_net,
    ce => ce_net_x0,
    dout => convert_dout_net
  );
  convert1 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 31,
    din_width => 63,
    dout_arith => 2,
    dout_bin_pt => 10,
    dout_width => 32,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => divide_op_net,
    clk => clk_net_x0,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert3 : entity work.dsp_xlconvert 
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
    din => convert3_dout_net_x0,
    clk => clk_net,
    ce => ce_net_x0,
    dout => convert3_dout_net
  );
  divide : entity work.xldivider_generator_6dbb83f3f73569f6ccb183eb64606384 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => mult1_p_net,
    b => mult_p_net,
    clk => clk_net_x0,
    ce => ce_net,
    op => divide_op_net
  );
  divide1 : entity work.xldivider_generator_2ace49429baf61df4bf778f752b8034f 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => divide_op_net,
    b => constant8_op_net,
    clk => clk_net_x0,
    ce => ce_net,
    op => divide1_op_net
  );
  down_sample : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 33,
    d_width => 96,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 33,
    q_width => 96
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => divide1_op_net,
    src_clk => clk_net_x0,
    src_ce => ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net_x0,
    q => down_sample_q_net
  );
  mult3 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 1,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_a_type => 1,
    c_a_width => 1,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 1,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i3",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 15,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => convert2_dout_net,
    b => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    clk => clk_net,
    ce => ce_net_x0,
    core_clk => clk_net,
    core_ce => ce_net_x0,
    p => mult3_p_net
  );
  logical : entity work.sysgen_logical_32944f5613 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => delay3_q_net,
    clk => clk_net,
    ce => ce_net_x0,
    y => logical_y_net
  );
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert2_dout_net,
    clk => clk_net,
    ce => ce_net_x0,
    q => delay3_q_net
  );
  inverter : entity work.sysgen_inverter_054a6621f5 
  port map (
    clr => '0',
    ip => convert2_dout_net,
    clk => clk_net,
    ce => ce_net_x0,
    op => inverter_op_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/Subsystem4
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem4_x0 is
  port (
    imag : in std_logic_vector( 18-1 downto 0 );
    real : in std_logic_vector( 18-1 downto 0 );
    flo_window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    c1p2_pt_cntr : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    nco_err_fb : out std_logic_vector( 32-1 downto 0 );
    freq_err : out std_logic_vector( 32-1 downto 0 );
    gateway_out1_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out27 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2 : out std_logic_vector( 10-1 downto 0 )
  );
end dsp_subsystem4_x0;
architecture structural of dsp_subsystem4_x0 is 
  signal convert_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 19-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 10-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net_x0 : std_logic;
  signal cordic_6_0_2_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_2_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample5_q_net : std_logic;
  signal clock_enable_probe4_q_net : std_logic_vector( 1-1 downto 0 );
begin
  nco_err_fb <= convert_dout_net;
  freq_err <= convert1_dout_net;
  mult2_p_net <= imag;
  mult_p_net <= real;
  convert2_dout_net <= flo_window;
  convert3_dout_net <= reset;
  counter_op_net <= c1p2_pt_cntr;
  gateway_out1_x0 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out11 <= convert_dout_net;
  gateway_out19 <= mult3_p_net;
  gateway_out2_x0 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out3 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out5_x0 <= convert1_dout_net;
  gateway_out6 <= logical_y_net;
  gateway_out27 <= addsub3_s_net;
  gateway_out28 <= register_q_net;
  gateway_out29 <= register1_q_net;
  gateway_out3_x1 <= mult1_p_net;
  gateway_out <= mult3_p_net;
  gateway_out1_x1 <= relational1_op_net;
  gateway_out2_x1 <= delay5_q_net;
  gateway_out3_x0 <= register_q_net;
  gateway_out4 <= register1_q_net;
  gateway_out5 <= convert3_dout_net_x0;
  gateway_out1 <= mult_p_net_x0;
  gateway_out2 <= register2_q_net;
  clk_net_x0 <= clk_1;
  ce_net <= ce_1;
  clk_net <= clk_12;
  ce_net_x0 <= ce_12;
  freq_err1 : entity work.dsp_freq_err1_x1 
  port map (
    raw_phase => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    window => convert2_dout_net,
    reset => convert3_dout_net,
    c1p2_pt_cntr => counter_op_net,
    clk_1 => clk_net_x0,
    ce_1 => ce_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    nco_err => convert_dout_net,
    freq_err => convert1_dout_net,
    gateway_out11 => convert_dout_net,
    gateway_out19 => mult3_p_net,
    gateway_out5_x0 => convert1_dout_net,
    gateway_out6 => logical_y_net,
    gateway_out27 => addsub3_s_net,
    gateway_out28 => register_q_net,
    gateway_out29 => register1_q_net,
    gateway_out3 => mult1_p_net,
    gateway_out => mult3_p_net,
    gateway_out1 => relational1_op_net,
    gateway_out2 => delay5_q_net,
    gateway_out3_x0 => register_q_net,
    gateway_out4 => register1_q_net,
    gateway_out5 => convert3_dout_net_x0,
    gateway_out1_x0 => mult_p_net_x0,
    gateway_out2_x0 => register2_q_net
  );
  cordic_6_0_2 : entity work.xlcordic_508e230f269385a677d56937823ab702 
  port map (
    s_axis_cartesian_tvalid => down_sample5_q_net,
    s_axis_cartesian_tdata_imag => mult2_p_net,
    s_axis_cartesian_tdata_real => mult_p_net,
    clk => clk_net,
    ce => ce_net_x0,
    m_axis_dout_tvalid => cordic_6_0_2_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_phase => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    m_axis_dout_tdata_real => cordic_6_0_2_m_axis_dout_tdata_real_net
  );
  clock_enable_probe4 : entity work.dsp_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => mult2_p_net,
    clk => clk_net,
    ce => ce_net_x0,
    q => clock_enable_probe4_q_net
  );
  down_sample5 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => clock_enable_probe4_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net_x0,
    q(0) => down_sample5_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p1_Masking_window
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_c1p1_masking_window is
  port (
    phi_reset_trig : in std_logic_vector( 1-1 downto 0 );
    start_pt : in std_logic_vector( 16-1 downto 0 );
    stop_pt : in std_logic_vector( 16-1 downto 0 );
    delay_amt : in std_logic_vector( 16-1 downto 0 );
    delay_latch : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    counter_x0 : out std_logic_vector( 16-1 downto 0 );
    eval_window : out std_logic_vector( 1-1 downto 0 );
    integral_trig : out std_logic_vector( 1-1 downto 0 );
    flo_window : out std_logic_vector( 1-1 downto 0 );
    delay_val : out std_logic_vector( 16-1 downto 0 );
    gateway_out1 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out5 : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_c1p1_masking_window;
architecture structural of dsp_c1p1_masking_window is 
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 16-1 downto 0 );
  signal down_sample2_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register31_q_net : std_logic_vector( 16-1 downto 0 );
  signal register32_q_net : std_logic_vector( 16-1 downto 0 );
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 16-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register10_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 1-1 downto 0 );
  signal relational6_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert8_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 16-1 downto 0 );
  signal down_sample2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 16-1 downto 0 );
  signal register5_q_net : std_logic_vector( 16-1 downto 0 );
  signal register6_q_net : std_logic_vector( 16-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
begin
  counter_x0 <= counter_op_net;
  eval_window <= convert11_dout_net;
  integral_trig <= convert5_dout_net;
  flo_window <= convert2_dout_net;
  delay_val <= register_q_net;
  down_sample2_q_net_x0 <= phi_reset_trig;
  register31_q_net <= start_pt;
  register32_q_net <= stop_pt;
  register2_q_net <= delay_amt;
  delay2_q_net <= delay_latch;
  gateway_out1 <= delay5_q_net;
  gateway_out2 <= delay3_q_net;
  gateway_out27 <= relational4_op_net;
  gateway_out28 <= relational3_op_net;
  gateway_out29 <= convert11_dout_net;
  gateway_out3 <= convert7_dout_net;
  gateway_out5 <= convert5_dout_net;
  clk_net_x0 <= clk_1;
  ce_net_x0 <= ce_1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "dsp_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => delay3_q_net,
    b => constant11_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub4 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "dsp_c_addsub_v12_0_i1",
    en_arith => xlUnsigned,
    en_bin_pt => 0,
    en_width => 1,
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    a => register_q_net,
    b => register2_q_net,
    en => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  constant1 : entity work.sysgen_constant_b2ceed5a46 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant11 : entity work.sysgen_constant_9a84ae6da1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant11_op_net
  );
  constant2 : entity work.sysgen_constant_6f518e0398 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity work.sysgen_constant_284465ef96 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  convert1 : entity work.dsp_xlconvert 
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
    din => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert11 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
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
    din => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert11_dout_net
  );
  convert2 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
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
    din => logical2_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity work.dsp_xlconvert 
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
    din => register10_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity work.dsp_xlconvert 
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
    din => relational6_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity work.dsp_xlconvert 
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
    din => relational5_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert7 : entity work.dsp_xlconvert 
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
    din => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert7_dout_net
  );
  convert8 : entity work.dsp_xlconvert 
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
    din => relational4_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert8_dout_net
  );
  counter : entity work.dsp_xlcounter_free 
  generic map (
    core_name0 => "dsp_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 16
  )
  port map (
    clr => '0',
    rst => convert3_dout_net,
    en => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => down_sample1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net_x0
  );
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => down_sample2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity work.dsp_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  delay7 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay7_q_net
  );
  down_sample1 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 16,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 16
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register5_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample1_q_net
  );
  down_sample2 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 16,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 16
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register6_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample2_q_net
  );
  logical1 : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => convert8_dout_net,
    d1 => convert7_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical2 : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => convert4_dout_net,
    d1 => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net
  );
  register_x0 : entity work.dsp_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000101100"
  )
  port map (
    rst => "0",
    d => addsub4_s_net,
    en => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register10 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample2_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register10_q_net
  );
  register5 : entity work.dsp_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register31_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register5_q_net
  );
  register6 : entity work.dsp_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000001100100"
  )
  port map (
    en => "1",
    rst => "0",
    d => register32_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register6_q_net
  );
  relational1 : entity work.sysgen_relational_f85cc5971b 
  port map (
    clr => '0',
    a => delay7_q_net,
    b => constant2_op_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity work.sysgen_relational_23c51632d4 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  relational3 : entity work.sysgen_relational_f85cc5971b 
  port map (
    clr => '0',
    a => delay4_q_net,
    b => delay3_q_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
  relational4 : entity work.sysgen_relational_05a57d317e 
  port map (
    clr => '0',
    a => delay1_q_net,
    b => delay2_q_net_x0,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational4_op_net
  );
  relational5 : entity work.sysgen_relational_f85cc5971b 
  port map (
    clr => '0',
    a => counter_op_net,
    b => addsub1_s_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational5_op_net
  );
  relational6 : entity work.sysgen_relational_05a57d317e 
  port map (
    clr => '0',
    a => delay6_q_net,
    b => constant3_op_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational6_op_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => convert3_dout_net,
    en => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p1_window_wf1 /Delay_calc1/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_subsystem;
architecture structural of dsp_subsystem is 
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter5_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical1_y_net;
  relational3_op_net <= in1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  inverter5 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter5_op_net
  );
  logical1 : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => inverter5_op_net,
    d1 => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p1_window_wf1 /Delay_calc1/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem1 is
  port (
    lc : in std_logic_vector( 1-1 downto 0 );
    d : in std_logic_vector( 1-1 downto 0 );
    qb : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic
  );
end dsp_subsystem1;
architecture structural of dsp_subsystem1 is 
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
begin
  logical7_y_net <= lc;
  relational3_op_net <= d;
  register1_q_net <= qb;
  clk_net <= clk_12;
  ce_net <= ce_12;
  inverter1 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical6 : entity work.sysgen_logical_32ca177ee1 
  port map (
    clr => '0',
    d0 => inverter1_op_net,
    d1 => logical7_y_net,
    clk => clk_net,
    ce => ce_net,
    y => logical6_y_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => relational3_op_net,
    en => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p1_window_wf1 /Delay_calc1/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem2 is
  port (
    lc : in std_logic_vector( 1-1 downto 0 );
    d : in std_logic_vector( 1-1 downto 0 );
    qb : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic
  );
end dsp_subsystem2;
architecture structural of dsp_subsystem2 is 
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
begin
  logical7_y_net <= lc;
  relational1_op_net <= d;
  register1_q_net <= qb;
  clk_net <= clk_12;
  ce_net <= ce_12;
  inverter1 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical6 : entity work.sysgen_logical_32ca177ee1 
  port map (
    clr => '0',
    d0 => inverter1_op_net,
    d1 => logical7_y_net,
    clk => clk_net,
    ce => ce_net,
    y => logical6_y_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => relational1_op_net,
    en => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p1_window_wf1 /Delay_calc1/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem3 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    in2 : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    or_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_subsystem3;
architecture structural of dsp_subsystem3 is 
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  or_x0 <= logical7_y_net;
  relational1_op_net <= in1;
  relational3_op_net <= in2;
  clk_net <= clk_12;
  ce_net <= ce_12;
  logical7 : entity work.sysgen_logical_32ca177ee1 
  port map (
    clr => '0',
    d0 => relational1_op_net,
    d1 => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical7_y_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p1_window_wf1 /Delay_calc1/negedge
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_negedge_x1 is
  port (
    d : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    q : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_negedge_x1;
architecture structural of dsp_negedge_x1 is 
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter4_op_net : std_logic_vector( 1-1 downto 0 );
begin
  q <= logical7_y_net;
  logical7_y_net_x0 <= d;
  clk_net <= clk_12;
  ce_net <= ce_12;
  delay1 : entity work.dsp_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 20,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical7_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  inverter4 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter4_op_net
  );
  logical7 : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => inverter4_op_net,
    d1 => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical7_y_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p1_window_wf1 /Delay_calc1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_delay_calc1_x1 is
  port (
    wav : in std_logic_vector( 18-1 downto 0 );
    win : in std_logic_vector( 18-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    delay_amt : out std_logic_vector( 16-1 downto 0 );
    delay_fb_latch : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_delay_calc1_x1;
architecture structural of dsp_delay_calc1_x1 is 
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal absolute1_op_net : std_logic_vector( 19-1 downto 0 );
  signal absolute2_op_net : std_logic_vector( 19-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 2-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
begin
  delay_amt <= register2_q_net;
  delay_fb_latch <= delay2_q_net;
  dual_port_ram_doutb_net <= wav;
  addsub3_s_net <= win;
  convert3_dout_net <= reset;
  clk_net <= clk_12;
  ce_net <= ce_12;
  subsystem_x3 : entity work.dsp_subsystem 
  port map (
    in1 => relational3_op_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    out1 => logical1_y_net
  );
  subsystem1_x4 : entity work.dsp_subsystem1 
  port map (
    lc => logical7_y_net,
    d => relational3_op_net,
    qb => register1_q_net,
    clk_12 => clk_net,
    ce_12 => ce_net
  );
  subsystem2_x4 : entity work.dsp_subsystem2 
  port map (
    lc => logical7_y_net,
    d => relational1_op_net,
    qb => register1_q_net_x0,
    clk_12 => clk_net,
    ce_12 => ce_net
  );
  subsystem3_x3 : entity work.dsp_subsystem3 
  port map (
    in1 => relational1_op_net,
    in2 => relational3_op_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    or_x0 => logical7_y_net_x0
  );
  negedge_x3 : entity work.dsp_negedge_x1 
  port map (
    d => logical7_y_net_x0,
    clk_12 => clk_net,
    ce_12 => ce_net,
    q => logical7_y_net
  );
  absolute1 : entity work.sysgen_abs_5257526c8e 
  port map (
    clr => '0',
    a => dual_port_ram_doutb_net,
    clk => clk_net,
    ce => ce_net,
    op => absolute1_op_net
  );
  absolute2 : entity work.sysgen_abs_a341405846 
  port map (
    clr => '0',
    a => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    op => absolute2_op_net
  );
  constant1 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity work.sysgen_constant_bc38c8b0ea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  counter : entity work.dsp_xlcounter_free 
  generic map (
    core_name0 => "dsp_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 16
  )
  port map (
    clr => '0',
    rst => convert3_dout_net,
    en => logical3_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 30,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  logical3 : entity work.sysgen_logical_1428f80391 
  port map (
    clr => '0',
    d0 => register1_q_net_x0,
    d1 => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical3_y_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => counter_op_net,
    en => logical7_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  relational1 : entity work.sysgen_relational_d437d88857 
  port map (
    clr => '0',
    a => absolute1_op_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational3 : entity work.sysgen_relational_a8fb20a446 
  port map (
    clr => '0',
    a => absolute2_op_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p1_window_wf1 
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_c1p1_window_wf1 is
  port (
    cav_img : in std_logic_vector( 18-1 downto 0 );
    cav_real : in std_logic_vector( 18-1 downto 0 );
    ref_img : in std_logic_vector( 18-1 downto 0 );
    ref_real : in std_logic_vector( 18-1 downto 0 );
    window_profile : in std_logic_vector( 18-1 downto 0 );
    cav_delayed_imag : in std_logic_vector( 18-1 downto 0 );
    cav_delayed_real : in std_logic_vector( 18-1 downto 0 );
    pt_window : in std_logic_vector( 1-1 downto 0 );
    delay_match_amt : in std_logic_vector( 16-1 downto 0 );
    pt_cntr : in std_logic_vector( 16-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    cav_windowed_imag : out std_logic_vector( 18-1 downto 0 );
    cav_windowed_real : out std_logic_vector( 18-1 downto 0 );
    ref_windowed_imag : out std_logic_vector( 18-1 downto 0 );
    ref_windowed_real : out std_logic_vector( 18-1 downto 0 );
    delay_amt : out std_logic_vector( 16-1 downto 0 );
    delay_amt_latch : out std_logic_vector( 1-1 downto 0 );
    gateway_out11 : out std_logic_vector( 18-1 downto 0 );
    gateway_out35 : out std_logic_vector( 18-1 downto 0 );
    gateway_out38 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_c1p1_window_wf1;
architecture structural of dsp_c1p1_window_wf1 is 
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram1_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 16-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 16-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant13_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant15_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant20_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant22_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 16-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_douta_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram1_douta_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
begin
  cav_windowed_imag <= mult2_p_net;
  cav_windowed_real <= mult_p_net;
  ref_windowed_imag <= mult5_p_net;
  ref_windowed_real <= mult4_p_net;
  delay_amt <= register2_q_net;
  delay_amt_latch <= delay2_q_net_x0;
  convert5_dout_net <= cav_img;
  convert6_dout_net <= cav_real;
  down_sample_q_net <= ref_img;
  down_sample1_q_net <= ref_real;
  addsub3_s_net <= window_profile;
  dual_port_ram_doutb_net <= cav_delayed_imag;
  dual_port_ram1_doutb_net <= cav_delayed_real;
  convert11_dout_net <= pt_window;
  register_q_net <= delay_match_amt;
  counter_op_net <= pt_cntr;
  gateway_out11 <= mult2_p_net;
  gateway_out35 <= mult4_p_net;
  gateway_out38 <= mult5_p_net;
  gateway_out4 <= mult3_p_net;
  convert3_dout_net <= reset;
  clk_net <= clk_12;
  ce_net <= ce_12;
  delay_calc1 : entity work.dsp_delay_calc1_x1 
  port map (
    wav => dual_port_ram_doutb_net,
    win => addsub3_s_net,
    reset => convert3_dout_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    delay_amt => register2_q_net,
    delay_fb_latch => delay2_q_net_x0
  );
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "dsp_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => register_q_net,
    b => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "dsp_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => register_q_net,
    b => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  constant13 : entity work.sysgen_constant_0b5fa36c3d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  constant15 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant15_op_net
  );
  constant20 : entity work.sysgen_constant_0b5fa36c3d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant20_op_net
  );
  constant22 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant22_op_net
  );
  constant5 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  delay4 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  dual_port_ram : entity work.dsp_xldpram 
  generic map (
    c_address_width_a => 16,
    c_address_width_b => 16,
    c_width_a => 18,
    c_width_b => 18,
    core_name0 => "dsp_blk_mem_gen_i0",
    latency => 1
  )
  port map (
    ena => "1",
    rsta => "0",
    rstb => "0",
    addra => addsub1_s_net,
    dina => convert5_dout_net,
    wea => relational1_op_net,
    addrb => delay4_q_net,
    dinb => constant15_op_net,
    web => constant13_op_net,
    enb => relational1_op_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  dual_port_ram1 : entity work.dsp_xldpram 
  generic map (
    c_address_width_a => 16,
    c_address_width_b => 16,
    c_width_a => 18,
    c_width_b => 18,
    core_name0 => "dsp_blk_mem_gen_i0",
    latency => 1
  )
  port map (
    ena => "1",
    rsta => "0",
    rstb => "0",
    addra => addsub2_s_net,
    dina => convert6_dout_net,
    wea => relational_op_net,
    addrb => delay5_q_net,
    dinb => constant22_op_net,
    web => constant20_op_net,
    enb => relational_op_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram1_douta_net,
    doutb => dual_port_ram1_doutb_net
  );
  mult : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 18,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => mult1_p_net,
    b => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 18,
    c_output_width => 36,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i7",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 17,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => dual_port_ram1_doutb_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 18,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => mult3_p_net,
    b => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 18,
    c_output_width => 36,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i7",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 17,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => dual_port_ram_doutb_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 18,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => down_sample1_q_net,
    b => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 18,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => down_sample_q_net,
    b => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  relational : entity work.sysgen_relational_213f394d8c 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_213f394d8c 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p2_window_wf/Delay_calc1/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem_x2 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_subsystem_x2;
architecture structural of dsp_subsystem_x2 is 
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter5_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  out1 <= logical1_y_net;
  relational3_op_net <= in1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  inverter5 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter5_op_net
  );
  logical1 : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => inverter5_op_net,
    d1 => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p2_window_wf/Delay_calc1/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem1_x4 is
  port (
    lc : in std_logic_vector( 1-1 downto 0 );
    d : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    q : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_subsystem1_x4;
architecture structural of dsp_subsystem1_x4 is 
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
begin
  q <= register1_q_net;
  logical7_y_net <= lc;
  relational3_op_net <= d;
  clk_net <= clk_12;
  ce_net <= ce_12;
  inverter1 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical6 : entity work.sysgen_logical_32ca177ee1 
  port map (
    clr => '0',
    d0 => inverter1_op_net,
    d1 => logical7_y_net,
    clk => clk_net,
    ce => ce_net,
    y => logical6_y_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => relational3_op_net,
    en => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p2_window_wf/Delay_calc1/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem2_x4 is
  port (
    lc : in std_logic_vector( 1-1 downto 0 );
    d : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    q : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_subsystem2_x4;
architecture structural of dsp_subsystem2_x4 is 
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
begin
  q <= register1_q_net;
  logical7_y_net <= lc;
  relational1_op_net <= d;
  clk_net <= clk_12;
  ce_net <= ce_12;
  inverter1 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical6 : entity work.sysgen_logical_32ca177ee1 
  port map (
    clr => '0',
    d0 => inverter1_op_net,
    d1 => logical7_y_net,
    clk => clk_net,
    ce => ce_net,
    y => logical6_y_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => relational1_op_net,
    en => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p2_window_wf/Delay_calc1/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem3_x4 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    in2 : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    or_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_subsystem3_x4;
architecture structural of dsp_subsystem3_x4 is 
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  or_x0 <= logical7_y_net;
  relational1_op_net <= in1;
  relational3_op_net <= in2;
  clk_net <= clk_12;
  ce_net <= ce_12;
  logical7 : entity work.sysgen_logical_32ca177ee1 
  port map (
    clr => '0',
    d0 => relational1_op_net,
    d1 => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical7_y_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p2_window_wf/Delay_calc1/negedge
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_negedge_x2 is
  port (
    d : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    q : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_negedge_x2;
architecture structural of dsp_negedge_x2 is 
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter4_op_net : std_logic_vector( 1-1 downto 0 );
begin
  q <= logical7_y_net;
  logical7_y_net_x0 <= d;
  clk_net <= clk_12;
  ce_net <= ce_12;
  delay1 : entity work.dsp_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter4 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter4_op_net
  );
  logical7 : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => inverter4_op_net,
    d1 => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical7_y_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 20,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical7_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p2_window_wf/Delay_calc1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_delay_calc1_x2 is
  port (
    wav : in std_logic_vector( 18-1 downto 0 );
    win : in std_logic_vector( 18-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    delay_amt : out std_logic_vector( 16-1 downto 0 );
    delay_fb_latch : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_delay_calc1_x2;
architecture structural of dsp_delay_calc1_x2 is 
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal absolute1_op_net : std_logic_vector( 19-1 downto 0 );
  signal absolute2_op_net : std_logic_vector( 19-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 2-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
begin
  delay_amt <= register2_q_net;
  delay_fb_latch <= delay2_q_net;
  dual_port_ram_doutb_net <= wav;
  addsub3_s_net <= win;
  convert3_dout_net <= reset;
  clk_net <= clk_12;
  ce_net <= ce_12;
  subsystem_x3 : entity work.dsp_subsystem_x2 
  port map (
    in1 => relational3_op_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    out1 => logical1_y_net
  );
  subsystem1_x4 : entity work.dsp_subsystem1_x4 
  port map (
    lc => logical7_y_net,
    d => relational3_op_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    q => register1_q_net
  );
  subsystem2_x4 : entity work.dsp_subsystem2_x4 
  port map (
    lc => logical7_y_net,
    d => relational1_op_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    q => register1_q_net_x0
  );
  subsystem3_x3 : entity work.dsp_subsystem3_x4 
  port map (
    in1 => relational1_op_net,
    in2 => relational3_op_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    or_x0 => logical7_y_net_x0
  );
  negedge_x3 : entity work.dsp_negedge_x2 
  port map (
    d => logical7_y_net_x0,
    clk_12 => clk_net,
    ce_12 => ce_net,
    q => logical7_y_net
  );
  absolute1 : entity work.sysgen_abs_5257526c8e 
  port map (
    clr => '0',
    a => dual_port_ram_doutb_net,
    clk => clk_net,
    ce => ce_net,
    op => absolute1_op_net
  );
  absolute2 : entity work.sysgen_abs_a341405846 
  port map (
    clr => '0',
    a => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    op => absolute2_op_net
  );
  constant1 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity work.sysgen_constant_bc38c8b0ea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  counter : entity work.dsp_xlcounter_free 
  generic map (
    core_name0 => "dsp_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 16
  )
  port map (
    clr => '0',
    rst => convert3_dout_net,
    en => logical3_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 30,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  logical3 : entity work.sysgen_logical_1428f80391 
  port map (
    clr => '0',
    d0 => register1_q_net_x0,
    d1 => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical3_y_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => counter_op_net,
    en => logical7_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  relational1 : entity work.sysgen_relational_d437d88857 
  port map (
    clr => '0',
    a => absolute1_op_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational3 : entity work.sysgen_relational_a8fb20a446 
  port map (
    clr => '0',
    a => absolute2_op_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p2_window_wf
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_c1p2_window_wf is
  port (
    cav_img : in std_logic_vector( 18-1 downto 0 );
    cav_real : in std_logic_vector( 18-1 downto 0 );
    ref_img : in std_logic_vector( 18-1 downto 0 );
    ref_real : in std_logic_vector( 18-1 downto 0 );
    window_profile : in std_logic_vector( 18-1 downto 0 );
    pt_window : in std_logic_vector( 1-1 downto 0 );
    delay_match_amt : in std_logic_vector( 16-1 downto 0 );
    pt_cntr : in std_logic_vector( 16-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    cav_windowed_imag : out std_logic_vector( 18-1 downto 0 );
    cav_windowed_real : out std_logic_vector( 18-1 downto 0 );
    ref_windowed_imag : out std_logic_vector( 18-1 downto 0 );
    ref_windowed_real : out std_logic_vector( 18-1 downto 0 );
    delayed_cav_dc_img : out std_logic_vector( 18-1 downto 0 );
    delayed_cav_dc_real : out std_logic_vector( 18-1 downto 0 );
    delay_amt : out std_logic_vector( 16-1 downto 0 );
    delay_amt_latch : out std_logic_vector( 1-1 downto 0 );
    gateway_out11 : out std_logic_vector( 18-1 downto 0 );
    gateway_out35 : out std_logic_vector( 18-1 downto 0 );
    gateway_out38 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_c1p2_window_wf;
architecture structural of dsp_c1p2_window_wf is 
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram1_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 16-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 16-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant13_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant15_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant20_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant22_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 16-1 downto 0 );
  signal dual_port_ram_douta_net : std_logic_vector( 18-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram1_douta_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
begin
  cav_windowed_imag <= mult2_p_net;
  cav_windowed_real <= mult_p_net;
  ref_windowed_imag <= mult5_p_net;
  ref_windowed_real <= mult4_p_net;
  delayed_cav_dc_img <= dual_port_ram_doutb_net;
  delayed_cav_dc_real <= dual_port_ram1_doutb_net;
  delay_amt <= register2_q_net;
  delay_amt_latch <= delay2_q_net_x0;
  convert_dout_net <= cav_img;
  convert1_dout_net <= cav_real;
  down_sample_q_net <= ref_img;
  down_sample1_q_net <= ref_real;
  addsub3_s_net <= window_profile;
  convert11_dout_net <= pt_window;
  register_q_net <= delay_match_amt;
  counter_op_net <= pt_cntr;
  gateway_out11 <= mult2_p_net;
  gateway_out35 <= mult4_p_net;
  gateway_out38 <= mult5_p_net;
  gateway_out4 <= mult3_p_net;
  convert3_dout_net <= reset;
  clk_net <= clk_12;
  ce_net <= ce_12;
  delay_calc1 : entity work.dsp_delay_calc1_x2 
  port map (
    wav => dual_port_ram_doutb_net,
    win => addsub3_s_net,
    reset => convert3_dout_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    delay_amt => register2_q_net,
    delay_fb_latch => delay2_q_net_x0
  );
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "dsp_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => register_q_net,
    b => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "dsp_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => register_q_net,
    b => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  constant13 : entity work.sysgen_constant_0b5fa36c3d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  constant15 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant15_op_net
  );
  constant20 : entity work.sysgen_constant_0b5fa36c3d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant20_op_net
  );
  constant22 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant22_op_net
  );
  constant5 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  delay4 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  dual_port_ram : entity work.dsp_xldpram 
  generic map (
    c_address_width_a => 16,
    c_address_width_b => 16,
    c_width_a => 18,
    c_width_b => 18,
    core_name0 => "dsp_blk_mem_gen_i0",
    latency => 1
  )
  port map (
    ena => "1",
    rsta => "0",
    rstb => "0",
    addra => addsub1_s_net,
    dina => convert_dout_net,
    wea => relational1_op_net,
    addrb => delay4_q_net,
    dinb => constant15_op_net,
    web => constant13_op_net,
    enb => relational1_op_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  dual_port_ram1 : entity work.dsp_xldpram 
  generic map (
    c_address_width_a => 16,
    c_address_width_b => 16,
    c_width_a => 18,
    c_width_b => 18,
    core_name0 => "dsp_blk_mem_gen_i0",
    latency => 1
  )
  port map (
    ena => "1",
    rsta => "0",
    rstb => "0",
    addra => addsub2_s_net,
    dina => convert1_dout_net,
    wea => relational_op_net,
    addrb => delay5_q_net,
    dinb => constant22_op_net,
    web => constant20_op_net,
    enb => relational_op_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram1_douta_net,
    doutb => dual_port_ram1_doutb_net
  );
  mult : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 18,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => mult1_p_net,
    b => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 18,
    c_output_width => 36,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i7",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 17,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => dual_port_ram1_doutb_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 18,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => mult3_p_net,
    b => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 18,
    c_output_width => 36,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i7",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 17,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => dual_port_ram_doutb_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 18,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => down_sample1_q_net,
    b => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 18,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => down_sample_q_net,
    b => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  relational : entity work.sysgen_relational_213f394d8c 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_213f394d8c 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p2_windowing_func1/four_point_avg
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_four_point_avg_x1 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_four_point_avg_x1;
architecture structural of dsp_four_point_avg_x1 is 
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal cmult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal cmult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal cmult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub3_s_net;
  cordic_6_0_m_axis_dout_tdata_real_net <= in1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult4_p_net,
    b => cmult2_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult1_p_net,
    b => cmult3_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub2_s_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  cmult1 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_bin_pt => 16,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 18,
    c_output_width => 36,
    core_name0 => "dsp_mult_gen_v12_0_i2",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult1_p_net
  );
  cmult2 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_bin_pt => 16,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 18,
    c_output_width => 36,
    core_name0 => "dsp_mult_gen_v12_0_i2",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult2_p_net
  );
  cmult3 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_bin_pt => 16,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 18,
    c_output_width => 36,
    core_name0 => "dsp_mult_gen_v12_0_i2",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult3_p_net
  );
  cmult4 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_bin_pt => 16,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 18,
    c_output_width => 36,
    core_name0 => "dsp_mult_gen_v12_0_i2",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => cordic_6_0_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult4_p_net
  );
  delay1 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p2_windowing_func1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_c1p2_windowing_func1 is
  port (
    imag : in std_logic_vector( 18-1 downto 0 );
    real : in std_logic_vector( 18-1 downto 0 );
    eval_window : in std_logic_vector( 1-1 downto 0 );
    c1p2_pt_cntr : in std_logic_vector( 16-1 downto 0 );
    cav1_p2_dc_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    window_profile : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_c1p2_windowing_func1;
architecture structural of dsp_c1p2_windowing_func1 is 
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
begin
  window_profile <= addsub3_s_net;
  convert5_dout_net <= imag;
  convert6_dout_net <= real;
  convert11_dout_net <= eval_window;
  counter_op_net <= c1p2_pt_cntr;
  convert2_dout_net <= cav1_p2_dc_tvalid;
  clk_net <= clk_12;
  ce_net <= ce_12;
  four_point_avg : entity work.dsp_four_point_avg_x1 
  port map (
    in1 => cordic_6_0_m_axis_dout_tdata_real_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    out1 => addsub3_s_net
  );
  cordic_6_0 : entity work.xlcordic_508e230f269385a677d56937823ab702 
  port map (
    s_axis_cartesian_tvalid => convert2_dout_net(0),
    s_axis_cartesian_tdata_imag => convert5_dout_net,
    s_axis_cartesian_tdata_real => convert6_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_phase => cordic_6_0_m_axis_dout_tdata_phase_net,
    m_axis_dout_tdata_real => cordic_6_0_m_axis_dout_tdata_real_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p2_windowing_func2/four_point_avg
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_four_point_avg_x2 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_four_point_avg_x2;
architecture structural of dsp_four_point_avg_x2 is 
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal cmult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal cmult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal cmult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub3_s_net;
  cordic_6_0_m_axis_dout_tdata_real_net <= in1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult4_p_net,
    b => cmult2_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult1_p_net,
    b => cmult3_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub2_s_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  cmult1 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_bin_pt => 16,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 18,
    c_output_width => 36,
    core_name0 => "dsp_mult_gen_v12_0_i2",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult1_p_net
  );
  cmult2 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_bin_pt => 16,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 18,
    c_output_width => 36,
    core_name0 => "dsp_mult_gen_v12_0_i2",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult2_p_net
  );
  cmult3 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_bin_pt => 16,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 18,
    c_output_width => 36,
    core_name0 => "dsp_mult_gen_v12_0_i2",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult3_p_net
  );
  cmult4 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_bin_pt => 16,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 18,
    c_output_width => 36,
    core_name0 => "dsp_mult_gen_v12_0_i2",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => cordic_6_0_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult4_p_net
  );
  delay1 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1/c1p2_windowing_func2
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_c1p2_windowing_func2_x0 is
  port (
    imag : in std_logic_vector( 18-1 downto 0 );
    real : in std_logic_vector( 18-1 downto 0 );
    eval_window : in std_logic_vector( 1-1 downto 0 );
    c1p2_pt_cntr : in std_logic_vector( 16-1 downto 0 );
    cav1_p2_dc_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    window_profile : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_c1p2_windowing_func2_x0;
architecture structural of dsp_c1p2_windowing_func2_x0 is 
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
begin
  window_profile <= addsub3_s_net;
  convert_dout_net <= imag;
  convert1_dout_net <= real;
  convert11_dout_net <= eval_window;
  counter_op_net <= c1p2_pt_cntr;
  convert2_dout_net <= cav1_p2_dc_tvalid;
  clk_net <= clk_12;
  ce_net <= ce_12;
  four_point_avg : entity work.dsp_four_point_avg_x2 
  port map (
    in1 => cordic_6_0_m_axis_dout_tdata_real_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    out1 => addsub3_s_net
  );
  cordic_6_0 : entity work.xlcordic_508e230f269385a677d56937823ab702 
  port map (
    s_axis_cartesian_tvalid => convert2_dout_net(0),
    s_axis_cartesian_tdata_imag => convert_dout_net,
    s_axis_cartesian_tdata_real => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_phase => cordic_6_0_m_axis_dout_tdata_phase_net,
    m_axis_dout_tdata_real => cordic_6_0_m_axis_dout_tdata_real_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_cav1 is
  port (
    pa_stream_1 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_1 : in std_logic_vector( 18-1 downto 0 );
    pa_stream_2 : in std_logic_vector( 18-1 downto 0 );
    pa_stream_3 : in std_logic_vector( 4-1 downto 0 );
    iq_stream_2 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_3 : in std_logic_vector( 4-1 downto 0 );
    iq_stream_4 : in std_logic_vector( 1-1 downto 0 );
    cav1_p1_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav1_p1_cal_coef : in std_logic_vector( 18-1 downto 0 );
    cav1_nco_phase_reset : in std_logic_vector( 1-1 downto 0 );
    cav1_p2_chan_sel : in std_logic_vector( 4-1 downto 0 );
    rf_ref_amp : in std_logic_vector( 18-1 downto 0 );
    rf_ref_phase : in std_logic_vector( 18-1 downto 0 );
    rf_ref_q : in std_logic_vector( 18-1 downto 0 );
    cav1_nco_phase_adj : in std_logic_vector( 32-1 downto 0 );
    cav1_p1_window_start : in std_logic_vector( 16-1 downto 0 );
    cav1_p1_window_stop : in std_logic_vector( 16-1 downto 0 );
    rf_ref_i : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_window_start : in std_logic_vector( 16-1 downto 0 );
    cav1_p2_window_stop : in std_logic_vector( 16-1 downto 0 );
    cav1_p2_cal_coef : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    c1p2_pt_window : out std_logic_vector( 1-1 downto 0 );
    cav1_p2_dc_tvalid : out std_logic_vector( 1-1 downto 0 );
    cav1_p1_dc_real : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_dc_img : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_dc_freq : out std_logic_vector( 32-1 downto 0 );
    c1p1_freq_err : out std_logic_vector( 32-1 downto 0 );
    flo_c1p1_window : out std_logic_vector( 1-1 downto 0 );
    cav1_p1_delayed_dc_img : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_delayed_dc_real : out std_logic_vector( 18-1 downto 0 );
    c1_p1_delay_amt : out std_logic_vector( 16-1 downto 0 );
    cav1_p1_ref_phase_out : out std_logic_vector( 18-1 downto 0 );
    c1p2_pt_cntr : out std_logic_vector( 16-1 downto 0 );
    cav1_p2_dc_real : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_dc_img : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_dc_freq : out std_logic_vector( 32-1 downto 0 );
    cav1_p2_delayed_dc_img : out std_logic_vector( 18-1 downto 0 );
    c1p2_integral_logic : out std_logic_vector( 1-1 downto 0 );
    cav1_p2_delayed_dc_real : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_ref_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_ref_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_ref_i : out std_logic_vector( 20-1 downto 0 );
    cav1_p2_integrated_ref_q : out std_logic_vector( 20-1 downto 0 );
    c1p1_window_func : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_integrated_i : out std_logic_vector( 20-1 downto 0 );
    cav1_p2_integrated_q : out std_logic_vector( 20-1 downto 0 );
    cav1_p2_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    dsp_cav1_reset : out std_logic_vector( 1-1 downto 0 );
    c1p2_window_func : out std_logic_vector( 18-1 downto 0 );
    cav1_nco_fb : out std_logic_vector( 32-1 downto 0 );
    cav1_p1_windowed_ref_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_windowed_ref_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_windowed_img : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_windowed_real : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_integrated_ref_i : out std_logic_vector( 20-1 downto 0 );
    cav1_p1_integrated_ref_q : out std_logic_vector( 20-1 downto 0 );
    cav1_p1_integrated_i : out std_logic_vector( 20-1 downto 0 );
    cav1_p1_integrated_q : out std_logic_vector( 20-1 downto 0 );
    reset : out std_logic_vector( 1-1 downto 0 );
    cav1_p1_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    c1p1_pt_window : out std_logic_vector( 1-1 downto 0 );
    c1p1_pt_cntr : out std_logic_vector( 16-1 downto 0 );
    c1p1_integral_logic : out std_logic_vector( 1-1 downto 0 );
    cav1_p1_ref_amp_out : out std_logic_vector( 18-1 downto 0 );
    c1p1_delay_match : out std_logic_vector( 16-1 downto 0 );
    cav1_p1_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_amp_out : out std_logic_vector( 18-1 downto 0 );
    flo_c1p2_window : out std_logic_vector( 1-1 downto 0 );
    c1_p2_delay_amt : out std_logic_vector( 16-1 downto 0 );
    cav1_p2_windowed_img : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_windowed_real : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_windowed_ref_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_windowed_ref_q : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav1_p2_amp_out : out std_logic_vector( 18-1 downto 0 );
    c1p2_freq_err : out std_logic_vector( 32-1 downto 0 );
    c1_p2_delay_latch : out std_logic_vector( 1-1 downto 0 );
    c1p2_delay_match : out std_logic_vector( 16-1 downto 0 );
    cav1_sync : out std_logic_vector( 1-1 downto 0 );
    c1p2_ready : out std_logic_vector( 1-1 downto 0 );
    c1_ready : out std_logic_vector( 1-1 downto 0 );
    c1p1_ready : out std_logic_vector( 1-1 downto 0 );
    cav1_nco_sin : out std_logic_vector( 26-1 downto 0 );
    cav1_nco_cos : out std_logic_vector( 26-1 downto 0 );
    c1_stream_valid : out std_logic_vector( 1-1 downto 0 );
    c1_p1_delay_latch : out std_logic_vector( 1-1 downto 0 );
    cav1_p1_if_i : out std_logic_vector( 18-1 downto 0 );
    cav1_p1_if_q : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x8 : out std_logic_vector( 26-1 downto 0 );
    gateway_out34_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out35_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x7 : out std_logic_vector( 32-1 downto 0 );
    gateway_out5_x6 : out std_logic_vector( 26-1 downto 0 );
    gateway_out10_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x8 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x9 : out std_logic_vector( 1-1 downto 0 );
    gateway_out10_x3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out16_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x9 : out std_logic_vector( 32-1 downto 0 );
    gateway_out3_x10 : out std_logic_vector( 26-1 downto 0 );
    gateway_out4_x9 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x8 : out std_logic_vector( 26-1 downto 0 );
    gateway_out6_x5 : out std_logic_vector( 18-1 downto 0 );
    gateway_out7_x4 : out std_logic_vector( 34-1 downto 0 );
    gateway_out8_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x10 : out std_logic_vector( 20-1 downto 0 );
    gateway_out10_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out14_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out18 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x8 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3_x9 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4_x8 : out std_logic_vector( 32-1 downto 0 );
    gateway_out5_x7 : out std_logic_vector( 18-1 downto 0 );
    gateway_out6_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out8_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out9_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x6 : out std_logic_vector( 20-1 downto 0 );
    gateway_out10_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x2 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13 : out std_logic_vector( 32-1 downto 0 );
    gateway_out14 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3_x5 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4_x5 : out std_logic_vector( 32-1 downto 0 );
    gateway_out5_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out6_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7 : out std_logic_vector( 32-1 downto 0 );
    gateway_out8 : out std_logic_vector( 18-1 downto 0 );
    gateway_out9 : out std_logic_vector( 32-1 downto 0 );
    gateway_out1_x5 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2_x5 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out4_x4 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out6_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out8_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out9_x1 : out std_logic_vector( 16-1 downto 0 );
    gateway_out24_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out26_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out6_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out8_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out24 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25 : out std_logic_vector( 20-1 downto 0 );
    gateway_out26 : out std_logic_vector( 20-1 downto 0 );
    gateway_out6_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out8_x1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out44_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out46_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x7 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x7 : out std_logic_vector( 18-1 downto 0 );
    gateway_out20_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x7 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x6 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5_x5 : out std_logic_vector( 32-1 downto 0 );
    gateway_out27_x2 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x6 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x3 : out std_logic_vector( 10-1 downto 0 );
    gateway_out44 : out std_logic_vector( 18-1 downto 0 );
    gateway_out46 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out20 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x0 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5 : out std_logic_vector( 32-1 downto 0 );
    gateway_out6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out27 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x0 : out std_logic_vector( 10-1 downto 0 );
    gateway_out1 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out5_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out10_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out11_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out34_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out35_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out37_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out38_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out10 : out std_logic_vector( 1-1 downto 0 );
    gateway_out11_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out34 : out std_logic_vector( 1-1 downto 0 );
    gateway_out35 : out std_logic_vector( 18-1 downto 0 );
    gateway_out37 : out std_logic_vector( 1-1 downto 0 );
    gateway_out38 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x2 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_cav1;
architecture structural of dsp_cav1 is 
  signal amp : std_logic_vector( 18-1 downto 0 );
  signal ddci : std_logic_vector( 18-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal ddcq : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal ddcsync : std_logic_vector( 1-1 downto 0 );
  signal convert11_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal convert2_dout_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram1_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net_x3 : std_logic_vector( 16-1 downto 0 );
  signal register11_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal convert1_dout_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal dual_port_ram_doutb_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal convert5_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram1_doutb_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net_x0 : std_logic_vector( 20-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 20-1 downto 0 );
  signal addsub3_s_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal convert9_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert10_dout_net_x0 : std_logic_vector( 20-1 downto 0 );
  signal addsub_s_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal convert3_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal addsub3_s_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal relational1_op_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal mult4_p_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert4_dout_net_x0 : std_logic_vector( 20-1 downto 0 );
  signal convert9_dout_net_x1 : std_logic_vector( 20-1 downto 0 );
  signal convert10_dout_net : std_logic_vector( 20-1 downto 0 );
  signal register11_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal convert11_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal convert5_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register12_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal register13_q_net : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net_x4 : std_logic_vector( 16-1 downto 0 );
  signal mult2_p_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal register13_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register_q_net_x2 : std_logic_vector( 16-1 downto 0 );
  signal down_sample2_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal nco_sin : std_logic_vector( 26-1 downto 0 );
  signal nco_cos : std_logic_vector( 26-1 downto 0 );
  signal relational7_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal down_sample1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register35_q_net : std_logic_vector( 1-1 downto 0 );
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal down_sample1_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register36_q_net : std_logic_vector( 32-1 downto 0 );
  signal register31_q_net : std_logic_vector( 16-1 downto 0 );
  signal register32_q_net : std_logic_vector( 16-1 downto 0 );
  signal down_sample1_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register33_q_net : std_logic_vector( 16-1 downto 0 );
  signal register34_q_net : std_logic_vector( 16-1 downto 0 );
  signal register2_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register9_q_net : std_logic_vector( 32-1 downto 0 );
  signal register7_q_net : std_logic_vector( 1-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample6_q_net : std_logic_vector( 32-1 downto 0 );
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal fir_compiler_7_2_m_axis_data_tdata_real_net : std_logic_vector( 34-1 downto 0 );
  signal fir_compiler_7_2_m_axis_data_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal register12_q_net : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter3_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator3_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal accumulator2_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator1_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal register11_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x4 : std_logic_vector( 32-1 downto 0 );
  signal register12_q_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net_x5 : std_logic_vector( 32-1 downto 0 );
  signal inverter3_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal accumulator3_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter2_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal accumulator_q_net : std_logic_vector( 32-1 downto 0 );
  signal accumulator2_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter1_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal accumulator1_q_net : std_logic_vector( 32-1 downto 0 );
  signal register11_q_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal delay5_q_net_x2 : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal relational4_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net_x0 : std_logic_vector( 19-1 downto 0 );
  signal register_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net_x2 : std_logic_vector( 10-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 19-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net_x1 : std_logic_vector( 10-1 downto 0 );
  signal delay5_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 16-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal mult3_p_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net_x0 : std_logic;
  signal dds_compiler_6_0_m_axis_data_tvalid_net : std_logic;
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample7_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample3_q_net : std_logic_vector( 18-1 downto 0 );
  signal clock_enable_probe_q_net : std_logic_vector( 1-1 downto 0 );
  signal clock_enable_probe1_q_net : std_logic_vector( 1-1 downto 0 );
  signal complex_multiplier_6_0_m_axis_dout_tvalid_net : std_logic;
  signal complex_multiplier_6_0_m_axis_dout_tdata_imag_net : std_logic_vector( 33-1 downto 0 );
  signal complex_multiplier_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 33-1 downto 0 );
  signal down_sample2_q_net : std_logic;
  signal complex_multiplier_6_0_1_m_axis_dout_tvalid_net : std_logic;
  signal complex_multiplier_6_0_1_m_axis_dout_tdata_imag_net : std_logic_vector( 33-1 downto 0 );
  signal complex_multiplier_6_0_1_m_axis_dout_tdata_real_net : std_logic_vector( 33-1 downto 0 );
  signal down_sample1_q_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 1-1 downto 0 );
  signal register32_q_net_x0 : std_logic_vector( 33-1 downto 0 );
  signal register33_q_net_x0 : std_logic_vector( 33-1 downto 0 );
  signal convert10_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register31_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x5 : std_logic_vector( 33-1 downto 0 );
  signal register2_q_net_x6 : std_logic_vector( 33-1 downto 0 );
  signal register5_q_net : std_logic_vector( 18-1 downto 0 );
  signal register8_q_net : std_logic_vector( 32-1 downto 0 );
  signal register6_q_net : std_logic_vector( 18-1 downto 0 );
begin
  amp <= pa_stream_1;
  ddci <= iq_stream_1;
  phase_x0 <= pa_stream_2;
  channel <= pa_stream_3;
  ddcq <= iq_stream_2;
  ddcchannel <= iq_stream_3;
  ddcsync <= iq_stream_4;
  c1p2_pt_window <= convert11_dout_net_x1;
  cav1_p2_dc_tvalid <= convert2_dout_net_x1;
  cav1_p1_dc_real <= convert6_dout_net;
  cav1_p1_dc_img <= convert5_dout_net;
  cav1_p1_dc_freq <= convert1_dout_net_x1;
  c1p1_freq_err <= convert1_dout_net_x1;
  flo_c1p1_window <= convert2_dout_net_x2;
  cav1_p1_delayed_dc_img <= dual_port_ram_doutb_net;
  cav1_p1_delayed_dc_real <= dual_port_ram1_doutb_net;
  c1_p1_delay_amt <= register2_q_net_x3;
  cav1_p1_ref_phase_out <= register11_q_net_x0;
  c1p2_pt_cntr <= counter_op_net_x0;
  cav1_p2_dc_real <= convert1_dout_net_x0;
  cav1_p2_dc_img <= convert_dout_net_x0;
  cav1_p2_dc_freq <= convert1_dout_net_x2;
  cav1_p2_delayed_dc_img <= dual_port_ram_doutb_net_x0;
  c1p2_integral_logic <= convert5_dout_net_x1;
  cav1_p2_delayed_dc_real <= dual_port_ram1_doutb_net_x0;
  cav1_p2_ref_phase_out <= register11_q_net_x2;
  cav1_p2_ref_amp_out <= register12_q_net_x2;
  cav1_p2_integrated_ref_i <= convert2_dout_net_x0;
  cav1_p2_integrated_ref_q <= convert4_dout_net;
  c1p1_window_func <= addsub3_s_net_x1;
  cav1_p2_if_i <= down_sample1_q_net_x3;
  cav1_p2_if_q <= down_sample_q_net_x2;
  cav1_p2_integrated_i <= convert9_dout_net;
  cav1_p2_integrated_q <= convert10_dout_net_x0;
  cav1_p2_comparison_i <= addsub_s_net_x0;
  cav1_p2_comparison_q <= addsub_s_net_x0;
  cav1_p2_comparison_phase <= register_q_net_x3;
  dsp_cav1_reset <= convert3_dout_net_x1;
  c1p2_window_func <= addsub3_s_net_x2;
  cav1_nco_fb <= convert_dout_net_x2;
  cav1_p1_windowed_ref_i <= mult4_p_net_x0;
  cav1_p1_windowed_ref_q <= mult5_p_net_x0;
  cav1_p1_windowed_img <= mult2_p_net_x0;
  cav1_p1_windowed_real <= mult_p_net_x1;
  cav1_p1_integrated_ref_i <= convert2_dout_net;
  cav1_p1_integrated_ref_q <= convert4_dout_net_x0;
  cav1_p1_integrated_i <= convert9_dout_net_x1;
  cav1_p1_integrated_q <= convert10_dout_net;
  reset <= convert3_dout_net_x1;
  cav1_p1_comparison_phase <= register11_q_net_x3;
  c1p1_pt_window <= convert11_dout_net_x0;
  c1p1_pt_cntr <= counter_op_net;
  c1p1_integral_logic <= convert5_dout_net_x0;
  cav1_p1_ref_amp_out <= register12_q_net_x0;
  c1p1_delay_match <= register_q_net_x0;
  cav1_p1_phase_out <= register13_q_net;
  cav1_p1_amp_out <= register14_q_net;
  flo_c1p2_window <= convert2_dout_net_x3;
  c1_p2_delay_amt <= register2_q_net_x4;
  cav1_p2_windowed_img <= mult2_p_net_x1;
  cav1_p2_windowed_real <= mult_p_net_x2;
  cav1_p2_windowed_ref_i <= mult4_p_net;
  cav1_p2_windowed_ref_q <= mult5_p_net;
  cav1_p2_phase_out <= register13_q_net_x0;
  cav1_p2_amp_out <= register14_q_net_x0;
  c1p2_freq_err <= convert1_dout_net_x2;
  c1_p2_delay_latch <= delay2_q_net_x0;
  c1p2_delay_match <= register_q_net_x2;
  cav1_sync <= down_sample2_q_net_x0;
  c1p2_ready <= relational_op_net;
  c1_ready <= logical_y_net_x0;
  c1p1_ready <= relational1_op_net_x1;
  cav1_nco_sin <= nco_sin;
  cav1_nco_cos <= nco_cos;
  c1_stream_valid <= relational7_op_net;
  c1_p1_delay_latch <= delay2_q_net;
  cav1_p1_if_i <= down_sample1_q_net_x0;
  cav1_p1_if_q <= down_sample_q_net;
  register29_q_net <= cav1_p1_chan_sel;
  register1_q_net_x0 <= cav1_p1_cal_coef;
  register35_q_net <= cav1_nco_phase_reset;
  register30_q_net <= cav1_p2_chan_sel;
  down_sample1_q_net_x2 <= rf_ref_amp;
  down_sample_q_net_x1 <= rf_ref_phase;
  down_sample_q_net_x0 <= rf_ref_q;
  register36_q_net <= cav1_nco_phase_adj;
  register31_q_net <= cav1_p1_window_start;
  register32_q_net <= cav1_p1_window_stop;
  down_sample1_q_net_x1 <= rf_ref_i;
  register33_q_net <= cav1_p2_window_start;
  register34_q_net <= cav1_p2_window_stop;
  register2_q_net_x0 <= cav1_p2_cal_coef;
  gateway_out3_x8 <= nco_sin;
  gateway_out34_x1 <= down_sample1_q_net_x3;
  gateway_out35_x1 <= down_sample_q_net_x2;
  gateway_out4_x7 <= register9_q_net;
  gateway_out5_x6 <= nco_cos;
  gateway_out10_x2 <= convert6_dout_net;
  gateway_out1_x8 <= convert5_dout_net;
  gateway_out1_x9 <= register7_q_net;
  gateway_out10_x3 <= mult2_p_net;
  gateway_out15_x1 <= convert_dout_net;
  gateway_out16_x1 <= convert1_dout_net;
  gateway_out2_x9 <= down_sample6_q_net;
  gateway_out3_x10 <= nco_sin;
  gateway_out4_x9 <= phase;
  gateway_out5_x8 <= nco_cos;
  gateway_out6_x5 <= cordic_6_0_m_axis_dout_tdata_real_net;
  gateway_out7_x4 <= fir_compiler_7_2_m_axis_data_tdata_real_net;
  gateway_out8_x4 <= fir_compiler_7_2_m_axis_data_tvalid_net;
  gateway_out_x3 <= inverter_op_net;
  gateway_out1_x10 <= convert2_dout_net_x0;
  gateway_out10_x4 <= mult4_p_net;
  gateway_out11_x4 <= register1_q_net;
  gateway_out12_x0 <= convert4_dout_net;
  gateway_out13_x0 <= register12_q_net;
  gateway_out14_x0 <= mult5_p_net;
  gateway_out15_x0 <= register2_q_net;
  gateway_out16_x0 <= inverter3_op_net;
  gateway_out17_x0 <= accumulator3_q_net_x0;
  gateway_out18 <= register1_q_net;
  gateway_out2_x8 <= inverter2_op_net;
  gateway_out22_x0 <= convert9_dout_net;
  gateway_out23_x0 <= convert10_dout_net_x0;
  gateway_out3_x9 <= accumulator_q_net_x0;
  gateway_out4_x8 <= accumulator2_q_net_x0;
  gateway_out5_x7 <= mult2_p_net_x1;
  gateway_out6_x4 <= inverter1_op_net;
  gateway_out7_x3 <= accumulator1_q_net_x0;
  gateway_out8_x0 <= mult_p_net_x2;
  gateway_out9_x0 <= register11_q_net;
  gateway_out_x1 <= inverter_op_net_x0;
  gateway_out1_x6 <= convert2_dout_net;
  gateway_out10_x1 <= mult4_p_net_x0;
  gateway_out11_x2 <= register1_q_net_x4;
  gateway_out12 <= convert4_dout_net_x0;
  gateway_out13 <= register12_q_net_x1;
  gateway_out14 <= mult5_p_net_x0;
  gateway_out15 <= register2_q_net_x5;
  gateway_out16 <= inverter3_op_net_x0;
  gateway_out17 <= accumulator3_q_net;
  gateway_out2_x6 <= inverter2_op_net_x0;
  gateway_out22 <= convert9_dout_net_x1;
  gateway_out23 <= convert10_dout_net;
  gateway_out3_x5 <= accumulator_q_net;
  gateway_out4_x5 <= accumulator2_q_net;
  gateway_out5_x4 <= mult2_p_net_x0;
  gateway_out6_x0 <= inverter1_op_net_x0;
  gateway_out7 <= accumulator1_q_net;
  gateway_out8 <= mult_p_net_x1;
  gateway_out9 <= register11_q_net_x1;
  gateway_out1_x5 <= delay5_q_net_x2;
  gateway_out2_x5 <= delay3_q_net_x0;
  gateway_out27_x1 <= relational4_op_net_x0;
  gateway_out28_x1 <= relational3_op_net_x0;
  gateway_out29_x1 <= convert11_dout_net_x1;
  gateway_out3_x4 <= convert7_dout_net_x0;
  gateway_out4_x4 <= counter_op_net_x0;
  gateway_out5_x3 <= convert5_dout_net_x1;
  gateway_out6_x1 <= convert3_dout_net_x1;
  gateway_out7_x2 <= register1_q_net_x3;
  gateway_out8_x3 <= convert2_dout_net_x3;
  gateway_out9_x1 <= delay8_q_net;
  gateway_out24_x0 <= convert5_dout_net_x0;
  gateway_out25_x0 <= convert10_dout_net;
  gateway_out26_x0 <= convert9_dout_net_x1;
  gateway_out6_x3 <= convert5_dout_net_x0;
  gateway_out7_x1 <= convert4_dout_net_x0;
  gateway_out8_x2 <= convert2_dout_net;
  gateway_out_x2 <= cordic_6_0_2_m_axis_dout_tvalid_net;
  gateway_out24 <= convert5_dout_net_x1;
  gateway_out25 <= convert10_dout_net_x0;
  gateway_out26 <= convert9_dout_net;
  gateway_out6_x2 <= convert5_dout_net_x1;
  gateway_out7_x0 <= convert4_dout_net;
  gateway_out8_x1 <= convert2_dout_net_x0;
  gateway_out44_x0 <= mult_p_net_x2;
  gateway_out46_x0 <= mult2_p_net_x1;
  gateway_out1_x7 <= cordic_6_0_2_m_axis_dout_tdata_phase_net_x0;
  gateway_out11_x3 <= convert_dout_net_x2;
  gateway_out19_x0 <= mult3_p_net_x0;
  gateway_out2_x7 <= cordic_6_0_2_m_axis_dout_tdata_phase_net_x0;
  gateway_out20_x0 <= convert2_dout_net_x3;
  gateway_out3_x7 <= cordic_6_0_2_m_axis_dout_tdata_phase_net_x0;
  gateway_out4_x6 <= counter_op_net_x0;
  gateway_out5_x5 <= convert1_dout_net_x2;
  gateway_out27_x2 <= addsub3_s_net_x0;
  gateway_out28_x2 <= register_q_net_x1;
  gateway_out29_x2 <= register1_q_net_x2;
  gateway_out3_x6 <= mult1_p_net_x0;
  gateway_out_x0 <= mult3_p_net_x0;
  gateway_out1_x4 <= relational1_op_net_x0;
  gateway_out2_x4 <= delay5_q_net_x1;
  gateway_out3_x2 <= register_q_net_x1;
  gateway_out4_x1 <= register1_q_net_x2;
  gateway_out5_x1 <= convert3_dout_net_x0;
  gateway_out1_x3 <= mult_p_net_x0;
  gateway_out2_x3 <= register2_q_net_x2;
  gateway_out44 <= mult_p_net_x1;
  gateway_out46 <= mult2_p_net_x0;
  gateway_out1_x2 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out11 <= convert_dout_net_x1;
  gateway_out19 <= mult3_p_net;
  gateway_out2_x2 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out20 <= convert2_dout_net_x2;
  gateway_out3_x1 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out4_x0 <= counter_op_net_x0;
  gateway_out5 <= convert1_dout_net_x1;
  gateway_out6 <= logical_y_net;
  gateway_out27 <= addsub3_s_net;
  gateway_out28 <= register_q_net;
  gateway_out29 <= register1_q_net_x1;
  gateway_out3_x0 <= mult1_p_net;
  gateway_out <= mult3_p_net;
  gateway_out1_x1 <= relational1_op_net;
  gateway_out2_x1 <= delay5_q_net;
  gateway_out3 <= register_q_net;
  gateway_out4 <= register1_q_net_x1;
  gateway_out5_x0 <= convert3_dout_net;
  gateway_out1_x0 <= mult_p_net;
  gateway_out2_x0 <= register2_q_net_x1;
  gateway_out1 <= delay5_q_net_x0;
  gateway_out2 <= delay3_q_net;
  gateway_out27_x0 <= relational4_op_net;
  gateway_out28_x0 <= relational3_op_net;
  gateway_out29_x0 <= convert11_dout_net_x0;
  gateway_out3_x3 <= convert7_dout_net;
  gateway_out5_x2 <= convert5_dout_net_x0;
  gateway_out10_x0 <= convert11_dout_net_x0;
  gateway_out11_x1 <= mult2_p_net_x0;
  gateway_out34_x0 <= convert11_dout_net_x0;
  gateway_out35_x0 <= mult4_p_net_x0;
  gateway_out37_x0 <= convert11_dout_net_x0;
  gateway_out38_x0 <= mult5_p_net_x0;
  gateway_out4_x3 <= mult3_p_net_x2;
  gateway_out10 <= convert11_dout_net_x1;
  gateway_out11_x0 <= mult2_p_net_x1;
  gateway_out34 <= convert11_dout_net_x1;
  gateway_out35 <= mult4_p_net;
  gateway_out37 <= convert11_dout_net_x1;
  gateway_out38 <= mult5_p_net;
  gateway_out4_x2 <= mult3_p_net_x1;
  clk_net_x0 <= clk_1;
  ce_net <= ce_1;
  clk_net <= clk_12;
  ce_net_x0 <= ce_12;
  ddc_nco : entity work.dsp_ddc_nco 
  port map (
    phase_ctrl => down_sample6_q_net,
    phase_reset => register7_q_net,
    flo_c1p2_window => convert2_dout_net_x3,
    cav1_p2_if_i => down_sample1_q_net_x3,
    cav1_p2_if_q => down_sample_q_net_x2,
    clk_1 => clk_net_x0,
    ce_1 => ce_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    tvalid => dds_compiler_6_0_m_axis_data_tvalid_net,
    sine => nco_sin,
    cosine => nco_cos,
    nco_out_1 => nco_sin,
    nco_out_2 => nco_cos,
    gateway_out10 => mult2_p_net,
    gateway_out15 => convert_dout_net,
    gateway_out16 => convert1_dout_net,
    gateway_out3 => nco_sin,
    gateway_out4 => phase,
    gateway_out5 => nco_cos,
    gateway_out6 => cordic_6_0_m_axis_dout_tdata_real_net,
    gateway_out7 => fir_compiler_7_2_m_axis_data_tdata_real_net,
    gateway_out8 => fir_compiler_7_2_m_axis_data_tvalid_net
  );
  iq_integration : entity work.dsp_iq_integration 
  port map (
    cav_windowed_imag => mult2_p_net_x1,
    cav_windowed_real => mult_p_net_x2,
    ref_windowed_i => mult4_p_net,
    ref_windowed_q => mult5_p_net,
    window_profile => convert11_dout_net_x1,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    cav_int_q => convert10_dout_net_x0,
    cav_int_i => convert9_dout_net,
    ref_int_i => convert2_dout_net_x0,
    ref_int_q => convert4_dout_net,
    gateway_out => inverter_op_net,
    gateway_out1 => convert2_dout_net_x0,
    gateway_out11 => register1_q_net,
    gateway_out12 => convert4_dout_net,
    gateway_out13 => register12_q_net,
    gateway_out15 => register2_q_net,
    gateway_out16 => inverter3_op_net,
    gateway_out17 => accumulator3_q_net_x0,
    gateway_out18 => register1_q_net,
    gateway_out2 => inverter2_op_net,
    gateway_out22 => convert9_dout_net,
    gateway_out23 => convert10_dout_net_x0,
    gateway_out3 => accumulator_q_net_x0,
    gateway_out4 => accumulator2_q_net_x0,
    gateway_out6 => inverter1_op_net,
    gateway_out7 => accumulator1_q_net_x0,
    gateway_out9 => register11_q_net
  );
  iq_integration1 : entity work.dsp_iq_integration1 
  port map (
    cav_windowed_imag => mult2_p_net_x0,
    cav_windowed_real => mult_p_net_x1,
    ref_windowed_i => mult4_p_net_x0,
    ref_windowed_q => mult5_p_net_x0,
    window_profile => convert11_dout_net_x0,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    cav_int_q => convert10_dout_net,
    cav_int_i => convert9_dout_net_x1,
    ref_int_i => convert2_dout_net,
    ref_int_q => convert4_dout_net_x0,
    gateway_out => inverter_op_net_x0,
    gateway_out1 => convert2_dout_net,
    gateway_out11 => register1_q_net_x4,
    gateway_out12 => convert4_dout_net_x0,
    gateway_out13 => register12_q_net_x1,
    gateway_out15 => register2_q_net_x5,
    gateway_out16 => inverter3_op_net_x0,
    gateway_out17 => accumulator3_q_net,
    gateway_out2 => inverter2_op_net_x0,
    gateway_out22 => convert9_dout_net_x1,
    gateway_out23 => convert10_dout_net,
    gateway_out3 => accumulator_q_net,
    gateway_out4 => accumulator2_q_net,
    gateway_out6 => inverter1_op_net_x0,
    gateway_out7 => accumulator1_q_net,
    gateway_out9 => register11_q_net_x1
  );
  masking_n_delay : entity work.dsp_masking_n_delay_x0 
  port map (
    phi_reset_trig => down_sample2_q_net_x0,
    start_pt => register33_q_net,
    stop_pt => register34_q_net,
    delay_amt => register2_q_net_x4,
    delay_latch => delay2_q_net_x0,
    clk_1 => clk_net_x0,
    ce_1 => ce_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    trig_reset => convert3_dout_net_x1,
    counter_x0 => counter_op_net_x0,
    eval_window => convert11_dout_net_x1,
    integral_trig => convert5_dout_net_x1,
    flo_window => convert2_dout_net_x3,
    stream_valid => relational7_op_net,
    delay_val => register_q_net_x2,
    gateway_out1 => delay5_q_net_x2,
    gateway_out2 => delay3_q_net_x0,
    gateway_out27 => relational4_op_net_x0,
    gateway_out28 => relational3_op_net_x0,
    gateway_out29 => convert11_dout_net_x1,
    gateway_out3 => convert7_dout_net_x0,
    gateway_out4 => counter_op_net_x0,
    gateway_out5 => convert5_dout_net_x1,
    gateway_out6 => convert3_dout_net_x1,
    gateway_out7 => register1_q_net_x3,
    gateway_out8 => convert2_dout_net_x3,
    gateway_out9 => delay8_q_net
  );
  pa_conversion1 : entity work.dsp_pa_conversion1 
  port map (
    cav_int_q => convert10_dout_net,
    cav_int_i => convert9_dout_net_x1,
    ref_int_q => convert4_dout_net_x0,
    ref_int_i => convert2_dout_net,
    integration_trig => convert5_dout_net_x0,
    cal_coefficient => down_sample7_q_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    phi_diff => addsub_s_net,
    ref_phi_out => register11_q_net_x0,
    ref_amp_out => register12_q_net_x0,
    cav_phi_out => register13_q_net,
    cav_amp_out => register14_q_net,
    gateway_out => cordic_6_0_2_m_axis_dout_tvalid_net
  );
  pa_conversion2 : entity work.dsp_pa_conversion2 
  port map (
    cav_int_q => convert10_dout_net_x0,
    cav_int_i => convert9_dout_net,
    ref_int_q => convert4_dout_net,
    ref_int_i => convert2_dout_net_x0,
    integration_trig => convert5_dout_net_x1,
    cal_coefficient => down_sample3_q_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    phi_diff => addsub_s_net_x0,
    ref_phi_out => register11_q_net_x2,
    ref_amp_out => register12_q_net_x2,
    cav_phi_out => register13_q_net_x0,
    cav_amp_out => register14_q_net_x0
  );
  subsystem1_x4 : entity work.dsp_subsystem1_x2 
  port map (
    iq_stream_in_1 => ddci,
    iq_chan_sel => register30_q_net,
    iq_stream_in_2 => ddcq,
    iq_stream_in_3 => ddcchannel,
    iq_stream_in_4 => ddcsync,
    clk_1 => clk_net_x0,
    ce_1 => ce_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    ddci => down_sample1_q_net_x3,
    ddcq => down_sample_q_net_x2
  );
  subsystem2_x4 : entity work.dsp_subsystem2_x3 
  port map (
    imag => mult2_p_net_x1,
    real => mult_p_net_x2,
    flo_window => convert2_dout_net_x3,
    reset => convert3_dout_net_x1,
    c1p2_pt_cntr => counter_op_net_x0,
    clk_1 => clk_net_x0,
    ce_1 => ce_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    nco_err_fb => convert_dout_net_x2,
    freq_err => convert1_dout_net_x2,
    gateway_out1_x0 => cordic_6_0_2_m_axis_dout_tdata_phase_net_x0,
    gateway_out11 => convert_dout_net_x2,
    gateway_out19 => mult3_p_net_x0,
    gateway_out2_x0 => cordic_6_0_2_m_axis_dout_tdata_phase_net_x0,
    gateway_out3 => cordic_6_0_2_m_axis_dout_tdata_phase_net_x0,
    gateway_out5_x0 => convert1_dout_net_x2,
    gateway_out27 => addsub3_s_net_x0,
    gateway_out28 => register_q_net_x1,
    gateway_out29 => register1_q_net_x2,
    gateway_out3_x1 => mult1_p_net_x0,
    gateway_out => mult3_p_net_x0,
    gateway_out1_x1 => relational1_op_net_x0,
    gateway_out2_x1 => delay5_q_net_x1,
    gateway_out3_x0 => register_q_net_x1,
    gateway_out4 => register1_q_net_x2,
    gateway_out5 => convert3_dout_net_x0,
    gateway_out1 => mult_p_net_x0,
    gateway_out2 => register2_q_net_x2
  );
  subsystem3_x3 : entity work.dsp_subsystem3_x2 
  port map (
    iq_stream_in_1 => ddci,
    iq_chan_sel => register29_q_net,
    iq_stream_in_2 => ddcq,
    iq_stream_in_3 => ddcchannel,
    iq_stream_in_4 => ddcsync,
    clk_1 => clk_net_x0,
    ce_1 => ce_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    ddci => down_sample1_q_net_x0,
    ddcq => down_sample_q_net,
    sync => down_sample2_q_net_x0
  );
  subsystem4 : entity work.dsp_subsystem4_x0 
  port map (
    imag => mult2_p_net_x0,
    real => mult_p_net_x1,
    flo_window => convert2_dout_net_x2,
    reset => convert3_dout_net_x1,
    c1p2_pt_cntr => counter_op_net_x0,
    clk_1 => clk_net_x0,
    ce_1 => ce_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    nco_err_fb => convert_dout_net_x1,
    freq_err => convert1_dout_net_x1,
    gateway_out1_x0 => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    gateway_out11 => convert_dout_net_x1,
    gateway_out19 => mult3_p_net,
    gateway_out2_x0 => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    gateway_out3 => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    gateway_out5_x0 => convert1_dout_net_x1,
    gateway_out6 => logical_y_net,
    gateway_out27 => addsub3_s_net,
    gateway_out28 => register_q_net,
    gateway_out29 => register1_q_net_x1,
    gateway_out3_x1 => mult1_p_net,
    gateway_out => mult3_p_net,
    gateway_out1_x1 => relational1_op_net,
    gateway_out2_x1 => delay5_q_net,
    gateway_out3_x0 => register_q_net,
    gateway_out4 => register1_q_net_x1,
    gateway_out5 => convert3_dout_net,
    gateway_out1 => mult_p_net,
    gateway_out2 => register2_q_net_x1
  );
  c1p1_masking_window : entity work.dsp_c1p1_masking_window 
  port map (
    phi_reset_trig => down_sample2_q_net_x0,
    start_pt => register31_q_net,
    stop_pt => register32_q_net,
    delay_amt => register2_q_net_x3,
    delay_latch => delay2_q_net,
    clk_1 => clk_net_x0,
    ce_1 => ce_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    counter_x0 => counter_op_net,
    eval_window => convert11_dout_net_x0,
    integral_trig => convert5_dout_net_x0,
    flo_window => convert2_dout_net_x2,
    delay_val => register_q_net_x0,
    gateway_out1 => delay5_q_net_x0,
    gateway_out2 => delay3_q_net,
    gateway_out27 => relational4_op_net,
    gateway_out28 => relational3_op_net,
    gateway_out29 => convert11_dout_net_x0,
    gateway_out3 => convert7_dout_net,
    gateway_out5 => convert5_dout_net_x0
  );
  c1p1_window_wf1 : entity work.dsp_c1p1_window_wf1 
  port map (
    cav_img => convert5_dout_net,
    cav_real => convert6_dout_net,
    ref_img => down_sample_q_net_x0,
    ref_real => down_sample1_q_net_x1,
    window_profile => addsub3_s_net_x1,
    cav_delayed_imag => dual_port_ram_doutb_net,
    cav_delayed_real => dual_port_ram1_doutb_net,
    pt_window => convert11_dout_net_x0,
    delay_match_amt => register_q_net_x0,
    pt_cntr => counter_op_net,
    reset => convert3_dout_net_x1,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    cav_windowed_imag => mult2_p_net_x0,
    cav_windowed_real => mult_p_net_x1,
    ref_windowed_imag => mult5_p_net_x0,
    ref_windowed_real => mult4_p_net_x0,
    delay_amt => register2_q_net_x3,
    delay_amt_latch => delay2_q_net,
    gateway_out11 => mult2_p_net_x0,
    gateway_out35 => mult4_p_net_x0,
    gateway_out38 => mult5_p_net_x0,
    gateway_out4 => mult3_p_net_x2
  );
  c1p2_window_wf : entity work.dsp_c1p2_window_wf 
  port map (
    cav_img => convert_dout_net_x0,
    cav_real => convert1_dout_net_x0,
    ref_img => down_sample_q_net_x0,
    ref_real => down_sample1_q_net_x1,
    window_profile => addsub3_s_net_x2,
    pt_window => convert11_dout_net_x1,
    delay_match_amt => register_q_net_x2,
    pt_cntr => counter_op_net_x0,
    reset => convert3_dout_net_x1,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    cav_windowed_imag => mult2_p_net_x1,
    cav_windowed_real => mult_p_net_x2,
    ref_windowed_imag => mult5_p_net,
    ref_windowed_real => mult4_p_net,
    delayed_cav_dc_img => dual_port_ram_doutb_net_x0,
    delayed_cav_dc_real => dual_port_ram1_doutb_net_x0,
    delay_amt => register2_q_net_x4,
    delay_amt_latch => delay2_q_net_x0,
    gateway_out11 => mult2_p_net_x1,
    gateway_out35 => mult4_p_net,
    gateway_out38 => mult5_p_net,
    gateway_out4 => mult3_p_net_x1
  );
  c1p2_windowing_func1 : entity work.dsp_c1p2_windowing_func1 
  port map (
    imag => convert5_dout_net,
    real => convert6_dout_net,
    eval_window => convert11_dout_net_x0,
    c1p2_pt_cntr => counter_op_net_x0,
    cav1_p2_dc_tvalid => convert2_dout_net_x1,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    window_profile => addsub3_s_net_x1
  );
  c1p2_windowing_func2 : entity work.dsp_c1p2_windowing_func2_x0 
  port map (
    imag => convert_dout_net_x0,
    real => convert1_dout_net_x0,
    eval_window => convert11_dout_net_x1,
    c1p2_pt_cntr => counter_op_net_x0,
    cav1_p2_dc_tvalid => convert2_dout_net_x1,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    window_profile => addsub3_s_net_x2
  );
  clock_enable_probe : entity work.dsp_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => down_sample_q_net,
    clk => clk_net,
    ce => ce_net_x0,
    q => clock_enable_probe_q_net
  );
  clock_enable_probe1 : entity work.dsp_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => down_sample_q_net_x2,
    clk => clk_net,
    ce => ce_net_x0,
    q => clock_enable_probe1_q_net
  );
  complex_multiplier_6_0 : entity work.xlcomplex_multiplier_c63b76e1073c2a8c4a665cfadb8ce1ce 
  port map (
    s_axis_a_tvalid => down_sample2_q_net,
    s_axis_a_tdata_imag => down_sample_q_net,
    s_axis_a_tdata_real => down_sample1_q_net_x0,
    s_axis_b_tvalid => dds_compiler_6_0_m_axis_data_tvalid_net,
    s_axis_b_tdata_imag => nco_sin,
    s_axis_b_tdata_real => nco_cos,
    clk => clk_net,
    ce => ce_net_x0,
    m_axis_dout_tvalid => complex_multiplier_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => complex_multiplier_6_0_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => complex_multiplier_6_0_m_axis_dout_tdata_real_net
  );
  complex_multiplier_6_0_1 : entity work.xlcomplex_multiplier_c63b76e1073c2a8c4a665cfadb8ce1ce 
  port map (
    s_axis_a_tvalid => down_sample1_q_net,
    s_axis_a_tdata_imag => down_sample_q_net_x2,
    s_axis_a_tdata_real => down_sample1_q_net_x3,
    s_axis_b_tvalid => dds_compiler_6_0_m_axis_data_tvalid_net,
    s_axis_b_tdata_imag => nco_sin,
    s_axis_b_tdata_real => nco_cos,
    clk => clk_net,
    ce => ce_net_x0,
    m_axis_dout_tvalid => complex_multiplier_6_0_1_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => complex_multiplier_6_0_1_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => complex_multiplier_6_0_1_m_axis_dout_tdata_real_net
  );
  constant_x0 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant7 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  convert : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 29,
    din_width => 33,
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
    clk => clk_net,
    ce => ce_net_x0,
    dout => convert_dout_net_x0
  );
  convert1 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 29,
    din_width => 33,
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
    clk => clk_net,
    ce => ce_net_x0,
    dout => convert1_dout_net_x0
  );
  convert10 : entity work.dsp_xlconvert 
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
    din => down_sample2_q_net_x0,
    clk => clk_net,
    ce => ce_net_x0,
    dout => convert10_dout_net_x1
  );
  convert11 : entity work.dsp_xlconvert 
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
    din => down_sample2_q_net_x0,
    clk => clk_net,
    ce => ce_net_x0,
    dout => convert11_dout_net
  );
  convert2 : entity work.dsp_xlconvert 
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
    din => register31_q_net_x0,
    clk => clk_net,
    ce => ce_net_x0,
    dout => convert2_dout_net_x1
  );
  convert5 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 29,
    din_width => 33,
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
    din => register1_q_net_x5,
    clk => clk_net,
    ce => ce_net_x0,
    dout => convert5_dout_net
  );
  convert6 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 29,
    din_width => 33,
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
    din => register2_q_net_x6,
    clk => clk_net,
    ce => ce_net_x0,
    dout => convert6_dout_net
  );
  down_sample1 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => clock_enable_probe1_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net_x0,
    q(0) => down_sample1_q_net
  );
  down_sample2 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => clock_enable_probe_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net_x0,
    q(0) => down_sample2_q_net
  );
  down_sample3 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register5_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net_x0,
    q => down_sample3_q_net
  );
  down_sample6 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 32,
    d_width => 32,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 32,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register8_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net_x0,
    q => down_sample6_q_net
  );
  down_sample7 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register6_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net_x0,
    q => down_sample7_q_net
  );
  logical : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => relational1_op_net_x1,
    d1 => relational_op_net,
    clk => clk_net,
    ce => ce_net_x0,
    y => logical_y_net_x0
  );
  register_x0 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    d => addsub_s_net_x0,
    rst => convert10_dout_net_x1,
    clk => clk_net,
    ce => ce_net_x0,
    q => register_q_net_x3
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 33,
    init_value => b"000000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_m_axis_dout_tdata_imag_net,
    en(0) => complex_multiplier_6_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net_x0,
    q => register1_q_net_x5
  );
  register11 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    d => addsub_s_net,
    rst => convert11_dout_net,
    clk => clk_net,
    ce => ce_net_x0,
    q => register11_q_net_x3
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 33,
    init_value => b"000000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_m_axis_dout_tdata_real_net,
    en(0) => complex_multiplier_6_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net_x0,
    q => register2_q_net_x6
  );
  register31 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d(0) => complex_multiplier_6_0_1_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net_x0,
    q => register31_q_net_x0
  );
  register32 : entity work.dsp_xlregister 
  generic map (
    d_width => 33,
    init_value => b"000000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_1_m_axis_dout_tdata_imag_net,
    en(0) => complex_multiplier_6_0_1_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net_x0,
    q => register32_q_net_x0
  );
  register33 : entity work.dsp_xlregister 
  generic map (
    d_width => 33,
    init_value => b"000000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_1_m_axis_dout_tdata_real_net,
    en(0) => complex_multiplier_6_0_1_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net_x0,
    q => register33_q_net_x0
  );
  register5 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register2_q_net_x0,
    clk => clk_net_x0,
    ce => ce_net,
    q => register5_q_net
  );
  register6 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register1_q_net_x0,
    clk => clk_net_x0,
    ce => ce_net,
    q => register6_q_net
  );
  register7 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample2_q_net_x0,
    clk => clk_net,
    ce => ce_net_x0,
    q => register7_q_net
  );
  register8 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register36_q_net,
    clk => clk_net_x0,
    ce => ce_net,
    q => register8_q_net
  );
  register9 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register36_q_net,
    clk => clk_net_x0,
    ce => ce_net,
    q => register9_q_net
  );
  relational : entity work.sysgen_relational_da7c781c60 
  port map (
    clr => '0',
    a => register_q_net_x3,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net_x0,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_da7c781c60 
  port map (
    clr => '0',
    a => register11_q_net_x3,
    b => constant7_op_net,
    clk => clk_net,
    ce => ce_net_x0,
    op => relational1_op_net_x1
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/DDC NCO1/four_point_avg1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_four_point_avg1_x0 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_four_point_avg1_x0;
architecture structural of dsp_four_point_avg1_x0 is 
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal cmult_p_net : std_logic_vector( 18-1 downto 0 );
  signal cmult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal cmult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub3_s_net;
  phase <= in1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult_p_net,
    b => cmult1_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult2_p_net,
    b => cmult3_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub2_s_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  cmult : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_bin_pt => 14,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 16,
    c_output_width => 34,
    core_name0 => "dsp_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => phase,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult_p_net
  );
  cmult1 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_bin_pt => 14,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 16,
    c_output_width => 34,
    core_name0 => "dsp_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult1_p_net
  );
  cmult2 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_bin_pt => 14,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 16,
    c_output_width => 34,
    core_name0 => "dsp_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult2_p_net
  );
  cmult3 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_bin_pt => 14,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 16,
    c_output_width => 34,
    core_name0 => "dsp_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult3_p_net
  );
  delay1 : entity work.dsp_xldelay 
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
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/DDC NCO1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_ddc_nco1 is
  port (
    phase_ctrl : in std_logic_vector( 32-1 downto 0 );
    phase_reset : in std_logic_vector( 1-1 downto 0 );
    flo_c1p2_window : in std_logic_vector( 1-1 downto 0 );
    cav1_p2_if_i : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_q : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    tvalid : out std_logic;
    sine : out std_logic_vector( 26-1 downto 0 );
    cosine : out std_logic_vector( 26-1 downto 0 );
    nco_out_1 : out std_logic_vector( 26-1 downto 0 );
    nco_out_2 : out std_logic_vector( 26-1 downto 0 );
    gateway_out10 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15 : out std_logic_vector( 18-1 downto 0 );
    gateway_out16 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3 : out std_logic_vector( 26-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5 : out std_logic_vector( 26-1 downto 0 );
    gateway_out6 : out std_logic_vector( 18-1 downto 0 );
    gateway_out7 : out std_logic_vector( 34-1 downto 0 );
    gateway_out8 : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_ddc_nco1;
architecture structural of dsp_ddc_nco1 is 
  signal dds_compiler_6_0_m_axis_data_tvalid_net : std_logic;
  signal nco_sin : std_logic_vector( 26-1 downto 0 );
  signal nco_cos : std_logic_vector( 26-1 downto 0 );
  signal down_sample6_q_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample5_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 18-1 downto 0 );
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal fir_compiler_7_2_m_axis_data_tdata_real_net : std_logic_vector( 34-1 downto 0 );
  signal fir_compiler_7_2_m_axis_data_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net_x0 : std_logic;
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tvalid_net : std_logic;
  signal down_sample3_q_net : std_logic;
  signal clock_enable_probe1_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant21_op_net : std_logic_vector( 1-1 downto 0 );
  signal dds_compiler_6_0_s_axis_phase_tready_net : std_logic;
  signal fir_compiler_7_2_s_axis_data_tready_net : std_logic;
begin
  tvalid <= dds_compiler_6_0_m_axis_data_tvalid_net;
  sine <= nco_sin;
  cosine <= nco_cos;
  nco_out_1 <= nco_sin;
  nco_out_2 <= nco_cos;
  down_sample6_q_net <= phase_ctrl;
  down_sample5_q_net <= phase_reset;
  convert2_dout_net <= flo_c1p2_window;
  down_sample1_q_net <= cav1_p2_if_i;
  down_sample_q_net <= cav1_p2_if_q;
  gateway_out10 <= mult2_p_net;
  gateway_out15 <= convert_dout_net;
  gateway_out16 <= convert1_dout_net;
  gateway_out3 <= nco_sin;
  gateway_out4 <= phase;
  gateway_out5 <= nco_cos;
  gateway_out6 <= cordic_6_0_m_axis_dout_tdata_real_net;
  gateway_out7 <= fir_compiler_7_2_m_axis_data_tdata_real_net;
  gateway_out8 <= fir_compiler_7_2_m_axis_data_tvalid_net;
  clk_net_x0 <= clk_1;
  ce_net <= ce_1;
  clk_net <= clk_12;
  ce_net_x0 <= ce_12;
  four_point_avg1_x3 : entity work.dsp_four_point_avg1_x0 
  port map (
    in1 => phase,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    out1 => addsub3_s_net
  );
  cordic_6_0 : entity work.xlcordic_508e230f269385a677d56937823ab702 
  port map (
    s_axis_cartesian_tvalid => down_sample3_q_net,
    s_axis_cartesian_tdata_imag => convert_dout_net,
    s_axis_cartesian_tdata_real => convert1_dout_net,
    clk => clk_net,
    ce => ce_net_x0,
    m_axis_dout_tvalid => cordic_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_phase => phase,
    m_axis_dout_tdata_real => cordic_6_0_m_axis_dout_tdata_real_net
  );
  clock_enable_probe1 : entity work.dsp_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => down_sample_q_net,
    clk => clk_net,
    ce => ce_net_x0,
    q => clock_enable_probe1_q_net
  );
  constant21 : entity work.sysgen_constant_0b5fa36c3d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant21_op_net
  );
  convert : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
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
    din => down_sample_q_net,
    clk => clk_net,
    ce => ce_net_x0,
    dout => convert_dout_net
  );
  convert1 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 17,
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
    din => down_sample1_q_net,
    clk => clk_net,
    ce => ce_net_x0,
    dout => convert1_dout_net
  );
  dds_compiler_6_0 : entity work.xldds_compiler_444acb262cbc67c949c2a465a00fd7f3 
  port map (
    s_axis_phase_tvalid => constant21_op_net(0),
    s_axis_phase_tdata_resync => down_sample5_q_net,
    s_axis_phase_tdata_pinc => down_sample6_q_net,
    m_axis_data_tready => constant21_op_net(0),
    clk => clk_net,
    ce => ce_net_x0,
    s_axis_phase_tready => dds_compiler_6_0_s_axis_phase_tready_net,
    m_axis_data_tvalid => dds_compiler_6_0_m_axis_data_tvalid_net,
    m_axis_data_tdata_sine => nco_sin,
    m_axis_data_tdata_cosine => nco_cos
  );
  down_sample3 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => clock_enable_probe1_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net_x0,
    q(0) => down_sample3_q_net
  );
  fir_compiler_7_2 : entity work.xlfir_compiler_efa33372c7dc03aeedc3e51951561a81 
  port map (
    s_axis_data_tdata_real => mult2_p_net,
    src_clk => clk_net,
    src_ce => ce_net_x0,
    clk => clk_net_x0,
    ce => ce_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    clk_logic_12 => clk_net,
    ce_logic_12 => ce_net_x0,
    s_axis_data_tready => fir_compiler_7_2_s_axis_data_tready_net,
    m_axis_data_tvalid => fir_compiler_7_2_m_axis_data_tvalid_net(0),
    m_axis_data_tdata_real => fir_compiler_7_2_m_axis_data_tdata_real_net
  );
  mult2 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 1,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 1,
    c_a_width => 1,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 1,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 15,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => convert2_dout_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net_x0,
    core_clk => clk_net,
    core_ce => ce_net_x0,
    p => mult2_p_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/IQ_integration
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_iq_integration_x0 is
  port (
    cav_windowed_imag : in std_logic_vector( 18-1 downto 0 );
    cav_windowed_real : in std_logic_vector( 18-1 downto 0 );
    ref_windowed_i : in std_logic_vector( 18-1 downto 0 );
    ref_windowed_q : in std_logic_vector( 18-1 downto 0 );
    window_profile : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    cav_int_q : out std_logic_vector( 20-1 downto 0 );
    cav_int_i : out std_logic_vector( 20-1 downto 0 );
    ref_int_i : out std_logic_vector( 20-1 downto 0 );
    ref_int_q : out std_logic_vector( 20-1 downto 0 );
    gateway_out : out std_logic_vector( 1-1 downto 0 );
    gateway_out1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13 : out std_logic_vector( 32-1 downto 0 );
    gateway_out15 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17 : out std_logic_vector( 32-1 downto 0 );
    gateway_out18 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7 : out std_logic_vector( 32-1 downto 0 );
    gateway_out9 : out std_logic_vector( 32-1 downto 0 )
  );
end dsp_iq_integration_x0;
architecture structural of dsp_iq_integration_x0 is 
  signal convert10_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert9_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 20-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal register12_q_net : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter3_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator3_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator_q_net : std_logic_vector( 32-1 downto 0 );
  signal accumulator2_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator1_q_net : std_logic_vector( 32-1 downto 0 );
  signal register11_q_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 1-1 downto 0 );
begin
  cav_int_q <= convert10_dout_net;
  cav_int_i <= convert9_dout_net;
  ref_int_i <= convert2_dout_net;
  ref_int_q <= convert4_dout_net;
  mult2_p_net <= cav_windowed_imag;
  mult_p_net <= cav_windowed_real;
  mult4_p_net <= ref_windowed_i;
  mult5_p_net <= ref_windowed_q;
  convert11_dout_net <= window_profile;
  gateway_out <= inverter_op_net;
  gateway_out1 <= convert2_dout_net;
  gateway_out11 <= register1_q_net;
  gateway_out12 <= convert4_dout_net;
  gateway_out13 <= register12_q_net;
  gateway_out15 <= register2_q_net;
  gateway_out16 <= inverter3_op_net;
  gateway_out17 <= accumulator3_q_net;
  gateway_out18 <= register1_q_net;
  gateway_out2 <= inverter2_op_net;
  gateway_out22 <= convert9_dout_net;
  gateway_out23 <= convert10_dout_net;
  gateway_out3 <= accumulator_q_net;
  gateway_out4 <= accumulator2_q_net;
  gateway_out6 <= inverter1_op_net;
  gateway_out7 <= accumulator1_q_net;
  gateway_out9 <= register11_q_net;
  clk_net <= clk_12;
  ce_net <= ce_12;
  accumulator : entity work.sysgen_accum_4cc7c6dd2c 
  port map (
    clr => '0',
    b => mult2_p_net,
    rst => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator_q_net
  );
  accumulator1 : entity work.sysgen_accum_4cc7c6dd2c 
  port map (
    clr => '0',
    b => mult_p_net,
    rst => inverter1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator1_q_net
  );
  accumulator2 : entity work.sysgen_accum_4cc7c6dd2c 
  port map (
    clr => '0',
    b => mult4_p_net,
    rst => inverter2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator2_q_net
  );
  accumulator3 : entity work.sysgen_accum_4cc7c6dd2c 
  port map (
    clr => '0',
    b => mult5_p_net,
    rst => inverter3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator3_q_net
  );
  convert1 : entity work.dsp_xlconvert 
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
    din => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert10 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 18,
    dout_width => 20,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register12_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert10_dout_net
  );
  convert2 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 18,
    dout_width => 20,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity work.dsp_xlconvert 
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
    din => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 18,
    dout_width => 20,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity work.dsp_xlconvert 
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
    din => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert6 : entity work.dsp_xlconvert 
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
    din => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert6_dout_net
  );
  convert9 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 18,
    dout_width => 20,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register11_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert9_dout_net
  );
  inverter : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert5_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert6_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  inverter2 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  inverter3 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter3_op_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => accumulator2_q_net,
    en => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register11 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => accumulator1_q_net,
    en => convert6_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register11_q_net
  );
  register12 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => accumulator_q_net,
    en => convert5_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register12_q_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => accumulator3_q_net,
    en => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/IQ_integration2
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_iq_integration2 is
  port (
    cav_windowed_imag : in std_logic_vector( 18-1 downto 0 );
    cav_windowed_real : in std_logic_vector( 18-1 downto 0 );
    ref_windowed_i : in std_logic_vector( 18-1 downto 0 );
    ref_windowed_q : in std_logic_vector( 18-1 downto 0 );
    window_profile : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    cav_int_q : out std_logic_vector( 20-1 downto 0 );
    cav_int_i : out std_logic_vector( 20-1 downto 0 );
    ref_int_i : out std_logic_vector( 20-1 downto 0 );
    ref_int_q : out std_logic_vector( 20-1 downto 0 );
    gateway_out : out std_logic_vector( 1-1 downto 0 );
    gateway_out1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13 : out std_logic_vector( 32-1 downto 0 );
    gateway_out15 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17 : out std_logic_vector( 32-1 downto 0 );
    gateway_out18 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7 : out std_logic_vector( 32-1 downto 0 );
    gateway_out9 : out std_logic_vector( 32-1 downto 0 )
  );
end dsp_iq_integration2;
architecture structural of dsp_iq_integration2 is 
  signal convert9_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert10_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 20-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal register12_q_net : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter3_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator3_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator_q_net : std_logic_vector( 32-1 downto 0 );
  signal accumulator2_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator1_q_net : std_logic_vector( 32-1 downto 0 );
  signal register11_q_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 1-1 downto 0 );
begin
  cav_int_q <= convert10_dout_net;
  cav_int_i <= convert9_dout_net;
  ref_int_i <= convert2_dout_net;
  ref_int_q <= convert4_dout_net;
  mult2_p_net <= cav_windowed_imag;
  mult_p_net <= cav_windowed_real;
  mult4_p_net <= ref_windowed_i;
  mult5_p_net <= ref_windowed_q;
  convert11_dout_net <= window_profile;
  gateway_out <= inverter_op_net;
  gateway_out1 <= convert2_dout_net;
  gateway_out11 <= register1_q_net;
  gateway_out12 <= convert4_dout_net;
  gateway_out13 <= register12_q_net;
  gateway_out15 <= register2_q_net;
  gateway_out16 <= inverter3_op_net;
  gateway_out17 <= accumulator3_q_net;
  gateway_out18 <= register1_q_net;
  gateway_out2 <= inverter2_op_net;
  gateway_out22 <= convert9_dout_net;
  gateway_out23 <= convert10_dout_net;
  gateway_out3 <= accumulator_q_net;
  gateway_out4 <= accumulator2_q_net;
  gateway_out6 <= inverter1_op_net;
  gateway_out7 <= accumulator1_q_net;
  gateway_out9 <= register11_q_net;
  clk_net <= clk_12;
  ce_net <= ce_12;
  accumulator : entity work.sysgen_accum_4cc7c6dd2c 
  port map (
    clr => '0',
    b => mult2_p_net,
    rst => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator_q_net
  );
  accumulator1 : entity work.sysgen_accum_4cc7c6dd2c 
  port map (
    clr => '0',
    b => mult_p_net,
    rst => inverter1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator1_q_net
  );
  accumulator2 : entity work.sysgen_accum_4cc7c6dd2c 
  port map (
    clr => '0',
    b => mult4_p_net,
    rst => inverter2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator2_q_net
  );
  accumulator3 : entity work.sysgen_accum_4cc7c6dd2c 
  port map (
    clr => '0',
    b => mult5_p_net,
    rst => inverter3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator3_q_net
  );
  convert1 : entity work.dsp_xlconvert 
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
    din => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert10 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 18,
    dout_width => 20,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register12_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert10_dout_net
  );
  convert2 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 18,
    dout_width => 20,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity work.dsp_xlconvert 
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
    din => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 18,
    dout_width => 20,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity work.dsp_xlconvert 
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
    din => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert6 : entity work.dsp_xlconvert 
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
    din => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert6_dout_net
  );
  convert9 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 16,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 18,
    dout_width => 20,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register11_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert9_dout_net
  );
  inverter : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert5_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert6_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  inverter2 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  inverter3 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter3_op_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => accumulator2_q_net,
    en => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register11 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => accumulator1_q_net,
    en => convert6_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register11_q_net
  );
  register12 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => accumulator_q_net,
    en => convert5_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register12_q_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => accumulator3_q_net,
    en => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Masking_n_delay
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_masking_n_delay is
  port (
    phi_reset_trig : in std_logic_vector( 1-1 downto 0 );
    start_pt : in std_logic_vector( 16-1 downto 0 );
    stop_pt : in std_logic_vector( 16-1 downto 0 );
    delay_amt : in std_logic_vector( 16-1 downto 0 );
    delay_latch : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    trig_reset : out std_logic_vector( 1-1 downto 0 );
    counter_x0 : out std_logic_vector( 16-1 downto 0 );
    eval_window : out std_logic_vector( 1-1 downto 0 );
    integral_trig : out std_logic_vector( 1-1 downto 0 );
    flo_window : out std_logic_vector( 1-1 downto 0 );
    stream_valid : out std_logic_vector( 1-1 downto 0 );
    delay_val : out std_logic_vector( 16-1 downto 0 );
    gateway_out1 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out4 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7 : out std_logic_vector( 1-1 downto 0 );
    gateway_out8 : out std_logic_vector( 1-1 downto 0 );
    gateway_out9 : out std_logic_vector( 16-1 downto 0 )
  );
end dsp_masking_n_delay;
architecture structural of dsp_masking_n_delay is 
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 16-1 downto 0 );
  signal down_sample2_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 16-1 downto 0 );
  signal register5_q_net : std_logic_vector( 16-1 downto 0 );
  signal register6_q_net : std_logic_vector( 16-1 downto 0 );
  signal relational6_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal relational7_op_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 16-1 downto 0 );
  signal down_sample2_q_net : std_logic_vector( 1-1 downto 0 );
  signal register33_q_net : std_logic_vector( 16-1 downto 0 );
  signal register34_q_net : std_logic_vector( 16-1 downto 0 );
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 16-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal register10_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert8_dout_net : std_logic_vector( 1-1 downto 0 );
begin
  trig_reset <= convert3_dout_net;
  counter_x0 <= counter_op_net;
  eval_window <= convert11_dout_net;
  integral_trig <= convert5_dout_net;
  flo_window <= convert2_dout_net;
  stream_valid <= relational7_op_net;
  delay_val <= register_q_net;
  down_sample2_q_net <= phi_reset_trig;
  register33_q_net <= start_pt;
  register34_q_net <= stop_pt;
  register2_q_net <= delay_amt;
  delay2_q_net <= delay_latch;
  gateway_out1 <= delay5_q_net;
  gateway_out2 <= delay3_q_net;
  gateway_out27 <= relational4_op_net;
  gateway_out28 <= relational3_op_net;
  gateway_out29 <= convert11_dout_net;
  gateway_out3 <= convert7_dout_net;
  gateway_out4 <= counter_op_net;
  gateway_out5 <= convert5_dout_net;
  gateway_out6 <= convert3_dout_net;
  gateway_out7 <= register1_q_net;
  gateway_out8 <= convert2_dout_net;
  gateway_out9 <= delay8_q_net;
  clk_net_x0 <= clk_1;
  ce_net_x0 <= ce_1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "dsp_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => delay3_q_net,
    b => constant11_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub4 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "dsp_c_addsub_v12_0_i1",
    en_arith => xlUnsigned,
    en_bin_pt => 0,
    en_width => 1,
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    a => register_q_net,
    b => register2_q_net,
    en => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  constant1 : entity work.sysgen_constant_b2ceed5a46 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant11 : entity work.sysgen_constant_9a84ae6da1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant11_op_net
  );
  constant2 : entity work.sysgen_constant_6f518e0398 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity work.sysgen_constant_284465ef96 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  convert11 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
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
    din => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert11_dout_net
  );
  convert2 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
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
    din => logical2_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity work.dsp_xlconvert 
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
    din => register10_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert5 : entity work.dsp_xlconvert 
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
    din => relational5_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert7 : entity work.dsp_xlconvert 
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
    din => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert7_dout_net
  );
  convert8 : entity work.dsp_xlconvert 
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
    din => relational4_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert8_dout_net
  );
  counter : entity work.dsp_xlcounter_free 
  generic map (
    core_name0 => "dsp_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 16
  )
  port map (
    clr => '0',
    rst => convert3_dout_net,
    en => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => down_sample1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net_x0
  );
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => down_sample2_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity work.dsp_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  delay7 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay7_q_net
  );
  delay8 : entity work.dsp_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay8_q_net
  );
  down_sample1 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 16,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 16
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register5_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample1_q_net
  );
  down_sample2 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 16,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 16
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register6_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample2_q_net_x0
  );
  logical1 : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => convert8_dout_net,
    d1 => convert7_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical2 : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => relational6_op_net,
    d1 => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net
  );
  register_x0 : entity work.dsp_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000101100"
  )
  port map (
    rst => "0",
    d => addsub4_s_net,
    en => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => convert3_dout_net,
    en => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register10 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register10_q_net
  );
  register5 : entity work.dsp_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register33_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register5_q_net
  );
  register6 : entity work.dsp_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000001100100"
  )
  port map (
    en => "1",
    rst => "0",
    d => register34_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register6_q_net
  );
  relational1 : entity work.sysgen_relational_f85cc5971b 
  port map (
    clr => '0',
    a => delay7_q_net,
    b => constant2_op_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity work.sysgen_relational_23c51632d4 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  relational3 : entity work.sysgen_relational_f85cc5971b 
  port map (
    clr => '0',
    a => delay4_q_net,
    b => delay3_q_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
  relational4 : entity work.sysgen_relational_05a57d317e 
  port map (
    clr => '0',
    a => delay1_q_net,
    b => delay2_q_net_x0,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational4_op_net
  );
  relational5 : entity work.sysgen_relational_f85cc5971b 
  port map (
    clr => '0',
    a => counter_op_net,
    b => addsub1_s_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational5_op_net
  );
  relational6 : entity work.sysgen_relational_05a57d317e 
  port map (
    clr => '0',
    a => delay6_q_net,
    b => constant3_op_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational6_op_net
  );
  relational7 : entity work.sysgen_relational_cb99e2a0a4 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational7_op_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/PA_conversion1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_pa_conversion1_x0 is
  port (
    cav_int_q : in std_logic_vector( 20-1 downto 0 );
    cav_int_i : in std_logic_vector( 20-1 downto 0 );
    ref_int_q : in std_logic_vector( 20-1 downto 0 );
    ref_int_i : in std_logic_vector( 20-1 downto 0 );
    integration_trig : in std_logic_vector( 1-1 downto 0 );
    cal_coefficient : in std_logic_vector( 18-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    phi_diff : out std_logic_vector( 18-1 downto 0 );
    ref_phi_out : out std_logic_vector( 18-1 downto 0 );
    ref_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav_phi_out : out std_logic_vector( 18-1 downto 0 );
    cav_amp_out : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_pa_conversion1_x0;
architecture structural of dsp_pa_conversion1_x0 is 
  signal register11_q_net : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net : std_logic_vector( 18-1 downto 0 );
  signal register13_q_net : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert10_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert9_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal down_sample7_q_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_1_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_1_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_1_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter3_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter4_op_net : std_logic_vector( 1-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
begin
  phi_diff <= addsub_s_net;
  ref_phi_out <= register11_q_net;
  ref_amp_out <= register12_q_net;
  cav_phi_out <= register13_q_net;
  cav_amp_out <= register14_q_net;
  convert10_dout_net <= cav_int_q;
  convert9_dout_net <= cav_int_i;
  convert4_dout_net <= ref_int_q;
  convert2_dout_net <= ref_int_i;
  convert5_dout_net <= integration_trig;
  down_sample7_q_net <= cal_coefficient;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub1_s_net,
    b => register11_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 17,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 21,
    core_name0 => "dsp_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 21,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => register13_q_net,
    b => down_sample7_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  cordic_6_0_1 : entity work.xlcordic_ed33df41e5c40f9ca57299f65da9e20e 
  port map (
    s_axis_cartesian_tvalid => convert5_dout_net(0),
    s_axis_cartesian_tdata_imag => convert10_dout_net,
    s_axis_cartesian_tdata_real => convert9_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_1_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_phase => cordic_6_0_1_m_axis_dout_tdata_phase_net,
    m_axis_dout_tdata_real => cordic_6_0_1_m_axis_dout_tdata_real_net
  );
  cordic_6_0_2 : entity work.xlcordic_ed33df41e5c40f9ca57299f65da9e20e 
  port map (
    s_axis_cartesian_tvalid => convert5_dout_net(0),
    s_axis_cartesian_tdata_imag => convert4_dout_net,
    s_axis_cartesian_tdata_real => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_2_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_phase => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    m_axis_dout_tdata_real => cordic_6_0_2_m_axis_dout_tdata_real_net
  );
  delay : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_1_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_1_m_axis_dout_tdata_phase_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_2_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  inverter1 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip(0) => cordic_6_0_2_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  inverter2 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip(0) => cordic_6_0_1_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  inverter3 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip(0) => cordic_6_0_1_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter3_op_net
  );
  inverter4 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip(0) => cordic_6_0_2_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter4_op_net
  );
  register11 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay3_q_net,
    en => inverter1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register11_q_net
  );
  register12 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay2_q_net,
    en => inverter4_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register12_q_net
  );
  register13 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => inverter2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register13_q_net
  );
  register14 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => inverter3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register14_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/PA_conversion2
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_pa_conversion2_x0 is
  port (
    cav_int_q : in std_logic_vector( 20-1 downto 0 );
    cav_int_i : in std_logic_vector( 20-1 downto 0 );
    ref_int_q : in std_logic_vector( 20-1 downto 0 );
    ref_int_i : in std_logic_vector( 20-1 downto 0 );
    integration_trig : in std_logic_vector( 1-1 downto 0 );
    cal_coefficient : in std_logic_vector( 18-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    phi_diff : out std_logic_vector( 18-1 downto 0 );
    ref_phi_out : out std_logic_vector( 18-1 downto 0 );
    ref_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav_phi_out : out std_logic_vector( 18-1 downto 0 );
    cav_amp_out : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_pa_conversion2_x0;
architecture structural of dsp_pa_conversion2_x0 is 
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net : std_logic_vector( 18-1 downto 0 );
  signal register13_q_net : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert10_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert9_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal down_sample3_q_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_1_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_1_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_1_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter3_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter4_op_net : std_logic_vector( 1-1 downto 0 );
begin
  phi_diff <= addsub_s_net;
  ref_phi_out <= register11_q_net;
  ref_amp_out <= register12_q_net;
  cav_phi_out <= register13_q_net;
  cav_amp_out <= register14_q_net;
  convert10_dout_net <= cav_int_q;
  convert9_dout_net <= cav_int_i;
  convert4_dout_net <= ref_int_q;
  convert2_dout_net <= ref_int_i;
  convert5_dout_net <= integration_trig;
  down_sample3_q_net <= cal_coefficient;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub1_s_net,
    b => register11_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 17,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 21,
    core_name0 => "dsp_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 21,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => register13_q_net,
    b => down_sample3_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  cordic_6_0_1 : entity work.xlcordic_ed33df41e5c40f9ca57299f65da9e20e 
  port map (
    s_axis_cartesian_tvalid => convert5_dout_net(0),
    s_axis_cartesian_tdata_imag => convert10_dout_net,
    s_axis_cartesian_tdata_real => convert9_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_1_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_phase => cordic_6_0_1_m_axis_dout_tdata_phase_net,
    m_axis_dout_tdata_real => cordic_6_0_1_m_axis_dout_tdata_real_net
  );
  cordic_6_0_2 : entity work.xlcordic_ed33df41e5c40f9ca57299f65da9e20e 
  port map (
    s_axis_cartesian_tvalid => convert5_dout_net(0),
    s_axis_cartesian_tdata_imag => convert4_dout_net,
    s_axis_cartesian_tdata_real => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_2_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_phase => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    m_axis_dout_tdata_real => cordic_6_0_2_m_axis_dout_tdata_real_net
  );
  delay : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_1_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_1_m_axis_dout_tdata_phase_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_2_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  inverter1 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip(0) => cordic_6_0_2_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  inverter2 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip(0) => cordic_6_0_1_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  inverter3 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip(0) => cordic_6_0_1_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter3_op_net
  );
  inverter4 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip(0) => cordic_6_0_2_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter4_op_net
  );
  register11 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay3_q_net,
    en => inverter1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register11_q_net
  );
  register12 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay2_q_net,
    en => inverter4_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register12_q_net
  );
  register13 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => inverter2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register13_q_net
  );
  register14 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => inverter3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register14_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem1/Channel Select3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_channel_select3_x3 is
  port (
    in0 : in std_logic_vector( 18-1 downto 0 );
    in1 : in std_logic_vector( 18-1 downto 0 );
    in2 : in std_logic_vector( 1-1 downto 0 );
    ch_id : in std_logic_vector( 4-1 downto 0 );
    ch_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out0 : out std_logic_vector( 18-1 downto 0 );
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_channel_select3_x3;
architecture structural of dsp_channel_select3_x3 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ddci : std_logic_vector( 18-1 downto 0 );
  signal ddcq : std_logic_vector( 18-1 downto 0 );
  signal ddcsync : std_logic_vector( 1-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
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
  ddcsync <= in2;
  ddcchannel <= ch_id;
  register30_q_net <= ch_sel;
  clk_net_x0 <= clk_1;
  ce_net_x0 <= ce_1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  constant13 : entity work.sysgen_constant_ddcd7f6a05 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  delay : entity work.dsp_xldelay 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay_q_net
  );
  delay1 : entity work.dsp_xldelay 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay1_q_net
  );
  down_sample : entity work.dsp_xldsamp 
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
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity work.dsp_xldsamp 
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
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample1_q_net
  );
  register_x0 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => relational_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register_q_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => relational_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register1_q_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register1_q_net,
    en => register6_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register2_q_net
  );
  register3 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register_q_net,
    en => register6_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register3_q_net
  );
  register6 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => last,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_bc41c4add6 
  port map (
    clr => '0',
    a => ddcchannel,
    b => register30_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_bc41c4add6 
  port map (
    clr => '0',
    a => ddcchannel,
    b => constant13_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem1_x3 is
  port (
    iq_stream_in_1 : in std_logic_vector( 18-1 downto 0 );
    iq_chan_sel : in std_logic_vector( 4-1 downto 0 );
    iq_stream_in_2 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_in_3 : in std_logic_vector( 4-1 downto 0 );
    iq_stream_in_4 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    ddci : out std_logic_vector( 18-1 downto 0 );
    ddcq : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_subsystem1_x3;
architecture structural of dsp_subsystem1_x3 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ddci_x0 : std_logic_vector( 18-1 downto 0 );
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal ddcsync : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
begin
  ddci <= down_sample1_q_net;
  ddcq <= down_sample_q_net;
  ddci_x0 <= iq_stream_in_1;
  register30_q_net <= iq_chan_sel;
  ddcq_x0 <= iq_stream_in_2;
  ddcchannel <= iq_stream_in_3;
  ddcsync <= iq_stream_in_4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clk_net_x0 <= clk_12;
  ce_net_x0 <= ce_12;
  channel_select3 : entity work.dsp_channel_select3_x3 
  port map (
    in0 => ddci_x0,
    in1 => ddcq_x0,
    in2 => ddcsync,
    ch_id => ddcchannel,
    ch_sel => register30_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => clk_net_x0,
    ce_12 => ce_net_x0,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem2/freq_err1/delta_phi/phase_latching
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_phase_latching_x0 is
  port (
    phase : in std_logic_vector( 18-1 downto 0 );
    window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    stop_value : out std_logic_vector( 18-1 downto 0 );
    start_value : out std_logic_vector( 18-1 downto 0 );
    gateway_out1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_phase_latching_x0;
architecture structural of dsp_phase_latching_x0 is 
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 2-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 2-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  stop_value <= register1_q_net;
  start_value <= register_q_net;
  mult3_p_net <= phase;
  convert2_dout_net <= window;
  convert3_dout_net <= reset;
  gateway_out1 <= relational1_op_net;
  gateway_out2 <= delay5_q_net;
  gateway_out3 <= register_q_net;
  gateway_out4 <= register1_q_net;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub1 : entity work.sysgen_addsub_7574ef6005 
  port map (
    clr => '0',
    a => convert2_dout_net,
    b => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity work.sysgen_addsub_7574ef6005 
  port map (
    clr => '0',
    a => delay6_q_net,
    b => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  constant2 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  delay4 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  register_x0 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    d => mult3_p_net,
    rst => convert3_dout_net,
    en => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    d => mult3_p_net,
    rst => convert3_dout_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational : entity work.sysgen_relational_a5f9590f9b 
  port map (
    clr => '0',
    a => addsub1_s_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_a5f9590f9b 
  port map (
    clr => '0',
    a => addsub2_s_net,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem2/freq_err1/delta_phi
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_delta_phi_x0 is
  port (
    phase : in std_logic_vector( 18-1 downto 0 );
    window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    d_phi : out std_logic_vector( 32-1 downto 0 );
    gateway_out27 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_delta_phi_x0;
architecture structural of dsp_delta_phi_x0 is 
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 19-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  d_phi <= mult1_p_net;
  mult3_p_net <= phase;
  convert2_dout_net <= window;
  convert3_dout_net <= reset;
  gateway_out27 <= addsub3_s_net;
  gateway_out28 <= register_q_net;
  gateway_out29 <= register1_q_net;
  gateway_out3 <= mult1_p_net;
  gateway_out1 <= relational1_op_net;
  gateway_out2 <= delay5_q_net;
  gateway_out3_x0 <= register_q_net;
  gateway_out4 <= register1_q_net;
  clk_net <= clk_12;
  ce_net <= ce_12;
  phase_latching : entity work.dsp_phase_latching_x0 
  port map (
    phase => mult3_p_net,
    window => convert2_dout_net,
    reset => convert3_dout_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    stop_value => register1_q_net,
    start_value => register_q_net,
    gateway_out1 => relational1_op_net,
    gateway_out2 => delay5_q_net,
    gateway_out3 => register_q_net,
    gateway_out4 => register1_q_net
  );
  addsub3 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i2",
    en_arith => xlUnsigned,
    en_bin_pt => 0,
    en_width => 1,
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 19
  )
  port map (
    clr => '0',
    a => register1_q_net,
    b => register_q_net,
    en => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  constant4 : entity work.sysgen_constant_803072cb09 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  convert1 : entity work.dsp_xlconvert 
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
    din => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  inverter : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  mult1 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 19,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 19,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 19,
    c_output_width => 37,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i4",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 30,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub3_s_net,
    b => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem2/freq_err1/delta_t
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_delta_t_x0 is
  port (
    window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    dt : out std_logic_vector( 32-1 downto 0 );
    gateway_out1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2 : out std_logic_vector( 10-1 downto 0 )
  );
end dsp_delta_t_x0;
architecture structural of dsp_delta_t_x0 is 
  signal mult_p_net : std_logic_vector( 32-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net : std_logic_vector( 10-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant5_op_net : std_logic_vector( 32-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 10-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  dt <= mult_p_net;
  convert2_dout_net <= window;
  convert3_dout_net <= reset;
  gateway_out1 <= mult_p_net;
  gateway_out2 <= register2_q_net;
  clk_net <= clk_12;
  ce_net <= ce_12;
  constant5 : entity work.sysgen_constant_2a802540ac 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  convert1 : entity work.dsp_xlconvert 
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
    din => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  counter2 : entity work.dsp_xlcounter_free 
  generic map (
    core_name0 => "dsp_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    clr => '0',
    rst => convert3_dout_net,
    en => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  inverter : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  mult : entity work.dsp_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 10,
    b_arith => xlUnsigned,
    b_bin_pt => 32,
    b_width => 32,
    c_a_type => 1,
    c_a_width => 10,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 10,
    c_output_width => 42,
    c_type => 1,
    core_name0 => "dsp_mult_gen_v12_0_i5",
    extra_registers => 1,
    multsign => 1,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 32,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => register2_q_net,
    b => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 10,
    init_value => b"0000000000"
  )
  port map (
    d => counter2_op_net,
    rst => convert3_dout_net,
    en => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem2/freq_err1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_freq_err1_x0 is
  port (
    raw_phase : in std_logic_vector( 18-1 downto 0 );
    window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    c1p2_pt_cntr : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    nco_err : out std_logic_vector( 32-1 downto 0 );
    freq_err : out std_logic_vector( 32-1 downto 0 );
    gateway_out11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out27 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x0 : out std_logic_vector( 10-1 downto 0 )
  );
end dsp_freq_err1_x0;
architecture structural of dsp_freq_err1_x0 is 
  signal convert_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 19-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 10-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net_x0 : std_logic;
  signal constant8_op_net : std_logic_vector( 26-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 96-1 downto 0 );
  signal divide_op_net : std_logic_vector( 63-1 downto 0 );
  signal divide1_op_net : std_logic_vector( 96-1 downto 0 );
begin
  nco_err <= convert_dout_net;
  freq_err <= convert1_dout_net;
  cordic_6_0_2_m_axis_dout_tdata_phase_net <= raw_phase;
  convert2_dout_net <= window;
  convert3_dout_net_x0 <= reset;
  counter_op_net <= c1p2_pt_cntr;
  gateway_out11 <= convert_dout_net;
  gateway_out19 <= mult3_p_net;
  gateway_out5_x0 <= convert1_dout_net;
  gateway_out27 <= addsub3_s_net;
  gateway_out28 <= register_q_net;
  gateway_out29 <= register1_q_net;
  gateway_out3_x0 <= mult1_p_net;
  gateway_out <= mult3_p_net;
  gateway_out1_x0 <= relational1_op_net;
  gateway_out2 <= delay5_q_net;
  gateway_out3 <= register_q_net;
  gateway_out4 <= register1_q_net;
  gateway_out5 <= convert3_dout_net;
  gateway_out1 <= mult_p_net;
  gateway_out2_x0 <= register2_q_net;
  clk_net_x0 <= clk_1;
  ce_net <= ce_1;
  clk_net <= clk_12;
  ce_net_x0 <= ce_12;
  delta_phi : entity work.dsp_delta_phi_x0 
  port map (
    phase => mult3_p_net,
    window => convert2_dout_net,
    reset => convert3_dout_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    d_phi => mult1_p_net,
    gateway_out27 => addsub3_s_net,
    gateway_out28 => register_q_net,
    gateway_out29 => register1_q_net,
    gateway_out3 => mult1_p_net,
    gateway_out1 => relational1_op_net,
    gateway_out2 => delay5_q_net,
    gateway_out3_x0 => register_q_net,
    gateway_out4 => register1_q_net
  );
  delta_t : entity work.dsp_delta_t_x0 
  port map (
    window => convert2_dout_net,
    reset => convert3_dout_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    dt => mult_p_net,
    gateway_out1 => mult_p_net,
    gateway_out2 => register2_q_net
  );
  constant8 : entity work.sysgen_constant_912aa38159 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  convert : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 33,
    din_width => 96,
    dout_arith => 2,
    dout_bin_pt => 32,
    dout_width => 32,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => down_sample_q_net,
    clk => clk_net,
    ce => ce_net_x0,
    dout => convert_dout_net
  );
  convert1 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 31,
    din_width => 63,
    dout_arith => 2,
    dout_bin_pt => 10,
    dout_width => 32,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => divide_op_net,
    clk => clk_net_x0,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert3 : entity work.dsp_xlconvert 
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
    din => convert3_dout_net_x0,
    clk => clk_net,
    ce => ce_net_x0,
    dout => convert3_dout_net
  );
  divide : entity work.xldivider_generator_6dbb83f3f73569f6ccb183eb64606384 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => mult1_p_net,
    b => mult_p_net,
    clk => clk_net_x0,
    ce => ce_net,
    op => divide_op_net
  );
  divide1 : entity work.xldivider_generator_2ace49429baf61df4bf778f752b8034f 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => divide_op_net,
    b => constant8_op_net,
    clk => clk_net_x0,
    ce => ce_net,
    op => divide1_op_net
  );
  down_sample : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 33,
    d_width => 96,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 33,
    q_width => 96
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => divide1_op_net,
    src_clk => clk_net_x0,
    src_ce => ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net_x0,
    q => down_sample_q_net
  );
  mult3 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 1,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_a_type => 1,
    c_a_width => 1,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 1,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i3",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 15,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => convert2_dout_net,
    b => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    clk => clk_net,
    ce => ce_net_x0,
    core_clk => clk_net,
    core_ce => ce_net_x0,
    p => mult3_p_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem2_x2 is
  port (
    imag : in std_logic_vector( 18-1 downto 0 );
    real : in std_logic_vector( 18-1 downto 0 );
    flo_window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    c1p2_pt_cntr : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    nco_err_fb : out std_logic_vector( 32-1 downto 0 );
    freq_err : out std_logic_vector( 32-1 downto 0 );
    gateway_out1_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out27 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2 : out std_logic_vector( 10-1 downto 0 )
  );
end dsp_subsystem2_x2;
architecture structural of dsp_subsystem2_x2 is 
  signal convert_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 19-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 10-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net_x0 : std_logic;
  signal cordic_6_0_2_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_2_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample5_q_net : std_logic;
  signal clock_enable_probe4_q_net : std_logic_vector( 1-1 downto 0 );
begin
  nco_err_fb <= convert_dout_net;
  freq_err <= convert1_dout_net;
  mult2_p_net <= imag;
  mult_p_net <= real;
  convert2_dout_net <= flo_window;
  convert3_dout_net <= reset;
  counter_op_net <= c1p2_pt_cntr;
  gateway_out1_x0 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out11 <= convert_dout_net;
  gateway_out19 <= mult3_p_net;
  gateway_out2_x0 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out3 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out5_x0 <= convert1_dout_net;
  gateway_out27 <= addsub3_s_net;
  gateway_out28 <= register_q_net;
  gateway_out29 <= register1_q_net;
  gateway_out3_x1 <= mult1_p_net;
  gateway_out <= mult3_p_net;
  gateway_out1_x1 <= relational1_op_net;
  gateway_out2_x1 <= delay5_q_net;
  gateway_out3_x0 <= register_q_net;
  gateway_out4 <= register1_q_net;
  gateway_out5 <= convert3_dout_net_x0;
  gateway_out1 <= mult_p_net_x0;
  gateway_out2 <= register2_q_net;
  clk_net_x0 <= clk_1;
  ce_net <= ce_1;
  clk_net <= clk_12;
  ce_net_x0 <= ce_12;
  freq_err1 : entity work.dsp_freq_err1_x0 
  port map (
    raw_phase => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    window => convert2_dout_net,
    reset => convert3_dout_net,
    c1p2_pt_cntr => counter_op_net,
    clk_1 => clk_net_x0,
    ce_1 => ce_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    nco_err => convert_dout_net,
    freq_err => convert1_dout_net,
    gateway_out11 => convert_dout_net,
    gateway_out19 => mult3_p_net,
    gateway_out5_x0 => convert1_dout_net,
    gateway_out27 => addsub3_s_net,
    gateway_out28 => register_q_net,
    gateway_out29 => register1_q_net,
    gateway_out3_x0 => mult1_p_net,
    gateway_out => mult3_p_net,
    gateway_out1_x0 => relational1_op_net,
    gateway_out2 => delay5_q_net,
    gateway_out3 => register_q_net,
    gateway_out4 => register1_q_net,
    gateway_out5 => convert3_dout_net_x0,
    gateway_out1 => mult_p_net_x0,
    gateway_out2_x0 => register2_q_net
  );
  cordic_6_0_2 : entity work.xlcordic_508e230f269385a677d56937823ab702 
  port map (
    s_axis_cartesian_tvalid => down_sample5_q_net,
    s_axis_cartesian_tdata_imag => mult2_p_net,
    s_axis_cartesian_tdata_real => mult_p_net,
    clk => clk_net,
    ce => ce_net_x0,
    m_axis_dout_tvalid => cordic_6_0_2_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_phase => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    m_axis_dout_tdata_real => cordic_6_0_2_m_axis_dout_tdata_real_net
  );
  clock_enable_probe4 : entity work.dsp_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => mult2_p_net,
    clk => clk_net,
    ce => ce_net_x0,
    q => clock_enable_probe4_q_net
  );
  down_sample5 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => clock_enable_probe4_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net_x0,
    q(0) => down_sample5_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem3/Channel Select3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_channel_select3_x2 is
  port (
    in0 : in std_logic_vector( 18-1 downto 0 );
    in1 : in std_logic_vector( 18-1 downto 0 );
    in2 : in std_logic_vector( 1-1 downto 0 );
    ch_id : in std_logic_vector( 4-1 downto 0 );
    ch_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out0 : out std_logic_vector( 18-1 downto 0 );
    out1 : out std_logic_vector( 18-1 downto 0 );
    out2 : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_channel_select3_x2;
architecture structural of dsp_channel_select3_x2 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample2_q_net : std_logic_vector( 1-1 downto 0 );
  signal ddci : std_logic_vector( 18-1 downto 0 );
  signal ddcq : std_logic_vector( 18-1 downto 0 );
  signal ddcsync : std_logic_vector( 1-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant13_op_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal register5_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal register4_q_net : std_logic_vector( 1-1 downto 0 );
  signal last : std_logic_vector( 1-1 downto 0 );
begin
  out0 <= down_sample1_q_net;
  out1 <= down_sample_q_net;
  out2 <= down_sample2_q_net;
  ddci <= in0;
  ddcq <= in1;
  ddcsync <= in2;
  ddcchannel <= ch_id;
  register29_q_net <= ch_sel;
  clk_net_x0 <= clk_1;
  ce_net_x0 <= ce_1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  constant13 : entity work.sysgen_constant_ddcd7f6a05 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  delay : entity work.dsp_xldelay 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay_q_net
  );
  delay1 : entity work.dsp_xldelay 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => ddcsync,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay2_q_net
  );
  down_sample : entity work.dsp_xldsamp 
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
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity work.dsp_xldsamp 
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
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample1_q_net
  );
  down_sample2 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register5_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample2_q_net
  );
  register_x0 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => relational_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register_q_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => relational_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register1_q_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register1_q_net,
    en => register6_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register2_q_net
  );
  register3 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register_q_net,
    en => register6_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register3_q_net
  );
  register4 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => delay2_q_net,
    en => relational_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register4_q_net
  );
  register5 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => register4_q_net,
    en => register6_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register5_q_net
  );
  register6 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => last,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_bc41c4add6 
  port map (
    clr => '0',
    a => ddcchannel,
    b => register29_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_bc41c4add6 
  port map (
    clr => '0',
    a => ddcchannel,
    b => constant13_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem3_x3 is
  port (
    iq_stream_in_1 : in std_logic_vector( 18-1 downto 0 );
    iq_chan_sel : in std_logic_vector( 4-1 downto 0 );
    iq_stream_in_2 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_in_3 : in std_logic_vector( 4-1 downto 0 );
    iq_stream_in_4 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    ddci : out std_logic_vector( 18-1 downto 0 );
    ddcq : out std_logic_vector( 18-1 downto 0 );
    sync : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_subsystem3_x3;
architecture structural of dsp_subsystem3_x3 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample2_q_net : std_logic_vector( 1-1 downto 0 );
  signal ddci_x0 : std_logic_vector( 18-1 downto 0 );
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal ddcsync : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
begin
  ddci <= down_sample1_q_net;
  ddcq <= down_sample_q_net;
  sync <= down_sample2_q_net;
  ddci_x0 <= iq_stream_in_1;
  register29_q_net <= iq_chan_sel;
  ddcq_x0 <= iq_stream_in_2;
  ddcchannel <= iq_stream_in_3;
  ddcsync <= iq_stream_in_4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clk_net_x0 <= clk_12;
  ce_net_x0 <= ce_12;
  channel_select3 : entity work.dsp_channel_select3_x2 
  port map (
    in0 => ddci_x0,
    in1 => ddcq_x0,
    in2 => ddcsync,
    ch_id => ddcchannel,
    ch_sel => register29_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => clk_net_x0,
    ce_12 => ce_net_x0,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net,
    out2 => down_sample2_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem4/freq_err1/delta_phi/phase_latching
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_phase_latching is
  port (
    phase : in std_logic_vector( 18-1 downto 0 );
    window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    stop_value : out std_logic_vector( 18-1 downto 0 );
    start_value : out std_logic_vector( 18-1 downto 0 );
    gateway_out1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_phase_latching;
architecture structural of dsp_phase_latching is 
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 2-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 2-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  stop_value <= register1_q_net;
  start_value <= register_q_net;
  mult3_p_net <= phase;
  convert2_dout_net <= window;
  convert3_dout_net <= reset;
  gateway_out1 <= relational1_op_net;
  gateway_out2 <= delay5_q_net;
  gateway_out3 <= register_q_net;
  gateway_out4 <= register1_q_net;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub1 : entity work.sysgen_addsub_7574ef6005 
  port map (
    clr => '0',
    a => convert2_dout_net,
    b => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity work.sysgen_addsub_7574ef6005 
  port map (
    clr => '0',
    a => delay6_q_net,
    b => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  constant2 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  delay4 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  register_x0 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    d => mult3_p_net,
    rst => convert3_dout_net,
    en => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    d => mult3_p_net,
    rst => convert3_dout_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational : entity work.sysgen_relational_a5f9590f9b 
  port map (
    clr => '0',
    a => addsub1_s_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_a5f9590f9b 
  port map (
    clr => '0',
    a => addsub2_s_net,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem4/freq_err1/delta_phi
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_delta_phi is
  port (
    phase : in std_logic_vector( 18-1 downto 0 );
    window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    d_phi : out std_logic_vector( 32-1 downto 0 );
    gateway_out27 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_delta_phi;
architecture structural of dsp_delta_phi is 
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 19-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  d_phi <= mult1_p_net;
  mult3_p_net <= phase;
  convert2_dout_net <= window;
  convert3_dout_net <= reset;
  gateway_out27 <= addsub3_s_net;
  gateway_out28 <= register_q_net;
  gateway_out29 <= register1_q_net;
  gateway_out3 <= mult1_p_net;
  gateway_out1 <= relational1_op_net;
  gateway_out2 <= delay5_q_net;
  gateway_out3_x0 <= register_q_net;
  gateway_out4 <= register1_q_net;
  clk_net <= clk_12;
  ce_net <= ce_12;
  phase_latching : entity work.dsp_phase_latching 
  port map (
    phase => mult3_p_net,
    window => convert2_dout_net,
    reset => convert3_dout_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    stop_value => register1_q_net,
    start_value => register_q_net,
    gateway_out1 => relational1_op_net,
    gateway_out2 => delay5_q_net,
    gateway_out3 => register_q_net,
    gateway_out4 => register1_q_net
  );
  addsub3 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i2",
    en_arith => xlUnsigned,
    en_bin_pt => 0,
    en_width => 1,
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 19
  )
  port map (
    clr => '0',
    a => register1_q_net,
    b => register_q_net,
    en => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  constant4 : entity work.sysgen_constant_803072cb09 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  convert1 : entity work.dsp_xlconvert 
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
    din => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  inverter : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  mult1 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 19,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 19,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 19,
    c_output_width => 37,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i4",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 30,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub3_s_net,
    b => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem4/freq_err1/delta_t
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_delta_t is
  port (
    window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    dt : out std_logic_vector( 32-1 downto 0 );
    gateway_out1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2 : out std_logic_vector( 10-1 downto 0 )
  );
end dsp_delta_t;
architecture structural of dsp_delta_t is 
  signal mult_p_net : std_logic_vector( 32-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net : std_logic_vector( 10-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant5_op_net : std_logic_vector( 32-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 10-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  dt <= mult_p_net;
  convert2_dout_net <= window;
  convert3_dout_net <= reset;
  gateway_out1 <= mult_p_net;
  gateway_out2 <= register2_q_net;
  clk_net <= clk_12;
  ce_net <= ce_12;
  constant5 : entity work.sysgen_constant_2a802540ac 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  convert1 : entity work.dsp_xlconvert 
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
    din => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  counter2 : entity work.dsp_xlcounter_free 
  generic map (
    core_name0 => "dsp_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    clr => '0',
    rst => convert3_dout_net,
    en => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  inverter : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  mult : entity work.dsp_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 10,
    b_arith => xlUnsigned,
    b_bin_pt => 32,
    b_width => 32,
    c_a_type => 1,
    c_a_width => 10,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 10,
    c_output_width => 42,
    c_type => 1,
    core_name0 => "dsp_mult_gen_v12_0_i5",
    extra_registers => 1,
    multsign => 1,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 32,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => register2_q_net,
    b => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 10,
    init_value => b"0000000000"
  )
  port map (
    d => counter2_op_net,
    rst => convert3_dout_net,
    en => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem4/freq_err1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_freq_err1 is
  port (
    raw_phase : in std_logic_vector( 18-1 downto 0 );
    window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    c1p2_pt_cntr : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    nco_err : out std_logic_vector( 32-1 downto 0 );
    freq_err : out std_logic_vector( 32-1 downto 0 );
    gateway_out11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out27 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out : out std_logic_vector( 18-1 downto 0 );
    gateway_out1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x0 : out std_logic_vector( 10-1 downto 0 )
  );
end dsp_freq_err1;
architecture structural of dsp_freq_err1 is 
  signal convert_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 19-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 10-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
  signal constant8_op_net : std_logic_vector( 26-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 96-1 downto 0 );
  signal divide_op_net : std_logic_vector( 63-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal divide1_op_net : std_logic_vector( 96-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  nco_err <= convert_dout_net;
  freq_err <= convert1_dout_net;
  cordic_6_0_2_m_axis_dout_tdata_phase_net <= raw_phase;
  convert2_dout_net <= window;
  convert3_dout_net_x0 <= reset;
  counter_op_net <= c1p2_pt_cntr;
  gateway_out11 <= convert_dout_net;
  gateway_out19 <= mult3_p_net;
  gateway_out5_x0 <= convert1_dout_net;
  gateway_out6 <= logical_y_net;
  gateway_out27 <= addsub3_s_net;
  gateway_out28 <= register_q_net;
  gateway_out29 <= register1_q_net;
  gateway_out3 <= mult1_p_net;
  gateway_out <= mult3_p_net;
  gateway_out1 <= relational1_op_net;
  gateway_out2 <= delay5_q_net;
  gateway_out3_x0 <= register_q_net;
  gateway_out4 <= register1_q_net;
  gateway_out5 <= convert3_dout_net;
  gateway_out1_x0 <= mult_p_net;
  gateway_out2_x0 <= register2_q_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clk_net_x0 <= clk_12;
  ce_net_x0 <= ce_12;
  delta_phi : entity work.dsp_delta_phi 
  port map (
    phase => mult3_p_net,
    window => convert2_dout_net,
    reset => convert3_dout_net,
    clk_12 => clk_net_x0,
    ce_12 => ce_net_x0,
    d_phi => mult1_p_net,
    gateway_out27 => addsub3_s_net,
    gateway_out28 => register_q_net,
    gateway_out29 => register1_q_net,
    gateway_out3 => mult1_p_net,
    gateway_out1 => relational1_op_net,
    gateway_out2 => delay5_q_net,
    gateway_out3_x0 => register_q_net,
    gateway_out4 => register1_q_net
  );
  delta_t : entity work.dsp_delta_t 
  port map (
    window => convert2_dout_net,
    reset => convert3_dout_net,
    clk_12 => clk_net_x0,
    ce_12 => ce_net_x0,
    dt => mult_p_net,
    gateway_out1 => mult_p_net,
    gateway_out2 => register2_q_net
  );
  constant8 : entity work.sysgen_constant_912aa38159 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  convert : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 33,
    din_width => 96,
    dout_arith => 2,
    dout_bin_pt => 32,
    dout_width => 32,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => down_sample_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert_dout_net
  );
  convert1 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 31,
    din_width => 63,
    dout_arith => 2,
    dout_bin_pt => 10,
    dout_width => 32,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => divide_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert3 : entity work.dsp_xlconvert 
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
    din => convert3_dout_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert3_dout_net
  );
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert2_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay3_q_net
  );
  divide : entity work.xldivider_generator_6dbb83f3f73569f6ccb183eb64606384 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => mult1_p_net,
    b => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    op => divide_op_net
  );
  divide1 : entity work.xldivider_generator_2ace49429baf61df4bf778f752b8034f 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => divide_op_net,
    b => constant8_op_net,
    clk => clk_net,
    ce => ce_net,
    op => divide1_op_net
  );
  down_sample : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 33,
    d_width => 96,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlSigned,
    q_bin_pt => 33,
    q_width => 96
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => divide1_op_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => clk_net_x0,
    dest_ce => ce_net_x0,
    q => down_sample_q_net
  );
  inverter : entity work.sysgen_inverter_054a6621f5 
  port map (
    clr => '0',
    ip => convert2_dout_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => inverter_op_net
  );
  logical : entity work.sysgen_logical_32944f5613 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => delay3_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => logical_y_net
  );
  mult3 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 1,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_a_type => 1,
    c_a_width => 1,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 1,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i3",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 15,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => convert2_dout_net,
    b => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    core_clk => clk_net_x0,
    core_ce => ce_net_x0,
    p => mult3_p_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/Subsystem4
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem4 is
  port (
    imag : in std_logic_vector( 18-1 downto 0 );
    real : in std_logic_vector( 18-1 downto 0 );
    flo_window : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    c1p2_pt_cntr : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    nco_err_fb : out std_logic_vector( 32-1 downto 0 );
    freq_err : out std_logic_vector( 32-1 downto 0 );
    gateway_out1_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out27 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2 : out std_logic_vector( 10-1 downto 0 )
  );
end dsp_subsystem4;
architecture structural of dsp_subsystem4 is 
  signal convert_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 19-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 10-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net_x0 : std_logic;
  signal cordic_6_0_2_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_2_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample5_q_net : std_logic;
  signal clock_enable_probe4_q_net : std_logic_vector( 1-1 downto 0 );
begin
  nco_err_fb <= convert_dout_net;
  freq_err <= convert1_dout_net;
  mult2_p_net <= imag;
  mult_p_net <= real;
  convert2_dout_net <= flo_window;
  convert3_dout_net <= reset;
  counter_op_net <= c1p2_pt_cntr;
  gateway_out1_x0 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out11 <= convert_dout_net;
  gateway_out19 <= mult3_p_net;
  gateway_out2_x0 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out3 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out5_x0 <= convert1_dout_net;
  gateway_out6 <= logical_y_net;
  gateway_out27 <= addsub3_s_net;
  gateway_out28 <= register_q_net;
  gateway_out29 <= register1_q_net;
  gateway_out3_x1 <= mult1_p_net;
  gateway_out <= mult3_p_net;
  gateway_out1_x1 <= relational1_op_net;
  gateway_out2_x1 <= delay5_q_net;
  gateway_out3_x0 <= register_q_net;
  gateway_out4 <= register1_q_net;
  gateway_out5 <= convert3_dout_net_x0;
  gateway_out1 <= mult_p_net_x0;
  gateway_out2 <= register2_q_net;
  clk_net_x0 <= clk_1;
  ce_net <= ce_1;
  clk_net <= clk_12;
  ce_net_x0 <= ce_12;
  freq_err1 : entity work.dsp_freq_err1 
  port map (
    raw_phase => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    window => convert2_dout_net,
    reset => convert3_dout_net,
    c1p2_pt_cntr => counter_op_net,
    clk_1 => clk_net_x0,
    ce_1 => ce_net,
    clk_12 => clk_net,
    ce_12 => ce_net_x0,
    nco_err => convert_dout_net,
    freq_err => convert1_dout_net,
    gateway_out11 => convert_dout_net,
    gateway_out19 => mult3_p_net,
    gateway_out5_x0 => convert1_dout_net,
    gateway_out6 => logical_y_net,
    gateway_out27 => addsub3_s_net,
    gateway_out28 => register_q_net,
    gateway_out29 => register1_q_net,
    gateway_out3 => mult1_p_net,
    gateway_out => mult3_p_net,
    gateway_out1 => relational1_op_net,
    gateway_out2 => delay5_q_net,
    gateway_out3_x0 => register_q_net,
    gateway_out4 => register1_q_net,
    gateway_out5 => convert3_dout_net_x0,
    gateway_out1_x0 => mult_p_net_x0,
    gateway_out2_x0 => register2_q_net
  );
  cordic_6_0_2 : entity work.xlcordic_508e230f269385a677d56937823ab702 
  port map (
    s_axis_cartesian_tvalid => down_sample5_q_net,
    s_axis_cartesian_tdata_imag => mult2_p_net,
    s_axis_cartesian_tdata_real => mult_p_net,
    clk => clk_net,
    ce => ce_net_x0,
    m_axis_dout_tvalid => cordic_6_0_2_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_phase => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    m_axis_dout_tdata_real => cordic_6_0_2_m_axis_dout_tdata_real_net
  );
  clock_enable_probe4 : entity work.dsp_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => mult2_p_net,
    clk => clk_net,
    ce => ce_net_x0,
    q => clock_enable_probe4_q_net
  );
  down_sample5 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => clock_enable_probe4_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net_x0,
    q(0) => down_sample5_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c1p2_windowing_func2/four_point_avg
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_four_point_avg_x0 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_four_point_avg_x0;
architecture structural of dsp_four_point_avg_x0 is 
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal cmult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal cmult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal cmult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub3_s_net;
  cordic_6_0_m_axis_dout_tdata_real_net <= in1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult4_p_net,
    b => cmult2_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult1_p_net,
    b => cmult3_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub2_s_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  cmult1 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_bin_pt => 16,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 18,
    c_output_width => 36,
    core_name0 => "dsp_mult_gen_v12_0_i2",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult1_p_net
  );
  cmult2 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_bin_pt => 16,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 18,
    c_output_width => 36,
    core_name0 => "dsp_mult_gen_v12_0_i2",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult2_p_net
  );
  cmult3 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_bin_pt => 16,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 18,
    c_output_width => 36,
    core_name0 => "dsp_mult_gen_v12_0_i2",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult3_p_net
  );
  cmult4 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_bin_pt => 16,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 18,
    c_output_width => 36,
    core_name0 => "dsp_mult_gen_v12_0_i2",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => cordic_6_0_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult4_p_net
  );
  delay1 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c1p2_windowing_func2
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_c1p2_windowing_func2 is
  port (
    imag : in std_logic_vector( 18-1 downto 0 );
    real : in std_logic_vector( 18-1 downto 0 );
    eval_window : in std_logic_vector( 1-1 downto 0 );
    c1p2_pt_cntr : in std_logic_vector( 16-1 downto 0 );
    cav1_p2_dc_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    window_profile : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_c1p2_windowing_func2;
architecture structural of dsp_c1p2_windowing_func2 is 
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
begin
  window_profile <= addsub3_s_net;
  convert2_dout_net_x0 <= imag;
  convert6_dout_net <= real;
  convert11_dout_net <= eval_window;
  counter_op_net <= c1p2_pt_cntr;
  convert2_dout_net <= cav1_p2_dc_tvalid;
  clk_net <= clk_12;
  ce_net <= ce_12;
  four_point_avg : entity work.dsp_four_point_avg_x0 
  port map (
    in1 => cordic_6_0_m_axis_dout_tdata_real_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    out1 => addsub3_s_net
  );
  cordic_6_0 : entity work.xlcordic_508e230f269385a677d56937823ab702 
  port map (
    s_axis_cartesian_tvalid => convert2_dout_net(0),
    s_axis_cartesian_tdata_imag => convert2_dout_net_x0,
    s_axis_cartesian_tdata_real => convert6_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_phase => cordic_6_0_m_axis_dout_tdata_phase_net,
    m_axis_dout_tdata_real => cordic_6_0_m_axis_dout_tdata_real_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c1p2_windowing_func3/four_point_avg
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_four_point_avg is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_four_point_avg;
architecture structural of dsp_four_point_avg is 
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal cmult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal cmult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal cmult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub3_s_net;
  cordic_6_0_m_axis_dout_tdata_real_net <= in1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult4_p_net,
    b => cmult2_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult1_p_net,
    b => cmult3_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 19,
    core_name0 => "dsp_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub2_s_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  cmult1 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_bin_pt => 16,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 18,
    c_output_width => 36,
    core_name0 => "dsp_mult_gen_v12_0_i2",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult1_p_net
  );
  cmult2 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_bin_pt => 16,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 18,
    c_output_width => 36,
    core_name0 => "dsp_mult_gen_v12_0_i2",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult2_p_net
  );
  cmult3 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_bin_pt => 16,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 18,
    c_output_width => 36,
    core_name0 => "dsp_mult_gen_v12_0_i2",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult3_p_net
  );
  cmult4 : entity work.dsp_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_bin_pt => 16,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 18,
    c_output_width => 36,
    core_name0 => "dsp_mult_gen_v12_0_i2",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => cordic_6_0_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult4_p_net
  );
  delay1 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => cordic_6_0_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '1',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c1p2_windowing_func3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_c1p2_windowing_func3 is
  port (
    imag : in std_logic_vector( 18-1 downto 0 );
    real : in std_logic_vector( 18-1 downto 0 );
    eval_window : in std_logic_vector( 1-1 downto 0 );
    c1p2_pt_cntr : in std_logic_vector( 16-1 downto 0 );
    cav1_p2_dc_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    window_profile : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_c1p2_windowing_func3;
architecture structural of dsp_c1p2_windowing_func3 is 
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
begin
  window_profile <= addsub3_s_net;
  convert5_dout_net <= imag;
  convert1_dout_net <= real;
  convert11_dout_net <= eval_window;
  counter_op_net <= c1p2_pt_cntr;
  convert2_dout_net <= cav1_p2_dc_tvalid;
  clk_net <= clk_12;
  ce_net <= ce_12;
  four_point_avg : entity work.dsp_four_point_avg 
  port map (
    in1 => cordic_6_0_m_axis_dout_tdata_real_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    out1 => addsub3_s_net
  );
  cordic_6_0 : entity work.xlcordic_508e230f269385a677d56937823ab702 
  port map (
    s_axis_cartesian_tvalid => convert2_dout_net(0),
    s_axis_cartesian_tdata_imag => convert5_dout_net,
    s_axis_cartesian_tdata_real => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_phase => cordic_6_0_m_axis_dout_tdata_phase_net,
    m_axis_dout_tdata_real => cordic_6_0_m_axis_dout_tdata_real_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c2p1_Masking_window1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_c2p1_masking_window1 is
  port (
    phi_reset_trig : in std_logic_vector( 1-1 downto 0 );
    start_pt : in std_logic_vector( 16-1 downto 0 );
    stop_pt : in std_logic_vector( 16-1 downto 0 );
    delay_amt : in std_logic_vector( 16-1 downto 0 );
    delay_latch : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    counter_x0 : out std_logic_vector( 16-1 downto 0 );
    eval_window : out std_logic_vector( 1-1 downto 0 );
    integral_trig : out std_logic_vector( 1-1 downto 0 );
    flo_window : out std_logic_vector( 1-1 downto 0 );
    delay_val : out std_logic_vector( 16-1 downto 0 );
    gateway_out1 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out5 : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_c2p1_masking_window1;
architecture structural of dsp_c2p1_masking_window1 is 
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 16-1 downto 0 );
  signal down_sample2_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register31_q_net : std_logic_vector( 16-1 downto 0 );
  signal register32_q_net : std_logic_vector( 16-1 downto 0 );
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 16-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register10_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 1-1 downto 0 );
  signal relational6_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert8_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 16-1 downto 0 );
  signal down_sample2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 16-1 downto 0 );
  signal register5_q_net : std_logic_vector( 16-1 downto 0 );
  signal register6_q_net : std_logic_vector( 16-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
begin
  counter_x0 <= counter_op_net;
  eval_window <= convert11_dout_net;
  integral_trig <= convert5_dout_net;
  flo_window <= convert2_dout_net;
  delay_val <= register_q_net;
  down_sample2_q_net_x0 <= phi_reset_trig;
  register31_q_net <= start_pt;
  register32_q_net <= stop_pt;
  register2_q_net <= delay_amt;
  delay2_q_net <= delay_latch;
  gateway_out1 <= delay5_q_net;
  gateway_out2 <= delay3_q_net;
  gateway_out27 <= relational4_op_net;
  gateway_out28 <= relational3_op_net;
  gateway_out29 <= convert11_dout_net;
  gateway_out3 <= convert7_dout_net;
  gateway_out5 <= convert5_dout_net;
  clk_net_x0 <= clk_1;
  ce_net_x0 <= ce_1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "dsp_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => delay3_q_net,
    b => constant11_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub4 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "dsp_c_addsub_v12_0_i1",
    en_arith => xlUnsigned,
    en_bin_pt => 0,
    en_width => 1,
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    a => register_q_net,
    b => register2_q_net,
    en => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  constant1 : entity work.sysgen_constant_b2ceed5a46 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant11 : entity work.sysgen_constant_9a84ae6da1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant11_op_net
  );
  constant2 : entity work.sysgen_constant_6f518e0398 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity work.sysgen_constant_284465ef96 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  convert1 : entity work.dsp_xlconvert 
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
    din => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert11 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
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
    din => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert11_dout_net
  );
  convert2 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
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
    din => logical2_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity work.dsp_xlconvert 
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
    din => register10_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity work.dsp_xlconvert 
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
    din => relational6_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity work.dsp_xlconvert 
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
    din => relational5_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert7 : entity work.dsp_xlconvert 
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
    din => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert7_dout_net
  );
  convert8 : entity work.dsp_xlconvert 
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
    din => relational4_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert8_dout_net
  );
  counter : entity work.dsp_xlcounter_free 
  generic map (
    core_name0 => "dsp_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 16
  )
  port map (
    clr => '0',
    rst => convert3_dout_net,
    en => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => down_sample1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net_x0
  );
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => down_sample2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity work.dsp_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  delay7 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay7_q_net
  );
  down_sample1 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 16,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 16
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register5_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample1_q_net
  );
  down_sample2 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 16,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 16
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register6_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample2_q_net
  );
  logical1 : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => convert8_dout_net,
    d1 => convert7_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical2 : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => convert4_dout_net,
    d1 => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net
  );
  register_x0 : entity work.dsp_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000101100"
  )
  port map (
    rst => "0",
    d => addsub4_s_net,
    en => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => convert3_dout_net,
    en => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register10 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample2_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register10_q_net
  );
  register5 : entity work.dsp_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register31_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register5_q_net
  );
  register6 : entity work.dsp_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000001100100"
  )
  port map (
    en => "1",
    rst => "0",
    d => register32_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register6_q_net
  );
  relational1 : entity work.sysgen_relational_f85cc5971b 
  port map (
    clr => '0',
    a => delay7_q_net,
    b => constant2_op_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity work.sysgen_relational_23c51632d4 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  relational3 : entity work.sysgen_relational_f85cc5971b 
  port map (
    clr => '0',
    a => delay4_q_net,
    b => delay3_q_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
  relational4 : entity work.sysgen_relational_05a57d317e 
  port map (
    clr => '0',
    a => delay1_q_net,
    b => delay2_q_net_x0,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational4_op_net
  );
  relational5 : entity work.sysgen_relational_f85cc5971b 
  port map (
    clr => '0',
    a => counter_op_net,
    b => addsub1_s_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational5_op_net
  );
  relational6 : entity work.sysgen_relational_05a57d317e 
  port map (
    clr => '0',
    a => delay6_q_net,
    b => constant3_op_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational6_op_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c2p1_window_wf /Delay_calc1/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem_x1 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_subsystem_x1;
architecture structural of dsp_subsystem_x1 is 
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter5_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical1_y_net;
  relational3_op_net <= in1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  inverter5 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter5_op_net
  );
  logical1 : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => inverter5_op_net,
    d1 => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c2p1_window_wf /Delay_calc1/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem1_x1 is
  port (
    lc : in std_logic_vector( 1-1 downto 0 );
    d : in std_logic_vector( 1-1 downto 0 );
    qb : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic
  );
end dsp_subsystem1_x1;
architecture structural of dsp_subsystem1_x1 is 
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
begin
  logical7_y_net <= lc;
  relational3_op_net <= d;
  register1_q_net <= qb;
  clk_net <= clk_12;
  ce_net <= ce_12;
  inverter1 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical6 : entity work.sysgen_logical_32ca177ee1 
  port map (
    clr => '0',
    d0 => inverter1_op_net,
    d1 => logical7_y_net,
    clk => clk_net,
    ce => ce_net,
    y => logical6_y_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => relational3_op_net,
    en => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c2p1_window_wf /Delay_calc1/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem2_x1 is
  port (
    lc : in std_logic_vector( 1-1 downto 0 );
    d : in std_logic_vector( 1-1 downto 0 );
    qb : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic
  );
end dsp_subsystem2_x1;
architecture structural of dsp_subsystem2_x1 is 
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
begin
  logical7_y_net <= lc;
  relational1_op_net <= d;
  register1_q_net <= qb;
  clk_net <= clk_12;
  ce_net <= ce_12;
  inverter1 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical6 : entity work.sysgen_logical_32ca177ee1 
  port map (
    clr => '0',
    d0 => inverter1_op_net,
    d1 => logical7_y_net,
    clk => clk_net,
    ce => ce_net,
    y => logical6_y_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => relational1_op_net,
    en => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c2p1_window_wf /Delay_calc1/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem3_x1 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    in2 : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    or_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_subsystem3_x1;
architecture structural of dsp_subsystem3_x1 is 
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  or_x0 <= logical7_y_net;
  relational1_op_net <= in1;
  relational3_op_net <= in2;
  clk_net <= clk_12;
  ce_net <= ce_12;
  logical7 : entity work.sysgen_logical_32ca177ee1 
  port map (
    clr => '0',
    d0 => relational1_op_net,
    d1 => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical7_y_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c2p1_window_wf /Delay_calc1/negedge
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_negedge_x0 is
  port (
    d : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    q : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_negedge_x0;
architecture structural of dsp_negedge_x0 is 
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter4_op_net : std_logic_vector( 1-1 downto 0 );
begin
  q <= logical7_y_net;
  logical7_y_net_x0 <= d;
  clk_net <= clk_12;
  ce_net <= ce_12;
  delay1 : entity work.dsp_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 20,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical7_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  inverter4 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter4_op_net
  );
  logical7 : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => inverter4_op_net,
    d1 => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical7_y_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c2p1_window_wf /Delay_calc1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_delay_calc1 is
  port (
    wav : in std_logic_vector( 18-1 downto 0 );
    win : in std_logic_vector( 18-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    delay_amt : out std_logic_vector( 16-1 downto 0 );
    delay_fb_latch : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_delay_calc1;
architecture structural of dsp_delay_calc1 is 
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal absolute1_op_net : std_logic_vector( 19-1 downto 0 );
  signal absolute2_op_net : std_logic_vector( 19-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 2-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
begin
  delay_amt <= register2_q_net;
  delay_fb_latch <= delay2_q_net;
  dual_port_ram_doutb_net <= wav;
  addsub3_s_net <= win;
  convert3_dout_net <= reset;
  clk_net <= clk_12;
  ce_net <= ce_12;
  subsystem_x3 : entity work.dsp_subsystem_x1 
  port map (
    in1 => relational3_op_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    out1 => logical1_y_net
  );
  subsystem1_x4 : entity work.dsp_subsystem1_x1 
  port map (
    lc => logical7_y_net_x0,
    d => relational3_op_net,
    qb => register1_q_net,
    clk_12 => clk_net,
    ce_12 => ce_net
  );
  subsystem2_x4 : entity work.dsp_subsystem2_x1 
  port map (
    lc => logical7_y_net_x0,
    d => relational1_op_net,
    qb => register1_q_net_x0,
    clk_12 => clk_net,
    ce_12 => ce_net
  );
  subsystem3_x3 : entity work.dsp_subsystem3_x1 
  port map (
    in1 => relational1_op_net,
    in2 => relational3_op_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    or_x0 => logical7_y_net
  );
  negedge_x3 : entity work.dsp_negedge_x0 
  port map (
    d => logical7_y_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    q => logical7_y_net_x0
  );
  absolute1 : entity work.sysgen_abs_5257526c8e 
  port map (
    clr => '0',
    a => dual_port_ram_doutb_net,
    clk => clk_net,
    ce => ce_net,
    op => absolute1_op_net
  );
  absolute2 : entity work.sysgen_abs_a341405846 
  port map (
    clr => '0',
    a => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    op => absolute2_op_net
  );
  constant1 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity work.sysgen_constant_bc38c8b0ea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  counter : entity work.dsp_xlcounter_free 
  generic map (
    core_name0 => "dsp_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 16
  )
  port map (
    clr => '0',
    rst => convert3_dout_net,
    en => logical3_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 30,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  logical3 : entity work.sysgen_logical_1428f80391 
  port map (
    clr => '0',
    d0 => register1_q_net_x0,
    d1 => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical3_y_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => counter_op_net,
    en => logical7_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  relational1 : entity work.sysgen_relational_d437d88857 
  port map (
    clr => '0',
    a => absolute1_op_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational3 : entity work.sysgen_relational_a8fb20a446 
  port map (
    clr => '0',
    a => absolute2_op_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c2p1_window_wf 
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_c2p1_window_wf is
  port (
    cav_img : in std_logic_vector( 18-1 downto 0 );
    cav_real : in std_logic_vector( 18-1 downto 0 );
    ref_img : in std_logic_vector( 18-1 downto 0 );
    ref_real : in std_logic_vector( 18-1 downto 0 );
    window_profile : in std_logic_vector( 18-1 downto 0 );
    cav_delayed_imag : in std_logic_vector( 18-1 downto 0 );
    cav_delayed_real : in std_logic_vector( 18-1 downto 0 );
    pt_window : in std_logic_vector( 1-1 downto 0 );
    delay_match_amt : in std_logic_vector( 16-1 downto 0 );
    pt_cntr : in std_logic_vector( 16-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    cav_windowed_imag : out std_logic_vector( 18-1 downto 0 );
    cav_windowed_real : out std_logic_vector( 18-1 downto 0 );
    ref_windowed_imag : out std_logic_vector( 18-1 downto 0 );
    ref_windowed_real : out std_logic_vector( 18-1 downto 0 );
    delay_amt : out std_logic_vector( 16-1 downto 0 );
    delay_amt_latch : out std_logic_vector( 1-1 downto 0 );
    gateway_out11 : out std_logic_vector( 18-1 downto 0 );
    gateway_out35 : out std_logic_vector( 18-1 downto 0 );
    gateway_out38 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_c2p1_window_wf;
architecture structural of dsp_c2p1_window_wf is 
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram1_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 16-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 16-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant13_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant15_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant20_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant22_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 16-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_douta_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram1_douta_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
begin
  cav_windowed_imag <= mult2_p_net;
  cav_windowed_real <= mult_p_net;
  ref_windowed_imag <= mult5_p_net;
  ref_windowed_real <= mult4_p_net;
  delay_amt <= register2_q_net;
  delay_amt_latch <= delay2_q_net_x0;
  convert5_dout_net <= cav_img;
  convert1_dout_net <= cav_real;
  down_sample_q_net <= ref_img;
  down_sample1_q_net <= ref_real;
  addsub3_s_net <= window_profile;
  dual_port_ram_doutb_net <= cav_delayed_imag;
  dual_port_ram1_doutb_net <= cav_delayed_real;
  convert11_dout_net <= pt_window;
  register_q_net <= delay_match_amt;
  counter_op_net <= pt_cntr;
  gateway_out11 <= mult2_p_net;
  gateway_out35 <= mult4_p_net;
  gateway_out38 <= mult5_p_net;
  gateway_out4 <= mult3_p_net;
  convert3_dout_net <= reset;
  clk_net <= clk_12;
  ce_net <= ce_12;
  delay_calc1 : entity work.dsp_delay_calc1 
  port map (
    wav => dual_port_ram_doutb_net,
    win => addsub3_s_net,
    reset => convert3_dout_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    delay_amt => register2_q_net,
    delay_fb_latch => delay2_q_net_x0
  );
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "dsp_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => register_q_net,
    b => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "dsp_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => register_q_net,
    b => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  constant13 : entity work.sysgen_constant_0b5fa36c3d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  constant15 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant15_op_net
  );
  constant20 : entity work.sysgen_constant_0b5fa36c3d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant20_op_net
  );
  constant22 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant22_op_net
  );
  constant5 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  delay4 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  dual_port_ram : entity work.dsp_xldpram 
  generic map (
    c_address_width_a => 16,
    c_address_width_b => 16,
    c_width_a => 18,
    c_width_b => 18,
    core_name0 => "dsp_blk_mem_gen_i0",
    latency => 1
  )
  port map (
    ena => "1",
    rsta => "0",
    rstb => "0",
    addra => addsub1_s_net,
    dina => convert5_dout_net,
    wea => relational1_op_net,
    addrb => delay4_q_net,
    dinb => constant15_op_net,
    web => constant13_op_net,
    enb => relational1_op_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  dual_port_ram1 : entity work.dsp_xldpram 
  generic map (
    c_address_width_a => 16,
    c_address_width_b => 16,
    c_width_a => 18,
    c_width_b => 18,
    core_name0 => "dsp_blk_mem_gen_i0",
    latency => 1
  )
  port map (
    ena => "1",
    rsta => "0",
    rstb => "0",
    addra => addsub2_s_net,
    dina => convert1_dout_net,
    wea => relational_op_net,
    addrb => delay5_q_net,
    dinb => constant22_op_net,
    web => constant20_op_net,
    enb => relational_op_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram1_douta_net,
    doutb => dual_port_ram1_doutb_net
  );
  mult : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 18,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => mult1_p_net,
    b => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 18,
    c_output_width => 36,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i7",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 17,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => dual_port_ram1_doutb_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 18,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => mult3_p_net,
    b => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 18,
    c_output_width => 36,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i7",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 17,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => dual_port_ram_doutb_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 18,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => down_sample1_q_net,
    b => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 18,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => down_sample_q_net,
    b => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  relational : entity work.sysgen_relational_213f394d8c 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_213f394d8c 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c2p2_window_wf/Delay_calc1/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem_x0 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_subsystem_x0;
architecture structural of dsp_subsystem_x0 is 
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter5_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical1_y_net;
  relational3_op_net <= in1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  delay3 : entity work.dsp_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  inverter5 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter5_op_net
  );
  logical1 : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => inverter5_op_net,
    d1 => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c2p2_window_wf/Delay_calc1/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem1_x0 is
  port (
    lc : in std_logic_vector( 1-1 downto 0 );
    d : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    q : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_subsystem1_x0;
architecture structural of dsp_subsystem1_x0 is 
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
begin
  q <= register1_q_net;
  logical7_y_net <= lc;
  relational3_op_net <= d;
  clk_net <= clk_12;
  ce_net <= ce_12;
  inverter1 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical6 : entity work.sysgen_logical_32ca177ee1 
  port map (
    clr => '0',
    d0 => inverter1_op_net,
    d1 => logical7_y_net,
    clk => clk_net,
    ce => ce_net,
    y => logical6_y_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => relational3_op_net,
    en => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c2p2_window_wf/Delay_calc1/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem2_x0 is
  port (
    lc : in std_logic_vector( 1-1 downto 0 );
    d : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    q : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_subsystem2_x0;
architecture structural of dsp_subsystem2_x0 is 
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
begin
  q <= register1_q_net;
  logical7_y_net <= lc;
  relational1_op_net <= d;
  clk_net <= clk_12;
  ce_net <= ce_12;
  inverter1 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical6 : entity work.sysgen_logical_32ca177ee1 
  port map (
    clr => '0',
    d0 => inverter1_op_net,
    d1 => logical7_y_net,
    clk => clk_net,
    ce => ce_net,
    y => logical6_y_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => relational1_op_net,
    en => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c2p2_window_wf/Delay_calc1/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_subsystem3_x0 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    in2 : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    or_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_subsystem3_x0;
architecture structural of dsp_subsystem3_x0 is 
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  or_x0 <= logical7_y_net;
  relational1_op_net <= in1;
  relational3_op_net <= in2;
  clk_net <= clk_12;
  ce_net <= ce_12;
  logical7 : entity work.sysgen_logical_32ca177ee1 
  port map (
    clr => '0',
    d0 => relational1_op_net,
    d1 => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical7_y_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c2p2_window_wf/Delay_calc1/negedge
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_negedge is
  port (
    d : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    q : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_negedge;
architecture structural of dsp_negedge is 
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter4_op_net : std_logic_vector( 1-1 downto 0 );
begin
  q <= logical7_y_net;
  logical7_y_net_x0 <= d;
  clk_net <= clk_12;
  ce_net <= ce_12;
  delay1 : entity work.dsp_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 20,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical7_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  inverter4 : entity work.sysgen_inverter_67ad010f42 
  port map (
    clr => '0',
    ip => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter4_op_net
  );
  logical7 : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => inverter4_op_net,
    d1 => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical7_y_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c2p2_window_wf/Delay_calc1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_delay_calc1_x0 is
  port (
    wav : in std_logic_vector( 18-1 downto 0 );
    win : in std_logic_vector( 18-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    delay_amt : out std_logic_vector( 16-1 downto 0 );
    delay_fb_latch : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_delay_calc1_x0;
architecture structural of dsp_delay_calc1_x0 is 
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal absolute1_op_net : std_logic_vector( 19-1 downto 0 );
  signal absolute2_op_net : std_logic_vector( 19-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 2-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
begin
  delay_amt <= register2_q_net;
  delay_fb_latch <= delay2_q_net;
  dual_port_ram_doutb_net <= wav;
  addsub3_s_net <= win;
  convert3_dout_net <= reset;
  clk_net <= clk_12;
  ce_net <= ce_12;
  subsystem_x3 : entity work.dsp_subsystem_x0 
  port map (
    in1 => relational3_op_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    out1 => logical1_y_net
  );
  subsystem1_x4 : entity work.dsp_subsystem1_x0 
  port map (
    lc => logical7_y_net_x0,
    d => relational3_op_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    q => register1_q_net
  );
  subsystem2_x4 : entity work.dsp_subsystem2_x0 
  port map (
    lc => logical7_y_net_x0,
    d => relational1_op_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    q => register1_q_net_x0
  );
  subsystem3_x3 : entity work.dsp_subsystem3_x0 
  port map (
    in1 => relational1_op_net,
    in2 => relational3_op_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    or_x0 => logical7_y_net
  );
  negedge_x3 : entity work.dsp_negedge 
  port map (
    d => logical7_y_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    q => logical7_y_net_x0
  );
  absolute1 : entity work.sysgen_abs_5257526c8e 
  port map (
    clr => '0',
    a => dual_port_ram_doutb_net,
    clk => clk_net,
    ce => ce_net,
    op => absolute1_op_net
  );
  absolute2 : entity work.sysgen_abs_a341405846 
  port map (
    clr => '0',
    a => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    op => absolute2_op_net
  );
  constant1 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity work.sysgen_constant_bc38c8b0ea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  counter : entity work.dsp_xlcounter_free 
  generic map (
    core_name0 => "dsp_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 16
  )
  port map (
    clr => '0',
    rst => convert3_dout_net,
    en => logical3_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay2 : entity work.dsp_xldelay 
  generic map (
    latency => 30,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  logical3 : entity work.sysgen_logical_1428f80391 
  port map (
    clr => '0',
    d0 => register1_q_net_x0,
    d1 => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical3_y_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => counter_op_net,
    en => logical7_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  relational1 : entity work.sysgen_relational_d437d88857 
  port map (
    clr => '0',
    a => absolute1_op_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational3 : entity work.sysgen_relational_a8fb20a446 
  port map (
    clr => '0',
    a => absolute2_op_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2/c2p2_window_wf
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_c2p2_window_wf is
  port (
    cav_img : in std_logic_vector( 18-1 downto 0 );
    cav_real : in std_logic_vector( 18-1 downto 0 );
    ref_img : in std_logic_vector( 18-1 downto 0 );
    ref_real : in std_logic_vector( 18-1 downto 0 );
    window_profile : in std_logic_vector( 18-1 downto 0 );
    pt_window : in std_logic_vector( 1-1 downto 0 );
    delay_match_amt : in std_logic_vector( 16-1 downto 0 );
    pt_cntr : in std_logic_vector( 16-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    cav_windowed_imag : out std_logic_vector( 18-1 downto 0 );
    cav_windowed_real : out std_logic_vector( 18-1 downto 0 );
    ref_windowed_imag : out std_logic_vector( 18-1 downto 0 );
    ref_windowed_real : out std_logic_vector( 18-1 downto 0 );
    delayed_cav_dc_img : out std_logic_vector( 18-1 downto 0 );
    delayed_cav_dc_real : out std_logic_vector( 18-1 downto 0 );
    delay_amt : out std_logic_vector( 16-1 downto 0 );
    delay_amt_latch : out std_logic_vector( 1-1 downto 0 );
    gateway_out11 : out std_logic_vector( 18-1 downto 0 );
    gateway_out35 : out std_logic_vector( 18-1 downto 0 );
    gateway_out38 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_c2p2_window_wf;
architecture structural of dsp_c2p2_window_wf is 
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram1_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 16-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 16-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant13_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant15_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant20_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant22_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 16-1 downto 0 );
  signal dual_port_ram_douta_net : std_logic_vector( 18-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram1_douta_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
begin
  cav_windowed_imag <= mult2_p_net;
  cav_windowed_real <= mult_p_net;
  ref_windowed_imag <= mult5_p_net;
  ref_windowed_real <= mult4_p_net;
  delayed_cav_dc_img <= dual_port_ram_doutb_net;
  delayed_cav_dc_real <= dual_port_ram1_doutb_net;
  delay_amt <= register2_q_net;
  delay_amt_latch <= delay2_q_net_x0;
  convert2_dout_net <= cav_img;
  convert6_dout_net <= cav_real;
  down_sample_q_net <= ref_img;
  down_sample1_q_net <= ref_real;
  addsub3_s_net <= window_profile;
  convert11_dout_net <= pt_window;
  register_q_net <= delay_match_amt;
  counter_op_net <= pt_cntr;
  gateway_out11 <= mult2_p_net;
  gateway_out35 <= mult4_p_net;
  gateway_out38 <= mult5_p_net;
  gateway_out4 <= mult3_p_net;
  convert3_dout_net <= reset;
  clk_net <= clk_12;
  ce_net <= ce_12;
  delay_calc1 : entity work.dsp_delay_calc1_x0 
  port map (
    wav => dual_port_ram_doutb_net,
    win => addsub3_s_net,
    reset => convert3_dout_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    delay_amt => register2_q_net,
    delay_fb_latch => delay2_q_net_x0
  );
  addsub1 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "dsp_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => register_q_net,
    b => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity work.dsp_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "dsp_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => register_q_net,
    b => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  constant13 : entity work.sysgen_constant_0b5fa36c3d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  constant15 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant15_op_net
  );
  constant20 : entity work.sysgen_constant_0b5fa36c3d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant20_op_net
  );
  constant22 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant22_op_net
  );
  constant5 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity work.sysgen_constant_adc7b6b6ca 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  delay4 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity work.dsp_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '1',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  dual_port_ram : entity work.dsp_xldpram 
  generic map (
    c_address_width_a => 16,
    c_address_width_b => 16,
    c_width_a => 18,
    c_width_b => 18,
    core_name0 => "dsp_blk_mem_gen_i0",
    latency => 1
  )
  port map (
    ena => "1",
    rsta => "0",
    rstb => "0",
    addra => addsub1_s_net,
    dina => convert2_dout_net,
    wea => relational1_op_net,
    addrb => delay4_q_net,
    dinb => constant15_op_net,
    web => constant13_op_net,
    enb => relational1_op_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  dual_port_ram1 : entity work.dsp_xldpram 
  generic map (
    c_address_width_a => 16,
    c_address_width_b => 16,
    c_width_a => 18,
    c_width_b => 18,
    core_name0 => "dsp_blk_mem_gen_i0",
    latency => 1
  )
  port map (
    ena => "1",
    rsta => "0",
    rstb => "0",
    addra => addsub2_s_net,
    dina => convert6_dout_net,
    wea => relational_op_net,
    addrb => delay5_q_net,
    dinb => constant22_op_net,
    web => constant20_op_net,
    enb => relational_op_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram1_douta_net,
    doutb => dual_port_ram1_doutb_net
  );
  mult : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 18,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => mult1_p_net,
    b => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 18,
    c_output_width => 36,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i7",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 17,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => dual_port_ram1_doutb_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 18,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => mult3_p_net,
    b => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 18,
    c_output_width => 36,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i7",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 17,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => dual_port_ram_doutb_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 18,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => down_sample1_q_net,
    b => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity work.dsp_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 18,
    c_output_width => 19,
    c_type => 0,
    core_name0 => "dsp_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => down_sample_q_net,
    b => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  relational : entity work.sysgen_relational_213f394d8c 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_213f394d8c 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Cav2
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_cav2 is
  port (
    pa_stream_1 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_1 : in std_logic_vector( 18-1 downto 0 );
    pa_stream_2 : in std_logic_vector( 18-1 downto 0 );
    pa_stream_3 : in std_logic_vector( 4-1 downto 0 );
    iq_stream_2 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_3 : in std_logic_vector( 4-1 downto 0 );
    iq_stream_4 : in std_logic_vector( 1-1 downto 0 );
    cav2_p1_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav2_nco_phase_reset : in std_logic_vector( 1-1 downto 0 );
    cav2_p2_chan_sel : in std_logic_vector( 4-1 downto 0 );
    rf_ref_amp : in std_logic_vector( 18-1 downto 0 );
    rf_ref_phase : in std_logic_vector( 18-1 downto 0 );
    rf_ref_q : in std_logic_vector( 18-1 downto 0 );
    cav2_nco_phase_adj : in std_logic_vector( 32-1 downto 0 );
    rf_ref_i : in std_logic_vector( 18-1 downto 0 );
    cav2_p1_window_start : in std_logic_vector( 16-1 downto 0 );
    cav2_p1_window_stop : in std_logic_vector( 16-1 downto 0 );
    cav2_p1_cal_coef : in std_logic_vector( 18-1 downto 0 );
    cav2_p2_cal_coef : in std_logic_vector( 18-1 downto 0 );
    cav2_p2_window_start : in std_logic_vector( 16-1 downto 0 );
    cav2_p2_window_stop : in std_logic_vector( 16-1 downto 0 );
    cav1_p2_if_i : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_if_q : in std_logic_vector( 18-1 downto 0 );
    flo_c1p2_window : in std_logic_vector( 1-1 downto 0 );
    c1p2_pt_cntr : in std_logic_vector( 16-1 downto 0 );
    cav1_p2_dc_tvalid : in std_logic_vector( 1-1 downto 0 );
    reset : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    clk_144 : in std_logic;
    ce_144 : in std_logic;
    c2p2_pt_window : out std_logic_vector( 1-1 downto 0 );
    flo_c2p1_window : out std_logic_vector( 1-1 downto 0 );
    cav2_p1_dc_real : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_dc_img : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_dc_freq : out std_logic_vector( 32-1 downto 0 );
    c2p1_freq_err : out std_logic_vector( 32-1 downto 0 );
    c2p1_window_func : out std_logic_vector( 18-1 downto 0 );
    c2p2_pt_cntr : out std_logic_vector( 16-1 downto 0 );
    c2p2_integral_logic : out std_logic_vector( 1-1 downto 0 );
    c2p2_delay_match : out std_logic_vector( 16-1 downto 0 );
    cav2_p2_delayed_dc_img : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_delayed_dc_real : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_delayed_dc_img : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_dc_real : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_dc_img : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_dc_freq : out std_logic_vector( 32-1 downto 0 );
    cav2_p2_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_delayed_dc_real : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_if_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_ref_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_ref_amp_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_integrated_ref_i : out std_logic_vector( 20-1 downto 0 );
    cav2_p2_integrated_ref_q : out std_logic_vector( 20-1 downto 0 );
    cav2_p2_integrated_i : out std_logic_vector( 20-1 downto 0 );
    dsp_cav2_reset : out std_logic_vector( 1-1 downto 0 );
    c2_p1_delay_amt : out std_logic_vector( 16-1 downto 0 );
    cav2_p2_integrated_q : out std_logic_vector( 20-1 downto 0 );
    cav2_p1_windowed_ref_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_windowed_ref_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_windowed_img : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_windowed_real : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_integrated_ref_i : out std_logic_vector( 20-1 downto 0 );
    cav2_p1_integrated_ref_q : out std_logic_vector( 20-1 downto 0 );
    cav2_p1_integrated_i : out std_logic_vector( 20-1 downto 0 );
    cav2_p1_integrated_q : out std_logic_vector( 20-1 downto 0 );
    cav2_p1_comparison_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_ref_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_q : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_comparison_phase : out std_logic_vector( 18-1 downto 0 );
    c2p1_pt_window : out std_logic_vector( 1-1 downto 0 );
    c2p1_pt_cntr : out std_logic_vector( 16-1 downto 0 );
    c2p1_integral_logic : out std_logic_vector( 1-1 downto 0 );
    cav2_p1_ref_amp_out : out std_logic_vector( 18-1 downto 0 );
    c2_p1_delay_latch : out std_logic_vector( 1-1 downto 0 );
    cav2_p1_phase_out : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_amp_out : out std_logic_vector( 18-1 downto 0 );
    flo_c2p2_window : out std_logic_vector( 1-1 downto 0 );
    c2p2_ready : out std_logic_vector( 1-1 downto 0 );
    c2p2_freq_err : out std_logic_vector( 32-1 downto 0 );
    c2_p2_delay_latch : out std_logic_vector( 1-1 downto 0 );
    c2p2_window_func : out std_logic_vector( 18-1 downto 0 );
    cav2_nco_fb : out std_logic_vector( 32-1 downto 0 );
    c2_p2_delay_amt : out std_logic_vector( 16-1 downto 0 );
    cav2_p2_windowed_img : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_windowed_real : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_windowed_ref_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p2_windowed_ref_q : out std_logic_vector( 18-1 downto 0 );
    c2p1_delay_match : out std_logic_vector( 16-1 downto 0 );
    cav2_sync : out std_logic_vector( 1-1 downto 0 );
    c2_ready : out std_logic_vector( 1-1 downto 0 );
    c2p1_ready : out std_logic_vector( 1-1 downto 0 );
    cav2_nco_sin : out std_logic_vector( 26-1 downto 0 );
    cav2_nco_cos : out std_logic_vector( 26-1 downto 0 );
    c2_stream_valid : out std_logic_vector( 1-1 downto 0 );
    cav2_p1_if_i : out std_logic_vector( 18-1 downto 0 );
    cav2_p1_if_q : out std_logic_vector( 18-1 downto 0 );
    gateway_out10_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15 : out std_logic_vector( 18-1 downto 0 );
    gateway_out16_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x8 : out std_logic_vector( 26-1 downto 0 );
    gateway_out4_x5 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x6 : out std_logic_vector( 26-1 downto 0 );
    gateway_out6_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out7_x3 : out std_logic_vector( 34-1 downto 0 );
    gateway_out8_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x8 : out std_logic_vector( 20-1 downto 0 );
    gateway_out10_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out14_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out18_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x8 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3_x9 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4_x6 : out std_logic_vector( 32-1 downto 0 );
    gateway_out5_x7 : out std_logic_vector( 18-1 downto 0 );
    gateway_out6_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out8_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out9_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x7 : out std_logic_vector( 20-1 downto 0 );
    gateway_out10_x3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13 : out std_logic_vector( 32-1 downto 0 );
    gateway_out14 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17 : out std_logic_vector( 32-1 downto 0 );
    gateway_out18 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3_x4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4_x3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out5_x3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out6_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out8_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out9_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out1_x3 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2_x3 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out4_x2 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out6_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out8 : out std_logic_vector( 1-1 downto 0 );
    gateway_out9 : out std_logic_vector( 16-1 downto 0 );
    gateway_out24 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25 : out std_logic_vector( 20-1 downto 0 );
    gateway_out26 : out std_logic_vector( 20-1 downto 0 );
    gateway_out6_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7 : out std_logic_vector( 20-1 downto 0 );
    gateway_out8_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out24_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out26_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out6_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out8_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out44_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out46_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x6 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x2 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x7 : out std_logic_vector( 18-1 downto 0 );
    gateway_out20_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x7 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out27_x2 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x6 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x5 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x5 : out std_logic_vector( 10-1 downto 0 );
    gateway_out44 : out std_logic_vector( 18-1 downto 0 );
    gateway_out46 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out20 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out27_x0 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x0 : out std_logic_vector( 10-1 downto 0 );
    gateway_out1 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out10 : out std_logic_vector( 1-1 downto 0 );
    gateway_out11 : out std_logic_vector( 18-1 downto 0 );
    gateway_out34 : out std_logic_vector( 1-1 downto 0 );
    gateway_out35 : out std_logic_vector( 18-1 downto 0 );
    gateway_out37 : out std_logic_vector( 1-1 downto 0 );
    gateway_out38 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out10_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out11_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out34_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out35_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out37_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out38_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x0 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_cav2;
architecture structural of dsp_cav2 is 
  signal amp : std_logic_vector( 18-1 downto 0 );
  signal ddci : std_logic_vector( 18-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal ddcq : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal ddcsync : std_logic_vector( 1-1 downto 0 );
  signal convert11_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal addsub3_s_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net_x1 : std_logic_vector( 16-1 downto 0 );
  signal convert5_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal register_q_net_x2 : std_logic_vector( 16-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram1_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram_doutb_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal mult4_p_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register13_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram1_doutb_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net_x0 : std_logic_vector( 20-1 downto 0 );
  signal convert4_dout_net_x0 : std_logic_vector( 20-1 downto 0 );
  signal convert9_dout_net_x0 : std_logic_vector( 20-1 downto 0 );
  signal convert3_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net_x4 : std_logic_vector( 16-1 downto 0 );
  signal convert10_dout_net_x0 : std_logic_vector( 20-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mult5_p_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert9_dout_net : std_logic_vector( 20-1 downto 0 );
  signal convert10_dout_net : std_logic_vector( 20-1 downto 0 );
  signal addsub_s_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal convert11_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal convert5_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register12_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register13_q_net : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net_x5 : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net_x3 : std_logic_vector( 16-1 downto 0 );
  signal mult2_p_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal register_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal down_sample2_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal nco_sin : std_logic_vector( 26-1 downto 0 );
  signal nco_cos : std_logic_vector( 26-1 downto 0 );
  signal relational7_op_net : std_logic_vector( 1-1 downto 0 );
  signal down_sample1_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal register35_q_net : std_logic_vector( 1-1 downto 0 );
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal down_sample1_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal register36_q_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample1_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal register31_q_net : std_logic_vector( 16-1 downto 0 );
  signal dest_ce_net : std_logic;
  signal register32_q_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register33_q_net : std_logic_vector( 16-1 downto 0 );
  signal register34_q_net : std_logic_vector( 16-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 18-1 downto 0 );
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal fir_compiler_7_2_m_axis_data_tdata_real_net : std_logic_vector( 34-1 downto 0 );
  signal fir_compiler_7_2_m_axis_data_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal register12_q_net : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter3_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator3_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator_q_net : std_logic_vector( 32-1 downto 0 );
  signal accumulator2_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator1_q_net : std_logic_vector( 32-1 downto 0 );
  signal register11_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x4 : std_logic_vector( 32-1 downto 0 );
  signal register12_q_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net_x5 : std_logic_vector( 32-1 downto 0 );
  signal inverter3_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal accumulator3_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal inverter2_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal accumulator_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal accumulator2_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal inverter1_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal accumulator1_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal register11_q_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal delay5_q_net_x2 : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal relational4_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net_x2 : std_logic_vector( 19-1 downto 0 );
  signal register_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net_x2 : std_logic_vector( 10-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal addsub3_s_net_x1 : std_logic_vector( 19-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net_x1 : std_logic_vector( 10-1 downto 0 );
  signal delay5_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 16-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal mult3_p_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal convert2_dout_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal complex_multiplier_6_0_m_axis_dout_tvalid_net : std_logic;
  signal dds_compiler_6_0_m_axis_data_tvalid_net : std_logic;
  signal down_sample6_q_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample5_q_net : std_logic_vector( 1-1 downto 0 );
  signal down_sample7_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample3_q_net : std_logic_vector( 18-1 downto 0 );
  signal clock_enable_probe_q_net : std_logic_vector( 1-1 downto 0 );
  signal clock_enable_probe1_q_net : std_logic_vector( 1-1 downto 0 );
  signal complex_multiplier_6_0_m_axis_dout_tdata_imag_net : std_logic_vector( 33-1 downto 0 );
  signal complex_multiplier_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 33-1 downto 0 );
  signal down_sample_q_net : std_logic;
  signal complex_multiplier_6_0_1_m_axis_dout_tvalid_net : std_logic;
  signal complex_multiplier_6_0_1_m_axis_dout_tdata_imag_net : std_logic_vector( 33-1 downto 0 );
  signal complex_multiplier_6_0_1_m_axis_dout_tdata_real_net : std_logic_vector( 33-1 downto 0 );
  signal down_sample1_q_net : std_logic;
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net_x6 : std_logic_vector( 33-1 downto 0 );
  signal convert10_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register32_q_net_x0 : std_logic_vector( 33-1 downto 0 );
  signal register1_q_net_x5 : std_logic_vector( 33-1 downto 0 );
  signal register33_q_net_x0 : std_logic_vector( 33-1 downto 0 );
  signal register10_q_net : std_logic_vector( 18-1 downto 0 );
  signal register8_q_net : std_logic_vector( 1-1 downto 0 );
  signal register9_q_net : std_logic_vector( 32-1 downto 0 );
  signal register7_q_net : std_logic_vector( 18-1 downto 0 );
begin
  amp <= pa_stream_1;
  ddci <= iq_stream_1;
  phase_x0 <= pa_stream_2;
  channel <= pa_stream_3;
  ddcq <= iq_stream_2;
  ddcchannel <= iq_stream_3;
  ddcsync <= iq_stream_4;
  c2p2_pt_window <= convert11_dout_net_x1;
  flo_c2p1_window <= convert2_dout_net_x4;
  cav2_p1_dc_real <= convert1_dout_net_x0;
  cav2_p1_dc_img <= convert5_dout_net;
  cav2_p1_dc_freq <= convert1_dout_net_x1;
  c2p1_freq_err <= convert1_dout_net_x1;
  c2p1_window_func <= addsub3_s_net_x0;
  c2p2_pt_cntr <= counter_op_net_x1;
  c2p2_integral_logic <= convert5_dout_net_x1;
  c2p2_delay_match <= register_q_net_x2;
  cav2_p2_delayed_dc_img <= dual_port_ram_doutb_net;
  cav2_p2_delayed_dc_real <= dual_port_ram1_doutb_net;
  cav2_p1_delayed_dc_img <= dual_port_ram_doutb_net_x0;
  cav2_p2_dc_real <= convert6_dout_net;
  cav2_p2_dc_img <= convert2_dout_net_x3;
  cav2_p2_dc_freq <= convert1_dout_net_x2;
  cav2_p2_phase_out <= register13_q_net_x0;
  cav2_p2_amp_out <= register14_q_net_x0;
  cav2_p2_comparison_i <= addsub_s_net;
  cav2_p2_comparison_q <= addsub_s_net;
  cav2_p2_comparison_phase <= register3_q_net;
  cav2_p1_delayed_dc_real <= dual_port_ram1_doutb_net_x0;
  cav2_p2_if_i <= down_sample1_q_net_x4;
  cav2_p2_if_q <= down_sample_q_net_x4;
  cav2_p2_ref_phase_out <= register11_q_net_x0;
  cav2_p2_ref_amp_out <= register12_q_net_x0;
  cav2_p2_integrated_ref_i <= convert2_dout_net_x0;
  cav2_p2_integrated_ref_q <= convert4_dout_net_x0;
  cav2_p2_integrated_i <= convert9_dout_net_x0;
  dsp_cav2_reset <= convert3_dout_net_x1;
  c2_p1_delay_amt <= register2_q_net_x4;
  cav2_p2_integrated_q <= convert10_dout_net_x0;
  cav2_p1_windowed_ref_i <= mult4_p_net_x0;
  cav2_p1_windowed_ref_q <= mult5_p_net_x0;
  cav2_p1_windowed_img <= mult2_p_net_x1;
  cav2_p1_windowed_real <= mult_p_net_x2;
  cav2_p1_integrated_ref_i <= convert2_dout_net;
  cav2_p1_integrated_ref_q <= convert4_dout_net;
  cav2_p1_integrated_i <= convert9_dout_net;
  cav2_p1_integrated_q <= convert10_dout_net;
  cav2_p1_comparison_i <= addsub_s_net_x0;
  cav2_p1_ref_phase_out <= register11_q_net_x1;
  cav2_p1_comparison_q <= addsub_s_net_x0;
  cav2_p1_comparison_phase <= register11_q_net_x3;
  c2p1_pt_window <= convert11_dout_net_x0;
  c2p1_pt_cntr <= counter_op_net_x0;
  c2p1_integral_logic <= convert5_dout_net_x0;
  cav2_p1_ref_amp_out <= register12_q_net_x1;
  c2_p1_delay_latch <= delay2_q_net_x0;
  cav2_p1_phase_out <= register13_q_net;
  cav2_p1_amp_out <= register14_q_net;
  flo_c2p2_window <= convert2_dout_net_x5;
  c2p2_ready <= relational2_op_net;
  c2p2_freq_err <= convert1_dout_net_x2;
  c2_p2_delay_latch <= delay2_q_net;
  c2p2_window_func <= addsub3_s_net;
  cav2_nco_fb <= convert_dout_net_x1;
  c2_p2_delay_amt <= register2_q_net_x3;
  cav2_p2_windowed_img <= mult2_p_net_x0;
  cav2_p2_windowed_real <= mult_p_net_x1;
  cav2_p2_windowed_ref_i <= mult4_p_net;
  cav2_p2_windowed_ref_q <= mult5_p_net;
  c2p1_delay_match <= register_q_net_x0;
  cav2_sync <= down_sample2_q_net;
  c2_ready <= logical_y_net_x0;
  c2p1_ready <= relational1_op_net_x1;
  cav2_nco_sin <= nco_sin;
  cav2_nco_cos <= nco_cos;
  c2_stream_valid <= relational7_op_net;
  cav2_p1_if_i <= down_sample1_q_net_x1;
  cav2_p1_if_q <= down_sample_q_net_x1;
  register29_q_net <= cav2_p1_chan_sel;
  register35_q_net <= cav2_nco_phase_reset;
  register30_q_net <= cav2_p2_chan_sel;
  down_sample1_q_net_x2 <= rf_ref_amp;
  down_sample_q_net_x2 <= rf_ref_phase;
  down_sample_q_net_x3 <= rf_ref_q;
  register36_q_net <= cav2_nco_phase_adj;
  down_sample1_q_net_x3 <= rf_ref_i;
  register31_q_net <= cav2_p1_window_start;
  register32_q_net <= cav2_p1_window_stop;
  register1_q_net_x0 <= cav2_p1_cal_coef;
  register2_q_net_x0 <= cav2_p2_cal_coef;
  register33_q_net <= cav2_p2_window_start;
  register34_q_net <= cav2_p2_window_stop;
  gateway_out10_x1 <= mult2_p_net;
  gateway_out15 <= convert_dout_net;
  gateway_out16_x0 <= convert1_dout_net;
  gateway_out3_x8 <= nco_sin;
  gateway_out4_x5 <= phase;
  gateway_out5_x6 <= nco_cos;
  gateway_out6_x4 <= cordic_6_0_m_axis_dout_tdata_real_net;
  gateway_out7_x3 <= fir_compiler_7_2_m_axis_data_tdata_real_net;
  gateway_out8_x3 <= fir_compiler_7_2_m_axis_data_tvalid_net;
  gateway_out_x1 <= inverter_op_net_x0;
  gateway_out1_x8 <= convert2_dout_net_x0;
  gateway_out10_x2 <= mult4_p_net;
  gateway_out11_x4 <= register1_q_net;
  gateway_out12_x0 <= convert4_dout_net_x0;
  gateway_out13_x0 <= register12_q_net;
  gateway_out14_x0 <= mult5_p_net;
  gateway_out15_x1 <= register2_q_net;
  gateway_out16_x1 <= inverter3_op_net;
  gateway_out17_x0 <= accumulator3_q_net;
  gateway_out18_x0 <= register1_q_net;
  gateway_out2_x8 <= inverter2_op_net;
  gateway_out22_x0 <= convert9_dout_net_x0;
  gateway_out23_x0 <= convert10_dout_net_x0;
  gateway_out3_x9 <= accumulator_q_net;
  gateway_out4_x6 <= accumulator2_q_net;
  gateway_out5_x7 <= mult2_p_net_x0;
  gateway_out6_x5 <= inverter1_op_net;
  gateway_out7_x4 <= accumulator1_q_net;
  gateway_out8_x4 <= mult_p_net_x1;
  gateway_out9_x1 <= register11_q_net;
  gateway_out_x2 <= inverter_op_net;
  gateway_out1_x7 <= convert2_dout_net;
  gateway_out10_x3 <= mult4_p_net_x0;
  gateway_out11_x3 <= register1_q_net_x4;
  gateway_out12 <= convert4_dout_net;
  gateway_out13 <= register12_q_net_x2;
  gateway_out14 <= mult5_p_net_x0;
  gateway_out15_x0 <= register2_q_net_x5;
  gateway_out16 <= inverter3_op_net_x0;
  gateway_out17 <= accumulator3_q_net_x0;
  gateway_out18 <= register1_q_net_x4;
  gateway_out2_x4 <= inverter2_op_net_x0;
  gateway_out22 <= convert9_dout_net;
  gateway_out23 <= convert10_dout_net;
  gateway_out3_x4 <= accumulator_q_net_x0;
  gateway_out4_x3 <= accumulator2_q_net_x0;
  gateway_out5_x3 <= mult2_p_net_x1;
  gateway_out6_x2 <= inverter1_op_net_x0;
  gateway_out7_x1 <= accumulator1_q_net_x0;
  gateway_out8_x1 <= mult_p_net_x2;
  gateway_out9_x0 <= register11_q_net_x2;
  gateway_out1_x3 <= delay5_q_net_x2;
  gateway_out2_x3 <= delay3_q_net_x0;
  gateway_out27_x1 <= relational4_op_net_x0;
  gateway_out28_x1 <= relational3_op_net_x0;
  gateway_out29_x1 <= convert11_dout_net_x1;
  gateway_out3_x3 <= convert7_dout_net_x0;
  gateway_out4_x2 <= counter_op_net_x1;
  gateway_out5_x2 <= convert5_dout_net_x1;
  gateway_out6_x1 <= convert3_dout_net_x1;
  gateway_out7_x0 <= register1_q_net_x3;
  gateway_out8 <= convert2_dout_net_x5;
  gateway_out9 <= delay8_q_net;
  gateway_out24 <= convert5_dout_net_x0;
  gateway_out25 <= convert10_dout_net;
  gateway_out26 <= convert9_dout_net;
  gateway_out6_x0 <= convert5_dout_net_x0;
  gateway_out7 <= convert4_dout_net;
  gateway_out8_x0 <= convert2_dout_net;
  gateway_out24_x0 <= convert5_dout_net_x1;
  gateway_out25_x0 <= convert10_dout_net_x0;
  gateway_out26_x0 <= convert9_dout_net_x0;
  gateway_out6_x3 <= convert5_dout_net_x1;
  gateway_out7_x2 <= convert4_dout_net_x0;
  gateway_out8_x2 <= convert2_dout_net_x0;
  gateway_out44_x0 <= mult_p_net_x1;
  gateway_out46_x0 <= mult2_p_net_x0;
  gateway_out1_x6 <= cordic_6_0_2_m_axis_dout_tdata_phase_net_x0;
  gateway_out11_x2 <= convert_dout_net_x1;
  gateway_out19_x0 <= mult3_p_net_x2;
  gateway_out2_x7 <= cordic_6_0_2_m_axis_dout_tdata_phase_net_x0;
  gateway_out20_x0 <= convert2_dout_net_x5;
  gateway_out3_x7 <= cordic_6_0_2_m_axis_dout_tdata_phase_net_x0;
  gateway_out5_x4 <= convert1_dout_net_x2;
  gateway_out27_x2 <= addsub3_s_net_x2;
  gateway_out28_x2 <= register_q_net_x1;
  gateway_out29_x2 <= register1_q_net_x2;
  gateway_out3_x6 <= mult1_p_net_x0;
  gateway_out_x0 <= mult3_p_net_x2;
  gateway_out1_x5 <= relational1_op_net_x0;
  gateway_out2_x6 <= delay5_q_net_x1;
  gateway_out3_x5 <= register_q_net_x1;
  gateway_out4_x4 <= register1_q_net_x2;
  gateway_out5_x5 <= convert3_dout_net_x2;
  gateway_out1_x4 <= mult_p_net_x0;
  gateway_out2_x5 <= register2_q_net_x2;
  gateway_out44 <= mult_p_net_x2;
  gateway_out46 <= mult2_p_net_x1;
  gateway_out1_x2 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out11_x0 <= convert_dout_net_x0;
  gateway_out19 <= mult3_p_net;
  gateway_out2_x2 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out20 <= convert2_dout_net_x4;
  gateway_out3_x2 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out5_x1 <= convert1_dout_net_x1;
  gateway_out6 <= logical_y_net;
  gateway_out27_x0 <= addsub3_s_net_x1;
  gateway_out28_x0 <= register_q_net;
  gateway_out29_x0 <= register1_q_net_x1;
  gateway_out3_x1 <= mult1_p_net;
  gateway_out <= mult3_p_net;
  gateway_out1_x1 <= relational1_op_net;
  gateway_out2_x1 <= delay5_q_net;
  gateway_out3_x0 <= register_q_net;
  gateway_out4 <= register1_q_net_x1;
  gateway_out5_x0 <= convert3_dout_net_x0;
  gateway_out1_x0 <= mult_p_net;
  gateway_out2_x0 <= register2_q_net_x1;
  gateway_out1 <= delay5_q_net_x0;
  gateway_out2 <= delay3_q_net;
  gateway_out27 <= relational4_op_net;
  gateway_out28 <= relational3_op_net;
  gateway_out29 <= convert11_dout_net_x0;
  gateway_out3 <= convert7_dout_net;
  gateway_out5 <= convert5_dout_net_x0;
  gateway_out10 <= convert11_dout_net_x0;
  gateway_out11 <= mult2_p_net_x1;
  gateway_out34 <= convert11_dout_net_x0;
  gateway_out35 <= mult4_p_net_x0;
  gateway_out37 <= convert11_dout_net_x0;
  gateway_out38 <= mult5_p_net_x0;
  gateway_out4_x1 <= mult3_p_net_x1;
  gateway_out10_x0 <= convert11_dout_net_x1;
  gateway_out11_x1 <= mult2_p_net_x0;
  gateway_out34_x0 <= convert11_dout_net_x1;
  gateway_out35_x0 <= mult4_p_net;
  gateway_out37_x0 <= convert11_dout_net_x1;
  gateway_out38_x0 <= mult5_p_net;
  gateway_out4_x0 <= mult3_p_net_x0;
  down_sample1_q_net_x0 <= cav1_p2_if_i;
  down_sample_q_net_x0 <= cav1_p2_if_q;
  convert2_dout_net_x1 <= flo_c1p2_window;
  counter_op_net <= c1p2_pt_cntr;
  convert2_dout_net_x2 <= cav1_p2_dc_tvalid;
  convert3_dout_net <= reset;
  clk_net_x0 <= clk_1;
  ce_net_x0 <= ce_1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  dest_clk_net <= clk_144;
  dest_ce_net <= ce_144;
  ddc_nco1 : entity work.dsp_ddc_nco1 
  port map (
    phase_ctrl => down_sample6_q_net,
    phase_reset => down_sample5_q_net,
    flo_c1p2_window => convert2_dout_net_x1,
    cav1_p2_if_i => down_sample1_q_net_x0,
    cav1_p2_if_q => down_sample_q_net_x0,
    clk_1 => clk_net_x0,
    ce_1 => ce_net_x0,
    clk_12 => clk_net,
    ce_12 => ce_net,
    tvalid => dds_compiler_6_0_m_axis_data_tvalid_net,
    sine => nco_sin,
    cosine => nco_cos,
    nco_out_1 => nco_sin,
    nco_out_2 => nco_cos,
    gateway_out10 => mult2_p_net,
    gateway_out15 => convert_dout_net,
    gateway_out16 => convert1_dout_net,
    gateway_out3 => nco_sin,
    gateway_out4 => phase,
    gateway_out5 => nco_cos,
    gateway_out6 => cordic_6_0_m_axis_dout_tdata_real_net,
    gateway_out7 => fir_compiler_7_2_m_axis_data_tdata_real_net,
    gateway_out8 => fir_compiler_7_2_m_axis_data_tvalid_net
  );
  iq_integration : entity work.dsp_iq_integration_x0 
  port map (
    cav_windowed_imag => mult2_p_net_x0,
    cav_windowed_real => mult_p_net_x1,
    ref_windowed_i => mult4_p_net,
    ref_windowed_q => mult5_p_net,
    window_profile => convert11_dout_net_x1,
    clk_12 => clk_net,
    ce_12 => ce_net,
    cav_int_q => convert10_dout_net_x0,
    cav_int_i => convert9_dout_net_x0,
    ref_int_i => convert2_dout_net_x0,
    ref_int_q => convert4_dout_net_x0,
    gateway_out => inverter_op_net_x0,
    gateway_out1 => convert2_dout_net_x0,
    gateway_out11 => register1_q_net,
    gateway_out12 => convert4_dout_net_x0,
    gateway_out13 => register12_q_net,
    gateway_out15 => register2_q_net,
    gateway_out16 => inverter3_op_net,
    gateway_out17 => accumulator3_q_net,
    gateway_out18 => register1_q_net,
    gateway_out2 => inverter2_op_net,
    gateway_out22 => convert9_dout_net_x0,
    gateway_out23 => convert10_dout_net_x0,
    gateway_out3 => accumulator_q_net,
    gateway_out4 => accumulator2_q_net,
    gateway_out6 => inverter1_op_net,
    gateway_out7 => accumulator1_q_net,
    gateway_out9 => register11_q_net
  );
  iq_integration2 : entity work.dsp_iq_integration2 
  port map (
    cav_windowed_imag => mult2_p_net_x1,
    cav_windowed_real => mult_p_net_x2,
    ref_windowed_i => mult4_p_net_x0,
    ref_windowed_q => mult5_p_net_x0,
    window_profile => convert11_dout_net_x0,
    clk_12 => clk_net,
    ce_12 => ce_net,
    cav_int_q => convert10_dout_net,
    cav_int_i => convert9_dout_net,
    ref_int_i => convert2_dout_net,
    ref_int_q => convert4_dout_net,
    gateway_out => inverter_op_net,
    gateway_out1 => convert2_dout_net,
    gateway_out11 => register1_q_net_x4,
    gateway_out12 => convert4_dout_net,
    gateway_out13 => register12_q_net_x2,
    gateway_out15 => register2_q_net_x5,
    gateway_out16 => inverter3_op_net_x0,
    gateway_out17 => accumulator3_q_net_x0,
    gateway_out18 => register1_q_net_x4,
    gateway_out2 => inverter2_op_net_x0,
    gateway_out22 => convert9_dout_net,
    gateway_out23 => convert10_dout_net,
    gateway_out3 => accumulator_q_net_x0,
    gateway_out4 => accumulator2_q_net_x0,
    gateway_out6 => inverter1_op_net_x0,
    gateway_out7 => accumulator1_q_net_x0,
    gateway_out9 => register11_q_net_x2
  );
  masking_n_delay : entity work.dsp_masking_n_delay 
  port map (
    phi_reset_trig => down_sample2_q_net,
    start_pt => register33_q_net,
    stop_pt => register34_q_net,
    delay_amt => register2_q_net_x3,
    delay_latch => delay2_q_net,
    clk_1 => clk_net_x0,
    ce_1 => ce_net_x0,
    clk_12 => clk_net,
    ce_12 => ce_net,
    trig_reset => convert3_dout_net_x1,
    counter_x0 => counter_op_net_x1,
    eval_window => convert11_dout_net_x1,
    integral_trig => convert5_dout_net_x1,
    flo_window => convert2_dout_net_x5,
    stream_valid => relational7_op_net,
    delay_val => register_q_net_x2,
    gateway_out1 => delay5_q_net_x2,
    gateway_out2 => delay3_q_net_x0,
    gateway_out27 => relational4_op_net_x0,
    gateway_out28 => relational3_op_net_x0,
    gateway_out29 => convert11_dout_net_x1,
    gateway_out3 => convert7_dout_net_x0,
    gateway_out4 => counter_op_net_x1,
    gateway_out5 => convert5_dout_net_x1,
    gateway_out6 => convert3_dout_net_x1,
    gateway_out7 => register1_q_net_x3,
    gateway_out8 => convert2_dout_net_x5,
    gateway_out9 => delay8_q_net
  );
  pa_conversion1 : entity work.dsp_pa_conversion1_x0 
  port map (
    cav_int_q => convert10_dout_net,
    cav_int_i => convert9_dout_net,
    ref_int_q => convert4_dout_net,
    ref_int_i => convert2_dout_net,
    integration_trig => convert5_dout_net_x0,
    cal_coefficient => down_sample7_q_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    phi_diff => addsub_s_net_x0,
    ref_phi_out => register11_q_net_x1,
    ref_amp_out => register12_q_net_x1,
    cav_phi_out => register13_q_net,
    cav_amp_out => register14_q_net
  );
  pa_conversion2 : entity work.dsp_pa_conversion2_x0 
  port map (
    cav_int_q => convert10_dout_net_x0,
    cav_int_i => convert9_dout_net_x0,
    ref_int_q => convert4_dout_net_x0,
    ref_int_i => convert2_dout_net_x0,
    integration_trig => convert5_dout_net_x1,
    cal_coefficient => down_sample3_q_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    phi_diff => addsub_s_net,
    ref_phi_out => register11_q_net_x0,
    ref_amp_out => register12_q_net_x0,
    cav_phi_out => register13_q_net_x0,
    cav_amp_out => register14_q_net_x0
  );
  subsystem1_x4 : entity work.dsp_subsystem1_x3 
  port map (
    iq_stream_in_1 => ddci,
    iq_chan_sel => register30_q_net,
    iq_stream_in_2 => ddcq,
    iq_stream_in_3 => ddcchannel,
    iq_stream_in_4 => ddcsync,
    clk_1 => clk_net_x0,
    ce_1 => ce_net_x0,
    clk_12 => clk_net,
    ce_12 => ce_net,
    ddci => down_sample1_q_net_x4,
    ddcq => down_sample_q_net_x4
  );
  subsystem2_x4 : entity work.dsp_subsystem2_x2 
  port map (
    imag => mult2_p_net_x0,
    real => mult_p_net_x1,
    flo_window => convert2_dout_net_x5,
    reset => convert3_dout_net_x1,
    c1p2_pt_cntr => counter_op_net,
    clk_1 => clk_net_x0,
    ce_1 => ce_net_x0,
    clk_12 => clk_net,
    ce_12 => ce_net,
    nco_err_fb => convert_dout_net_x1,
    freq_err => convert1_dout_net_x2,
    gateway_out1_x0 => cordic_6_0_2_m_axis_dout_tdata_phase_net_x0,
    gateway_out11 => convert_dout_net_x1,
    gateway_out19 => mult3_p_net_x2,
    gateway_out2_x0 => cordic_6_0_2_m_axis_dout_tdata_phase_net_x0,
    gateway_out3 => cordic_6_0_2_m_axis_dout_tdata_phase_net_x0,
    gateway_out5_x0 => convert1_dout_net_x2,
    gateway_out27 => addsub3_s_net_x2,
    gateway_out28 => register_q_net_x1,
    gateway_out29 => register1_q_net_x2,
    gateway_out3_x1 => mult1_p_net_x0,
    gateway_out => mult3_p_net_x2,
    gateway_out1_x1 => relational1_op_net_x0,
    gateway_out2_x1 => delay5_q_net_x1,
    gateway_out3_x0 => register_q_net_x1,
    gateway_out4 => register1_q_net_x2,
    gateway_out5 => convert3_dout_net_x2,
    gateway_out1 => mult_p_net_x0,
    gateway_out2 => register2_q_net_x2
  );
  subsystem3_x3 : entity work.dsp_subsystem3_x3 
  port map (
    iq_stream_in_1 => ddci,
    iq_chan_sel => register29_q_net,
    iq_stream_in_2 => ddcq,
    iq_stream_in_3 => ddcchannel,
    iq_stream_in_4 => ddcsync,
    clk_1 => clk_net_x0,
    ce_1 => ce_net_x0,
    clk_12 => clk_net,
    ce_12 => ce_net,
    ddci => down_sample1_q_net_x1,
    ddcq => down_sample_q_net_x1,
    sync => down_sample2_q_net
  );
  subsystem4 : entity work.dsp_subsystem4 
  port map (
    imag => mult2_p_net_x1,
    real => mult_p_net_x2,
    flo_window => convert2_dout_net_x4,
    reset => convert3_dout_net_x1,
    c1p2_pt_cntr => counter_op_net,
    clk_1 => clk_net_x0,
    ce_1 => ce_net_x0,
    clk_12 => clk_net,
    ce_12 => ce_net,
    nco_err_fb => convert_dout_net_x0,
    freq_err => convert1_dout_net_x1,
    gateway_out1_x0 => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    gateway_out11 => convert_dout_net_x0,
    gateway_out19 => mult3_p_net,
    gateway_out2_x0 => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    gateway_out3 => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    gateway_out5_x0 => convert1_dout_net_x1,
    gateway_out6 => logical_y_net,
    gateway_out27 => addsub3_s_net_x1,
    gateway_out28 => register_q_net,
    gateway_out29 => register1_q_net_x1,
    gateway_out3_x1 => mult1_p_net,
    gateway_out => mult3_p_net,
    gateway_out1_x1 => relational1_op_net,
    gateway_out2_x1 => delay5_q_net,
    gateway_out3_x0 => register_q_net,
    gateway_out4 => register1_q_net_x1,
    gateway_out5 => convert3_dout_net_x0,
    gateway_out1 => mult_p_net,
    gateway_out2 => register2_q_net_x1
  );
  c1p2_windowing_func2 : entity work.dsp_c1p2_windowing_func2 
  port map (
    imag => convert2_dout_net_x3,
    real => convert6_dout_net,
    eval_window => convert11_dout_net_x1,
    c1p2_pt_cntr => counter_op_net,
    cav1_p2_dc_tvalid => convert2_dout_net_x2,
    clk_12 => clk_net,
    ce_12 => ce_net,
    window_profile => addsub3_s_net
  );
  c1p2_windowing_func3 : entity work.dsp_c1p2_windowing_func3 
  port map (
    imag => convert5_dout_net,
    real => convert1_dout_net_x0,
    eval_window => convert11_dout_net_x0,
    c1p2_pt_cntr => counter_op_net,
    cav1_p2_dc_tvalid => convert2_dout_net_x2,
    clk_12 => clk_net,
    ce_12 => ce_net,
    window_profile => addsub3_s_net_x0
  );
  c2p1_masking_window1 : entity work.dsp_c2p1_masking_window1 
  port map (
    phi_reset_trig => down_sample2_q_net,
    start_pt => register31_q_net,
    stop_pt => register32_q_net,
    delay_amt => register2_q_net_x4,
    delay_latch => delay2_q_net_x0,
    clk_1 => clk_net_x0,
    ce_1 => ce_net_x0,
    clk_12 => clk_net,
    ce_12 => ce_net,
    counter_x0 => counter_op_net_x0,
    eval_window => convert11_dout_net_x0,
    integral_trig => convert5_dout_net_x0,
    flo_window => convert2_dout_net_x4,
    delay_val => register_q_net_x0,
    gateway_out1 => delay5_q_net_x0,
    gateway_out2 => delay3_q_net,
    gateway_out27 => relational4_op_net,
    gateway_out28 => relational3_op_net,
    gateway_out29 => convert11_dout_net_x0,
    gateway_out3 => convert7_dout_net,
    gateway_out5 => convert5_dout_net_x0
  );
  c2p1_window_wf : entity work.dsp_c2p1_window_wf 
  port map (
    cav_img => convert5_dout_net,
    cav_real => convert1_dout_net_x0,
    ref_img => down_sample_q_net_x3,
    ref_real => down_sample1_q_net_x3,
    window_profile => addsub3_s_net_x0,
    cav_delayed_imag => dual_port_ram_doutb_net_x0,
    cav_delayed_real => dual_port_ram1_doutb_net_x0,
    pt_window => convert11_dout_net_x0,
    delay_match_amt => register_q_net_x0,
    pt_cntr => counter_op_net_x0,
    reset => convert3_dout_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    cav_windowed_imag => mult2_p_net_x1,
    cav_windowed_real => mult_p_net_x2,
    ref_windowed_imag => mult5_p_net_x0,
    ref_windowed_real => mult4_p_net_x0,
    delay_amt => register2_q_net_x4,
    delay_amt_latch => delay2_q_net_x0,
    gateway_out11 => mult2_p_net_x1,
    gateway_out35 => mult4_p_net_x0,
    gateway_out38 => mult5_p_net_x0,
    gateway_out4 => mult3_p_net_x1
  );
  c2p2_window_wf : entity work.dsp_c2p2_window_wf 
  port map (
    cav_img => convert2_dout_net_x3,
    cav_real => convert6_dout_net,
    ref_img => down_sample_q_net_x3,
    ref_real => down_sample1_q_net_x3,
    window_profile => addsub3_s_net,
    pt_window => convert11_dout_net_x1,
    delay_match_amt => register_q_net_x2,
    pt_cntr => counter_op_net_x1,
    reset => convert3_dout_net,
    clk_12 => clk_net,
    ce_12 => ce_net,
    cav_windowed_imag => mult2_p_net_x0,
    cav_windowed_real => mult_p_net_x1,
    ref_windowed_imag => mult5_p_net,
    ref_windowed_real => mult4_p_net,
    delayed_cav_dc_img => dual_port_ram_doutb_net,
    delayed_cav_dc_real => dual_port_ram1_doutb_net,
    delay_amt => register2_q_net_x3,
    delay_amt_latch => delay2_q_net,
    gateway_out11 => mult2_p_net_x0,
    gateway_out35 => mult4_p_net,
    gateway_out38 => mult5_p_net,
    gateway_out4 => mult3_p_net_x0
  );
  clock_enable_probe : entity work.dsp_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => down_sample_q_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => clock_enable_probe_q_net
  );
  clock_enable_probe1 : entity work.dsp_xlceprobe 
  generic map (
    d_width => 18,
    q_width => 1
  )
  port map (
    d => down_sample_q_net_x4,
    clk => clk_net,
    ce => ce_net,
    q => clock_enable_probe1_q_net
  );
  complex_multiplier_6_0 : entity work.xlcomplex_multiplier_c63b76e1073c2a8c4a665cfadb8ce1ce 
  port map (
    s_axis_a_tvalid => down_sample_q_net,
    s_axis_a_tdata_imag => down_sample_q_net_x1,
    s_axis_a_tdata_real => down_sample1_q_net_x1,
    s_axis_b_tvalid => dds_compiler_6_0_m_axis_data_tvalid_net,
    s_axis_b_tdata_imag => nco_sin,
    s_axis_b_tdata_real => nco_cos,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => complex_multiplier_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => complex_multiplier_6_0_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => complex_multiplier_6_0_m_axis_dout_tdata_real_net
  );
  complex_multiplier_6_0_1 : entity work.xlcomplex_multiplier_c63b76e1073c2a8c4a665cfadb8ce1ce 
  port map (
    s_axis_a_tvalid => down_sample1_q_net,
    s_axis_a_tdata_imag => down_sample_q_net_x4,
    s_axis_a_tdata_real => down_sample1_q_net_x4,
    s_axis_b_tvalid => dds_compiler_6_0_m_axis_data_tvalid_net,
    s_axis_b_tdata_imag => nco_sin,
    s_axis_b_tdata_real => nco_cos,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => complex_multiplier_6_0_1_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => complex_multiplier_6_0_1_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => complex_multiplier_6_0_1_m_axis_dout_tdata_real_net
  );
  constant3 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant7 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  convert1 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 29,
    din_width => 33,
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
    din => register2_q_net_x6,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net_x0
  );
  convert10 : entity work.dsp_xlconvert 
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
    din => down_sample2_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert10_dout_net_x1
  );
  convert11 : entity work.dsp_xlconvert 
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
    din => down_sample2_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert11_dout_net
  );
  convert2 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 29,
    din_width => 33,
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
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net_x3
  );
  convert5 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 29,
    din_width => 33,
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
    din => register1_q_net_x5,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert6 : entity work.dsp_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 29,
    din_width => 33,
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
    clk => clk_net,
    ce => ce_net,
    dout => convert6_dout_net
  );
  down_sample : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => clock_enable_probe_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q(0) => down_sample_q_net
  );
  down_sample1 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => clock_enable_probe1_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q(0) => down_sample1_q_net
  );
  down_sample3 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register10_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample3_q_net
  );
  down_sample5 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 0,
    d_width => 1,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 0,
    q_width => 1
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register8_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample5_q_net
  );
  down_sample6 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 32,
    d_width => 32,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 32,
    q_width => 32
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register9_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample6_q_net
  );
  down_sample7 : entity work.dsp_xldsamp 
  generic map (
    d_arith => xlUnsigned,
    d_bin_pt => 17,
    d_width => 18,
    ds_ratio => 12,
    latency => 1,
    phase => 11,
    q_arith => xlUnsigned,
    q_bin_pt => 17,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => register7_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample7_q_net
  );
  logical : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => relational1_op_net_x1,
    d1 => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net_x0
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 33,
    init_value => b"000000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_m_axis_dout_tdata_imag_net,
    en(0) => complex_multiplier_6_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net_x5
  );
  register10 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register2_q_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register10_q_net
  );
  register11 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    d => addsub_s_net_x0,
    rst => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register11_q_net_x3
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 33,
    init_value => b"000000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_m_axis_dout_tdata_real_net,
    en(0) => complex_multiplier_6_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net_x6
  );
  register3 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    d => addsub_s_net,
    rst => convert10_dout_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  register32 : entity work.dsp_xlregister 
  generic map (
    d_width => 33,
    init_value => b"000000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_1_m_axis_dout_tdata_imag_net,
    en(0) => complex_multiplier_6_0_1_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register32_q_net_x0
  );
  register33 : entity work.dsp_xlregister 
  generic map (
    d_width => 33,
    init_value => b"000000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => complex_multiplier_6_0_1_m_axis_dout_tdata_real_net,
    en(0) => complex_multiplier_6_0_1_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register33_q_net_x0
  );
  register7 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register1_q_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register7_q_net
  );
  register8 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => down_sample2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register8_q_net
  );
  register9 : entity work.dsp_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register36_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register9_q_net
  );
  relational1 : entity work.sysgen_relational_da7c781c60 
  port map (
    clr => '0',
    a => register11_q_net_x3,
    b => constant7_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net_x1
  );
  relational2 : entity work.sysgen_relational_da7c781c60 
  port map (
    clr => '0',
    a => register3_q_net,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/RFLib_input
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_rflib_input is
  port (
    amp : in std_logic_vector( 18-1 downto 0 );
    ddcchannel : in std_logic_vector( 4-1 downto 0 );
    ddci : in std_logic_vector( 18-1 downto 0 );
    ddcq : in std_logic_vector( 18-1 downto 0 );
    ddcsync : in std_logic_vector( 1-1 downto 0 );
    phase : in std_logic_vector( 18-1 downto 0 );
    phaseampchannel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    pa_out_1 : out std_logic_vector( 18-1 downto 0 );
    iq_out_1 : out std_logic_vector( 18-1 downto 0 );
    pa_out_2 : out std_logic_vector( 18-1 downto 0 );
    pa_out_3 : out std_logic_vector( 4-1 downto 0 );
    iq_out_2 : out std_logic_vector( 18-1 downto 0 );
    iq_out_3 : out std_logic_vector( 4-1 downto 0 );
    iq_out_4 : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_rflib_input;
architecture structural of dsp_rflib_input is 
  signal ddcchannel_x0 : std_logic_vector( 4-1 downto 0 );
  signal ddcsync_x0 : std_logic_vector( 1-1 downto 0 );
  signal amp_net : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel_net : std_logic_vector( 4-1 downto 0 );
  signal ddci_net : std_logic_vector( 18-1 downto 0 );
  signal ddcq_net : std_logic_vector( 18-1 downto 0 );
  signal ddcsync_net : std_logic_vector( 1-1 downto 0 );
  signal phase_net : std_logic_vector( 18-1 downto 0 );
  signal phaseampchannel_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal ddci_x0 : std_logic_vector( 18-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal amp_x0 : std_logic_vector( 18-1 downto 0 );
begin
  pa_out_1 <= amp_x0;
  iq_out_1 <= ddci_x0;
  pa_out_2 <= phase_x0;
  pa_out_3 <= channel;
  iq_out_2 <= ddcq_x0;
  iq_out_3 <= ddcchannel_x0;
  iq_out_4 <= ddcsync_x0;
  amp_net <= amp;
  ddcchannel_net <= ddcchannel;
  ddci_net <= ddci;
  ddcq_net <= ddcq;
  ddcsync_net <= ddcsync;
  phase_net <= phase;
  phaseampchannel_net <= phaseampchannel;
  clk_net <= clk_1;
  ce_net <= ce_1;
  register25 : entity work.dsp_xlregister 
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
  register26 : entity work.dsp_xlregister 
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
  register27 : entity work.dsp_xlregister 
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
  register29 : entity work.dsp_xlregister 
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
  register30 : entity work.dsp_xlregister 
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
  register31 : entity work.dsp_xlregister 
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
  register34 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => ddcsync_net,
    clk => clk_net,
    ce => ce_net,
    q => ddcsync_x0
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Ref/IQ_select/Channel Select3
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_channel_select3_x1 is
  port (
    in0 : in std_logic_vector( 18-1 downto 0 );
    in1 : in std_logic_vector( 18-1 downto 0 );
    in2 : in std_logic_vector( 1-1 downto 0 );
    ch_id : in std_logic_vector( 4-1 downto 0 );
    ch_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    out0 : out std_logic_vector( 18-1 downto 0 );
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_channel_select3_x1;
architecture structural of dsp_channel_select3_x1 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ddci : std_logic_vector( 18-1 downto 0 );
  signal ddcq : std_logic_vector( 18-1 downto 0 );
  signal ddcsync : std_logic_vector( 1-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal register2_q_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
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
  ddcsync <= in2;
  ddcchannel <= ch_id;
  register2_q_net <= ch_sel;
  clk_net_x0 <= clk_1;
  ce_net_x0 <= ce_1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  constant13 : entity work.sysgen_constant_ddcd7f6a05 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  delay : entity work.dsp_xldelay 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay_q_net
  );
  delay1 : entity work.dsp_xldelay 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay1_q_net
  );
  down_sample : entity work.dsp_xldsamp 
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
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity work.dsp_xldsamp 
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
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample1_q_net
  );
  register_x0 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => relational_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register_q_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => relational_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register1_q_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register1_q_net,
    en => register6_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register2_q_net_x0
  );
  register3 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register_q_net,
    en => register6_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register3_q_net
  );
  register6 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => last,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_bc41c4add6 
  port map (
    clr => '0',
    a => ddcchannel,
    b => register2_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_bc41c4add6 
  port map (
    clr => '0',
    a => ddcchannel,
    b => constant13_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Ref/IQ_select
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_iq_select is
  port (
    iq_stream_in_1 : in std_logic_vector( 18-1 downto 0 );
    iq_chan_sel : in std_logic_vector( 4-1 downto 0 );
    iq_stream_in_2 : in std_logic_vector( 18-1 downto 0 );
    iq_stream_in_3 : in std_logic_vector( 4-1 downto 0 );
    iq_stream_in_4 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    ddci : out std_logic_vector( 18-1 downto 0 );
    ddcq : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_iq_select;
architecture structural of dsp_iq_select is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ddci_x0 : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel : std_logic_vector( 4-1 downto 0 );
  signal ddcsync : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
begin
  ddci <= down_sample1_q_net;
  ddcq <= down_sample_q_net;
  ddci_x0 <= iq_stream_in_1;
  register2_q_net <= iq_chan_sel;
  ddcq_x0 <= iq_stream_in_2;
  ddcchannel <= iq_stream_in_3;
  ddcsync <= iq_stream_in_4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clk_net_x0 <= clk_12;
  ce_net_x0 <= ce_12;
  channel_select3 : entity work.dsp_channel_select3_x1 
  port map (
    in0 => ddci_x0,
    in1 => ddcq_x0,
    in2 => ddcsync,
    ch_id => ddcchannel,
    ch_sel => register2_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => clk_net_x0,
    ce_12 => ce_net_x0,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Ref/PA_select/Channel Select1
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_channel_select1 is
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
end dsp_channel_select1;
architecture structural of dsp_channel_select1 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal amp : std_logic_vector( 18-1 downto 0 );
  signal phase : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal register2_q_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
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
  clk_net_x0 <= clk_1;
  ce_net_x0 <= ce_1;
  clk_net <= clk_12;
  ce_net <= ce_12;
  constant13 : entity work.sysgen_constant_ddcd7f6a05 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  delay : entity work.dsp_xldelay 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay_q_net
  );
  delay1 : entity work.dsp_xldelay 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay1_q_net
  );
  down_sample : entity work.dsp_xldsamp 
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
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity work.dsp_xldsamp 
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
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => down_sample1_q_net
  );
  register_x0 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay_q_net,
    en => relational_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register_q_net
  );
  register1 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => delay1_q_net,
    en => relational_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register1_q_net
  );
  register2 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register1_q_net,
    en => register6_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register2_q_net_x0
  );
  register3 : entity work.dsp_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => register_q_net,
    en => register6_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register3_q_net
  );
  register6 : entity work.dsp_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => last,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => register6_q_net
  );
  relational : entity work.sysgen_relational_bc41c4add6 
  port map (
    clr => '0',
    a => channel,
    b => register2_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational_op_net
  );
  relational1 : entity work.sysgen_relational_bc41c4add6 
  port map (
    clr => '0',
    a => channel,
    b => constant13_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => last
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Ref/PA_select
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_pa_select is
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
end dsp_pa_select;
architecture structural of dsp_pa_select is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal amp_x0 : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 4-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
begin
  amp <= down_sample1_q_net;
  phase <= down_sample_q_net;
  amp_x0 <= pa_bus_1;
  register2_q_net <= pa_chan_sel;
  phase_x0 <= pa_bus_2;
  channel <= pa_bus_3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clk_net_x0 <= clk_12;
  ce_net_x0 <= ce_12;
  channel_select1_x3 : entity work.dsp_channel_select1 
  port map (
    in0 => amp_x0,
    in1 => phase_x0,
    ch_id => channel,
    ch_sel => register2_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => clk_net_x0,
    ce_12 => ce_net_x0,
    out0 => down_sample1_q_net,
    out1 => down_sample_q_net
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp/Ref
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_ref is
  port (
    in1_1 : in std_logic_vector( 18-1 downto 0 );
    in2_1 : in std_logic_vector( 18-1 downto 0 );
    in1_2 : in std_logic_vector( 18-1 downto 0 );
    in1_3 : in std_logic_vector( 4-1 downto 0 );
    in2_2 : in std_logic_vector( 18-1 downto 0 );
    in2_3 : in std_logic_vector( 4-1 downto 0 );
    in2_4 : in std_logic_vector( 1-1 downto 0 );
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
end dsp_ref;
architecture structural of dsp_ref is 
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
  signal ddcsync : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
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
  ddcsync <= in2_4;
  rf_ref_amp <= down_sample1_q_net_x0;
  rf_ref_phase <= down_sample_q_net_x0;
  rf_ref_i <= down_sample1_q_net;
  rf_ref_q <= down_sample_q_net;
  register2_q_net <= rf_ref_chan_sel;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clk_net_x0 <= clk_12;
  ce_net_x0 <= ce_12;
  iq_select : entity work.dsp_iq_select 
  port map (
    iq_stream_in_1 => ddci,
    iq_chan_sel => register2_q_net,
    iq_stream_in_2 => ddcq,
    iq_stream_in_3 => ddcchannel,
    iq_stream_in_4 => ddcsync,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => clk_net_x0,
    ce_12 => ce_net_x0,
    ddci => down_sample1_q_net,
    ddcq => down_sample_q_net
  );
  pa_select_x1 : entity work.dsp_pa_select 
  port map (
    pa_bus_1 => amp,
    pa_chan_sel => register2_q_net,
    pa_bus_2 => phase,
    pa_bus_3 => channel,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => clk_net_x0,
    ce_12 => ce_net_x0,
    amp => down_sample1_q_net_x0,
    phase => down_sample_q_net_x0
  );
end structural;
-- Generated from Simulink block exampleModel_bus_axi/example/dsp_struct
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_struct is
  port (
    amp : in std_logic_vector( 18-1 downto 0 );
    ddcchannel : in std_logic_vector( 4-1 downto 0 );
    ddci : in std_logic_vector( 18-1 downto 0 );
    ddcq : in std_logic_vector( 18-1 downto 0 );
    ddcsync : in std_logic_vector( 1-1 downto 0 );
    phase : in std_logic_vector( 18-1 downto 0 );
    phaseampchannel : in std_logic_vector( 4-1 downto 0 );
    phaseampsync : in std_logic_vector( 1-1 downto 0 );
    cav1_nco_phase_adj : in std_logic_vector( 32-1 downto 0 );
    cav1_nco_phase_reset : in std_logic_vector( 1-1 downto 0 );
    cav1_p1_cal_coef : in std_logic_vector( 18-1 downto 0 );
    cav1_p1_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav1_p1_window_start : in std_logic_vector( 16-1 downto 0 );
    cav1_p1_window_stop : in std_logic_vector( 16-1 downto 0 );
    cav1_p2_cal_coef : in std_logic_vector( 18-1 downto 0 );
    cav1_p2_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav1_p2_window_start : in std_logic_vector( 16-1 downto 0 );
    cav1_p2_window_stop : in std_logic_vector( 16-1 downto 0 );
    cav2_nco_phase_adj : in std_logic_vector( 32-1 downto 0 );
    cav2_nco_phase_reset : in std_logic_vector( 1-1 downto 0 );
    cav2_p1_cal_coef : in std_logic_vector( 18-1 downto 0 );
    cav2_p1_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav2_p1_window_start : in std_logic_vector( 16-1 downto 0 );
    cav2_p1_window_stop : in std_logic_vector( 16-1 downto 0 );
    cav2_p2_cal_coef : in std_logic_vector( 18-1 downto 0 );
    cav2_p2_chan_sel : in std_logic_vector( 4-1 downto 0 );
    cav2_p2_window_start : in std_logic_vector( 16-1 downto 0 );
    cav2_p2_window_stop : in std_logic_vector( 16-1 downto 0 );
    ref_window_start : in std_logic_vector( 16-1 downto 0 );
    ref_window_stop : in std_logic_vector( 16-1 downto 0 );
    rf_ref_chan_sel : in std_logic_vector( 4-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_12 : in std_logic;
    ce_12 : in std_logic;
    clk_144 : in std_logic;
    ce_144 : in std_logic;
    diag10data : out std_logic_vector( 32-1 downto 0 );
    diag10fixed : out std_logic_vector( 1-1 downto 0 );
    diag10sevr : out std_logic_vector( 2-1 downto 0 );
    diag11data : out std_logic_vector( 32-1 downto 0 );
    diag11fixed : out std_logic_vector( 1-1 downto 0 );
    diag11sevr : out std_logic_vector( 2-1 downto 0 );
    diag12data : out std_logic_vector( 32-1 downto 0 );
    diag12fixed : out std_logic_vector( 1-1 downto 0 );
    diag12sevr : out std_logic_vector( 2-1 downto 0 );
    diag13data : out std_logic_vector( 32-1 downto 0 );
    diag13fixed : out std_logic_vector( 1-1 downto 0 );
    diag13sevr : out std_logic_vector( 2-1 downto 0 );
    diag14data : out std_logic_vector( 32-1 downto 0 );
    diag14fixed : out std_logic_vector( 1-1 downto 0 );
    diag14sevr : out std_logic_vector( 2-1 downto 0 );
    diag15data : out std_logic_vector( 32-1 downto 0 );
    diag15fixed : out std_logic_vector( 1-1 downto 0 );
    diag15sevr : out std_logic_vector( 2-1 downto 0 );
    diag16data : out std_logic_vector( 32-1 downto 0 );
    diag16fixed : out std_logic_vector( 1-1 downto 0 );
    diag16sevr : out std_logic_vector( 2-1 downto 0 );
    diag17data : out std_logic_vector( 32-1 downto 0 );
    diag17fixed : out std_logic_vector( 1-1 downto 0 );
    diag17sevr : out std_logic_vector( 2-1 downto 0 );
    diag18data : out std_logic_vector( 32-1 downto 0 );
    diag18fixed : out std_logic_vector( 1-1 downto 0 );
    diag18sevr : out std_logic_vector( 2-1 downto 0 );
    diag19data : out std_logic_vector( 32-1 downto 0 );
    diag19fixed : out std_logic_vector( 1-1 downto 0 );
    diag19sevr : out std_logic_vector( 2-1 downto 0 );
    diag1data : out std_logic_vector( 32-1 downto 0 );
    diag1fixed : out std_logic_vector( 1-1 downto 0 );
    diag1sevr : out std_logic_vector( 2-1 downto 0 );
    diag20data : out std_logic_vector( 32-1 downto 0 );
    diag20fixed : out std_logic_vector( 1-1 downto 0 );
    diag20sevr : out std_logic_vector( 2-1 downto 0 );
    diag21data : out std_logic_vector( 32-1 downto 0 );
    diag21fixed : out std_logic_vector( 1-1 downto 0 );
    diag21sevr : out std_logic_vector( 2-1 downto 0 );
    diag22data : out std_logic_vector( 32-1 downto 0 );
    diag22fixed : out std_logic_vector( 1-1 downto 0 );
    diag22sevr : out std_logic_vector( 2-1 downto 0 );
    diag23data : out std_logic_vector( 32-1 downto 0 );
    diag23fixed : out std_logic_vector( 1-1 downto 0 );
    diag23sevr : out std_logic_vector( 2-1 downto 0 );
    diag24data : out std_logic_vector( 32-1 downto 0 );
    diag24fixed : out std_logic_vector( 1-1 downto 0 );
    diag24sevr : out std_logic_vector( 2-1 downto 0 );
    diag25data : out std_logic_vector( 32-1 downto 0 );
    diag25fixed : out std_logic_vector( 1-1 downto 0 );
    diag25sevr : out std_logic_vector( 2-1 downto 0 );
    diag26data : out std_logic_vector( 32-1 downto 0 );
    diag26fixed : out std_logic_vector( 1-1 downto 0 );
    diag26sevr : out std_logic_vector( 2-1 downto 0 );
    diag27data : out std_logic_vector( 32-1 downto 0 );
    diag27fixed : out std_logic_vector( 1-1 downto 0 );
    diag27sevr : out std_logic_vector( 2-1 downto 0 );
    diag28data : out std_logic_vector( 32-1 downto 0 );
    diag28fixed : out std_logic_vector( 1-1 downto 0 );
    diag28sevr : out std_logic_vector( 2-1 downto 0 );
    diag29data : out std_logic_vector( 32-1 downto 0 );
    diag29fixed : out std_logic_vector( 1-1 downto 0 );
    diag29sevr : out std_logic_vector( 2-1 downto 0 );
    diag2data : out std_logic_vector( 32-1 downto 0 );
    diag2fixed : out std_logic_vector( 1-1 downto 0 );
    diag2sevr : out std_logic_vector( 2-1 downto 0 );
    diag30data : out std_logic_vector( 32-1 downto 0 );
    diag30fixed : out std_logic_vector( 1-1 downto 0 );
    diag30sevr : out std_logic_vector( 2-1 downto 0 );
    diag31data : out std_logic_vector( 32-1 downto 0 );
    diag31fixed : out std_logic_vector( 1-1 downto 0 );
    diag31sevr : out std_logic_vector( 2-1 downto 0 );
    diag3data : out std_logic_vector( 32-1 downto 0 );
    diag3fixed : out std_logic_vector( 1-1 downto 0 );
    diag3sevr : out std_logic_vector( 2-1 downto 0 );
    diag4data : out std_logic_vector( 32-1 downto 0 );
    diag4fixed : out std_logic_vector( 1-1 downto 0 );
    diag4sevr : out std_logic_vector( 2-1 downto 0 );
    diag5data : out std_logic_vector( 32-1 downto 0 );
    diag5fixed : out std_logic_vector( 1-1 downto 0 );
    diag5sevr : out std_logic_vector( 2-1 downto 0 );
    diag6data : out std_logic_vector( 32-1 downto 0 );
    diag6fixed : out std_logic_vector( 1-1 downto 0 );
    diag6sevr : out std_logic_vector( 2-1 downto 0 );
    diag7data : out std_logic_vector( 32-1 downto 0 );
    diag7fixed : out std_logic_vector( 1-1 downto 0 );
    diag7sevr : out std_logic_vector( 2-1 downto 0 );
    diag8data : out std_logic_vector( 32-1 downto 0 );
    diag8fixed : out std_logic_vector( 1-1 downto 0 );
    diag8sevr : out std_logic_vector( 2-1 downto 0 );
    diag9data : out std_logic_vector( 32-1 downto 0 );
    diag9fixed : out std_logic_vector( 1-1 downto 0 );
    diag9sevr : out std_logic_vector( 2-1 downto 0 );
    diagnclk : out std_logic_vector( 1-1 downto 0 );
    diagnrst : out std_logic_vector( 1-1 downto 0 );
    diagnsync : out std_logic_vector( 1-1 downto 0 );
    wfdata_0 : out std_logic_vector( 32-1 downto 0 );
    wfdata_1 : out std_logic_vector( 32-1 downto 0 );
    wfdata_2 : out std_logic_vector( 32-1 downto 0 );
    wfdata_3 : out std_logic_vector( 32-1 downto 0 );
    wfdata_4 : out std_logic_vector( 32-1 downto 0 );
    wfdata_5 : out std_logic_vector( 32-1 downto 0 );
    wfdata_6 : out std_logic_vector( 32-1 downto 0 );
    wfdata_7 : out std_logic_vector( 32-1 downto 0 );
    wfvalid_0 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_1 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_2 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_3 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_4 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_5 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_6 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_7 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x1 : out std_logic_vector( 26-1 downto 0 );
    gateway_out34 : out std_logic_vector( 18-1 downto 0 );
    gateway_out35 : out std_logic_vector( 18-1 downto 0 );
    gateway_out39 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out40 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x0 : out std_logic_vector( 26-1 downto 0 );
    gateway_out10_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out10_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out16_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out3_x2 : out std_logic_vector( 26-1 downto 0 );
    gateway_out4_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x1 : out std_logic_vector( 26-1 downto 0 );
    gateway_out6_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out7_x0 : out std_logic_vector( 34-1 downto 0 );
    gateway_out8_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out10_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out14_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17 : out std_logic_vector( 32-1 downto 0 );
    gateway_out18 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out5 : out std_logic_vector( 18-1 downto 0 );
    gateway_out6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7 : out std_logic_vector( 32-1 downto 0 );
    gateway_out8 : out std_logic_vector( 18-1 downto 0 );
    gateway_out9 : out std_logic_vector( 32-1 downto 0 );
    gateway_out : out std_logic_vector( 1-1 downto 0 );
    gateway_out1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out10 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13 : out std_logic_vector( 32-1 downto 0 );
    gateway_out14 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out5_x5 : out std_logic_vector( 18-1 downto 0 );
    gateway_out6_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out8_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out9_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out1_x7 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2_x6 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out4_x5 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out6_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out8_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out9_x1 : out std_logic_vector( 16-1 downto 0 );
    gateway_out24 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25 : out std_logic_vector( 20-1 downto 0 );
    gateway_out26 : out std_logic_vector( 20-1 downto 0 );
    gateway_out6_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x4 : out std_logic_vector( 20-1 downto 0 );
    gateway_out8_x4 : out std_logic_vector( 20-1 downto 0 );
    gateway_out_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out24_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out26_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out6_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out8_x1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out44 : out std_logic_vector( 18-1 downto 0 );
    gateway_out46 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out20 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x3 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5_x2 : out std_logic_vector( 32-1 downto 0 );
    gateway_out27 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x5 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x5 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x5 : out std_logic_vector( 10-1 downto 0 );
    gateway_out44_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out46_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x6 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x2 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out20_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x15 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x15 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5_x13 : out std_logic_vector( 32-1 downto 0 );
    gateway_out6_x9 : out std_logic_vector( 1-1 downto 0 );
    gateway_out27_x4 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x16 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x6 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x16 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x14 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x17 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x16 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x12 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x17 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x15 : out std_logic_vector( 10-1 downto 0 );
    gateway_out1_x18 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2_x16 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x18 : out std_logic_vector( 1-1 downto 0 );
    gateway_out5_x14 : out std_logic_vector( 1-1 downto 0 );
    gateway_out10_x7 : out std_logic_vector( 1-1 downto 0 );
    gateway_out11_x8 : out std_logic_vector( 18-1 downto 0 );
    gateway_out32_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out34_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out35_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out36_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out37_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out38_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x13 : out std_logic_vector( 18-1 downto 0 );
    gateway_out10_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out11_x7 : out std_logic_vector( 18-1 downto 0 );
    gateway_out32_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out34_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out35_x3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out36_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out37_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out38_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x12 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x15 : out std_logic_vector( 1-1 downto 0 );
    gateway_out39_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out40_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out10_x6 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out16_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x14 : out std_logic_vector( 26-1 downto 0 );
    gateway_out4_x14 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x11 : out std_logic_vector( 26-1 downto 0 );
    gateway_out6_x8 : out std_logic_vector( 18-1 downto 0 );
    gateway_out7_x7 : out std_logic_vector( 34-1 downto 0 );
    gateway_out8_x7 : out std_logic_vector( 1-1 downto 0 );
    gateway_out_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x20 : out std_logic_vector( 20-1 downto 0 );
    gateway_out10_x8 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x9 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12_x1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out14_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17_x2 : out std_logic_vector( 32-1 downto 0 );
    gateway_out18_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x19 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3_x21 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4_x19 : out std_logic_vector( 32-1 downto 0 );
    gateway_out5_x17 : out std_logic_vector( 18-1 downto 0 );
    gateway_out6_x12 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x10 : out std_logic_vector( 32-1 downto 0 );
    gateway_out8_x10 : out std_logic_vector( 18-1 downto 0 );
    gateway_out9_x4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x7 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x21 : out std_logic_vector( 20-1 downto 0 );
    gateway_out10_x9 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x10 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13_x2 : out std_logic_vector( 32-1 downto 0 );
    gateway_out14_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out18_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x17 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22_x1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23_x1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3_x19 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4_x17 : out std_logic_vector( 32-1 downto 0 );
    gateway_out5_x15 : out std_logic_vector( 18-1 downto 0 );
    gateway_out6_x10 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x8 : out std_logic_vector( 32-1 downto 0 );
    gateway_out8_x8 : out std_logic_vector( 18-1 downto 0 );
    gateway_out9_x2 : out std_logic_vector( 32-1 downto 0 );
    gateway_out1_x19 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2_x18 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x20 : out std_logic_vector( 1-1 downto 0 );
    gateway_out4_x18 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5_x16 : out std_logic_vector( 1-1 downto 0 );
    gateway_out6_x11 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x9 : out std_logic_vector( 1-1 downto 0 );
    gateway_out8_x9 : out std_logic_vector( 1-1 downto 0 );
    gateway_out9_x3 : out std_logic_vector( 16-1 downto 0 );
    gateway_out24_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25_x3 : out std_logic_vector( 20-1 downto 0 );
    gateway_out26_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out6_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x5 : out std_logic_vector( 20-1 downto 0 );
    gateway_out8_x5 : out std_logic_vector( 20-1 downto 0 );
    gateway_out24_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out26_x1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out6_x7 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x6 : out std_logic_vector( 20-1 downto 0 );
    gateway_out8_x6 : out std_logic_vector( 20-1 downto 0 );
    gateway_out44_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out46_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x13 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x12 : out std_logic_vector( 18-1 downto 0 );
    gateway_out20_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x10 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x9 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5_x9 : out std_logic_vector( 32-1 downto 0 );
    gateway_out27_x2 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x14 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x13 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x12 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x7 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x8 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x7 : out std_logic_vector( 10-1 downto 0 );
    gateway_out44_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out46_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x9 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x8 : out std_logic_vector( 18-1 downto 0 );
    gateway_out20_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x7 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x6 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5_x7 : out std_logic_vector( 32-1 downto 0 );
    gateway_out6_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out27_x1 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x8 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x10 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x9 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x9 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x8 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x8 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x10 : out std_logic_vector( 10-1 downto 0 );
    gateway_out1_x12 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2_x11 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x13 : out std_logic_vector( 1-1 downto 0 );
    gateway_out5_x10 : out std_logic_vector( 1-1 downto 0 );
    gateway_out10_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out11_x5 : out std_logic_vector( 18-1 downto 0 );
    gateway_out32 : out std_logic_vector( 18-1 downto 0 );
    gateway_out34_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out35_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out36 : out std_logic_vector( 18-1 downto 0 );
    gateway_out37 : out std_logic_vector( 1-1 downto 0 );
    gateway_out38 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x10 : out std_logic_vector( 18-1 downto 0 );
    gateway_out10_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out11_x6 : out std_logic_vector( 18-1 downto 0 );
    gateway_out32_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out34_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out35_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out36_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out37_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out38_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x11 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp_struct;
architecture structural of dsp_struct is 
  signal mux11_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert55_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert75_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux12_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert56_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert76_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux13_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert57_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert77_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux14_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert58_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert78_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux15_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert51_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert79_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux16_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert13_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert52_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert80_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux10_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert53_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert81_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux17_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert62_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert82_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux19_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert71_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert83_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux20_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert72_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert84_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert4_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert6_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mux21_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert73_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert85_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux22_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert74_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert86_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux23_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert59_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert87_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux24_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert60_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert88_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux18_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert61_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert89_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux25_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert66_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert90_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux27_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert67_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert91_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux28_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert68_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert92_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux29_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert69_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert93_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux30_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert70_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert94_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux4_y_net : std_logic_vector( 32-1 downto 0 );
  signal phase_x0 : std_logic_vector( 18-1 downto 0 );
  signal convert14_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux31_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert63_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert95_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux32_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert64_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert96_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux5_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert15_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux6_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert8_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert16_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux7_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert9_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert17_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux8_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert10_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert18_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux9_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert11_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert19_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert12_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert20_dout_net : std_logic_vector( 2-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 32-1 downto 0 );
  signal convert54_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert65_dout_net : std_logic_vector( 2-1 downto 0 );
  signal convert2_dout_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert27_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert28_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert29_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert30_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert31_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert32_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert33_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert34_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert35_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert36_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert37_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert38_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert39_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert40_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert41_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert42_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register35_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal nco_sin : std_logic_vector( 26-1 downto 0 );
  signal down_sample1_q_net_x8 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x8 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal register9_q_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal nco_cos : std_logic_vector( 26-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert5_dout_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register7_q_net : std_logic_vector( 1-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample6_q_net : std_logic_vector( 32-1 downto 0 );
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 18-1 downto 0 );
  signal fir_compiler_7_2_m_axis_data_tdata_real_net : std_logic_vector( 34-1 downto 0 );
  signal fir_compiler_7_2_m_axis_data_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net_x2 : std_logic_vector( 20-1 downto 0 );
  signal mult4_p_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal convert4_dout_net_x0 : std_logic_vector( 20-1 downto 0 );
  signal register12_q_net : std_logic_vector( 32-1 downto 0 );
  signal mult5_p_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter3_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator3_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert9_dout_net_x2 : std_logic_vector( 20-1 downto 0 );
  signal convert10_dout_net_x0 : std_logic_vector( 20-1 downto 0 );
  signal accumulator_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal accumulator2_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal mult2_p_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator1_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 20-1 downto 0 );
  signal mult4_p_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 20-1 downto 0 );
  signal register12_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal mult5_p_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal inverter3_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal accumulator3_q_net : std_logic_vector( 32-1 downto 0 );
  signal inverter2_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert9_dout_net_x0 : std_logic_vector( 20-1 downto 0 );
  signal convert10_dout_net : std_logic_vector( 20-1 downto 0 );
  signal accumulator_q_net : std_logic_vector( 32-1 downto 0 );
  signal accumulator2_q_net : std_logic_vector( 32-1 downto 0 );
  signal mult2_p_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal inverter1_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal accumulator1_q_net : std_logic_vector( 32-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 16-1 downto 0 );
  signal relational4_op_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x10 : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal delay8_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal convert5_dout_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net_x5 : std_logic_vector( 32-1 downto 0 );
  signal mult3_p_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net_x4 : std_logic_vector( 32-1 downto 0 );
  signal addsub3_s_net_x3 : std_logic_vector( 19-1 downto 0 );
  signal register_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net_x8 : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net_x9 : std_logic_vector( 10-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net_x4 : std_logic_vector( 32-1 downto 0 );
  signal mult3_p_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net_x6 : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net_x5 : std_logic_vector( 32-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal addsub3_s_net_x4 : std_logic_vector( 19-1 downto 0 );
  signal register_q_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net_x9 : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net_x5 : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net_x10 : std_logic_vector( 10-1 downto 0 );
  signal delay5_q_net_x6 : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net_x2 : std_logic_vector( 16-1 downto 0 );
  signal relational4_op_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal convert11_dout_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal down_sample1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net_x5 : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net_x6 : std_logic_vector( 18-1 downto 0 );
  signal register35_q_net : std_logic_vector( 1-1 downto 0 );
  signal mult2_p_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net_x6 : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net_x6 : std_logic_vector( 18-1 downto 0 );
  signal nco_sin_x0 : std_logic_vector( 26-1 downto 0 );
  signal phase_x2 : std_logic_vector( 18-1 downto 0 );
  signal nco_cos_x0 : std_logic_vector( 26-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal fir_compiler_7_2_m_axis_data_tdata_real_net_x0 : std_logic_vector( 34-1 downto 0 );
  signal fir_compiler_7_2_m_axis_data_tvalid_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net_x7 : std_logic_vector( 20-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net_x11 : std_logic_vector( 32-1 downto 0 );
  signal convert4_dout_net_x3 : std_logic_vector( 20-1 downto 0 );
  signal register12_q_net_x6 : std_logic_vector( 32-1 downto 0 );
  signal mult5_p_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net_x11 : std_logic_vector( 32-1 downto 0 );
  signal inverter3_op_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal accumulator3_q_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal inverter2_op_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal convert9_dout_net_x5 : std_logic_vector( 20-1 downto 0 );
  signal convert10_dout_net_x2 : std_logic_vector( 20-1 downto 0 );
  signal accumulator_q_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal accumulator2_q_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal mult2_p_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal inverter1_op_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal accumulator1_q_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x8 : std_logic_vector( 32-1 downto 0 );
  signal inverter_op_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net_x8 : std_logic_vector( 20-1 downto 0 );
  signal mult4_p_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net_x5 : std_logic_vector( 32-1 downto 0 );
  signal convert4_dout_net_x2 : std_logic_vector( 20-1 downto 0 );
  signal register12_q_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net_x5 : std_logic_vector( 32-1 downto 0 );
  signal inverter3_op_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal accumulator3_q_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal inverter2_op_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert9_dout_net_x3 : std_logic_vector( 20-1 downto 0 );
  signal convert10_dout_net_x3 : std_logic_vector( 20-1 downto 0 );
  signal accumulator_q_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal accumulator2_q_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal mult2_p_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal inverter1_op_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal accumulator1_q_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal delay5_q_net_x1 : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert11_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal convert5_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x6 : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 16-1 downto 0 );
  signal convert5_dout_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 19-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net_x4 : std_logic_vector( 10-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_phase_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net_x3 : std_logic_vector( 32-1 downto 0 );
  signal mult3_p_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net_x5 : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net_x3 : std_logic_vector( 32-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal addsub3_s_net_x0 : std_logic_vector( 19-1 downto 0 );
  signal register_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net_x7 : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net_x7 : std_logic_vector( 10-1 downto 0 );
  signal delay5_q_net_x3 : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net_x1 : std_logic_vector( 16-1 downto 0 );
  signal relational4_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert11_dout_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal mult3_p_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal amp_net : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel_net : std_logic_vector( 4-1 downto 0 );
  signal ddci_net : std_logic_vector( 18-1 downto 0 );
  signal ddcq_net : std_logic_vector( 18-1 downto 0 );
  signal ddcsync_net : std_logic_vector( 1-1 downto 0 );
  signal phase_net : std_logic_vector( 18-1 downto 0 );
  signal phaseampchannel_net : std_logic_vector( 4-1 downto 0 );
  signal phaseampsync_net : std_logic_vector( 1-1 downto 0 );
  signal register36_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register29_q_net : std_logic_vector( 4-1 downto 0 );
  signal register31_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal register32_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal register2_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register30_q_net : std_logic_vector( 4-1 downto 0 );
  signal ce_net : std_logic;
  signal register33_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal register34_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal register36_q_net : std_logic_vector( 32-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal register29_q_net_x1 : std_logic_vector( 4-1 downto 0 );
  signal register31_q_net : std_logic_vector( 16-1 downto 0 );
  signal register32_q_net : std_logic_vector( 16-1 downto 0 );
  signal register2_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal register30_q_net_x0 : std_logic_vector( 4-1 downto 0 );
  signal register33_q_net : std_logic_vector( 16-1 downto 0 );
  signal register34_q_net : std_logic_vector( 16-1 downto 0 );
  signal register29_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 16-1 downto 0 );
  signal register2_q_net_x2 : std_logic_vector( 4-1 downto 0 );
  signal clk_net : std_logic;
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal phase_x1 : std_logic_vector( 18-1 downto 0 );
  signal channel : std_logic_vector( 4-1 downto 0 );
  signal ddcq_x0 : std_logic_vector( 18-1 downto 0 );
  signal ddcchannel_x0 : std_logic_vector( 4-1 downto 0 );
  signal ddcsync_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_doutb_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram1_doutb_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal constant31_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant64_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant68_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant69_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant67_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant70_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant71_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant72_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant73_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant91_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant66_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant84_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant85_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant83_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant86_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant87_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant88_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant89_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant82_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant80_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant32_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant81_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant90_op_net : std_logic_vector( 18-1 downto 0 );
  signal amp_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant92_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant93_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant94_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant100_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant101_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant99_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant102_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant103_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant104_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant105_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant78_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant79_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant77_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant76_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant75_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant74_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant112_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal register13_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal register13_q_net : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x6 : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register13_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x5 : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net_x7 : std_logic_vector( 18-1 downto 0 );
  signal convert5_dout_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal constant29_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant30_op_net : std_logic_vector( 18-1 downto 0 );
  signal relational7_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal relational7_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant37_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant38_op_net : std_logic_vector( 1-1 downto 0 );
  signal register12_q_net_x5 : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net : std_logic_vector( 18-1 downto 0 );
  signal register12_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register14_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register13_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal ddci_x0 : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net_x12 : std_logic_vector( 16-1 downto 0 );
  signal convert1_dout_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram_doutb_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal register11_q_net_x7 : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram1_doutb_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net_x5 : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register_q_net_x6 : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net_x6 : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net_x2 : std_logic_vector( 16-1 downto 0 );
  signal register_q_net_x7 : std_logic_vector( 16-1 downto 0 );
  signal register2_q_net_x13 : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal register_q_net_x5 : std_logic_vector( 16-1 downto 0 );
  signal down_sample2_q_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal addsub3_s_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal register_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal down_sample1_q_net_x5 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x5 : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram1_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram_doutb_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal convert6_dout_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal convert2_dout_net_x9 : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram1_doutb_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net_x8 : std_logic_vector( 16-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal register11_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net_x1 : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal addsub3_s_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register2_q_net_x6 : std_logic_vector( 16-1 downto 0 );
  signal register_q_net_x2 : std_logic_vector( 16-1 downto 0 );
  signal down_sample2_q_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal down_sample1_q_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x4 : std_logic_vector( 18-1 downto 0 );
begin
  diag10data <= mux11_y_net;
  diag10fixed <= convert55_dout_net;
  diag10sevr <= convert75_dout_net;
  diag11data <= mux12_y_net;
  diag11fixed <= convert56_dout_net;
  diag11sevr <= convert76_dout_net;
  diag12data <= mux13_y_net;
  diag12fixed <= convert57_dout_net;
  diag12sevr <= convert77_dout_net;
  diag13data <= mux14_y_net;
  diag13fixed <= convert58_dout_net;
  diag13sevr <= convert78_dout_net;
  diag14data <= mux15_y_net;
  diag14fixed <= convert51_dout_net;
  diag14sevr <= convert79_dout_net;
  diag15data <= mux16_y_net;
  diag15fixed <= convert52_dout_net;
  diag15sevr <= convert80_dout_net;
  diag16data <= mux10_y_net;
  diag16fixed <= convert53_dout_net;
  diag16sevr <= convert81_dout_net;
  diag17data <= mux17_y_net;
  diag17fixed <= convert62_dout_net;
  diag17sevr <= convert82_dout_net;
  diag18data <= mux19_y_net;
  diag18fixed <= convert71_dout_net;
  diag18sevr <= convert83_dout_net;
  diag19data <= mux20_y_net;
  diag19fixed <= convert72_dout_net;
  diag19sevr <= convert84_dout_net;
  diag1data <= mux2_y_net;
  diag1fixed <= convert4_dout_net_x1;
  diag1sevr <= convert13_dout_net;
  diag20data <= mux21_y_net;
  diag20fixed <= convert73_dout_net;
  diag20sevr <= convert85_dout_net;
  diag21data <= mux22_y_net;
  diag21fixed <= convert74_dout_net;
  diag21sevr <= convert86_dout_net;
  diag22data <= mux23_y_net;
  diag22fixed <= convert59_dout_net;
  diag22sevr <= convert87_dout_net;
  diag23data <= mux24_y_net;
  diag23fixed <= convert60_dout_net;
  diag23sevr <= convert88_dout_net;
  diag24data <= mux18_y_net;
  diag24fixed <= convert61_dout_net;
  diag24sevr <= convert89_dout_net;
  diag25data <= mux25_y_net;
  diag25fixed <= convert66_dout_net;
  diag25sevr <= convert90_dout_net;
  diag26data <= mux27_y_net;
  diag26fixed <= convert67_dout_net;
  diag26sevr <= convert91_dout_net;
  diag27data <= mux28_y_net;
  diag27fixed <= convert68_dout_net;
  diag27sevr <= convert92_dout_net;
  diag28data <= mux29_y_net;
  diag28fixed <= convert69_dout_net;
  diag28sevr <= convert93_dout_net;
  diag29data <= mux30_y_net;
  diag29fixed <= convert70_dout_net;
  diag29sevr <= convert94_dout_net;
  diag2data <= mux4_y_net;
  diag2fixed <= convert6_dout_net_x0;
  diag2sevr <= convert14_dout_net;
  diag30data <= mux31_y_net;
  diag30fixed <= convert63_dout_net;
  diag30sevr <= convert95_dout_net;
  diag31data <= mux32_y_net;
  diag31fixed <= convert64_dout_net;
  diag31sevr <= convert96_dout_net;
  diag3data <= mux5_y_net;
  diag3fixed <= convert7_dout_net;
  diag3sevr <= convert15_dout_net;
  diag4data <= mux6_y_net;
  diag4fixed <= convert8_dout_net;
  diag4sevr <= convert16_dout_net;
  diag5data <= mux7_y_net;
  diag5fixed <= convert9_dout_net;
  diag5sevr <= convert17_dout_net;
  diag6data <= mux8_y_net;
  diag6fixed <= convert10_dout_net_x1;
  diag6sevr <= convert18_dout_net;
  diag7data <= mux9_y_net;
  diag7fixed <= convert11_dout_net_x0;
  diag7sevr <= convert19_dout_net;
  diag8data <= mux3_y_net;
  diag8fixed <= convert12_dout_net;
  diag8sevr <= convert20_dout_net;
  diag9data <= mux1_y_net;
  diag9fixed <= convert54_dout_net;
  diag9sevr <= convert65_dout_net;
  diagnclk <= convert2_dout_net_x3;
  diagnrst <= convert_dout_net_x1;
  diagnsync <= convert1_dout_net_x1;
  wfdata_0 <= convert27_dout_net;
  wfdata_1 <= convert28_dout_net;
  wfdata_2 <= convert29_dout_net;
  wfdata_3 <= convert30_dout_net;
  wfdata_4 <= convert31_dout_net;
  wfdata_5 <= convert32_dout_net;
  wfdata_6 <= convert33_dout_net;
  wfdata_7 <= convert34_dout_net;
  wfvalid_0 <= convert35_dout_net;
  wfvalid_1 <= convert36_dout_net;
  wfvalid_2 <= convert37_dout_net;
  wfvalid_3 <= convert38_dout_net;
  wfvalid_4 <= convert39_dout_net;
  wfvalid_5 <= convert40_dout_net;
  wfvalid_6 <= convert41_dout_net;
  wfvalid_7 <= convert42_dout_net;
  gateway_out25_x1 <= register35_q_net_x0;
  gateway_out3_x1 <= nco_sin;
  gateway_out34 <= down_sample1_q_net_x8;
  gateway_out35 <= down_sample_q_net_x8;
  gateway_out39 <= down_sample1_q_net;
  gateway_out4_x1 <= register9_q_net;
  gateway_out40 <= down_sample_q_net;
  gateway_out5_x0 <= nco_cos;
  gateway_out10_x0 <= convert6_dout_net;
  gateway_out1_x0 <= convert5_dout_net_x0;
  gateway_out1_x1 <= register7_q_net;
  gateway_out10_x1 <= mult2_p_net;
  gateway_out15_x0 <= convert_dout_net_x0;
  gateway_out16_x1 <= convert1_dout_net;
  gateway_out2_x1 <= down_sample6_q_net;
  gateway_out3_x2 <= nco_sin;
  gateway_out4_x2 <= phase_x0;
  gateway_out5_x1 <= nco_cos;
  gateway_out6_x0 <= cordic_6_0_m_axis_dout_tdata_real_net;
  gateway_out7_x0 <= fir_compiler_7_2_m_axis_data_tdata_real_net;
  gateway_out8_x0 <= fir_compiler_7_2_m_axis_data_tvalid_net;
  gateway_out_x0 <= inverter_op_net_x0;
  gateway_out1_x2 <= convert2_dout_net_x2;
  gateway_out10_x2 <= mult4_p_net_x2;
  gateway_out11_x0 <= register1_q_net;
  gateway_out12_x0 <= convert4_dout_net_x0;
  gateway_out13_x0 <= register12_q_net;
  gateway_out14_x0 <= mult5_p_net_x2;
  gateway_out15_x1 <= register2_q_net;
  gateway_out16 <= inverter3_op_net;
  gateway_out17 <= accumulator3_q_net_x0;
  gateway_out18 <= register1_q_net;
  gateway_out2 <= inverter2_op_net;
  gateway_out22 <= convert9_dout_net_x2;
  gateway_out23 <= convert10_dout_net_x0;
  gateway_out3 <= accumulator_q_net_x0;
  gateway_out4 <= accumulator2_q_net_x0;
  gateway_out5 <= mult2_p_net_x4;
  gateway_out6 <= inverter1_op_net;
  gateway_out7 <= accumulator1_q_net_x0;
  gateway_out8 <= mult_p_net_x6;
  gateway_out9 <= register11_q_net;
  gateway_out <= inverter_op_net;
  gateway_out1 <= convert2_dout_net;
  gateway_out10 <= mult4_p_net_x1;
  gateway_out11 <= register1_q_net_x0;
  gateway_out12 <= convert4_dout_net;
  gateway_out13 <= register12_q_net_x0;
  gateway_out14 <= mult5_p_net_x1;
  gateway_out15 <= register2_q_net_x0;
  gateway_out16_x0 <= inverter3_op_net_x0;
  gateway_out17_x0 <= accumulator3_q_net;
  gateway_out2_x0 <= inverter2_op_net_x0;
  gateway_out22_x0 <= convert9_dout_net_x0;
  gateway_out23_x0 <= convert10_dout_net;
  gateway_out3_x0 <= accumulator_q_net;
  gateway_out4_x0 <= accumulator2_q_net;
  gateway_out5_x5 <= mult2_p_net_x3;
  gateway_out6_x1 <= inverter1_op_net_x0;
  gateway_out7_x3 <= accumulator1_q_net;
  gateway_out8_x2 <= mult_p_net_x5;
  gateway_out9_x0 <= register11_q_net_x0;
  gateway_out1_x7 <= delay5_q_net;
  gateway_out2_x6 <= delay3_q_net;
  gateway_out27_x0 <= relational4_op_net_x1;
  gateway_out28_x0 <= relational3_op_net_x1;
  gateway_out29_x0 <= convert11_dout_net;
  gateway_out3_x6 <= convert7_dout_net_x0;
  gateway_out4_x5 <= counter_op_net;
  gateway_out5_x4 <= convert5_dout_net;
  gateway_out6_x2 <= convert3_dout_net;
  gateway_out7_x2 <= register1_q_net_x10;
  gateway_out8_x3 <= convert2_dout_net_x0;
  gateway_out9_x1 <= delay8_q_net_x0;
  gateway_out24 <= convert5_dout_net_x3;
  gateway_out25 <= convert10_dout_net;
  gateway_out26 <= convert9_dout_net_x0;
  gateway_out6_x3 <= convert5_dout_net_x3;
  gateway_out7_x4 <= convert4_dout_net;
  gateway_out8_x4 <= convert2_dout_net;
  gateway_out_x2 <= cordic_6_0_2_m_axis_dout_tvalid_net;
  gateway_out24_x0 <= convert5_dout_net;
  gateway_out25_x0 <= convert10_dout_net_x0;
  gateway_out26_x0 <= convert9_dout_net_x2;
  gateway_out6_x4 <= convert5_dout_net;
  gateway_out7_x1 <= convert4_dout_net_x0;
  gateway_out8_x1 <= convert2_dout_net_x2;
  gateway_out44 <= mult_p_net_x6;
  gateway_out46 <= mult2_p_net_x4;
  gateway_out1_x3 <= cordic_6_0_2_m_axis_dout_tdata_phase_net_x2;
  gateway_out11_x1 <= convert_dout_net_x5;
  gateway_out19 <= mult3_p_net_x3;
  gateway_out2_x3 <= cordic_6_0_2_m_axis_dout_tdata_phase_net_x2;
  gateway_out20 <= convert2_dout_net_x0;
  gateway_out3_x4 <= cordic_6_0_2_m_axis_dout_tdata_phase_net_x2;
  gateway_out4_x3 <= counter_op_net;
  gateway_out5_x2 <= convert1_dout_net_x4;
  gateway_out27 <= addsub3_s_net_x3;
  gateway_out28 <= register_q_net_x3;
  gateway_out29 <= register1_q_net_x8;
  gateway_out3_x3 <= mult1_p_net_x1;
  gateway_out_x1 <= mult3_p_net_x3;
  gateway_out1_x4 <= relational1_op_net_x2;
  gateway_out2_x4 <= delay5_q_net_x4;
  gateway_out3_x5 <= register_q_net_x3;
  gateway_out4_x4 <= register1_q_net_x8;
  gateway_out5_x3 <= convert3_dout_net_x3;
  gateway_out1_x5 <= mult_p_net_x3;
  gateway_out2_x5 <= register2_q_net_x9;
  gateway_out44_x0 <= mult_p_net_x5;
  gateway_out46_x0 <= mult2_p_net_x3;
  gateway_out1_x6 <= cordic_6_0_2_m_axis_dout_tdata_phase_net_x1;
  gateway_out11_x2 <= convert_dout_net_x4;
  gateway_out19_x0 <= mult3_p_net_x4;
  gateway_out2_x2 <= cordic_6_0_2_m_axis_dout_tdata_phase_net_x1;
  gateway_out20_x2 <= convert2_dout_net_x6;
  gateway_out3_x15 <= cordic_6_0_2_m_axis_dout_tdata_phase_net_x1;
  gateway_out4_x15 <= counter_op_net;
  gateway_out5_x13 <= convert1_dout_net_x5;
  gateway_out6_x9 <= logical_y_net_x3;
  gateway_out27_x4 <= addsub3_s_net_x4;
  gateway_out28_x4 <= register_q_net_x4;
  gateway_out29_x4 <= register1_q_net_x9;
  gateway_out3_x16 <= mult1_p_net_x2;
  gateway_out_x6 <= mult3_p_net_x4;
  gateway_out1_x16 <= relational1_op_net_x3;
  gateway_out2_x14 <= delay5_q_net_x5;
  gateway_out3_x17 <= register_q_net_x4;
  gateway_out4_x16 <= register1_q_net_x9;
  gateway_out5_x12 <= convert3_dout_net_x4;
  gateway_out1_x17 <= mult_p_net_x4;
  gateway_out2_x15 <= register2_q_net_x10;
  gateway_out1_x18 <= delay5_q_net_x6;
  gateway_out2_x16 <= delay3_q_net_x2;
  gateway_out27_x5 <= relational4_op_net_x2;
  gateway_out28_x5 <= relational3_op_net_x2;
  gateway_out29_x5 <= convert11_dout_net_x3;
  gateway_out3_x18 <= convert7_dout_net_x3;
  gateway_out5_x14 <= convert5_dout_net_x3;
  gateway_out10_x7 <= convert11_dout_net_x3;
  gateway_out11_x8 <= mult2_p_net_x3;
  gateway_out32_x2 <= down_sample1_q_net_x0;
  gateway_out34_x3 <= convert11_dout_net_x3;
  gateway_out35_x2 <= mult4_p_net_x1;
  gateway_out36_x1 <= down_sample_q_net_x0;
  gateway_out37_x1 <= convert11_dout_net_x3;
  gateway_out38_x1 <= mult5_p_net_x1;
  gateway_out4_x13 <= mult3_p_net_x5;
  gateway_out10_x5 <= convert11_dout_net;
  gateway_out11_x7 <= mult2_p_net_x4;
  gateway_out32_x1 <= down_sample1_q_net_x0;
  gateway_out34_x2 <= convert11_dout_net;
  gateway_out35_x3 <= mult4_p_net_x2;
  gateway_out36_x2 <= down_sample_q_net_x0;
  gateway_out37_x2 <= convert11_dout_net;
  gateway_out38_x2 <= mult5_p_net_x2;
  gateway_out4_x12 <= mult3_p_net_x6;
  gateway_out1_x15 <= register35_q_net;
  gateway_out39_x0 <= down_sample1_q_net;
  gateway_out40_x0 <= down_sample_q_net;
  gateway_out10_x6 <= mult2_p_net_x2;
  gateway_out15_x2 <= convert_dout_net_x6;
  gateway_out16_x2 <= convert1_dout_net_x6;
  gateway_out3_x14 <= nco_sin_x0;
  gateway_out4_x14 <= phase_x2;
  gateway_out5_x11 <= nco_cos_x0;
  gateway_out6_x8 <= cordic_6_0_m_axis_dout_tdata_real_net_x0;
  gateway_out7_x7 <= fir_compiler_7_2_m_axis_data_tdata_real_net_x0;
  gateway_out8_x7 <= fir_compiler_7_2_m_axis_data_tvalid_net_x0;
  gateway_out_x5 <= inverter_op_net_x2;
  gateway_out1_x20 <= convert2_dout_net_x7;
  gateway_out10_x8 <= mult4_p_net;
  gateway_out11_x9 <= register1_q_net_x11;
  gateway_out12_x1 <= convert4_dout_net_x3;
  gateway_out13_x1 <= register12_q_net_x6;
  gateway_out14_x2 <= mult5_p_net_x0;
  gateway_out15_x3 <= register2_q_net_x11;
  gateway_out16_x4 <= inverter3_op_net_x2;
  gateway_out17_x2 <= accumulator3_q_net_x1;
  gateway_out18_x1 <= register1_q_net_x11;
  gateway_out2_x19 <= inverter2_op_net_x2;
  gateway_out22_x2 <= convert9_dout_net_x5;
  gateway_out23_x2 <= convert10_dout_net_x2;
  gateway_out3_x21 <= accumulator_q_net_x1;
  gateway_out4_x19 <= accumulator2_q_net_x1;
  gateway_out5_x17 <= mult2_p_net_x0;
  gateway_out6_x12 <= inverter1_op_net_x2;
  gateway_out7_x10 <= accumulator1_q_net_x1;
  gateway_out8_x10 <= mult_p_net_x0;
  gateway_out9_x4 <= register11_q_net_x8;
  gateway_out_x7 <= inverter_op_net_x1;
  gateway_out1_x21 <= convert2_dout_net_x8;
  gateway_out10_x9 <= mult4_p_net_x0;
  gateway_out11_x10 <= register1_q_net_x5;
  gateway_out12_x2 <= convert4_dout_net_x2;
  gateway_out13_x2 <= register12_q_net_x2;
  gateway_out14_x1 <= mult5_p_net;
  gateway_out15_x4 <= register2_q_net_x5;
  gateway_out16_x3 <= inverter3_op_net_x1;
  gateway_out17_x1 <= accumulator3_q_net_x2;
  gateway_out18_x0 <= register1_q_net_x5;
  gateway_out2_x17 <= inverter2_op_net_x1;
  gateway_out22_x1 <= convert9_dout_net_x3;
  gateway_out23_x1 <= convert10_dout_net_x3;
  gateway_out3_x19 <= accumulator_q_net_x2;
  gateway_out4_x17 <= accumulator2_q_net_x2;
  gateway_out5_x15 <= mult2_p_net_x1;
  gateway_out6_x10 <= inverter1_op_net_x1;
  gateway_out7_x8 <= accumulator1_q_net_x2;
  gateway_out8_x8 <= mult_p_net_x2;
  gateway_out9_x2 <= register11_q_net_x2;
  gateway_out1_x19 <= delay5_q_net_x1;
  gateway_out2_x18 <= delay3_q_net_x0;
  gateway_out27_x6 <= relational4_op_net;
  gateway_out28_x6 <= relational3_op_net;
  gateway_out29_x6 <= convert11_dout_net_x1;
  gateway_out3_x20 <= convert7_dout_net_x1;
  gateway_out4_x18 <= counter_op_net_x0;
  gateway_out5_x16 <= convert5_dout_net_x1;
  gateway_out6_x11 <= convert3_dout_net_x1;
  gateway_out7_x9 <= register1_q_net_x6;
  gateway_out8_x9 <= convert2_dout_net_x4;
  gateway_out9_x3 <= delay8_q_net;
  gateway_out24_x2 <= convert5_dout_net_x2;
  gateway_out25_x3 <= convert10_dout_net_x3;
  gateway_out26_x2 <= convert9_dout_net_x3;
  gateway_out6_x6 <= convert5_dout_net_x2;
  gateway_out7_x5 <= convert4_dout_net_x2;
  gateway_out8_x5 <= convert2_dout_net_x8;
  gateway_out24_x1 <= convert5_dout_net_x1;
  gateway_out25_x2 <= convert10_dout_net_x2;
  gateway_out26_x1 <= convert9_dout_net_x5;
  gateway_out6_x7 <= convert5_dout_net_x1;
  gateway_out7_x6 <= convert4_dout_net_x3;
  gateway_out8_x6 <= convert2_dout_net_x7;
  gateway_out44_x2 <= mult_p_net_x0;
  gateway_out46_x2 <= mult2_p_net_x0;
  gateway_out1_x13 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out11_x4 <= convert_dout_net_x2;
  gateway_out19_x2 <= mult3_p_net;
  gateway_out2_x12 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out20_x1 <= convert2_dout_net_x4;
  gateway_out3_x10 <= cordic_6_0_2_m_axis_dout_tdata_phase_net;
  gateway_out4_x9 <= counter_op_net;
  gateway_out5_x9 <= convert1_dout_net_x2;
  gateway_out27_x2 <= addsub3_s_net;
  gateway_out28_x2 <= register_q_net;
  gateway_out29_x2 <= register1_q_net_x4;
  gateway_out3_x11 <= mult1_p_net;
  gateway_out_x4 <= mult3_p_net;
  gateway_out1_x14 <= relational1_op_net_x0;
  gateway_out2_x13 <= delay5_q_net_x0;
  gateway_out3_x12 <= register_q_net;
  gateway_out4_x7 <= register1_q_net_x4;
  gateway_out5_x6 <= convert3_dout_net_x0;
  gateway_out1_x8 <= mult_p_net;
  gateway_out2_x7 <= register2_q_net_x4;
  gateway_out44_x1 <= mult_p_net_x2;
  gateway_out46_x1 <= mult2_p_net_x1;
  gateway_out1_x9 <= cordic_6_0_2_m_axis_dout_tdata_phase_net_x0;
  gateway_out11_x3 <= convert_dout_net_x3;
  gateway_out19_x1 <= mult3_p_net_x1;
  gateway_out2_x8 <= cordic_6_0_2_m_axis_dout_tdata_phase_net_x0;
  gateway_out20_x0 <= convert2_dout_net_x5;
  gateway_out3_x7 <= cordic_6_0_2_m_axis_dout_tdata_phase_net_x0;
  gateway_out4_x6 <= counter_op_net;
  gateway_out5_x7 <= convert1_dout_net_x3;
  gateway_out6_x5 <= logical_y_net_x2;
  gateway_out27_x1 <= addsub3_s_net_x0;
  gateway_out28_x1 <= register_q_net_x1;
  gateway_out29_x1 <= register1_q_net_x7;
  gateway_out3_x8 <= mult1_p_net_x0;
  gateway_out_x3 <= mult3_p_net_x1;
  gateway_out1_x10 <= relational1_op_net_x1;
  gateway_out2_x9 <= delay5_q_net_x2;
  gateway_out3_x9 <= register_q_net_x1;
  gateway_out4_x8 <= register1_q_net_x7;
  gateway_out5_x8 <= convert3_dout_net_x2;
  gateway_out1_x11 <= mult_p_net_x1;
  gateway_out2_x10 <= register2_q_net_x7;
  gateway_out1_x12 <= delay5_q_net_x3;
  gateway_out2_x11 <= delay3_q_net_x1;
  gateway_out27_x3 <= relational4_op_net_x0;
  gateway_out28_x3 <= relational3_op_net_x0;
  gateway_out29_x3 <= convert11_dout_net_x2;
  gateway_out3_x13 <= convert7_dout_net_x2;
  gateway_out5_x10 <= convert5_dout_net_x2;
  gateway_out10_x3 <= convert11_dout_net_x2;
  gateway_out11_x5 <= mult2_p_net_x1;
  gateway_out32 <= down_sample1_q_net_x0;
  gateway_out34_x0 <= convert11_dout_net_x2;
  gateway_out35_x0 <= mult4_p_net_x0;
  gateway_out36 <= down_sample_q_net_x0;
  gateway_out37 <= convert11_dout_net_x2;
  gateway_out38 <= mult5_p_net;
  gateway_out4_x10 <= mult3_p_net_x2;
  gateway_out10_x4 <= convert11_dout_net_x1;
  gateway_out11_x6 <= mult2_p_net_x0;
  gateway_out32_x0 <= down_sample1_q_net_x0;
  gateway_out34_x1 <= convert11_dout_net_x1;
  gateway_out35_x1 <= mult4_p_net;
  gateway_out36_x0 <= down_sample_q_net_x0;
  gateway_out37_x0 <= convert11_dout_net_x1;
  gateway_out38_x0 <= mult5_p_net_x0;
  gateway_out4_x11 <= mult3_p_net_x0;
  amp_net <= amp;
  ddcchannel_net <= ddcchannel;
  ddci_net <= ddci;
  ddcq_net <= ddcq;
  ddcsync_net <= ddcsync;
  phase_net <= phase;
  phaseampchannel_net <= phaseampchannel;
  phaseampsync_net <= phaseampsync;
  register36_q_net_x0 <= cav1_nco_phase_adj;
  register35_q_net_x0 <= cav1_nco_phase_reset;
  register1_q_net_x1 <= cav1_p1_cal_coef;
  register29_q_net <= cav1_p1_chan_sel;
  register31_q_net_x0 <= cav1_p1_window_start;
  register32_q_net_x0 <= cav1_p1_window_stop;
  register2_q_net_x1 <= cav1_p2_cal_coef;
  register30_q_net <= cav1_p2_chan_sel;
  register33_q_net_x0 <= cav1_p2_window_start;
  register34_q_net_x0 <= cav1_p2_window_stop;
  register36_q_net <= cav2_nco_phase_adj;
  register35_q_net <= cav2_nco_phase_reset;
  register1_q_net_x3 <= cav2_p1_cal_coef;
  register29_q_net_x1 <= cav2_p1_chan_sel;
  register31_q_net <= cav2_p1_window_start;
  register32_q_net <= cav2_p1_window_stop;
  register2_q_net_x3 <= cav2_p2_cal_coef;
  register30_q_net_x0 <= cav2_p2_chan_sel;
  register33_q_net <= cav2_p2_window_start;
  register34_q_net <= cav2_p2_window_stop;
  register29_q_net_x0 <= ref_window_start;
  register1_q_net_x2 <= ref_window_stop;
  register2_q_net_x2 <= rf_ref_chan_sel;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clk_net_x0 <= clk_12;
  ce_net_x0 <= ce_12;
  dest_clk_net <= clk_144;
  dest_ce_net <= ce_144;
  bsa_streaming : entity work.dsp_bsa_streaming 
  port map (
    diagnsync_ctl => logical_y_net_x1,
    diag7data => register13_q_net_x2,
    diag15data => register13_q_net,
    diag6data => register11_q_net_x6,
    diag5data => register12_q_net_x4,
    diag4data => register14_q_net_x1,
    diag3data => register13_q_net_x1,
    diag2data => register11_q_net_x5,
    wfdata_0 => nco_sin,
    wfdata_1 => nco_sin_x0,
    wfdata_2 => convert6_dout_net,
    wfdata_3 => convert5_dout_net_x0,
    wfdata_4 => convert1_dout_net_x7,
    wfdata_5 => convert5_dout_net_x4,
    wfdata_6 => constant29_op_net,
    wfdata_7 => constant30_op_net,
    wfvalid_0 => relational7_op_net_x0,
    wfvalid_1 => relational7_op_net,
    wfvalid_6 => constant37_op_net,
    wfvalid_7 => constant38_op_net,
    diag1data => register12_q_net_x5,
    diag8data => register14_q_net_x2,
    diag14data_x0 => register11_q_net_x4,
    diag9data => register12_q_net_x3,
    diag16data => register14_q_net,
    diag13data_x0 => register12_q_net_x1,
    diag12data_x0 => register14_q_net_x0,
    diag11data_x0 => register13_q_net_x0,
    diag10data_x0 => register11_q_net_x3,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => clk_net_x0,
    ce_12 => ce_net_x0,
    diagnrst_ctl => constant31_op_net,
    diag6fixed_x0 => constant3_op_net,
    diag2sevr_ctl => constant64_op_net,
    diag3sevr_ctl => constant64_op_net,
    diag4sevr_ctl => constant64_op_net,
    diag5sevr_ctl => constant64_op_net,
    diag6sevr_ctl => constant64_op_net,
    diag7sevr_ctl => constant64_op_net,
    diag8sevr_ctl => constant64_op_net,
    diag14fixed_x0 => constant68_op_net,
    diag13fixed_x0 => constant69_op_net,
    diag15fixed_x0 => constant67_op_net,
    diag5fixed => constant4_op_net,
    diag12fixed_x0 => constant70_op_net,
    diag11fixed_x0 => constant71_op_net,
    diag10fixed_x0 => constant72_op_net,
    diag9fixed => constant73_op_net,
    diag7fixed => constant2_op_net,
    diag16fixed => constant66_op_net,
    diag4fixed => constant5_op_net,
    diag22fixed => constant84_op_net,
    diag21fixed => constant85_op_net,
    diag23fixed => constant83_op_net,
    diag20fixed => constant86_op_net,
    diag19fixed => constant87_op_net,
    diag18fixed => constant88_op_net,
    diag3fixed => constant6_op_net,
    diag17fixed => constant89_op_net,
    diag24fixed => constant82_op_net,
    diag18data => constant80_op_net,
    diag17data => constant32_op_net,
    diag19data => constant81_op_net,
    diag20data => constant90_op_net,
    diag21data => constant91_op_net,
    diag22data => constant92_op_net,
    diag23data => constant93_op_net,
    diag24data => constant94_op_net,
    diag2fixed => constant7_op_net,
    diag30fixed => constant100_op_net,
    diag29fixed => constant101_op_net,
    diag31fixed => constant99_op_net,
    diag28fixed => constant102_op_net,
    diag27fixed => constant103_op_net,
    diag26fixed => constant104_op_net,
    diag25fixed => constant105_op_net,
    diag26data => constant78_op_net,
    diag25data => constant79_op_net,
    diag1fixed => constant8_op_net,
    diag27data => constant77_op_net,
    diag28data => constant76_op_net,
    diag29data => constant75_op_net,
    diag30data => constant74_op_net,
    diag31data => constant112_op_net,
    diag8fixed => constant1_op_net,
    diag1sevr_ctl => constant64_op_net,
    diag10data => mux11_y_net,
    diag10fixed => convert55_dout_net,
    diag10sevr => convert75_dout_net,
    diag11data => mux12_y_net,
    diag11fixed => convert56_dout_net,
    diag11sevr => convert76_dout_net,
    diag12data => mux13_y_net,
    diag12fixed => convert57_dout_net,
    diag12sevr => convert77_dout_net,
    diag13data => mux14_y_net,
    diag13fixed => convert58_dout_net,
    diag13sevr => convert78_dout_net,
    diag14data => mux15_y_net,
    diag14fixed => convert51_dout_net,
    diag14sevr => convert79_dout_net,
    diag15data_x0 => mux16_y_net,
    diag15fixed => convert52_dout_net,
    diag15sevr => convert80_dout_net,
    diag16data_x0 => mux10_y_net,
    diag16fixed_x0 => convert53_dout_net,
    diag16sevr => convert81_dout_net,
    diag17data_x0 => mux17_y_net,
    diag17fixed_x0 => convert62_dout_net,
    diag17sevr => convert82_dout_net,
    diag18data_x0 => mux19_y_net,
    diag18fixed_x0 => convert71_dout_net,
    diag18sevr => convert83_dout_net,
    diag19data_x0 => mux20_y_net,
    diag19fixed_x0 => convert72_dout_net,
    diag19sevr => convert84_dout_net,
    diag1data_x0 => mux2_y_net,
    diag1fixed_x0 => convert4_dout_net_x1,
    diag1sevr => convert13_dout_net,
    diag20data_x0 => mux21_y_net,
    diag20fixed_x0 => convert73_dout_net,
    diag20sevr => convert85_dout_net,
    diag21data_x0 => mux22_y_net,
    diag21fixed_x0 => convert74_dout_net,
    diag21sevr => convert86_dout_net,
    diag22data_x0 => mux23_y_net,
    diag22fixed_x0 => convert59_dout_net,
    diag22sevr => convert87_dout_net,
    diag23data_x0 => mux24_y_net,
    diag23fixed_x0 => convert60_dout_net,
    diag23sevr => convert88_dout_net,
    diag24data_x0 => mux18_y_net,
    diag24fixed_x0 => convert61_dout_net,
    diag24sevr => convert89_dout_net,
    diag25data_x0 => mux25_y_net,
    diag25fixed_x0 => convert66_dout_net,
    diag25sevr => convert90_dout_net,
    diag26data_x0 => mux27_y_net,
    diag26fixed_x0 => convert67_dout_net,
    diag26sevr => convert91_dout_net,
    diag27data_x0 => mux28_y_net,
    diag27fixed_x0 => convert68_dout_net,
    diag27sevr => convert92_dout_net,
    diag28data_x0 => mux29_y_net,
    diag28fixed_x0 => convert69_dout_net,
    diag28sevr => convert93_dout_net,
    diag29data_x0 => mux30_y_net,
    diag29fixed_x0 => convert70_dout_net,
    diag29sevr => convert94_dout_net,
    diag2data_x0 => mux4_y_net,
    diag2fixed_x0 => convert6_dout_net_x0,
    diag2sevr => convert14_dout_net,
    diag30data_x0 => mux31_y_net,
    diag30fixed_x0 => convert63_dout_net,
    diag30sevr => convert95_dout_net,
    diag31data_x0 => mux32_y_net,
    diag31fixed_x0 => convert64_dout_net,
    diag31sevr => convert96_dout_net,
    diag3data_x0 => mux5_y_net,
    diag3fixed_x0 => convert7_dout_net,
    diag3sevr => convert15_dout_net,
    diag4data_x0 => mux6_y_net,
    diag4fixed_x0 => convert8_dout_net,
    diag4sevr => convert16_dout_net,
    diag5data_x0 => mux7_y_net,
    diag5fixed_x0 => convert9_dout_net,
    diag5sevr => convert17_dout_net,
    diag6data_x0 => mux8_y_net,
    diag6fixed => convert10_dout_net_x1,
    diag6sevr => convert18_dout_net,
    diag7data_x0 => mux9_y_net,
    diag7fixed_x0 => convert11_dout_net_x0,
    diag7sevr => convert19_dout_net,
    diag8data_x0 => mux3_y_net,
    diag8fixed_x0 => convert12_dout_net,
    diag8sevr => convert20_dout_net,
    diag9data_x0 => mux1_y_net,
    diag9fixed_x0 => convert54_dout_net,
    diag9sevr => convert65_dout_net,
    diagnclk => convert2_dout_net_x3,
    diagnrst => convert_dout_net_x1,
    diagnsync => convert1_dout_net_x1,
    wfdata_0_x0 => convert27_dout_net,
    wfdata_1_x0 => convert28_dout_net,
    wfdata_2_x0 => convert29_dout_net,
    wfdata_3_x0 => convert30_dout_net,
    wfdata_4_x0 => convert31_dout_net,
    wfdata_5_x0 => convert32_dout_net,
    wfdata_6_x0 => convert33_dout_net,
    wfdata_7_x0 => convert34_dout_net,
    wfvalid_0_x0 => convert35_dout_net,
    wfvalid_1_x0 => convert36_dout_net,
    wfvalid_2 => convert37_dout_net,
    wfvalid_3 => convert38_dout_net,
    wfvalid_4 => convert39_dout_net,
    wfvalid_5 => convert40_dout_net,
    wfvalid_6_x0 => convert41_dout_net,
    wfvalid_7_x0 => convert42_dout_net
  );
  cav1 : entity work.dsp_cav1 
  port map (
    pa_stream_1 => amp_x0,
    iq_stream_1 => ddci_x0,
    pa_stream_2 => phase_x1,
    pa_stream_3 => channel,
    iq_stream_2 => ddcq_x0,
    iq_stream_3 => ddcchannel_x0,
    iq_stream_4 => ddcsync_x0,
    cav1_p1_chan_sel => register29_q_net,
    cav1_p1_cal_coef => register1_q_net_x1,
    cav1_nco_phase_reset => register35_q_net_x0,
    cav1_p2_chan_sel => register30_q_net,
    rf_ref_amp => down_sample1_q_net,
    rf_ref_phase => down_sample_q_net,
    rf_ref_q => down_sample_q_net_x0,
    cav1_nco_phase_adj => register36_q_net_x0,
    cav1_p1_window_start => register31_q_net_x0,
    cav1_p1_window_stop => register32_q_net_x0,
    rf_ref_i => down_sample1_q_net_x0,
    cav1_p2_window_start => register33_q_net_x0,
    cav1_p2_window_stop => register34_q_net_x0,
    cav1_p2_cal_coef => register2_q_net_x1,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => clk_net_x0,
    ce_12 => ce_net_x0,
    c1p2_pt_window => convert11_dout_net,
    cav1_p2_dc_tvalid => convert2_dout_net_x1,
    cav1_p1_dc_real => convert6_dout_net,
    cav1_p1_dc_img => convert5_dout_net_x0,
    cav1_p1_dc_freq => convert1_dout_net_x5,
    c1p1_freq_err => convert1_dout_net_x5,
    flo_c1p1_window => convert2_dout_net_x6,
    cav1_p1_delayed_dc_img => dual_port_ram_doutb_net_x1,
    cav1_p1_delayed_dc_real => dual_port_ram1_doutb_net_x1,
    c1_p1_delay_amt => register2_q_net_x12,
    cav1_p1_ref_phase_out => register11_q_net_x5,
    c1p2_pt_cntr => counter_op_net,
    cav1_p2_dc_real => convert1_dout_net_x0,
    cav1_p2_dc_img => convert_dout_net,
    cav1_p2_dc_freq => convert1_dout_net_x4,
    cav1_p2_delayed_dc_img => dual_port_ram_doutb_net_x2,
    c1p2_integral_logic => convert5_dout_net,
    cav1_p2_delayed_dc_real => dual_port_ram1_doutb_net_x2,
    cav1_p2_ref_phase_out => register11_q_net_x6,
    cav1_p2_ref_amp_out => register12_q_net_x4,
    cav1_p2_integrated_ref_i => convert2_dout_net_x2,
    cav1_p2_integrated_ref_q => convert4_dout_net_x0,
    c1p1_window_func => addsub3_s_net_x5,
    cav1_p2_if_i => down_sample1_q_net_x8,
    cav1_p2_if_q => down_sample_q_net_x8,
    cav1_p2_integrated_i => convert9_dout_net_x2,
    cav1_p2_integrated_q => convert10_dout_net_x0,
    cav1_p2_comparison_i => addsub_s_net_x1,
    cav1_p2_comparison_q => addsub_s_net_x1,
    cav1_p2_comparison_phase => register_q_net_x6,
    dsp_cav1_reset => convert3_dout_net,
    c1p2_window_func => addsub3_s_net_x6,
    cav1_nco_fb => convert_dout_net_x5,
    cav1_p1_windowed_ref_i => mult4_p_net_x1,
    cav1_p1_windowed_ref_q => mult5_p_net_x1,
    cav1_p1_windowed_img => mult2_p_net_x3,
    cav1_p1_windowed_real => mult_p_net_x5,
    cav1_p1_integrated_ref_i => convert2_dout_net,
    cav1_p1_integrated_ref_q => convert4_dout_net,
    cav1_p1_integrated_i => convert9_dout_net_x0,
    cav1_p1_integrated_q => convert10_dout_net,
    reset => convert3_dout_net,
    cav1_p1_comparison_phase => register11_q_net_x7,
    c1p1_pt_window => convert11_dout_net_x3,
    c1p1_pt_cntr => counter_op_net_x2,
    c1p1_integral_logic => convert5_dout_net_x3,
    cav1_p1_ref_amp_out => register12_q_net_x5,
    c1p1_delay_match => register_q_net_x7,
    cav1_p1_phase_out => register13_q_net_x1,
    cav1_p1_amp_out => register14_q_net_x1,
    flo_c1p2_window => convert2_dout_net_x0,
    c1_p2_delay_amt => register2_q_net_x13,
    cav1_p2_windowed_img => mult2_p_net_x4,
    cav1_p2_windowed_real => mult_p_net_x6,
    cav1_p2_windowed_ref_i => mult4_p_net_x2,
    cav1_p2_windowed_ref_q => mult5_p_net_x2,
    cav1_p2_phase_out => register13_q_net_x2,
    cav1_p2_amp_out => register14_q_net_x2,
    c1p2_freq_err => convert1_dout_net_x4,
    c1_p2_delay_latch => delay2_q_net_x1,
    c1p2_delay_match => register_q_net_x5,
    cav1_sync => down_sample2_q_net_x2,
    c1p2_ready => relational_op_net,
    c1_ready => logical_y_net,
    c1p1_ready => relational1_op_net_x4,
    cav1_nco_sin => nco_sin,
    cav1_nco_cos => nco_cos,
    c1_stream_valid => relational7_op_net_x0,
    c1_p1_delay_latch => delay2_q_net_x2,
    cav1_p1_if_i => down_sample1_q_net_x5,
    cav1_p1_if_q => down_sample_q_net_x5,
    gateway_out3_x8 => nco_sin,
    gateway_out34_x1 => down_sample1_q_net_x8,
    gateway_out35_x1 => down_sample_q_net_x8,
    gateway_out4_x7 => register9_q_net,
    gateway_out5_x6 => nco_cos,
    gateway_out10_x2 => convert6_dout_net,
    gateway_out1_x8 => convert5_dout_net_x0,
    gateway_out1_x9 => register7_q_net,
    gateway_out10_x3 => mult2_p_net,
    gateway_out15_x1 => convert_dout_net_x0,
    gateway_out16_x1 => convert1_dout_net,
    gateway_out2_x9 => down_sample6_q_net,
    gateway_out3_x10 => nco_sin,
    gateway_out4_x9 => phase_x0,
    gateway_out5_x8 => nco_cos,
    gateway_out6_x5 => cordic_6_0_m_axis_dout_tdata_real_net,
    gateway_out7_x4 => fir_compiler_7_2_m_axis_data_tdata_real_net,
    gateway_out8_x4 => fir_compiler_7_2_m_axis_data_tvalid_net,
    gateway_out_x3 => inverter_op_net_x0,
    gateway_out1_x10 => convert2_dout_net_x2,
    gateway_out10_x4 => mult4_p_net_x2,
    gateway_out11_x4 => register1_q_net,
    gateway_out12_x0 => convert4_dout_net_x0,
    gateway_out13_x0 => register12_q_net,
    gateway_out14_x0 => mult5_p_net_x2,
    gateway_out15_x0 => register2_q_net,
    gateway_out16_x0 => inverter3_op_net,
    gateway_out17_x0 => accumulator3_q_net_x0,
    gateway_out18 => register1_q_net,
    gateway_out2_x8 => inverter2_op_net,
    gateway_out22_x0 => convert9_dout_net_x2,
    gateway_out23_x0 => convert10_dout_net_x0,
    gateway_out3_x9 => accumulator_q_net_x0,
    gateway_out4_x8 => accumulator2_q_net_x0,
    gateway_out5_x7 => mult2_p_net_x4,
    gateway_out6_x4 => inverter1_op_net,
    gateway_out7_x3 => accumulator1_q_net_x0,
    gateway_out8_x0 => mult_p_net_x6,
    gateway_out9_x0 => register11_q_net,
    gateway_out_x1 => inverter_op_net,
    gateway_out1_x6 => convert2_dout_net,
    gateway_out10_x1 => mult4_p_net_x1,
    gateway_out11_x2 => register1_q_net_x0,
    gateway_out12 => convert4_dout_net,
    gateway_out13 => register12_q_net_x0,
    gateway_out14 => mult5_p_net_x1,
    gateway_out15 => register2_q_net_x0,
    gateway_out16 => inverter3_op_net_x0,
    gateway_out17 => accumulator3_q_net,
    gateway_out2_x6 => inverter2_op_net_x0,
    gateway_out22 => convert9_dout_net_x0,
    gateway_out23 => convert10_dout_net,
    gateway_out3_x5 => accumulator_q_net,
    gateway_out4_x5 => accumulator2_q_net,
    gateway_out5_x4 => mult2_p_net_x3,
    gateway_out6_x0 => inverter1_op_net_x0,
    gateway_out7 => accumulator1_q_net,
    gateway_out8 => mult_p_net_x5,
    gateway_out9 => register11_q_net_x0,
    gateway_out1_x5 => delay5_q_net,
    gateway_out2_x5 => delay3_q_net,
    gateway_out27_x1 => relational4_op_net_x1,
    gateway_out28_x1 => relational3_op_net_x1,
    gateway_out29_x1 => convert11_dout_net,
    gateway_out3_x4 => convert7_dout_net_x0,
    gateway_out4_x4 => counter_op_net,
    gateway_out5_x3 => convert5_dout_net,
    gateway_out6_x1 => convert3_dout_net,
    gateway_out7_x2 => register1_q_net_x10,
    gateway_out8_x3 => convert2_dout_net_x0,
    gateway_out9_x1 => delay8_q_net_x0,
    gateway_out24_x0 => convert5_dout_net_x3,
    gateway_out25_x0 => convert10_dout_net,
    gateway_out26_x0 => convert9_dout_net_x0,
    gateway_out6_x3 => convert5_dout_net_x3,
    gateway_out7_x1 => convert4_dout_net,
    gateway_out8_x2 => convert2_dout_net,
    gateway_out_x2 => cordic_6_0_2_m_axis_dout_tvalid_net,
    gateway_out24 => convert5_dout_net,
    gateway_out25 => convert10_dout_net_x0,
    gateway_out26 => convert9_dout_net_x2,
    gateway_out6_x2 => convert5_dout_net,
    gateway_out7_x0 => convert4_dout_net_x0,
    gateway_out8_x1 => convert2_dout_net_x2,
    gateway_out44_x0 => mult_p_net_x6,
    gateway_out46_x0 => mult2_p_net_x4,
    gateway_out1_x7 => cordic_6_0_2_m_axis_dout_tdata_phase_net_x2,
    gateway_out11_x3 => convert_dout_net_x5,
    gateway_out19_x0 => mult3_p_net_x3,
    gateway_out2_x7 => cordic_6_0_2_m_axis_dout_tdata_phase_net_x2,
    gateway_out20_x0 => convert2_dout_net_x0,
    gateway_out3_x7 => cordic_6_0_2_m_axis_dout_tdata_phase_net_x2,
    gateway_out4_x6 => counter_op_net,
    gateway_out5_x5 => convert1_dout_net_x4,
    gateway_out27_x2 => addsub3_s_net_x3,
    gateway_out28_x2 => register_q_net_x3,
    gateway_out29_x2 => register1_q_net_x8,
    gateway_out3_x6 => mult1_p_net_x1,
    gateway_out_x0 => mult3_p_net_x3,
    gateway_out1_x4 => relational1_op_net_x2,
    gateway_out2_x4 => delay5_q_net_x4,
    gateway_out3_x2 => register_q_net_x3,
    gateway_out4_x1 => register1_q_net_x8,
    gateway_out5_x1 => convert3_dout_net_x3,
    gateway_out1_x3 => mult_p_net_x3,
    gateway_out2_x3 => register2_q_net_x9,
    gateway_out44 => mult_p_net_x5,
    gateway_out46 => mult2_p_net_x3,
    gateway_out1_x2 => cordic_6_0_2_m_axis_dout_tdata_phase_net_x1,
    gateway_out11 => convert_dout_net_x4,
    gateway_out19 => mult3_p_net_x4,
    gateway_out2_x2 => cordic_6_0_2_m_axis_dout_tdata_phase_net_x1,
    gateway_out20 => convert2_dout_net_x6,
    gateway_out3_x1 => cordic_6_0_2_m_axis_dout_tdata_phase_net_x1,
    gateway_out4_x0 => counter_op_net,
    gateway_out5 => convert1_dout_net_x5,
    gateway_out6 => logical_y_net_x3,
    gateway_out27 => addsub3_s_net_x4,
    gateway_out28 => register_q_net_x4,
    gateway_out29 => register1_q_net_x9,
    gateway_out3_x0 => mult1_p_net_x2,
    gateway_out => mult3_p_net_x4,
    gateway_out1_x1 => relational1_op_net_x3,
    gateway_out2_x1 => delay5_q_net_x5,
    gateway_out3 => register_q_net_x4,
    gateway_out4 => register1_q_net_x9,
    gateway_out5_x0 => convert3_dout_net_x4,
    gateway_out1_x0 => mult_p_net_x4,
    gateway_out2_x0 => register2_q_net_x10,
    gateway_out1 => delay5_q_net_x6,
    gateway_out2 => delay3_q_net_x2,
    gateway_out27_x0 => relational4_op_net_x2,
    gateway_out28_x0 => relational3_op_net_x2,
    gateway_out29_x0 => convert11_dout_net_x3,
    gateway_out3_x3 => convert7_dout_net_x3,
    gateway_out5_x2 => convert5_dout_net_x3,
    gateway_out10_x0 => convert11_dout_net_x3,
    gateway_out11_x1 => mult2_p_net_x3,
    gateway_out34_x0 => convert11_dout_net_x3,
    gateway_out35_x0 => mult4_p_net_x1,
    gateway_out37_x0 => convert11_dout_net_x3,
    gateway_out38_x0 => mult5_p_net_x1,
    gateway_out4_x3 => mult3_p_net_x5,
    gateway_out10 => convert11_dout_net,
    gateway_out11_x0 => mult2_p_net_x4,
    gateway_out34 => convert11_dout_net,
    gateway_out35 => mult4_p_net_x2,
    gateway_out37 => convert11_dout_net,
    gateway_out38 => mult5_p_net_x2,
    gateway_out4_x2 => mult3_p_net_x6
  );
  cav2 : entity work.dsp_cav2 
  port map (
    pa_stream_1 => amp_x0,
    iq_stream_1 => ddci_x0,
    pa_stream_2 => phase_x1,
    pa_stream_3 => channel,
    iq_stream_2 => ddcq_x0,
    iq_stream_3 => ddcchannel_x0,
    iq_stream_4 => ddcsync_x0,
    cav2_p1_chan_sel => register29_q_net_x1,
    cav2_nco_phase_reset => register35_q_net,
    cav2_p2_chan_sel => register30_q_net_x0,
    rf_ref_amp => down_sample1_q_net,
    rf_ref_phase => down_sample_q_net,
    rf_ref_q => down_sample_q_net_x0,
    cav2_nco_phase_adj => register36_q_net,
    rf_ref_i => down_sample1_q_net_x0,
    cav2_p1_window_start => register31_q_net,
    cav2_p1_window_stop => register32_q_net,
    cav2_p1_cal_coef => register1_q_net_x3,
    cav2_p2_cal_coef => register2_q_net_x3,
    cav2_p2_window_start => register33_q_net,
    cav2_p2_window_stop => register34_q_net,
    cav1_p2_if_i => down_sample1_q_net_x8,
    cav1_p2_if_q => down_sample_q_net_x8,
    flo_c1p2_window => convert2_dout_net_x0,
    c1p2_pt_cntr => counter_op_net,
    cav1_p2_dc_tvalid => convert2_dout_net_x1,
    reset => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => clk_net_x0,
    ce_12 => ce_net_x0,
    clk_144 => dest_clk_net,
    ce_144 => dest_ce_net,
    c2p2_pt_window => convert11_dout_net_x1,
    flo_c2p1_window => convert2_dout_net_x5,
    cav2_p1_dc_real => convert1_dout_net_x7,
    cav2_p1_dc_img => convert5_dout_net_x4,
    cav2_p1_dc_freq => convert1_dout_net_x3,
    c2p1_freq_err => convert1_dout_net_x3,
    c2p1_window_func => addsub3_s_net_x2,
    c2p2_pt_cntr => counter_op_net_x0,
    c2p2_integral_logic => convert5_dout_net_x1,
    c2p2_delay_match => register_q_net_x0,
    cav2_p2_delayed_dc_img => dual_port_ram_doutb_net,
    cav2_p2_delayed_dc_real => dual_port_ram1_doutb_net,
    cav2_p1_delayed_dc_img => dual_port_ram_doutb_net_x0,
    cav2_p2_dc_real => convert6_dout_net_x1,
    cav2_p2_dc_img => convert2_dout_net_x9,
    cav2_p2_dc_freq => convert1_dout_net_x2,
    cav2_p2_phase_out => register13_q_net,
    cav2_p2_amp_out => register14_q_net,
    cav2_p2_comparison_i => addsub_s_net_x0,
    cav2_p2_comparison_q => addsub_s_net_x0,
    cav2_p2_comparison_phase => register3_q_net,
    cav2_p1_delayed_dc_real => dual_port_ram1_doutb_net_x0,
    cav2_p2_if_i => down_sample1_q_net_x3,
    cav2_p2_if_q => down_sample_q_net_x3,
    cav2_p2_ref_phase_out => register11_q_net_x4,
    cav2_p2_ref_amp_out => register12_q_net_x1,
    cav2_p2_integrated_ref_i => convert2_dout_net_x7,
    cav2_p2_integrated_ref_q => convert4_dout_net_x3,
    cav2_p2_integrated_i => convert9_dout_net_x5,
    dsp_cav2_reset => convert3_dout_net_x1,
    c2_p1_delay_amt => register2_q_net_x8,
    cav2_p2_integrated_q => convert10_dout_net_x2,
    cav2_p1_windowed_ref_i => mult4_p_net_x0,
    cav2_p1_windowed_ref_q => mult5_p_net,
    cav2_p1_windowed_img => mult2_p_net_x1,
    cav2_p1_windowed_real => mult_p_net_x2,
    cav2_p1_integrated_ref_i => convert2_dout_net_x8,
    cav2_p1_integrated_ref_q => convert4_dout_net_x2,
    cav2_p1_integrated_i => convert9_dout_net_x3,
    cav2_p1_integrated_q => convert10_dout_net_x3,
    cav2_p1_comparison_i => addsub_s_net,
    cav2_p1_ref_phase_out => register11_q_net_x3,
    cav2_p1_comparison_q => addsub_s_net,
    cav2_p1_comparison_phase => register11_q_net_x1,
    c2p1_pt_window => convert11_dout_net_x2,
    c2p1_pt_cntr => counter_op_net_x1,
    c2p1_integral_logic => convert5_dout_net_x2,
    cav2_p1_ref_amp_out => register12_q_net_x3,
    c2_p1_delay_latch => delay2_q_net_x0,
    cav2_p1_phase_out => register13_q_net_x0,
    cav2_p1_amp_out => register14_q_net_x0,
    flo_c2p2_window => convert2_dout_net_x4,
    c2p2_ready => relational2_op_net,
    c2p2_freq_err => convert1_dout_net_x2,
    c2_p2_delay_latch => delay2_q_net,
    c2p2_window_func => addsub3_s_net_x1,
    cav2_nco_fb => convert_dout_net_x2,
    c2_p2_delay_amt => register2_q_net_x6,
    cav2_p2_windowed_img => mult2_p_net_x0,
    cav2_p2_windowed_real => mult_p_net_x0,
    cav2_p2_windowed_ref_i => mult4_p_net,
    cav2_p2_windowed_ref_q => mult5_p_net_x0,
    c2p1_delay_match => register_q_net_x2,
    cav2_sync => down_sample2_q_net_x1,
    c2_ready => logical_y_net_x0,
    c2p1_ready => relational1_op_net,
    cav2_nco_sin => nco_sin_x0,
    cav2_nco_cos => nco_cos_x0,
    c2_stream_valid => relational7_op_net,
    cav2_p1_if_i => down_sample1_q_net_x4,
    cav2_p1_if_q => down_sample_q_net_x4,
    gateway_out10_x1 => mult2_p_net_x2,
    gateway_out15 => convert_dout_net_x6,
    gateway_out16_x0 => convert1_dout_net_x6,
    gateway_out3_x8 => nco_sin_x0,
    gateway_out4_x5 => phase_x2,
    gateway_out5_x6 => nco_cos_x0,
    gateway_out6_x4 => cordic_6_0_m_axis_dout_tdata_real_net_x0,
    gateway_out7_x3 => fir_compiler_7_2_m_axis_data_tdata_real_net_x0,
    gateway_out8_x3 => fir_compiler_7_2_m_axis_data_tvalid_net_x0,
    gateway_out_x1 => inverter_op_net_x2,
    gateway_out1_x8 => convert2_dout_net_x7,
    gateway_out10_x2 => mult4_p_net,
    gateway_out11_x4 => register1_q_net_x11,
    gateway_out12_x0 => convert4_dout_net_x3,
    gateway_out13_x0 => register12_q_net_x6,
    gateway_out14_x0 => mult5_p_net_x0,
    gateway_out15_x1 => register2_q_net_x11,
    gateway_out16_x1 => inverter3_op_net_x2,
    gateway_out17_x0 => accumulator3_q_net_x1,
    gateway_out18_x0 => register1_q_net_x11,
    gateway_out2_x8 => inverter2_op_net_x2,
    gateway_out22_x0 => convert9_dout_net_x5,
    gateway_out23_x0 => convert10_dout_net_x2,
    gateway_out3_x9 => accumulator_q_net_x1,
    gateway_out4_x6 => accumulator2_q_net_x1,
    gateway_out5_x7 => mult2_p_net_x0,
    gateway_out6_x5 => inverter1_op_net_x2,
    gateway_out7_x4 => accumulator1_q_net_x1,
    gateway_out8_x4 => mult_p_net_x0,
    gateway_out9_x1 => register11_q_net_x8,
    gateway_out_x2 => inverter_op_net_x1,
    gateway_out1_x7 => convert2_dout_net_x8,
    gateway_out10_x3 => mult4_p_net_x0,
    gateway_out11_x3 => register1_q_net_x5,
    gateway_out12 => convert4_dout_net_x2,
    gateway_out13 => register12_q_net_x2,
    gateway_out14 => mult5_p_net,
    gateway_out15_x0 => register2_q_net_x5,
    gateway_out16 => inverter3_op_net_x1,
    gateway_out17 => accumulator3_q_net_x2,
    gateway_out18 => register1_q_net_x5,
    gateway_out2_x4 => inverter2_op_net_x1,
    gateway_out22 => convert9_dout_net_x3,
    gateway_out23 => convert10_dout_net_x3,
    gateway_out3_x4 => accumulator_q_net_x2,
    gateway_out4_x3 => accumulator2_q_net_x2,
    gateway_out5_x3 => mult2_p_net_x1,
    gateway_out6_x2 => inverter1_op_net_x1,
    gateway_out7_x1 => accumulator1_q_net_x2,
    gateway_out8_x1 => mult_p_net_x2,
    gateway_out9_x0 => register11_q_net_x2,
    gateway_out1_x3 => delay5_q_net_x1,
    gateway_out2_x3 => delay3_q_net_x0,
    gateway_out27_x1 => relational4_op_net,
    gateway_out28_x1 => relational3_op_net,
    gateway_out29_x1 => convert11_dout_net_x1,
    gateway_out3_x3 => convert7_dout_net_x1,
    gateway_out4_x2 => counter_op_net_x0,
    gateway_out5_x2 => convert5_dout_net_x1,
    gateway_out6_x1 => convert3_dout_net_x1,
    gateway_out7_x0 => register1_q_net_x6,
    gateway_out8 => convert2_dout_net_x4,
    gateway_out9 => delay8_q_net,
    gateway_out24 => convert5_dout_net_x2,
    gateway_out25 => convert10_dout_net_x3,
    gateway_out26 => convert9_dout_net_x3,
    gateway_out6_x0 => convert5_dout_net_x2,
    gateway_out7 => convert4_dout_net_x2,
    gateway_out8_x0 => convert2_dout_net_x8,
    gateway_out24_x0 => convert5_dout_net_x1,
    gateway_out25_x0 => convert10_dout_net_x2,
    gateway_out26_x0 => convert9_dout_net_x5,
    gateway_out6_x3 => convert5_dout_net_x1,
    gateway_out7_x2 => convert4_dout_net_x3,
    gateway_out8_x2 => convert2_dout_net_x7,
    gateway_out44_x0 => mult_p_net_x0,
    gateway_out46_x0 => mult2_p_net_x0,
    gateway_out1_x6 => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    gateway_out11_x2 => convert_dout_net_x2,
    gateway_out19_x0 => mult3_p_net,
    gateway_out2_x7 => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    gateway_out20_x0 => convert2_dout_net_x4,
    gateway_out3_x7 => cordic_6_0_2_m_axis_dout_tdata_phase_net,
    gateway_out5_x4 => convert1_dout_net_x2,
    gateway_out27_x2 => addsub3_s_net,
    gateway_out28_x2 => register_q_net,
    gateway_out29_x2 => register1_q_net_x4,
    gateway_out3_x6 => mult1_p_net,
    gateway_out_x0 => mult3_p_net,
    gateway_out1_x5 => relational1_op_net_x0,
    gateway_out2_x6 => delay5_q_net_x0,
    gateway_out3_x5 => register_q_net,
    gateway_out4_x4 => register1_q_net_x4,
    gateway_out5_x5 => convert3_dout_net_x0,
    gateway_out1_x4 => mult_p_net,
    gateway_out2_x5 => register2_q_net_x4,
    gateway_out44 => mult_p_net_x2,
    gateway_out46 => mult2_p_net_x1,
    gateway_out1_x2 => cordic_6_0_2_m_axis_dout_tdata_phase_net_x0,
    gateway_out11_x0 => convert_dout_net_x3,
    gateway_out19 => mult3_p_net_x1,
    gateway_out2_x2 => cordic_6_0_2_m_axis_dout_tdata_phase_net_x0,
    gateway_out20 => convert2_dout_net_x5,
    gateway_out3_x2 => cordic_6_0_2_m_axis_dout_tdata_phase_net_x0,
    gateway_out5_x1 => convert1_dout_net_x3,
    gateway_out6 => logical_y_net_x2,
    gateway_out27_x0 => addsub3_s_net_x0,
    gateway_out28_x0 => register_q_net_x1,
    gateway_out29_x0 => register1_q_net_x7,
    gateway_out3_x1 => mult1_p_net_x0,
    gateway_out => mult3_p_net_x1,
    gateway_out1_x1 => relational1_op_net_x1,
    gateway_out2_x1 => delay5_q_net_x2,
    gateway_out3_x0 => register_q_net_x1,
    gateway_out4 => register1_q_net_x7,
    gateway_out5_x0 => convert3_dout_net_x2,
    gateway_out1_x0 => mult_p_net_x1,
    gateway_out2_x0 => register2_q_net_x7,
    gateway_out1 => delay5_q_net_x3,
    gateway_out2 => delay3_q_net_x1,
    gateway_out27 => relational4_op_net_x0,
    gateway_out28 => relational3_op_net_x0,
    gateway_out29 => convert11_dout_net_x2,
    gateway_out3 => convert7_dout_net_x2,
    gateway_out5 => convert5_dout_net_x2,
    gateway_out10 => convert11_dout_net_x2,
    gateway_out11 => mult2_p_net_x1,
    gateway_out34 => convert11_dout_net_x2,
    gateway_out35 => mult4_p_net_x0,
    gateway_out37 => convert11_dout_net_x2,
    gateway_out38 => mult5_p_net,
    gateway_out4_x1 => mult3_p_net_x2,
    gateway_out10_x0 => convert11_dout_net_x1,
    gateway_out11_x1 => mult2_p_net_x0,
    gateway_out34_x0 => convert11_dout_net_x1,
    gateway_out35_x0 => mult4_p_net,
    gateway_out37_x0 => convert11_dout_net_x1,
    gateway_out38_x0 => mult5_p_net_x0,
    gateway_out4_x0 => mult3_p_net_x0
  );
  rflib_input : entity work.dsp_rflib_input 
  port map (
    amp => amp_net,
    ddcchannel => ddcchannel_net,
    ddci => ddci_net,
    ddcq => ddcq_net,
    ddcsync => ddcsync_net,
    phase => phase_net,
    phaseampchannel => phaseampchannel_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    pa_out_1 => amp_x0,
    iq_out_1 => ddci_x0,
    pa_out_2 => phase_x1,
    pa_out_3 => channel,
    iq_out_2 => ddcq_x0,
    iq_out_3 => ddcchannel_x0,
    iq_out_4 => ddcsync_x0
  );
  ref : entity work.dsp_ref 
  port map (
    in1_1 => amp_x0,
    in2_1 => ddci_x0,
    in1_2 => phase_x1,
    in1_3 => channel,
    in2_2 => ddcq_x0,
    in2_3 => ddcchannel_x0,
    in2_4 => ddcsync_x0,
    rf_ref_chan_sel => register2_q_net_x2,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_12 => clk_net_x0,
    ce_12 => ce_net_x0,
    ref_amp => down_sample1_q_net,
    ref_phi => down_sample_q_net,
    ref_i => down_sample1_q_net_x0,
    ref_q => down_sample_q_net_x0,
    rf_ref_amp => down_sample1_q_net,
    rf_ref_phase => down_sample_q_net,
    rf_ref_i => down_sample1_q_net_x0,
    rf_ref_q => down_sample_q_net_x0
  );
  constant29 : entity work.sysgen_constant_db61712358 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant29_op_net
  );
  constant30 : entity work.sysgen_constant_999e36f3c0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant30_op_net
  );
  constant37 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant37_op_net
  );
  constant38 : entity work.sysgen_constant_0272b06a93 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant38_op_net
  );
  logical : entity work.sysgen_logical_e6aac555ad 
  port map (
    clr => '0',
    d0 => logical_y_net,
    d1 => logical_y_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    y => logical_y_net_x1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp_default_clock_driver is
  port (
    dsp_sysclk : in std_logic;
    dsp_sysce : in std_logic;
    dsp_sysclr : in std_logic;
    dsp_clk1 : out std_logic;
    dsp_ce1 : out std_logic;
    dsp_clk12 : out std_logic;
    dsp_ce12 : out std_logic;
    dsp_clk144 : out std_logic;
    dsp_ce144 : out std_logic
  );
end dsp_default_clock_driver;
architecture structural of dsp_default_clock_driver is 
begin
  clockdriver_x1 : entity work.xlclockdriver 
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
  clockdriver_x0 : entity work.xlclockdriver 
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
  clockdriver : entity work.xlclockdriver 
  generic map (
    period => 144,
    log_2_period => 8
  )
  port map (
    sysclk => dsp_sysclk,
    sysce => dsp_sysce,
    sysclr => dsp_sysclr,
    clk => dsp_clk144,
    ce => dsp_ce144
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;
entity dsp is
  port (
    amp : in std_logic_vector( 18-1 downto 0 );
    ddcchannel : in std_logic_vector( 4-1 downto 0 );
    ddci : in std_logic_vector( 18-1 downto 0 );
    ddcq : in std_logic_vector( 18-1 downto 0 );
    ddcsync : in std_logic_vector( 1-1 downto 0 );
    phase : in std_logic_vector( 18-1 downto 0 );
    phaseampchannel : in std_logic_vector( 4-1 downto 0 );
    phaseampsync : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    diag10data : out std_logic_vector( 32-1 downto 0 );
    diag10fixed : out std_logic_vector( 1-1 downto 0 );
    diag10sevr : out std_logic_vector( 2-1 downto 0 );
    diag11data : out std_logic_vector( 32-1 downto 0 );
    diag11fixed : out std_logic_vector( 1-1 downto 0 );
    diag11sevr : out std_logic_vector( 2-1 downto 0 );
    diag12data : out std_logic_vector( 32-1 downto 0 );
    diag12fixed : out std_logic_vector( 1-1 downto 0 );
    diag12sevr : out std_logic_vector( 2-1 downto 0 );
    diag13data : out std_logic_vector( 32-1 downto 0 );
    diag13fixed : out std_logic_vector( 1-1 downto 0 );
    diag13sevr : out std_logic_vector( 2-1 downto 0 );
    diag14data : out std_logic_vector( 32-1 downto 0 );
    diag14fixed : out std_logic_vector( 1-1 downto 0 );
    diag14sevr : out std_logic_vector( 2-1 downto 0 );
    diag15data : out std_logic_vector( 32-1 downto 0 );
    diag15fixed : out std_logic_vector( 1-1 downto 0 );
    diag15sevr : out std_logic_vector( 2-1 downto 0 );
    diag16data : out std_logic_vector( 32-1 downto 0 );
    diag16fixed : out std_logic_vector( 1-1 downto 0 );
    diag16sevr : out std_logic_vector( 2-1 downto 0 );
    diag17data : out std_logic_vector( 32-1 downto 0 );
    diag17fixed : out std_logic_vector( 1-1 downto 0 );
    diag17sevr : out std_logic_vector( 2-1 downto 0 );
    diag18data : out std_logic_vector( 32-1 downto 0 );
    diag18fixed : out std_logic_vector( 1-1 downto 0 );
    diag18sevr : out std_logic_vector( 2-1 downto 0 );
    diag19data : out std_logic_vector( 32-1 downto 0 );
    diag19fixed : out std_logic_vector( 1-1 downto 0 );
    diag19sevr : out std_logic_vector( 2-1 downto 0 );
    diag1data : out std_logic_vector( 32-1 downto 0 );
    diag1fixed : out std_logic_vector( 1-1 downto 0 );
    diag1sevr : out std_logic_vector( 2-1 downto 0 );
    diag20data : out std_logic_vector( 32-1 downto 0 );
    diag20fixed : out std_logic_vector( 1-1 downto 0 );
    diag20sevr : out std_logic_vector( 2-1 downto 0 );
    diag21data : out std_logic_vector( 32-1 downto 0 );
    diag21fixed : out std_logic_vector( 1-1 downto 0 );
    diag21sevr : out std_logic_vector( 2-1 downto 0 );
    diag22data : out std_logic_vector( 32-1 downto 0 );
    diag22fixed : out std_logic_vector( 1-1 downto 0 );
    diag22sevr : out std_logic_vector( 2-1 downto 0 );
    diag23data : out std_logic_vector( 32-1 downto 0 );
    diag23fixed : out std_logic_vector( 1-1 downto 0 );
    diag23sevr : out std_logic_vector( 2-1 downto 0 );
    diag24data : out std_logic_vector( 32-1 downto 0 );
    diag24fixed : out std_logic_vector( 1-1 downto 0 );
    diag24sevr : out std_logic_vector( 2-1 downto 0 );
    diag25data : out std_logic_vector( 32-1 downto 0 );
    diag25fixed : out std_logic_vector( 1-1 downto 0 );
    diag25sevr : out std_logic_vector( 2-1 downto 0 );
    diag26data : out std_logic_vector( 32-1 downto 0 );
    diag26fixed : out std_logic_vector( 1-1 downto 0 );
    diag26sevr : out std_logic_vector( 2-1 downto 0 );
    diag27data : out std_logic_vector( 32-1 downto 0 );
    diag27fixed : out std_logic_vector( 1-1 downto 0 );
    diag27sevr : out std_logic_vector( 2-1 downto 0 );
    diag28data : out std_logic_vector( 32-1 downto 0 );
    diag28fixed : out std_logic_vector( 1-1 downto 0 );
    diag28sevr : out std_logic_vector( 2-1 downto 0 );
    diag29data : out std_logic_vector( 32-1 downto 0 );
    diag29fixed : out std_logic_vector( 1-1 downto 0 );
    diag29sevr : out std_logic_vector( 2-1 downto 0 );
    diag2data : out std_logic_vector( 32-1 downto 0 );
    diag2fixed : out std_logic_vector( 1-1 downto 0 );
    diag2sevr : out std_logic_vector( 2-1 downto 0 );
    diag30data : out std_logic_vector( 32-1 downto 0 );
    diag30fixed : out std_logic_vector( 1-1 downto 0 );
    diag30sevr : out std_logic_vector( 2-1 downto 0 );
    diag31data : out std_logic_vector( 32-1 downto 0 );
    diag31fixed : out std_logic_vector( 1-1 downto 0 );
    diag31sevr : out std_logic_vector( 2-1 downto 0 );
    diag3data : out std_logic_vector( 32-1 downto 0 );
    diag3fixed : out std_logic_vector( 1-1 downto 0 );
    diag3sevr : out std_logic_vector( 2-1 downto 0 );
    diag4data : out std_logic_vector( 32-1 downto 0 );
    diag4fixed : out std_logic_vector( 1-1 downto 0 );
    diag4sevr : out std_logic_vector( 2-1 downto 0 );
    diag5data : out std_logic_vector( 32-1 downto 0 );
    diag5fixed : out std_logic_vector( 1-1 downto 0 );
    diag5sevr : out std_logic_vector( 2-1 downto 0 );
    diag6data : out std_logic_vector( 32-1 downto 0 );
    diag6fixed : out std_logic_vector( 1-1 downto 0 );
    diag6sevr : out std_logic_vector( 2-1 downto 0 );
    diag7data : out std_logic_vector( 32-1 downto 0 );
    diag7fixed : out std_logic_vector( 1-1 downto 0 );
    diag7sevr : out std_logic_vector( 2-1 downto 0 );
    diag8data : out std_logic_vector( 32-1 downto 0 );
    diag8fixed : out std_logic_vector( 1-1 downto 0 );
    diag8sevr : out std_logic_vector( 2-1 downto 0 );
    diag9data : out std_logic_vector( 32-1 downto 0 );
    diag9fixed : out std_logic_vector( 1-1 downto 0 );
    diag9sevr : out std_logic_vector( 2-1 downto 0 );
    diagnclk : out std_logic_vector( 1-1 downto 0 );
    diagnrst : out std_logic_vector( 1-1 downto 0 );
    diagnsync : out std_logic_vector( 1-1 downto 0 );
    wfdata_0 : out std_logic_vector( 32-1 downto 0 );
    wfdata_1 : out std_logic_vector( 32-1 downto 0 );
    wfdata_2 : out std_logic_vector( 32-1 downto 0 );
    wfdata_3 : out std_logic_vector( 32-1 downto 0 );
    wfdata_4 : out std_logic_vector( 32-1 downto 0 );
    wfdata_5 : out std_logic_vector( 32-1 downto 0 );
    wfdata_6 : out std_logic_vector( 32-1 downto 0 );
    wfdata_7 : out std_logic_vector( 32-1 downto 0 );
    wfvalid_0 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_1 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_2 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_3 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_4 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_5 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_6 : out std_logic_vector( 1-1 downto 0 );
    wfvalid_7 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x7 : out std_logic_vector( 26-1 downto 0 );
    gateway_out34 : out std_logic_vector( 18-1 downto 0 );
    gateway_out35 : out std_logic_vector( 18-1 downto 0 );
    gateway_out39 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out40 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x1 : out std_logic_vector( 26-1 downto 0 );
    gateway_out10_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out10_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out16_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out3_x1 : out std_logic_vector( 26-1 downto 0 );
    gateway_out4_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x2 : out std_logic_vector( 26-1 downto 0 );
    gateway_out6_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out7_x1 : out std_logic_vector( 34-1 downto 0 );
    gateway_out8_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out10_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out14_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out18 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out5 : out std_logic_vector( 18-1 downto 0 );
    gateway_out6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7 : out std_logic_vector( 32-1 downto 0 );
    gateway_out8 : out std_logic_vector( 18-1 downto 0 );
    gateway_out9 : out std_logic_vector( 32-1 downto 0 );
    gateway_out : out std_logic_vector( 1-1 downto 0 );
    gateway_out1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out10 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13 : out std_logic_vector( 32-1 downto 0 );
    gateway_out14 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out5_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out6_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out8_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out9_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out1_x7 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2_x6 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out4_x5 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out6_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out8_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out9_x1 : out std_logic_vector( 16-1 downto 0 );
    gateway_out24 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25 : out std_logic_vector( 20-1 downto 0 );
    gateway_out26 : out std_logic_vector( 20-1 downto 0 );
    gateway_out6_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x3 : out std_logic_vector( 20-1 downto 0 );
    gateway_out8_x3 : out std_logic_vector( 20-1 downto 0 );
    gateway_out_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out24_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out26_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out6_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x4 : out std_logic_vector( 20-1 downto 0 );
    gateway_out8_x4 : out std_logic_vector( 20-1 downto 0 );
    gateway_out44_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out46_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out20 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x3 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5_x3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out27 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x5 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x4 : out std_logic_vector( 10-1 downto 0 );
    gateway_out44 : out std_logic_vector( 18-1 downto 0 );
    gateway_out46 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x6 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x2 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x5 : out std_logic_vector( 18-1 downto 0 );
    gateway_out20_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x5 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x15 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5_x6 : out std_logic_vector( 32-1 downto 0 );
    gateway_out6_x8 : out std_logic_vector( 1-1 downto 0 );
    gateway_out27_x4 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x16 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x6 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x17 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x15 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x17 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x16 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x13 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x18 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x14 : out std_logic_vector( 10-1 downto 0 );
    gateway_out1_x19 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2_x16 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x18 : out std_logic_vector( 1-1 downto 0 );
    gateway_out5_x14 : out std_logic_vector( 1-1 downto 0 );
    gateway_out10_x8 : out std_logic_vector( 1-1 downto 0 );
    gateway_out11_x9 : out std_logic_vector( 18-1 downto 0 );
    gateway_out32_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out34_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out35_x3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out36_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out37_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out38_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x12 : out std_logic_vector( 18-1 downto 0 );
    gateway_out10_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out11_x7 : out std_logic_vector( 18-1 downto 0 );
    gateway_out32_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out34_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out35_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out36_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out37_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out38_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x13 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x15 : out std_logic_vector( 1-1 downto 0 );
    gateway_out39_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out40_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out10_x6 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out16_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x15 : out std_logic_vector( 26-1 downto 0 );
    gateway_out4_x14 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x12 : out std_logic_vector( 26-1 downto 0 );
    gateway_out6_x7 : out std_logic_vector( 18-1 downto 0 );
    gateway_out7_x6 : out std_logic_vector( 34-1 downto 0 );
    gateway_out8_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x16 : out std_logic_vector( 20-1 downto 0 );
    gateway_out10_x7 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x8 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12_x1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out14_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out18_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x19 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3_x21 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4_x19 : out std_logic_vector( 32-1 downto 0 );
    gateway_out5_x17 : out std_logic_vector( 18-1 downto 0 );
    gateway_out6_x12 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x10 : out std_logic_vector( 32-1 downto 0 );
    gateway_out8_x10 : out std_logic_vector( 18-1 downto 0 );
    gateway_out9_x4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x7 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x21 : out std_logic_vector( 20-1 downto 0 );
    gateway_out10_x9 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x10 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13_x2 : out std_logic_vector( 32-1 downto 0 );
    gateway_out14_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17_x2 : out std_logic_vector( 32-1 downto 0 );
    gateway_out18_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x18 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22_x1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23_x1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3_x19 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4_x17 : out std_logic_vector( 32-1 downto 0 );
    gateway_out5_x15 : out std_logic_vector( 18-1 downto 0 );
    gateway_out6_x9 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x7 : out std_logic_vector( 32-1 downto 0 );
    gateway_out8_x7 : out std_logic_vector( 18-1 downto 0 );
    gateway_out9_x2 : out std_logic_vector( 32-1 downto 0 );
    gateway_out1_x20 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2_x17 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x20 : out std_logic_vector( 1-1 downto 0 );
    gateway_out4_x18 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5_x16 : out std_logic_vector( 1-1 downto 0 );
    gateway_out6_x10 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x8 : out std_logic_vector( 1-1 downto 0 );
    gateway_out8_x8 : out std_logic_vector( 1-1 downto 0 );
    gateway_out9_x3 : out std_logic_vector( 16-1 downto 0 );
    gateway_out24_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25_x3 : out std_logic_vector( 20-1 downto 0 );
    gateway_out26_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out6_x11 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x9 : out std_logic_vector( 20-1 downto 0 );
    gateway_out8_x9 : out std_logic_vector( 20-1 downto 0 );
    gateway_out24_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out26_x1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out6_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x5 : out std_logic_vector( 20-1 downto 0 );
    gateway_out8_x5 : out std_logic_vector( 20-1 downto 0 );
    gateway_out44_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out46_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x12 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x11 : out std_logic_vector( 18-1 downto 0 );
    gateway_out20_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x11 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x8 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5_x9 : out std_logic_vector( 32-1 downto 0 );
    gateway_out27_x3 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28_x3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29_x3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x13 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x13 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x12 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x14 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x9 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x10 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x14 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x13 : out std_logic_vector( 10-1 downto 0 );
    gateway_out44_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out46_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x8 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out2_x7 : out std_logic_vector( 18-1 downto 0 );
    gateway_out20_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x9 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x6 : out std_logic_vector( 16-1 downto 0 );
    gateway_out5_x7 : out std_logic_vector( 32-1 downto 0 );
    gateway_out6_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out27_x1 : out std_logic_vector( 19-1 downto 0 );
    gateway_out28_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out29_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x8 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out1_x9 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x8 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x10 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x7 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x8 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x10 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x9 : out std_logic_vector( 10-1 downto 0 );
    gateway_out1_x11 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2_x10 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x12 : out std_logic_vector( 1-1 downto 0 );
    gateway_out5_x11 : out std_logic_vector( 1-1 downto 0 );
    gateway_out10_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out11_x5 : out std_logic_vector( 18-1 downto 0 );
    gateway_out32 : out std_logic_vector( 18-1 downto 0 );
    gateway_out34_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out35_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out36 : out std_logic_vector( 18-1 downto 0 );
    gateway_out37 : out std_logic_vector( 1-1 downto 0 );
    gateway_out38 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x10 : out std_logic_vector( 18-1 downto 0 );
    gateway_out10_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out11_x6 : out std_logic_vector( 18-1 downto 0 );
    gateway_out32_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out34_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out35_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out36_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out37_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out38_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x11 : out std_logic_vector( 18-1 downto 0 )
  );
end dsp;
architecture structural of dsp is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "dsp,sysgen_core_2017_4,{,compilation=Synthesized Checkpoint,block_icon_display=Default,family=kintexu,part=xcku040,speed=-2-e,package=ffva1156,synthesis_language=vhdl,hdl_library=work,synthesis_strategy=Flow_PerfOptimized_high,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=1,ce_clr=0,clock_period=4.90196,system_simulink_period=4.90196e-09,waveform_viewer=1,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=6e-05,abs=16,accum=16,addsub=66,ceprobe=10,cmpy_v6_0=4,cmult=40,constant=208,convert=242,cordic_v6_0=19,counter=17,dds_compiler_v6_0=2,delay=180,divide=8,dpram=8,dsamp=59,fir_compiler_v7_2=2,inv=74,logical=73,mult=38,mux=31,register=338,relational=90,}";
  signal cav1_nco_phase_adj : std_logic_vector( 32-1 downto 0 );
  signal cav1_nco_phase_reset : std_logic_vector( 1-1 downto 0 );
  signal cav1_p1_cal_coef : std_logic_vector( 18-1 downto 0 );
  signal cav1_p1_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal cav1_p1_window_start : std_logic_vector( 16-1 downto 0 );
  signal cav1_p1_window_stop : std_logic_vector( 16-1 downto 0 );
  signal cav1_p2_cal_coef : std_logic_vector( 18-1 downto 0 );
  signal cav1_p2_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal cav1_p2_window_start : std_logic_vector( 16-1 downto 0 );
  signal cav1_p2_window_stop : std_logic_vector( 16-1 downto 0 );
  signal cav2_nco_phase_adj : std_logic_vector( 32-1 downto 0 );
  signal cav2_nco_phase_reset : std_logic_vector( 1-1 downto 0 );
  signal cav2_p1_cal_coef : std_logic_vector( 18-1 downto 0 );
  signal cav2_p1_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal cav2_p1_window_start : std_logic_vector( 16-1 downto 0 );
  signal cav2_p1_window_stop : std_logic_vector( 16-1 downto 0 );
  signal cav2_p2_cal_coef : std_logic_vector( 18-1 downto 0 );
  signal cav2_p2_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal cav2_p2_window_start : std_logic_vector( 16-1 downto 0 );
  signal cav2_p2_window_stop : std_logic_vector( 16-1 downto 0 );
  signal ref_window_start : std_logic_vector( 16-1 downto 0 );
  signal ref_window_stop : std_logic_vector( 16-1 downto 0 );
  signal rf_ref_chan_sel : std_logic_vector( 4-1 downto 0 );
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
  signal clk_12_net : std_logic;
  signal ce_12_net : std_logic;
  signal clk_144_net : std_logic;
  signal ce_144_net : std_logic;
begin
  dsp_default_clock_driver : entity work.dsp_default_clock_driver 
  port map (
    dsp_sysclk => clk,
    dsp_sysce => '1',
    dsp_sysclr => '0',
    dsp_clk1 => clk_1_net,
    dsp_ce1 => ce_1_net,
    dsp_clk12 => clk_12_net,
    dsp_ce12 => ce_12_net,
    dsp_clk144 => clk_144_net,
    dsp_ce144 => ce_144_net
  );
  dsp_struct : entity work.dsp_struct 
  port map (
    amp => amp,
    ddcchannel => ddcchannel,
    ddci => ddci,
    ddcq => ddcq,
    ddcsync => ddcsync,
    phase => phase,
    phaseampchannel => phaseampchannel,
    phaseampsync => phaseampsync,
    cav1_nco_phase_adj => cav1_nco_phase_adj,
    cav1_nco_phase_reset => cav1_nco_phase_reset,
    cav1_p1_cal_coef => cav1_p1_cal_coef,
    cav1_p1_chan_sel => cav1_p1_chan_sel,
    cav1_p1_window_start => cav1_p1_window_start,
    cav1_p1_window_stop => cav1_p1_window_stop,
    cav1_p2_cal_coef => cav1_p2_cal_coef,
    cav1_p2_chan_sel => cav1_p2_chan_sel,
    cav1_p2_window_start => cav1_p2_window_start,
    cav1_p2_window_stop => cav1_p2_window_stop,
    cav2_nco_phase_adj => cav2_nco_phase_adj,
    cav2_nco_phase_reset => cav2_nco_phase_reset,
    cav2_p1_cal_coef => cav2_p1_cal_coef,
    cav2_p1_chan_sel => cav2_p1_chan_sel,
    cav2_p1_window_start => cav2_p1_window_start,
    cav2_p1_window_stop => cav2_p1_window_stop,
    cav2_p2_cal_coef => cav2_p2_cal_coef,
    cav2_p2_chan_sel => cav2_p2_chan_sel,
    cav2_p2_window_start => cav2_p2_window_start,
    cav2_p2_window_stop => cav2_p2_window_stop,
    ref_window_start => ref_window_start,
    ref_window_stop => ref_window_stop,
    rf_ref_chan_sel => rf_ref_chan_sel,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    clk_12 => clk_12_net,
    ce_12 => ce_12_net,
    clk_144 => clk_144_net,
    ce_144 => ce_144_net,
    diag10data => diag10data,
    diag10fixed => diag10fixed,
    diag10sevr => diag10sevr,
    diag11data => diag11data,
    diag11fixed => diag11fixed,
    diag11sevr => diag11sevr,
    diag12data => diag12data,
    diag12fixed => diag12fixed,
    diag12sevr => diag12sevr,
    diag13data => diag13data,
    diag13fixed => diag13fixed,
    diag13sevr => diag13sevr,
    diag14data => diag14data,
    diag14fixed => diag14fixed,
    diag14sevr => diag14sevr,
    diag15data => diag15data,
    diag15fixed => diag15fixed,
    diag15sevr => diag15sevr,
    diag16data => diag16data,
    diag16fixed => diag16fixed,
    diag16sevr => diag16sevr,
    diag17data => diag17data,
    diag17fixed => diag17fixed,
    diag17sevr => diag17sevr,
    diag18data => diag18data,
    diag18fixed => diag18fixed,
    diag18sevr => diag18sevr,
    diag19data => diag19data,
    diag19fixed => diag19fixed,
    diag19sevr => diag19sevr,
    diag1data => diag1data,
    diag1fixed => diag1fixed,
    diag1sevr => diag1sevr,
    diag20data => diag20data,
    diag20fixed => diag20fixed,
    diag20sevr => diag20sevr,
    diag21data => diag21data,
    diag21fixed => diag21fixed,
    diag21sevr => diag21sevr,
    diag22data => diag22data,
    diag22fixed => diag22fixed,
    diag22sevr => diag22sevr,
    diag23data => diag23data,
    diag23fixed => diag23fixed,
    diag23sevr => diag23sevr,
    diag24data => diag24data,
    diag24fixed => diag24fixed,
    diag24sevr => diag24sevr,
    diag25data => diag25data,
    diag25fixed => diag25fixed,
    diag25sevr => diag25sevr,
    diag26data => diag26data,
    diag26fixed => diag26fixed,
    diag26sevr => diag26sevr,
    diag27data => diag27data,
    diag27fixed => diag27fixed,
    diag27sevr => diag27sevr,
    diag28data => diag28data,
    diag28fixed => diag28fixed,
    diag28sevr => diag28sevr,
    diag29data => diag29data,
    diag29fixed => diag29fixed,
    diag29sevr => diag29sevr,
    diag2data => diag2data,
    diag2fixed => diag2fixed,
    diag2sevr => diag2sevr,
    diag30data => diag30data,
    diag30fixed => diag30fixed,
    diag30sevr => diag30sevr,
    diag31data => diag31data,
    diag31fixed => diag31fixed,
    diag31sevr => diag31sevr,
    diag3data => diag3data,
    diag3fixed => diag3fixed,
    diag3sevr => diag3sevr,
    diag4data => diag4data,
    diag4fixed => diag4fixed,
    diag4sevr => diag4sevr,
    diag5data => diag5data,
    diag5fixed => diag5fixed,
    diag5sevr => diag5sevr,
    diag6data => diag6data,
    diag6fixed => diag6fixed,
    diag6sevr => diag6sevr,
    diag7data => diag7data,
    diag7fixed => diag7fixed,
    diag7sevr => diag7sevr,
    diag8data => diag8data,
    diag8fixed => diag8fixed,
    diag8sevr => diag8sevr,
    diag9data => diag9data,
    diag9fixed => diag9fixed,
    diag9sevr => diag9sevr,
    diagnclk => diagnclk,
    diagnrst => diagnrst,
    diagnsync => diagnsync,
    wfdata_0 => wfdata_0,
    wfdata_1 => wfdata_1,
    wfdata_2 => wfdata_2,
    wfdata_3 => wfdata_3,
    wfdata_4 => wfdata_4,
    wfdata_5 => wfdata_5,
    wfdata_6 => wfdata_6,
    wfdata_7 => wfdata_7,
    wfvalid_0 => wfvalid_0,
    wfvalid_1 => wfvalid_1,
    wfvalid_2 => wfvalid_2,
    wfvalid_3 => wfvalid_3,
    wfvalid_4 => wfvalid_4,
    wfvalid_5 => wfvalid_5,
    wfvalid_6 => wfvalid_6,
    wfvalid_7 => wfvalid_7,
    gateway_out25_x1 => gateway_out25_x1,
    gateway_out3_x1 => gateway_out3_x7,
    gateway_out34 => gateway_out34,
    gateway_out35 => gateway_out35,
    gateway_out39 => gateway_out39,
    gateway_out4_x1 => gateway_out4_x1,
    gateway_out40 => gateway_out40,
    gateway_out5_x0 => gateway_out5_x1,
    gateway_out10_x0 => gateway_out10_x0,
    gateway_out1_x0 => gateway_out1_x0,
    gateway_out1_x1 => gateway_out1_x1,
    gateway_out10_x1 => gateway_out10_x1,
    gateway_out15_x0 => gateway_out15_x0,
    gateway_out16_x1 => gateway_out16_x0,
    gateway_out2_x1 => gateway_out2_x1,
    gateway_out3_x2 => gateway_out3_x1,
    gateway_out4_x2 => gateway_out4_x2,
    gateway_out5_x1 => gateway_out5_x2,
    gateway_out6_x0 => gateway_out6_x1,
    gateway_out7_x0 => gateway_out7_x1,
    gateway_out8_x0 => gateway_out8_x1,
    gateway_out_x0 => gateway_out_x0,
    gateway_out1_x2 => gateway_out1_x2,
    gateway_out10_x2 => gateway_out10_x2,
    gateway_out11_x0 => gateway_out11_x0,
    gateway_out12_x0 => gateway_out12_x0,
    gateway_out13_x0 => gateway_out13_x0,
    gateway_out14_x0 => gateway_out14_x0,
    gateway_out15_x1 => gateway_out15_x1,
    gateway_out16 => gateway_out16_x1,
    gateway_out17 => gateway_out17_x0,
    gateway_out18 => gateway_out18,
    gateway_out2 => gateway_out2,
    gateway_out22 => gateway_out22,
    gateway_out23 => gateway_out23,
    gateway_out3 => gateway_out3,
    gateway_out4 => gateway_out4,
    gateway_out5 => gateway_out5,
    gateway_out6 => gateway_out6,
    gateway_out7 => gateway_out7,
    gateway_out8 => gateway_out8,
    gateway_out9 => gateway_out9,
    gateway_out => gateway_out,
    gateway_out1 => gateway_out1,
    gateway_out10 => gateway_out10,
    gateway_out11 => gateway_out11,
    gateway_out12 => gateway_out12,
    gateway_out13 => gateway_out13,
    gateway_out14 => gateway_out14,
    gateway_out15 => gateway_out15,
    gateway_out16_x0 => gateway_out16,
    gateway_out17_x0 => gateway_out17,
    gateway_out2_x0 => gateway_out2_x0,
    gateway_out22_x0 => gateway_out22_x0,
    gateway_out23_x0 => gateway_out23_x0,
    gateway_out3_x0 => gateway_out3_x0,
    gateway_out4_x0 => gateway_out4_x0,
    gateway_out5_x5 => gateway_out5_x0,
    gateway_out6_x1 => gateway_out6_x0,
    gateway_out7_x3 => gateway_out7_x0,
    gateway_out8_x2 => gateway_out8_x0,
    gateway_out9_x0 => gateway_out9_x0,
    gateway_out1_x7 => gateway_out1_x7,
    gateway_out2_x6 => gateway_out2_x6,
    gateway_out27_x0 => gateway_out27_x0,
    gateway_out28_x0 => gateway_out28_x0,
    gateway_out29_x0 => gateway_out29_x0,
    gateway_out3_x6 => gateway_out3_x6,
    gateway_out4_x5 => gateway_out4_x5,
    gateway_out5_x4 => gateway_out5_x5,
    gateway_out6_x2 => gateway_out6_x2,
    gateway_out7_x2 => gateway_out7_x2,
    gateway_out8_x3 => gateway_out8_x2,
    gateway_out9_x1 => gateway_out9_x1,
    gateway_out24 => gateway_out24,
    gateway_out25 => gateway_out25,
    gateway_out26 => gateway_out26,
    gateway_out6_x3 => gateway_out6_x3,
    gateway_out7_x4 => gateway_out7_x3,
    gateway_out8_x4 => gateway_out8_x3,
    gateway_out_x2 => gateway_out_x2,
    gateway_out24_x0 => gateway_out24_x0,
    gateway_out25_x0 => gateway_out25_x0,
    gateway_out26_x0 => gateway_out26_x0,
    gateway_out6_x4 => gateway_out6_x4,
    gateway_out7_x1 => gateway_out7_x4,
    gateway_out8_x1 => gateway_out8_x4,
    gateway_out44 => gateway_out44_x0,
    gateway_out46 => gateway_out46_x0,
    gateway_out1_x3 => gateway_out1_x4,
    gateway_out11_x1 => gateway_out11_x1,
    gateway_out19 => gateway_out19,
    gateway_out2_x3 => gateway_out2_x3,
    gateway_out20 => gateway_out20,
    gateway_out3_x4 => gateway_out3_x2,
    gateway_out4_x3 => gateway_out4_x3,
    gateway_out5_x2 => gateway_out5_x3,
    gateway_out27 => gateway_out27,
    gateway_out28 => gateway_out28,
    gateway_out29 => gateway_out29,
    gateway_out3_x3 => gateway_out3_x3,
    gateway_out_x1 => gateway_out_x1,
    gateway_out1_x4 => gateway_out1_x3,
    gateway_out2_x4 => gateway_out2_x2,
    gateway_out3_x5 => gateway_out3_x4,
    gateway_out4_x4 => gateway_out4_x4,
    gateway_out5_x3 => gateway_out5_x4,
    gateway_out1_x5 => gateway_out1_x5,
    gateway_out2_x5 => gateway_out2_x4,
    gateway_out44_x0 => gateway_out44,
    gateway_out46_x0 => gateway_out46,
    gateway_out1_x6 => gateway_out1_x6,
    gateway_out11_x2 => gateway_out11_x2,
    gateway_out19_x0 => gateway_out19_x0,
    gateway_out2_x2 => gateway_out2_x5,
    gateway_out20_x2 => gateway_out20_x0,
    gateway_out3_x15 => gateway_out3_x5,
    gateway_out4_x15 => gateway_out4_x15,
    gateway_out5_x13 => gateway_out5_x6,
    gateway_out6_x9 => gateway_out6_x8,
    gateway_out27_x4 => gateway_out27_x4,
    gateway_out28_x4 => gateway_out28_x4,
    gateway_out29_x4 => gateway_out29_x4,
    gateway_out3_x16 => gateway_out3_x16,
    gateway_out_x6 => gateway_out_x6,
    gateway_out1_x16 => gateway_out1_x17,
    gateway_out2_x14 => gateway_out2_x15,
    gateway_out3_x17 => gateway_out3_x17,
    gateway_out4_x16 => gateway_out4_x16,
    gateway_out5_x12 => gateway_out5_x13,
    gateway_out1_x17 => gateway_out1_x18,
    gateway_out2_x15 => gateway_out2_x14,
    gateway_out1_x18 => gateway_out1_x19,
    gateway_out2_x16 => gateway_out2_x16,
    gateway_out27_x5 => gateway_out27_x5,
    gateway_out28_x5 => gateway_out28_x5,
    gateway_out29_x5 => gateway_out29_x5,
    gateway_out3_x18 => gateway_out3_x18,
    gateway_out5_x14 => gateway_out5_x14,
    gateway_out10_x7 => gateway_out10_x8,
    gateway_out11_x8 => gateway_out11_x9,
    gateway_out32_x2 => gateway_out32_x2,
    gateway_out34_x3 => gateway_out34_x3,
    gateway_out35_x2 => gateway_out35_x3,
    gateway_out36_x1 => gateway_out36_x2,
    gateway_out37_x1 => gateway_out37_x2,
    gateway_out38_x1 => gateway_out38_x1,
    gateway_out4_x13 => gateway_out4_x12,
    gateway_out10_x5 => gateway_out10_x5,
    gateway_out11_x7 => gateway_out11_x7,
    gateway_out32_x1 => gateway_out32_x1,
    gateway_out34_x2 => gateway_out34_x2,
    gateway_out35_x3 => gateway_out35_x2,
    gateway_out36_x2 => gateway_out36_x1,
    gateway_out37_x2 => gateway_out37_x1,
    gateway_out38_x2 => gateway_out38_x2,
    gateway_out4_x12 => gateway_out4_x13,
    gateway_out1_x15 => gateway_out1_x15,
    gateway_out39_x0 => gateway_out39_x0,
    gateway_out40_x0 => gateway_out40_x0,
    gateway_out10_x6 => gateway_out10_x6,
    gateway_out15_x2 => gateway_out15_x2,
    gateway_out16_x2 => gateway_out16_x2,
    gateway_out3_x14 => gateway_out3_x15,
    gateway_out4_x14 => gateway_out4_x14,
    gateway_out5_x11 => gateway_out5_x12,
    gateway_out6_x8 => gateway_out6_x7,
    gateway_out7_x7 => gateway_out7_x6,
    gateway_out8_x7 => gateway_out8_x6,
    gateway_out_x5 => gateway_out_x5,
    gateway_out1_x20 => gateway_out1_x16,
    gateway_out10_x8 => gateway_out10_x7,
    gateway_out11_x9 => gateway_out11_x8,
    gateway_out12_x1 => gateway_out12_x1,
    gateway_out13_x1 => gateway_out13_x1,
    gateway_out14_x2 => gateway_out14_x1,
    gateway_out15_x3 => gateway_out15_x3,
    gateway_out16_x4 => gateway_out16_x3,
    gateway_out17_x2 => gateway_out17_x1,
    gateway_out18_x1 => gateway_out18_x0,
    gateway_out2_x19 => gateway_out2_x19,
    gateway_out22_x2 => gateway_out22_x2,
    gateway_out23_x2 => gateway_out23_x2,
    gateway_out3_x21 => gateway_out3_x21,
    gateway_out4_x19 => gateway_out4_x19,
    gateway_out5_x17 => gateway_out5_x17,
    gateway_out6_x12 => gateway_out6_x12,
    gateway_out7_x10 => gateway_out7_x10,
    gateway_out8_x10 => gateway_out8_x10,
    gateway_out9_x4 => gateway_out9_x4,
    gateway_out_x7 => gateway_out_x7,
    gateway_out1_x21 => gateway_out1_x21,
    gateway_out10_x9 => gateway_out10_x9,
    gateway_out11_x10 => gateway_out11_x10,
    gateway_out12_x2 => gateway_out12_x2,
    gateway_out13_x2 => gateway_out13_x2,
    gateway_out14_x1 => gateway_out14_x2,
    gateway_out15_x4 => gateway_out15_x4,
    gateway_out16_x3 => gateway_out16_x4,
    gateway_out17_x1 => gateway_out17_x2,
    gateway_out18_x0 => gateway_out18_x1,
    gateway_out2_x17 => gateway_out2_x18,
    gateway_out22_x1 => gateway_out22_x1,
    gateway_out23_x1 => gateway_out23_x1,
    gateway_out3_x19 => gateway_out3_x19,
    gateway_out4_x17 => gateway_out4_x17,
    gateway_out5_x15 => gateway_out5_x15,
    gateway_out6_x10 => gateway_out6_x9,
    gateway_out7_x8 => gateway_out7_x7,
    gateway_out8_x8 => gateway_out8_x7,
    gateway_out9_x2 => gateway_out9_x2,
    gateway_out1_x19 => gateway_out1_x20,
    gateway_out2_x18 => gateway_out2_x17,
    gateway_out27_x6 => gateway_out27_x6,
    gateway_out28_x6 => gateway_out28_x6,
    gateway_out29_x6 => gateway_out29_x6,
    gateway_out3_x20 => gateway_out3_x20,
    gateway_out4_x18 => gateway_out4_x18,
    gateway_out5_x16 => gateway_out5_x16,
    gateway_out6_x11 => gateway_out6_x10,
    gateway_out7_x9 => gateway_out7_x8,
    gateway_out8_x9 => gateway_out8_x8,
    gateway_out9_x3 => gateway_out9_x3,
    gateway_out24_x2 => gateway_out24_x2,
    gateway_out25_x3 => gateway_out25_x3,
    gateway_out26_x2 => gateway_out26_x2,
    gateway_out6_x6 => gateway_out6_x11,
    gateway_out7_x5 => gateway_out7_x9,
    gateway_out8_x5 => gateway_out8_x9,
    gateway_out24_x1 => gateway_out24_x1,
    gateway_out25_x2 => gateway_out25_x2,
    gateway_out26_x1 => gateway_out26_x1,
    gateway_out6_x7 => gateway_out6_x6,
    gateway_out7_x6 => gateway_out7_x5,
    gateway_out8_x6 => gateway_out8_x5,
    gateway_out44_x2 => gateway_out44_x2,
    gateway_out46_x2 => gateway_out46_x2,
    gateway_out1_x13 => gateway_out1_x12,
    gateway_out11_x4 => gateway_out11_x4,
    gateway_out19_x2 => gateway_out19_x2,
    gateway_out2_x12 => gateway_out2_x11,
    gateway_out20_x1 => gateway_out20_x2,
    gateway_out3_x10 => gateway_out3_x11,
    gateway_out4_x9 => gateway_out4_x8,
    gateway_out5_x9 => gateway_out5_x9,
    gateway_out27_x2 => gateway_out27_x3,
    gateway_out28_x2 => gateway_out28_x3,
    gateway_out29_x2 => gateway_out29_x3,
    gateway_out3_x11 => gateway_out3_x13,
    gateway_out_x4 => gateway_out_x4,
    gateway_out1_x14 => gateway_out1_x13,
    gateway_out2_x13 => gateway_out2_x12,
    gateway_out3_x12 => gateway_out3_x14,
    gateway_out4_x7 => gateway_out4_x9,
    gateway_out5_x6 => gateway_out5_x10,
    gateway_out1_x8 => gateway_out1_x14,
    gateway_out2_x7 => gateway_out2_x13,
    gateway_out44_x1 => gateway_out44_x1,
    gateway_out46_x1 => gateway_out46_x1,
    gateway_out1_x9 => gateway_out1_x8,
    gateway_out11_x3 => gateway_out11_x3,
    gateway_out19_x1 => gateway_out19_x1,
    gateway_out2_x8 => gateway_out2_x7,
    gateway_out20_x0 => gateway_out20_x1,
    gateway_out3_x7 => gateway_out3_x9,
    gateway_out4_x6 => gateway_out4_x6,
    gateway_out5_x7 => gateway_out5_x7,
    gateway_out6_x5 => gateway_out6_x5,
    gateway_out27_x1 => gateway_out27_x1,
    gateway_out28_x1 => gateway_out28_x1,
    gateway_out29_x1 => gateway_out29_x1,
    gateway_out3_x8 => gateway_out3_x8,
    gateway_out_x3 => gateway_out_x3,
    gateway_out1_x10 => gateway_out1_x9,
    gateway_out2_x9 => gateway_out2_x8,
    gateway_out3_x9 => gateway_out3_x10,
    gateway_out4_x8 => gateway_out4_x7,
    gateway_out5_x8 => gateway_out5_x8,
    gateway_out1_x11 => gateway_out1_x10,
    gateway_out2_x10 => gateway_out2_x9,
    gateway_out1_x12 => gateway_out1_x11,
    gateway_out2_x11 => gateway_out2_x10,
    gateway_out27_x3 => gateway_out27_x2,
    gateway_out28_x3 => gateway_out28_x2,
    gateway_out29_x3 => gateway_out29_x2,
    gateway_out3_x13 => gateway_out3_x12,
    gateway_out5_x10 => gateway_out5_x11,
    gateway_out10_x3 => gateway_out10_x3,
    gateway_out11_x5 => gateway_out11_x5,
    gateway_out32 => gateway_out32,
    gateway_out34_x0 => gateway_out34_x1,
    gateway_out35_x0 => gateway_out35_x0,
    gateway_out36 => gateway_out36,
    gateway_out37 => gateway_out37,
    gateway_out38 => gateway_out38,
    gateway_out4_x10 => gateway_out4_x10,
    gateway_out10_x4 => gateway_out10_x4,
    gateway_out11_x6 => gateway_out11_x6,
    gateway_out32_x0 => gateway_out32_x0,
    gateway_out34_x1 => gateway_out34_x0,
    gateway_out35_x1 => gateway_out35_x1,
    gateway_out36_x0 => gateway_out36_x0,
    gateway_out37_x0 => gateway_out37_x0,
    gateway_out38_x0 => gateway_out38_x0,
    gateway_out4_x11 => gateway_out4_x11
  );
end structural;
