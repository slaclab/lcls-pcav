-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library work;
entity appmodel_stub is
  port (
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
    diag1data : out std_logic_vector( 32-1 downto 0 );
    diag1fixed : out std_logic_vector( 1-1 downto 0 );
    diag1sevr : out std_logic_vector( 2-1 downto 0 );
    diag2data : out std_logic_vector( 32-1 downto 0 );
    diag2fixed : out std_logic_vector( 1-1 downto 0 );
    diag2sevr : out std_logic_vector( 2-1 downto 0 );
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
    diag9fixed : out std_logic_vector( 1-1 downto 0 );
    diag10fixed : out std_logic_vector( 1-1 downto 0 );
    diag11fixed : out std_logic_vector( 1-1 downto 0 );
    diag12fixed : out std_logic_vector( 1-1 downto 0 );
    diag13fixed : out std_logic_vector( 1-1 downto 0 );
    diag14fixed : out std_logic_vector( 1-1 downto 0 );
    diag15fixed : out std_logic_vector( 1-1 downto 0 );
    diag16fixed : out std_logic_vector( 1-1 downto 0 );
    diag26fixed : out std_logic_vector( 1-1 downto 0 );
    diag27fixed : out std_logic_vector( 1-1 downto 0 );
    diag28fixed : out std_logic_vector( 1-1 downto 0 );
    diag29fixed : out std_logic_vector( 1-1 downto 0 );
    diag30fixed : out std_logic_vector( 1-1 downto 0 );
    diag31fixed : out std_logic_vector( 1-1 downto 0 );
    diag17fixed : out std_logic_vector( 1-1 downto 0 );
    diag18fixed : out std_logic_vector( 1-1 downto 0 );
    diag19fixed : out std_logic_vector( 1-1 downto 0 );
    diag20fixed : out std_logic_vector( 1-1 downto 0 );
    diag21fixed : out std_logic_vector( 1-1 downto 0 );
    diag22fixed : out std_logic_vector( 1-1 downto 0 );
    diag23fixed : out std_logic_vector( 1-1 downto 0 );
    diag24fixed : out std_logic_vector( 1-1 downto 0 );
    diag25fixed : out std_logic_vector( 1-1 downto 0 );
    diag9sevr : out std_logic_vector( 2-1 downto 0 );
    diag10sevr : out std_logic_vector( 2-1 downto 0 );
    diag11sevr : out std_logic_vector( 2-1 downto 0 );
    diag12sevr : out std_logic_vector( 2-1 downto 0 );
    diag13sevr : out std_logic_vector( 2-1 downto 0 );
    diag14sevr : out std_logic_vector( 2-1 downto 0 );
    diag15sevr : out std_logic_vector( 2-1 downto 0 );
    diag16sevr : out std_logic_vector( 2-1 downto 0 );
    diag26sevr : out std_logic_vector( 2-1 downto 0 );
    diag27sevr : out std_logic_vector( 2-1 downto 0 );
    diag28sevr : out std_logic_vector( 2-1 downto 0 );
    diag29sevr : out std_logic_vector( 2-1 downto 0 );
    diag30sevr : out std_logic_vector( 2-1 downto 0 );
    diag31sevr : out std_logic_vector( 2-1 downto 0 );
    diag17sevr : out std_logic_vector( 2-1 downto 0 );
    diag18sevr : out std_logic_vector( 2-1 downto 0 );
    diag19sevr : out std_logic_vector( 2-1 downto 0 );
    diag20sevr : out std_logic_vector( 2-1 downto 0 );
    diag21sevr : out std_logic_vector( 2-1 downto 0 );
    diag22sevr : out std_logic_vector( 2-1 downto 0 );
    diag23sevr : out std_logic_vector( 2-1 downto 0 );
    diag24sevr : out std_logic_vector( 2-1 downto 0 );
    diag25sevr : out std_logic_vector( 2-1 downto 0 );
    gateway_out3_x0 : out std_logic_vector( 26-1 downto 0 );
    gateway_out39 : out std_logic_vector( 18-1 downto 0 );
    gateway_out4_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out40 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x0 : out std_logic_vector( 26-1 downto 0 );
    gateway_out10_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out16_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x1 : out std_logic_vector( 26-1 downto 0 );
    gateway_out4_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x1 : out std_logic_vector( 26-1 downto 0 );
    gateway_out6 : out std_logic_vector( 18-1 downto 0 );
    gateway_out7 : out std_logic_vector( 34-1 downto 0 );
    gateway_out8 : out std_logic_vector( 1-1 downto 0 );
    gateway_out : out std_logic_vector( 1-1 downto 0 );
    gateway_out1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out10 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13 : out std_logic_vector( 32-1 downto 0 );
    gateway_out14 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out5 : out std_logic_vector( 18-1 downto 0 );
    gateway_out6_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out8_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out9 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out10_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12_x1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out14_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x2 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x8 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3_x9 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out5_x7 : out std_logic_vector( 18-1 downto 0 );
    gateway_out6_x7 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x7 : out std_logic_vector( 32-1 downto 0 );
    gateway_out8_x9 : out std_logic_vector( 18-1 downto 0 );
    gateway_out9_x2 : out std_logic_vector( 32-1 downto 0 );
    gateway_out1_x9 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2_x9 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x10 : out std_logic_vector( 1-1 downto 0 );
    gateway_out5_x8 : out std_logic_vector( 1-1 downto 0 );
    gateway_out24_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out26_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out6_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x5 : out std_logic_vector( 20-1 downto 0 );
    gateway_out8_x7 : out std_logic_vector( 20-1 downto 0 );
    gateway_out24_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25_x1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out26_x1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out6_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x6 : out std_logic_vector( 20-1 downto 0 );
    gateway_out8_x8 : out std_logic_vector( 20-1 downto 0 );
    gateway_out1_x8 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2_x7 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x8 : out std_logic_vector( 1-1 downto 0 );
    gateway_out5_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out32_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out34_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out35_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out36_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out37_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out38_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out32_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out34_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out35_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out36_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out37_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out38_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x5 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19_x1 : out std_logic_vector( 33-1 downto 0 );
    gateway_out20_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out8_x11 : out std_logic_vector( 63-1 downto 0 );
    gateway_out27_x5 : out std_logic_vector( 32-1 downto 0 );
    gateway_out28_x5 : out std_logic_vector( 33-1 downto 0 );
    gateway_out29_x5 : out std_logic_vector( 33-1 downto 0 );
    gateway_out3_x12 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x6 : out std_logic_vector( 33-1 downto 0 );
    gateway_out1_x12 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x14 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x13 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x13 : out std_logic_vector( 10-1 downto 0 );
    gateway_out11_x6 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19_x2 : out std_logic_vector( 33-1 downto 0 );
    gateway_out20_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out8_x12 : out std_logic_vector( 63-1 downto 0 );
    gateway_out27_x6 : out std_logic_vector( 32-1 downto 0 );
    gateway_out28_x6 : out std_logic_vector( 33-1 downto 0 );
    gateway_out29_x6 : out std_logic_vector( 33-1 downto 0 );
    gateway_out3_x13 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x5 : out std_logic_vector( 33-1 downto 0 );
    gateway_out1_x14 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x10 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x10 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x11 : out std_logic_vector( 10-1 downto 0 );
    gateway_out39_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out40_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out10_x3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out16_x3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out3_x11 : out std_logic_vector( 26-1 downto 0 );
    gateway_out4_x5 : out std_logic_vector( 18-1 downto 0 );
    gateway_out5_x9 : out std_logic_vector( 26-1 downto 0 );
    gateway_out6_x8 : out std_logic_vector( 18-1 downto 0 );
    gateway_out7_x8 : out std_logic_vector( 34-1 downto 0 );
    gateway_out8_x10 : out std_logic_vector( 1-1 downto 0 );
    gateway_out_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x11 : out std_logic_vector( 20-1 downto 0 );
    gateway_out10_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13_x2 : out std_logic_vector( 32-1 downto 0 );
    gateway_out14_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17_x2 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x12 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3_x3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4_x3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out5_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out6_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out8_x4 : out std_logic_vector( 18-1 downto 0 );
    gateway_out9_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x3 : out std_logic_vector( 20-1 downto 0 );
    gateway_out10_x2 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out12_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out13_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out14_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out15_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out16_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out17_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out22_x1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out23_x1 : out std_logic_vector( 20-1 downto 0 );
    gateway_out3_x4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out4_x4 : out std_logic_vector( 32-1 downto 0 );
    gateway_out5_x3 : out std_logic_vector( 18-1 downto 0 );
    gateway_out6_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out8_x1 : out std_logic_vector( 18-1 downto 0 );
    gateway_out9_x0 : out std_logic_vector( 32-1 downto 0 );
    gateway_out1_x1 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2_x0 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out5_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out24 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25 : out std_logic_vector( 20-1 downto 0 );
    gateway_out26 : out std_logic_vector( 20-1 downto 0 );
    gateway_out6_x2 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out8_x2 : out std_logic_vector( 20-1 downto 0 );
    gateway_out24_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out25_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out26_x0 : out std_logic_vector( 20-1 downto 0 );
    gateway_out6_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out7_x3 : out std_logic_vector( 20-1 downto 0 );
    gateway_out8_x3 : out std_logic_vector( 20-1 downto 0 );
    gateway_out1_x2 : out std_logic_vector( 16-1 downto 0 );
    gateway_out2_x1 : out std_logic_vector( 16-1 downto 0 );
    gateway_out27_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out28_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out29_x1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out3_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out5_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out32 : out std_logic_vector( 18-1 downto 0 );
    gateway_out34 : out std_logic_vector( 1-1 downto 0 );
    gateway_out35_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out36 : out std_logic_vector( 18-1 downto 0 );
    gateway_out37 : out std_logic_vector( 1-1 downto 0 );
    gateway_out38 : out std_logic_vector( 18-1 downto 0 );
    gateway_out32_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out34_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out35 : out std_logic_vector( 18-1 downto 0 );
    gateway_out36_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out37_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out38_x0 : out std_logic_vector( 18-1 downto 0 );
    gateway_out11_x3 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19_x0 : out std_logic_vector( 33-1 downto 0 );
    gateway_out20_x0 : out std_logic_vector( 1-1 downto 0 );
    gateway_out8_x6 : out std_logic_vector( 63-1 downto 0 );
    gateway_out27_x2 : out std_logic_vector( 32-1 downto 0 );
    gateway_out28_x2 : out std_logic_vector( 33-1 downto 0 );
    gateway_out29_x2 : out std_logic_vector( 33-1 downto 0 );
    gateway_out3_x7 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x3 : out std_logic_vector( 33-1 downto 0 );
    gateway_out1_x4 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x3 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x5 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x4 : out std_logic_vector( 10-1 downto 0 );
    gateway_out11_x2 : out std_logic_vector( 32-1 downto 0 );
    gateway_out19 : out std_logic_vector( 33-1 downto 0 );
    gateway_out20 : out std_logic_vector( 1-1 downto 0 );
    gateway_out8_x5 : out std_logic_vector( 63-1 downto 0 );
    gateway_out27_x1 : out std_logic_vector( 32-1 downto 0 );
    gateway_out28_x0 : out std_logic_vector( 33-1 downto 0 );
    gateway_out29_x0 : out std_logic_vector( 33-1 downto 0 );
    gateway_out3_x5 : out std_logic_vector( 32-1 downto 0 );
    gateway_out_x2 : out std_logic_vector( 33-1 downto 0 );
    gateway_out1_x6 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2_x5 : out std_logic_vector( 1-1 downto 0 );
    gateway_out1_x7 : out std_logic_vector( 32-1 downto 0 );
    gateway_out2_x6 : out std_logic_vector( 10-1 downto 0 );
    axi_lite_s_axi_awready : out std_logic;
    axi_lite_s_axi_wready : out std_logic;
    axi_lite_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    axi_lite_s_axi_bvalid : out std_logic;
    axi_lite_s_axi_arready : out std_logic;
    axi_lite_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    axi_lite_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    axi_lite_s_axi_rvalid : out std_logic
  );
