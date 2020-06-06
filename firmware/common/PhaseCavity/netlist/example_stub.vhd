-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library work;
entity example_stub is
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
end example_stub;
architecture structural of example_stub is 
begin
  sysgen_dut : entity work.example 
  port map (
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
    gateway_out4 => gateway_out4,
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