end appmodel_stub;
architecture structural of appmodel_stub is 
begin
  sysgen_dut : entity work.appmodel 
  port map (
    amp => amp,
    ddcchannel => ddcchannel,
    ddci => ddci,
    ddcq => ddcq,
    ddcsync => ddcsync,
    phase => phase,
    phaseampchannel => phaseampchannel,
    phaseampsync => phaseampsync,
    dsp_clk => dsp_clk,
    axi_lite_clk => axi_lite_clk,
    axi_lite_aresetn => axi_lite_aresetn,
    axi_lite_s_axi_awaddr => axi_lite_s_axi_awaddr,
    axi_lite_s_axi_awvalid => axi_lite_s_axi_awvalid,
    axi_lite_s_axi_wdata => axi_lite_s_axi_wdata,
    axi_lite_s_axi_wstrb => axi_lite_s_axi_wstrb,
    axi_lite_s_axi_wvalid => axi_lite_s_axi_wvalid,
    axi_lite_s_axi_bready => axi_lite_s_axi_bready,
    axi_lite_s_axi_araddr => axi_lite_s_axi_araddr,
    axi_lite_s_axi_arvalid => axi_lite_s_axi_arvalid,
    axi_lite_s_axi_rready => axi_lite_s_axi_rready,
    diag1data => diag1data,
    diag1fixed => diag1fixed,
    diag1sevr => diag1sevr,
    diag2data => diag2data,
    diag2fixed => diag2fixed,
    diag2sevr => diag2sevr,
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
    diag9fixed => diag9fixed,
    diag10fixed => diag10fixed,
    diag11fixed => diag11fixed,
    diag12fixed => diag12fixed,
    diag13fixed => diag13fixed,
    diag14fixed => diag14fixed,
    diag15fixed => diag15fixed,
    diag16fixed => diag16fixed,
    diag26fixed => diag26fixed,
    diag27fixed => diag27fixed,
    diag28fixed => diag28fixed,
    diag29fixed => diag29fixed,
    diag30fixed => diag30fixed,
    diag31fixed => diag31fixed,
    diag17fixed => diag17fixed,
    diag18fixed => diag18fixed,
    diag19fixed => diag19fixed,
    diag20fixed => diag20fixed,
    diag21fixed => diag21fixed,
    diag22fixed => diag22fixed,
    diag23fixed => diag23fixed,
    diag24fixed => diag24fixed,
    diag25fixed => diag25fixed,
    diag9sevr => diag9sevr,
    diag10sevr => diag10sevr,
    diag11sevr => diag11sevr,
    diag12sevr => diag12sevr,
    diag13sevr => diag13sevr,
    diag14sevr => diag14sevr,
    diag15sevr => diag15sevr,
    diag16sevr => diag16sevr,
    diag26sevr => diag26sevr,
    diag27sevr => diag27sevr,
    diag28sevr => diag28sevr,
    diag29sevr => diag29sevr,
    diag30sevr => diag30sevr,
    diag31sevr => diag31sevr,
    diag17sevr => diag17sevr,
    diag18sevr => diag18sevr,
    diag19sevr => diag19sevr,
    diag20sevr => diag20sevr,
    diag21sevr => diag21sevr,
    diag22sevr => diag22sevr,
    diag23sevr => diag23sevr,
    diag24sevr => diag24sevr,
    diag25sevr => diag25sevr,
    gateway_out3_x0 => gateway_out3_x0,
    gateway_out39 => gateway_out39,
    gateway_out4_x1 => gateway_out4_x1,
    gateway_out40 => gateway_out40,
    gateway_out5_x0 => gateway_out5_x0,
    gateway_out10_x1 => gateway_out10_x1,
    gateway_out15_x0 => gateway_out15_x0,
    gateway_out16_x0 => gateway_out16_x0,
    gateway_out3_x1 => gateway_out3_x1,
    gateway_out4_x2 => gateway_out4_x2,
    gateway_out5_x1 => gateway_out5_x1,
    gateway_out6 => gateway_out6,
    gateway_out7 => gateway_out7,
    gateway_out8 => gateway_out8,
    gateway_out => gateway_out,
    gateway_out1 => gateway_out1,
    gateway_out10 => gateway_out10,
    gateway_out11_x0 => gateway_out11_x0,
    gateway_out12 => gateway_out12,
    gateway_out13 => gateway_out13,
    gateway_out14 => gateway_out14,
    gateway_out15 => gateway_out15,
    gateway_out16 => gateway_out16,
    gateway_out17 => gateway_out17,
    gateway_out2 => gateway_out2,
    gateway_out22 => gateway_out22,
    gateway_out23 => gateway_out23,
    gateway_out3 => gateway_out3,
    gateway_out4 => gateway_out4,
    gateway_out5 => gateway_out5,
    gateway_out6_x0 => gateway_out6_x0,
    gateway_out7_x0 => gateway_out7_x0,
    gateway_out8_x0 => gateway_out8_x0,
    gateway_out9 => gateway_out9,
    gateway_out_x0 => gateway_out_x0,
    gateway_out1_x0 => gateway_out1_x0,
    gateway_out10_x0 => gateway_out10_x0,
    gateway_out11 => gateway_out11,
    gateway_out12_x1 => gateway_out12_x1,
    gateway_out13_x1 => gateway_out13_x1,
    gateway_out14_x1 => gateway_out14_x1,
    gateway_out15_x2 => gateway_out15_x2,
    gateway_out16_x2 => gateway_out16_x2,
    gateway_out17_x1 => gateway_out17_x1,
    gateway_out2_x8 => gateway_out2_x8,
    gateway_out22_x2 => gateway_out22_x2,
    gateway_out23_x2 => gateway_out23_x2,
    gateway_out3_x9 => gateway_out3_x9,
    gateway_out4_x0 => gateway_out4_x0,
    gateway_out5_x7 => gateway_out5_x7,
    gateway_out6_x7 => gateway_out6_x7,
    gateway_out7_x7 => gateway_out7_x7,
    gateway_out8_x9 => gateway_out8_x9,
    gateway_out9_x2 => gateway_out9_x2,
    gateway_out1_x9 => gateway_out1_x9,
    gateway_out2_x9 => gateway_out2_x9,
    gateway_out27_x4 => gateway_out27_x4,
    gateway_out28_x4 => gateway_out28_x4,
    gateway_out29_x4 => gateway_out29_x4,
    gateway_out3_x10 => gateway_out3_x10,
    gateway_out5_x8 => gateway_out5_x8,
    gateway_out24_x2 => gateway_out24_x2,
    gateway_out25_x2 => gateway_out25_x2,
    gateway_out26_x2 => gateway_out26_x2,
    gateway_out6_x6 => gateway_out6_x6,
    gateway_out7_x5 => gateway_out7_x5,
    gateway_out8_x7 => gateway_out8_x7,
    gateway_out24_x1 => gateway_out24_x1,
    gateway_out25_x1 => gateway_out25_x1,
    gateway_out26_x1 => gateway_out26_x1,
    gateway_out6_x5 => gateway_out6_x5,
    gateway_out7_x6 => gateway_out7_x6,
    gateway_out8_x8 => gateway_out8_x8,
    gateway_out1_x8 => gateway_out1_x8,
    gateway_out2_x7 => gateway_out2_x7,
    gateway_out27_x3 => gateway_out27_x3,
    gateway_out28_x3 => gateway_out28_x3,
    gateway_out29_x3 => gateway_out29_x3,
    gateway_out3_x8 => gateway_out3_x8,
    gateway_out5_x6 => gateway_out5_x6,
    gateway_out32_x1 => gateway_out32_x1,
    gateway_out34_x1 => gateway_out34_x1,
    gateway_out35_x1 => gateway_out35_x1,
    gateway_out36_x1 => gateway_out36_x1,
    gateway_out37_x1 => gateway_out37_x1,
    gateway_out38_x1 => gateway_out38_x1,
    gateway_out32_x2 => gateway_out32_x2,
    gateway_out34_x2 => gateway_out34_x2,
    gateway_out35_x2 => gateway_out35_x2,
    gateway_out36_x2 => gateway_out36_x2,
    gateway_out37_x2 => gateway_out37_x2,
    gateway_out38_x2 => gateway_out38_x2,
    gateway_out11_x5 => gateway_out11_x5,
    gateway_out19_x1 => gateway_out19_x1,
    gateway_out20_x1 => gateway_out20_x1,
    gateway_out8_x11 => gateway_out8_x11,
    gateway_out27_x5 => gateway_out27_x5,
    gateway_out28_x5 => gateway_out28_x5,
    gateway_out29_x5 => gateway_out29_x5,
    gateway_out3_x12 => gateway_out3_x12,
    gateway_out_x6 => gateway_out_x6,
    gateway_out1_x12 => gateway_out1_x12,
    gateway_out2_x14 => gateway_out2_x14,
    gateway_out1_x13 => gateway_out1_x13,
    gateway_out2_x13 => gateway_out2_x13,
    gateway_out11_x6 => gateway_out11_x6,
    gateway_out19_x2 => gateway_out19_x2,
    gateway_out20_x2 => gateway_out20_x2,
    gateway_out8_x12 => gateway_out8_x12,
    gateway_out27_x6 => gateway_out27_x6,
    gateway_out28_x6 => gateway_out28_x6,
    gateway_out29_x6 => gateway_out29_x6,
    gateway_out3_x13 => gateway_out3_x13,
    gateway_out_x5 => gateway_out_x5,
    gateway_out1_x14 => gateway_out1_x14,
    gateway_out2_x10 => gateway_out2_x10,
    gateway_out1_x10 => gateway_out1_x10,
    gateway_out2_x11 => gateway_out2_x11,
    gateway_out39_x0 => gateway_out39_x0,
    gateway_out40_x0 => gateway_out40_x0,
    gateway_out10_x3 => gateway_out10_x3,
    gateway_out15_x3 => gateway_out15_x3,
    gateway_out16_x3 => gateway_out16_x3,
    gateway_out3_x11 => gateway_out3_x11,
    gateway_out4_x5 => gateway_out4_x5,
    gateway_out5_x9 => gateway_out5_x9,
    gateway_out6_x8 => gateway_out6_x8,
    gateway_out7_x8 => gateway_out7_x8,
    gateway_out8_x10 => gateway_out8_x10,
    gateway_out_x4 => gateway_out_x4,
    gateway_out1_x11 => gateway_out1_x11,
    gateway_out10_x4 => gateway_out10_x4,
    gateway_out11_x4 => gateway_out11_x4,
    gateway_out12_x2 => gateway_out12_x2,
    gateway_out13_x2 => gateway_out13_x2,
    gateway_out14_x2 => gateway_out14_x2,
    gateway_out15_x4 => gateway_out15_x4,
    gateway_out16_x4 => gateway_out16_x4,
    gateway_out17_x2 => gateway_out17_x2,
    gateway_out2_x12 => gateway_out2_x12,
    gateway_out22_x0 => gateway_out22_x0,
    gateway_out23_x0 => gateway_out23_x0,
    gateway_out3_x3 => gateway_out3_x3,
    gateway_out4_x3 => gateway_out4_x3,
    gateway_out5_x4 => gateway_out5_x4,
    gateway_out6_x4 => gateway_out6_x4,
    gateway_out7_x4 => gateway_out7_x4,
    gateway_out8_x4 => gateway_out8_x4,
    gateway_out9_x1 => gateway_out9_x1,
    gateway_out_x1 => gateway_out_x1,
    gateway_out1_x3 => gateway_out1_x3,
    gateway_out10_x2 => gateway_out10_x2,
    gateway_out11_x1 => gateway_out11_x1,
    gateway_out12_x0 => gateway_out12_x0,
    gateway_out13_x0 => gateway_out13_x0,
    gateway_out14_x0 => gateway_out14_x0,
    gateway_out15_x1 => gateway_out15_x1,
    gateway_out16_x1 => gateway_out16_x1,
    gateway_out17_x0 => gateway_out17_x0,
    gateway_out2_x2 => gateway_out2_x2,
    gateway_out22_x1 => gateway_out22_x1,
    gateway_out23_x1 => gateway_out23_x1,
    gateway_out3_x4 => gateway_out3_x4,
    gateway_out4_x4 => gateway_out4_x4,
    gateway_out5_x3 => gateway_out5_x3,
    gateway_out6_x1 => gateway_out6_x1,
    gateway_out7_x1 => gateway_out7_x1,
    gateway_out8_x1 => gateway_out8_x1,
    gateway_out9_x0 => gateway_out9_x0,
    gateway_out1_x1 => gateway_out1_x1,
    gateway_out2_x0 => gateway_out2_x0,
    gateway_out27 => gateway_out27,
    gateway_out28 => gateway_out28,
    gateway_out29 => gateway_out29,
    gateway_out3_x2 => gateway_out3_x2,
    gateway_out5_x2 => gateway_out5_x2,
    gateway_out24 => gateway_out24,
    gateway_out25 => gateway_out25,
    gateway_out26 => gateway_out26,
    gateway_out6_x2 => gateway_out6_x2,
    gateway_out7_x2 => gateway_out7_x2,
    gateway_out8_x2 => gateway_out8_x2,
    gateway_out24_x0 => gateway_out24_x0,
    gateway_out25_x0 => gateway_out25_x0,
    gateway_out26_x0 => gateway_out26_x0,
    gateway_out6_x3 => gateway_out6_x3,
    gateway_out7_x3 => gateway_out7_x3,
    gateway_out8_x3 => gateway_out8_x3,
    gateway_out1_x2 => gateway_out1_x2,
    gateway_out2_x1 => gateway_out2_x1,
    gateway_out27_x0 => gateway_out27_x0,
    gateway_out28_x1 => gateway_out28_x1,
    gateway_out29_x1 => gateway_out29_x1,
    gateway_out3_x6 => gateway_out3_x6,
    gateway_out5_x5 => gateway_out5_x5,
    gateway_out32 => gateway_out32,
    gateway_out34 => gateway_out34,
    gateway_out35_x0 => gateway_out35_x0,
    gateway_out36 => gateway_out36,
    gateway_out37 => gateway_out37,
    gateway_out38 => gateway_out38,
    gateway_out32_x0 => gateway_out32_x0,
    gateway_out34_x0 => gateway_out34_x0,
    gateway_out35 => gateway_out35,
    gateway_out36_x0 => gateway_out36_x0,
    gateway_out37_x0 => gateway_out37_x0,
    gateway_out38_x0 => gateway_out38_x0,
    gateway_out11_x3 => gateway_out11_x3,
    gateway_out19_x0 => gateway_out19_x0,
    gateway_out20_x0 => gateway_out20_x0,
    gateway_out8_x6 => gateway_out8_x6,
    gateway_out27_x2 => gateway_out27_x2,
    gateway_out28_x2 => gateway_out28_x2,
    gateway_out29_x2 => gateway_out29_x2,
    gateway_out3_x7 => gateway_out3_x7,
    gateway_out_x3 => gateway_out_x3,
    gateway_out1_x4 => gateway_out1_x4,
    gateway_out2_x3 => gateway_out2_x3,
    gateway_out1_x5 => gateway_out1_x5,
    gateway_out2_x4 => gateway_out2_x4,
    gateway_out11_x2 => gateway_out11_x2,
    gateway_out19 => gateway_out19,
    gateway_out20 => gateway_out20,
    gateway_out8_x5 => gateway_out8_x5,
    gateway_out27_x1 => gateway_out27_x1,
    gateway_out28_x0 => gateway_out28_x0,
    gateway_out29_x0 => gateway_out29_x0,
    gateway_out3_x5 => gateway_out3_x5,
    gateway_out_x2 => gateway_out_x2,
    gateway_out1_x6 => gateway_out1_x6,
    gateway_out2_x5 => gateway_out2_x5,
    gateway_out1_x7 => gateway_out1_x7,
    gateway_out2_x6 => gateway_out2_x6,
    axi_lite_s_axi_awready => axi_lite_s_axi_awready,
    axi_lite_s_axi_wready => axi_lite_s_axi_wready,
    axi_lite_s_axi_bresp => axi_lite_s_axi_bresp,
    axi_lite_s_axi_bvalid => axi_lite_s_axi_bvalid,
    axi_lite_s_axi_arready => axi_lite_s_axi_arready,
    axi_lite_s_axi_rdata => axi_lite_s_axi_rdata,
    axi_lite_s_axi_rresp => axi_lite_s_axi_rresp,
    axi_lite_s_axi_rvalid => axi_lite_s_axi_rvalid
  );
end structural;
