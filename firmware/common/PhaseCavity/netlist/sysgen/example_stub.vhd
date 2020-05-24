-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library work;
entity example_stub is
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
    dsp_cav1_p1_amp_out_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p1_amp_out_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_amp_out_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_amp_out_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_amp_out_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_amp_out_s_axi_bready : in std_logic;
    dsp_cav1_p1_amp_out_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p1_amp_out_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_amp_out_s_axi_rready : in std_logic;
    dsp_cav1_p1_chan_sel_s_axi_awaddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_chan_sel_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_chan_sel_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_chan_sel_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_chan_sel_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_chan_sel_s_axi_bready : in std_logic;
    dsp_cav1_p1_chan_sel_s_axi_araddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_chan_sel_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_chan_sel_s_axi_rready : in std_logic;
    dsp_cav1_p1_comparison_i_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p1_comparison_i_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_comparison_i_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_comparison_i_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_comparison_i_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_comparison_i_s_axi_bready : in std_logic;
    dsp_cav1_p1_comparison_i_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p1_comparison_i_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_comparison_i_s_axi_rready : in std_logic;
    dsp_cav1_p1_comparison_phase_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p1_comparison_phase_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_comparison_phase_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_comparison_phase_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_comparison_phase_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_comparison_phase_s_axi_bready : in std_logic;
    dsp_cav1_p1_comparison_phase_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p1_comparison_phase_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_comparison_phase_s_axi_rready : in std_logic;
    dsp_cav1_p1_comparison_q_s_axi_awaddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p1_comparison_q_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_comparison_q_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_comparison_q_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_comparison_q_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_comparison_q_s_axi_bready : in std_logic;
    dsp_cav1_p1_comparison_q_s_axi_araddr : in std_logic_vector( 9-1 downto 0 );
    dsp_cav1_p1_comparison_q_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_comparison_q_s_axi_rready : in std_logic;
    dsp_cav1_p1_dc_freq_s_axi_awaddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_dc_freq_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_dc_freq_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_dc_freq_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_dc_freq_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_dc_freq_s_axi_bready : in std_logic;
    dsp_cav1_p1_dc_freq_s_axi_araddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_dc_freq_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_dc_freq_s_axi_rready : in std_logic;
    dsp_cav1_p1_dc_img_s_axi_awaddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_dc_img_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_dc_img_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_dc_img_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_dc_img_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_dc_img_s_axi_bready : in std_logic;
    dsp_cav1_p1_dc_img_s_axi_araddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_dc_img_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_dc_img_s_axi_rready : in std_logic;
    dsp_cav1_p1_dc_real_s_axi_awaddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_dc_real_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_dc_real_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_dc_real_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_dc_real_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_dc_real_s_axi_bready : in std_logic;
    dsp_cav1_p1_dc_real_s_axi_araddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_dc_real_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_dc_real_s_axi_rready : in std_logic;
    dsp_cav1_p1_if_amp_s_axi_awaddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_if_amp_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_if_amp_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_if_amp_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_if_amp_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_if_amp_s_axi_bready : in std_logic;
    dsp_cav1_p1_if_amp_s_axi_araddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_if_amp_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_if_amp_s_axi_rready : in std_logic;
    dsp_cav1_p1_if_i_s_axi_awaddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_if_i_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_if_i_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_if_i_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_if_i_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_if_i_s_axi_bready : in std_logic;
    dsp_cav1_p1_if_i_s_axi_araddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_if_i_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_if_i_s_axi_rready : in std_logic;
    dsp_cav1_p1_if_phase_s_axi_awaddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_if_phase_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_if_phase_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_if_phase_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_if_phase_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_if_phase_s_axi_bready : in std_logic;
    dsp_cav1_p1_if_phase_s_axi_araddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_if_phase_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_if_phase_s_axi_rready : in std_logic;
    dsp_cav1_p1_if_q_s_axi_awaddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_if_q_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_if_q_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_if_q_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_if_q_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_if_q_s_axi_bready : in std_logic;
    dsp_cav1_p1_if_q_s_axi_araddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_if_q_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_if_q_s_axi_rready : in std_logic;
    dsp_cav1_p1_integrated_i_s_axi_awaddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_integrated_i_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_integrated_i_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_integrated_i_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_integrated_i_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_integrated_i_s_axi_bready : in std_logic;
    dsp_cav1_p1_integrated_i_s_axi_araddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_integrated_i_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_integrated_i_s_axi_rready : in std_logic;
    dsp_cav1_p1_integrated_q_s_axi_awaddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_integrated_q_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_integrated_q_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_integrated_q_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_integrated_q_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_integrated_q_s_axi_bready : in std_logic;
    dsp_cav1_p1_integrated_q_s_axi_araddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_integrated_q_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_integrated_q_s_axi_rready : in std_logic;
    dsp_cav1_p1_phase_out_s_axi_awaddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_phase_out_s_axi_awvalid : in std_logic;
    dsp_cav1_p1_phase_out_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_phase_out_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    dsp_cav1_p1_phase_out_s_axi_wvalid : in std_logic;
    dsp_cav1_p1_phase_out_s_axi_bready : in std_logic;
    dsp_cav1_p1_phase_out_s_axi_araddr : in std_logic_vector( 8-1 downto 0 );
    dsp_cav1_p1_phase_out_s_axi_arvalid : in std_logic;
    dsp_cav1_p1_phase_out_s_axi_rready : in std_logic;
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
    dsp_cav1_p1_amp_out_s_axi_awready : out std_logic;
    dsp_cav1_p1_amp_out_s_axi_wready : out std_logic;
    dsp_cav1_p1_amp_out_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_amp_out_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_amp_out_s_axi_arready : out std_logic;
    dsp_cav1_p1_amp_out_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_amp_out_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_amp_out_s_axi_rvalid : out std_logic;
    dsp_cav1_p1_chan_sel_s_axi_awready : out std_logic;
    dsp_cav1_p1_chan_sel_s_axi_wready : out std_logic;
    dsp_cav1_p1_chan_sel_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_chan_sel_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_chan_sel_s_axi_arready : out std_logic;
    dsp_cav1_p1_chan_sel_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_chan_sel_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_chan_sel_s_axi_rvalid : out std_logic;
    dsp_cav1_p1_comparison_i_s_axi_awready : out std_logic;
    dsp_cav1_p1_comparison_i_s_axi_wready : out std_logic;
    dsp_cav1_p1_comparison_i_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_comparison_i_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_comparison_i_s_axi_arready : out std_logic;
    dsp_cav1_p1_comparison_i_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_comparison_i_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_comparison_i_s_axi_rvalid : out std_logic;
    dsp_cav1_p1_comparison_phase_s_axi_awready : out std_logic;
    dsp_cav1_p1_comparison_phase_s_axi_wready : out std_logic;
    dsp_cav1_p1_comparison_phase_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_comparison_phase_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_comparison_phase_s_axi_arready : out std_logic;
    dsp_cav1_p1_comparison_phase_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_comparison_phase_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_comparison_phase_s_axi_rvalid : out std_logic;
    dsp_cav1_p1_comparison_q_s_axi_awready : out std_logic;
    dsp_cav1_p1_comparison_q_s_axi_wready : out std_logic;
    dsp_cav1_p1_comparison_q_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_comparison_q_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_comparison_q_s_axi_arready : out std_logic;
    dsp_cav1_p1_comparison_q_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_comparison_q_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_comparison_q_s_axi_rvalid : out std_logic;
    dsp_cav1_p1_dc_freq_s_axi_awready : out std_logic;
    dsp_cav1_p1_dc_freq_s_axi_wready : out std_logic;
    dsp_cav1_p1_dc_freq_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_dc_freq_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_dc_freq_s_axi_arready : out std_logic;
    dsp_cav1_p1_dc_freq_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_dc_freq_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_dc_freq_s_axi_rvalid : out std_logic;
    dsp_cav1_p1_dc_img_s_axi_awready : out std_logic;
    dsp_cav1_p1_dc_img_s_axi_wready : out std_logic;
    dsp_cav1_p1_dc_img_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_dc_img_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_dc_img_s_axi_arready : out std_logic;
    dsp_cav1_p1_dc_img_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_dc_img_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_dc_img_s_axi_rvalid : out std_logic;
    dsp_cav1_p1_dc_real_s_axi_awready : out std_logic;
    dsp_cav1_p1_dc_real_s_axi_wready : out std_logic;
    dsp_cav1_p1_dc_real_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_dc_real_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_dc_real_s_axi_arready : out std_logic;
    dsp_cav1_p1_dc_real_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_dc_real_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_dc_real_s_axi_rvalid : out std_logic;
    dsp_cav1_p1_if_amp_s_axi_awready : out std_logic;
    dsp_cav1_p1_if_amp_s_axi_wready : out std_logic;
    dsp_cav1_p1_if_amp_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_if_amp_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_if_amp_s_axi_arready : out std_logic;
    dsp_cav1_p1_if_amp_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_if_amp_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_if_amp_s_axi_rvalid : out std_logic;
    dsp_cav1_p1_if_i_s_axi_awready : out std_logic;
    dsp_cav1_p1_if_i_s_axi_wready : out std_logic;
    dsp_cav1_p1_if_i_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_if_i_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_if_i_s_axi_arready : out std_logic;
    dsp_cav1_p1_if_i_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_if_i_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_if_i_s_axi_rvalid : out std_logic;
    dsp_cav1_p1_if_phase_s_axi_awready : out std_logic;
    dsp_cav1_p1_if_phase_s_axi_wready : out std_logic;
    dsp_cav1_p1_if_phase_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_if_phase_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_if_phase_s_axi_arready : out std_logic;
    dsp_cav1_p1_if_phase_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_if_phase_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_if_phase_s_axi_rvalid : out std_logic;
    dsp_cav1_p1_if_q_s_axi_awready : out std_logic;
    dsp_cav1_p1_if_q_s_axi_wready : out std_logic;
    dsp_cav1_p1_if_q_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_if_q_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_if_q_s_axi_arready : out std_logic;
    dsp_cav1_p1_if_q_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_if_q_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_if_q_s_axi_rvalid : out std_logic;
    dsp_cav1_p1_integrated_i_s_axi_awready : out std_logic;
    dsp_cav1_p1_integrated_i_s_axi_wready : out std_logic;
    dsp_cav1_p1_integrated_i_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_integrated_i_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_integrated_i_s_axi_arready : out std_logic;
    dsp_cav1_p1_integrated_i_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_integrated_i_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_integrated_i_s_axi_rvalid : out std_logic;
    dsp_cav1_p1_integrated_q_s_axi_awready : out std_logic;
    dsp_cav1_p1_integrated_q_s_axi_wready : out std_logic;
    dsp_cav1_p1_integrated_q_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_integrated_q_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_integrated_q_s_axi_arready : out std_logic;
    dsp_cav1_p1_integrated_q_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_integrated_q_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_integrated_q_s_axi_rvalid : out std_logic;
    dsp_cav1_p1_phase_out_s_axi_awready : out std_logic;
    dsp_cav1_p1_phase_out_s_axi_wready : out std_logic;
    dsp_cav1_p1_phase_out_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_phase_out_s_axi_bvalid : out std_logic;
    dsp_cav1_p1_phase_out_s_axi_arready : out std_logic;
    dsp_cav1_p1_phase_out_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    dsp_cav1_p1_phase_out_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    dsp_cav1_p1_phase_out_s_axi_rvalid : out std_logic;
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
end example_stub;
architecture structural of example_stub is 
begin
  sysgen_dut : entity work.example 
  port map (
    amp => amp,
    ddcchannel => ddcchannel,
    ddci => ddci,
    ddcq => ddcq,
    ddcsync => ddcsync,
    phase => phase,
    phaseampchannel => phaseampchannel,
    phaseampsync => phaseampsync,
    axi_lite_clk => axi_lite_clk,
    dsp_clk => dsp_clk,
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
    dsp_aresetn => dsp_aresetn,
    dsp_cav1_nco_phase_adj_s_axi_awaddr => dsp_cav1_nco_phase_adj_s_axi_awaddr,
    dsp_cav1_nco_phase_adj_s_axi_awvalid => dsp_cav1_nco_phase_adj_s_axi_awvalid,
    dsp_cav1_nco_phase_adj_s_axi_wdata => dsp_cav1_nco_phase_adj_s_axi_wdata,
    dsp_cav1_nco_phase_adj_s_axi_wstrb => dsp_cav1_nco_phase_adj_s_axi_wstrb,
    dsp_cav1_nco_phase_adj_s_axi_wvalid => dsp_cav1_nco_phase_adj_s_axi_wvalid,
    dsp_cav1_nco_phase_adj_s_axi_bready => dsp_cav1_nco_phase_adj_s_axi_bready,
    dsp_cav1_nco_phase_adj_s_axi_araddr => dsp_cav1_nco_phase_adj_s_axi_araddr,
    dsp_cav1_nco_phase_adj_s_axi_arvalid => dsp_cav1_nco_phase_adj_s_axi_arvalid,
    dsp_cav1_nco_phase_adj_s_axi_rready => dsp_cav1_nco_phase_adj_s_axi_rready,
    dsp_cav1_nco_phase_reset_s_axi_awaddr => dsp_cav1_nco_phase_reset_s_axi_awaddr,
    dsp_cav1_nco_phase_reset_s_axi_awvalid => dsp_cav1_nco_phase_reset_s_axi_awvalid,
    dsp_cav1_nco_phase_reset_s_axi_wdata => dsp_cav1_nco_phase_reset_s_axi_wdata,
    dsp_cav1_nco_phase_reset_s_axi_wstrb => dsp_cav1_nco_phase_reset_s_axi_wstrb,
    dsp_cav1_nco_phase_reset_s_axi_wvalid => dsp_cav1_nco_phase_reset_s_axi_wvalid,
    dsp_cav1_nco_phase_reset_s_axi_bready => dsp_cav1_nco_phase_reset_s_axi_bready,
    dsp_cav1_nco_phase_reset_s_axi_araddr => dsp_cav1_nco_phase_reset_s_axi_araddr,
    dsp_cav1_nco_phase_reset_s_axi_arvalid => dsp_cav1_nco_phase_reset_s_axi_arvalid,
    dsp_cav1_nco_phase_reset_s_axi_rready => dsp_cav1_nco_phase_reset_s_axi_rready,
    dsp_cav1_p1_amp_out_s_axi_awaddr => dsp_cav1_p1_amp_out_s_axi_awaddr,
    dsp_cav1_p1_amp_out_s_axi_awvalid => dsp_cav1_p1_amp_out_s_axi_awvalid,
    dsp_cav1_p1_amp_out_s_axi_wdata => dsp_cav1_p1_amp_out_s_axi_wdata,
    dsp_cav1_p1_amp_out_s_axi_wstrb => dsp_cav1_p1_amp_out_s_axi_wstrb,
    dsp_cav1_p1_amp_out_s_axi_wvalid => dsp_cav1_p1_amp_out_s_axi_wvalid,
    dsp_cav1_p1_amp_out_s_axi_bready => dsp_cav1_p1_amp_out_s_axi_bready,
    dsp_cav1_p1_amp_out_s_axi_araddr => dsp_cav1_p1_amp_out_s_axi_araddr,
    dsp_cav1_p1_amp_out_s_axi_arvalid => dsp_cav1_p1_amp_out_s_axi_arvalid,
    dsp_cav1_p1_amp_out_s_axi_rready => dsp_cav1_p1_amp_out_s_axi_rready,
    dsp_cav1_p1_chan_sel_s_axi_awaddr => dsp_cav1_p1_chan_sel_s_axi_awaddr,
    dsp_cav1_p1_chan_sel_s_axi_awvalid => dsp_cav1_p1_chan_sel_s_axi_awvalid,
    dsp_cav1_p1_chan_sel_s_axi_wdata => dsp_cav1_p1_chan_sel_s_axi_wdata,
    dsp_cav1_p1_chan_sel_s_axi_wstrb => dsp_cav1_p1_chan_sel_s_axi_wstrb,
    dsp_cav1_p1_chan_sel_s_axi_wvalid => dsp_cav1_p1_chan_sel_s_axi_wvalid,
    dsp_cav1_p1_chan_sel_s_axi_bready => dsp_cav1_p1_chan_sel_s_axi_bready,
    dsp_cav1_p1_chan_sel_s_axi_araddr => dsp_cav1_p1_chan_sel_s_axi_araddr,
    dsp_cav1_p1_chan_sel_s_axi_arvalid => dsp_cav1_p1_chan_sel_s_axi_arvalid,
    dsp_cav1_p1_chan_sel_s_axi_rready => dsp_cav1_p1_chan_sel_s_axi_rready,
    dsp_cav1_p1_comparison_i_s_axi_awaddr => dsp_cav1_p1_comparison_i_s_axi_awaddr,
    dsp_cav1_p1_comparison_i_s_axi_awvalid => dsp_cav1_p1_comparison_i_s_axi_awvalid,
    dsp_cav1_p1_comparison_i_s_axi_wdata => dsp_cav1_p1_comparison_i_s_axi_wdata,
    dsp_cav1_p1_comparison_i_s_axi_wstrb => dsp_cav1_p1_comparison_i_s_axi_wstrb,
    dsp_cav1_p1_comparison_i_s_axi_wvalid => dsp_cav1_p1_comparison_i_s_axi_wvalid,
    dsp_cav1_p1_comparison_i_s_axi_bready => dsp_cav1_p1_comparison_i_s_axi_bready,
    dsp_cav1_p1_comparison_i_s_axi_araddr => dsp_cav1_p1_comparison_i_s_axi_araddr,
    dsp_cav1_p1_comparison_i_s_axi_arvalid => dsp_cav1_p1_comparison_i_s_axi_arvalid,
    dsp_cav1_p1_comparison_i_s_axi_rready => dsp_cav1_p1_comparison_i_s_axi_rready,
    dsp_cav1_p1_comparison_phase_s_axi_awaddr => dsp_cav1_p1_comparison_phase_s_axi_awaddr,
    dsp_cav1_p1_comparison_phase_s_axi_awvalid => dsp_cav1_p1_comparison_phase_s_axi_awvalid,
    dsp_cav1_p1_comparison_phase_s_axi_wdata => dsp_cav1_p1_comparison_phase_s_axi_wdata,
    dsp_cav1_p1_comparison_phase_s_axi_wstrb => dsp_cav1_p1_comparison_phase_s_axi_wstrb,
    dsp_cav1_p1_comparison_phase_s_axi_wvalid => dsp_cav1_p1_comparison_phase_s_axi_wvalid,
    dsp_cav1_p1_comparison_phase_s_axi_bready => dsp_cav1_p1_comparison_phase_s_axi_bready,
    dsp_cav1_p1_comparison_phase_s_axi_araddr => dsp_cav1_p1_comparison_phase_s_axi_araddr,
    dsp_cav1_p1_comparison_phase_s_axi_arvalid => dsp_cav1_p1_comparison_phase_s_axi_arvalid,
    dsp_cav1_p1_comparison_phase_s_axi_rready => dsp_cav1_p1_comparison_phase_s_axi_rready,
    dsp_cav1_p1_comparison_q_s_axi_awaddr => dsp_cav1_p1_comparison_q_s_axi_awaddr,
    dsp_cav1_p1_comparison_q_s_axi_awvalid => dsp_cav1_p1_comparison_q_s_axi_awvalid,
    dsp_cav1_p1_comparison_q_s_axi_wdata => dsp_cav1_p1_comparison_q_s_axi_wdata,
    dsp_cav1_p1_comparison_q_s_axi_wstrb => dsp_cav1_p1_comparison_q_s_axi_wstrb,
    dsp_cav1_p1_comparison_q_s_axi_wvalid => dsp_cav1_p1_comparison_q_s_axi_wvalid,
    dsp_cav1_p1_comparison_q_s_axi_bready => dsp_cav1_p1_comparison_q_s_axi_bready,
    dsp_cav1_p1_comparison_q_s_axi_araddr => dsp_cav1_p1_comparison_q_s_axi_araddr,
    dsp_cav1_p1_comparison_q_s_axi_arvalid => dsp_cav1_p1_comparison_q_s_axi_arvalid,
    dsp_cav1_p1_comparison_q_s_axi_rready => dsp_cav1_p1_comparison_q_s_axi_rready,
    dsp_cav1_p1_dc_freq_s_axi_awaddr => dsp_cav1_p1_dc_freq_s_axi_awaddr,
    dsp_cav1_p1_dc_freq_s_axi_awvalid => dsp_cav1_p1_dc_freq_s_axi_awvalid,
    dsp_cav1_p1_dc_freq_s_axi_wdata => dsp_cav1_p1_dc_freq_s_axi_wdata,
    dsp_cav1_p1_dc_freq_s_axi_wstrb => dsp_cav1_p1_dc_freq_s_axi_wstrb,
    dsp_cav1_p1_dc_freq_s_axi_wvalid => dsp_cav1_p1_dc_freq_s_axi_wvalid,
    dsp_cav1_p1_dc_freq_s_axi_bready => dsp_cav1_p1_dc_freq_s_axi_bready,
    dsp_cav1_p1_dc_freq_s_axi_araddr => dsp_cav1_p1_dc_freq_s_axi_araddr,
    dsp_cav1_p1_dc_freq_s_axi_arvalid => dsp_cav1_p1_dc_freq_s_axi_arvalid,
    dsp_cav1_p1_dc_freq_s_axi_rready => dsp_cav1_p1_dc_freq_s_axi_rready,
    dsp_cav1_p1_dc_img_s_axi_awaddr => dsp_cav1_p1_dc_img_s_axi_awaddr,
    dsp_cav1_p1_dc_img_s_axi_awvalid => dsp_cav1_p1_dc_img_s_axi_awvalid,
    dsp_cav1_p1_dc_img_s_axi_wdata => dsp_cav1_p1_dc_img_s_axi_wdata,
    dsp_cav1_p1_dc_img_s_axi_wstrb => dsp_cav1_p1_dc_img_s_axi_wstrb,
    dsp_cav1_p1_dc_img_s_axi_wvalid => dsp_cav1_p1_dc_img_s_axi_wvalid,
    dsp_cav1_p1_dc_img_s_axi_bready => dsp_cav1_p1_dc_img_s_axi_bready,
    dsp_cav1_p1_dc_img_s_axi_araddr => dsp_cav1_p1_dc_img_s_axi_araddr,
    dsp_cav1_p1_dc_img_s_axi_arvalid => dsp_cav1_p1_dc_img_s_axi_arvalid,
    dsp_cav1_p1_dc_img_s_axi_rready => dsp_cav1_p1_dc_img_s_axi_rready,
    dsp_cav1_p1_dc_real_s_axi_awaddr => dsp_cav1_p1_dc_real_s_axi_awaddr,
    dsp_cav1_p1_dc_real_s_axi_awvalid => dsp_cav1_p1_dc_real_s_axi_awvalid,
    dsp_cav1_p1_dc_real_s_axi_wdata => dsp_cav1_p1_dc_real_s_axi_wdata,
    dsp_cav1_p1_dc_real_s_axi_wstrb => dsp_cav1_p1_dc_real_s_axi_wstrb,
    dsp_cav1_p1_dc_real_s_axi_wvalid => dsp_cav1_p1_dc_real_s_axi_wvalid,
    dsp_cav1_p1_dc_real_s_axi_bready => dsp_cav1_p1_dc_real_s_axi_bready,
    dsp_cav1_p1_dc_real_s_axi_araddr => dsp_cav1_p1_dc_real_s_axi_araddr,
    dsp_cav1_p1_dc_real_s_axi_arvalid => dsp_cav1_p1_dc_real_s_axi_arvalid,
    dsp_cav1_p1_dc_real_s_axi_rready => dsp_cav1_p1_dc_real_s_axi_rready,
    dsp_cav1_p1_if_amp_s_axi_awaddr => dsp_cav1_p1_if_amp_s_axi_awaddr,
    dsp_cav1_p1_if_amp_s_axi_awvalid => dsp_cav1_p1_if_amp_s_axi_awvalid,
    dsp_cav1_p1_if_amp_s_axi_wdata => dsp_cav1_p1_if_amp_s_axi_wdata,
    dsp_cav1_p1_if_amp_s_axi_wstrb => dsp_cav1_p1_if_amp_s_axi_wstrb,
    dsp_cav1_p1_if_amp_s_axi_wvalid => dsp_cav1_p1_if_amp_s_axi_wvalid,
    dsp_cav1_p1_if_amp_s_axi_bready => dsp_cav1_p1_if_amp_s_axi_bready,
    dsp_cav1_p1_if_amp_s_axi_araddr => dsp_cav1_p1_if_amp_s_axi_araddr,
    dsp_cav1_p1_if_amp_s_axi_arvalid => dsp_cav1_p1_if_amp_s_axi_arvalid,
    dsp_cav1_p1_if_amp_s_axi_rready => dsp_cav1_p1_if_amp_s_axi_rready,
    dsp_cav1_p1_if_i_s_axi_awaddr => dsp_cav1_p1_if_i_s_axi_awaddr,
    dsp_cav1_p1_if_i_s_axi_awvalid => dsp_cav1_p1_if_i_s_axi_awvalid,
    dsp_cav1_p1_if_i_s_axi_wdata => dsp_cav1_p1_if_i_s_axi_wdata,
    dsp_cav1_p1_if_i_s_axi_wstrb => dsp_cav1_p1_if_i_s_axi_wstrb,
    dsp_cav1_p1_if_i_s_axi_wvalid => dsp_cav1_p1_if_i_s_axi_wvalid,
    dsp_cav1_p1_if_i_s_axi_bready => dsp_cav1_p1_if_i_s_axi_bready,
    dsp_cav1_p1_if_i_s_axi_araddr => dsp_cav1_p1_if_i_s_axi_araddr,
    dsp_cav1_p1_if_i_s_axi_arvalid => dsp_cav1_p1_if_i_s_axi_arvalid,
    dsp_cav1_p1_if_i_s_axi_rready => dsp_cav1_p1_if_i_s_axi_rready,
    dsp_cav1_p1_if_phase_s_axi_awaddr => dsp_cav1_p1_if_phase_s_axi_awaddr,
    dsp_cav1_p1_if_phase_s_axi_awvalid => dsp_cav1_p1_if_phase_s_axi_awvalid,
    dsp_cav1_p1_if_phase_s_axi_wdata => dsp_cav1_p1_if_phase_s_axi_wdata,
    dsp_cav1_p1_if_phase_s_axi_wstrb => dsp_cav1_p1_if_phase_s_axi_wstrb,
    dsp_cav1_p1_if_phase_s_axi_wvalid => dsp_cav1_p1_if_phase_s_axi_wvalid,
    dsp_cav1_p1_if_phase_s_axi_bready => dsp_cav1_p1_if_phase_s_axi_bready,
    dsp_cav1_p1_if_phase_s_axi_araddr => dsp_cav1_p1_if_phase_s_axi_araddr,
    dsp_cav1_p1_if_phase_s_axi_arvalid => dsp_cav1_p1_if_phase_s_axi_arvalid,
    dsp_cav1_p1_if_phase_s_axi_rready => dsp_cav1_p1_if_phase_s_axi_rready,
    dsp_cav1_p1_if_q_s_axi_awaddr => dsp_cav1_p1_if_q_s_axi_awaddr,
    dsp_cav1_p1_if_q_s_axi_awvalid => dsp_cav1_p1_if_q_s_axi_awvalid,
    dsp_cav1_p1_if_q_s_axi_wdata => dsp_cav1_p1_if_q_s_axi_wdata,
    dsp_cav1_p1_if_q_s_axi_wstrb => dsp_cav1_p1_if_q_s_axi_wstrb,
    dsp_cav1_p1_if_q_s_axi_wvalid => dsp_cav1_p1_if_q_s_axi_wvalid,
    dsp_cav1_p1_if_q_s_axi_bready => dsp_cav1_p1_if_q_s_axi_bready,
    dsp_cav1_p1_if_q_s_axi_araddr => dsp_cav1_p1_if_q_s_axi_araddr,
    dsp_cav1_p1_if_q_s_axi_arvalid => dsp_cav1_p1_if_q_s_axi_arvalid,
    dsp_cav1_p1_if_q_s_axi_rready => dsp_cav1_p1_if_q_s_axi_rready,
    dsp_cav1_p1_integrated_i_s_axi_awaddr => dsp_cav1_p1_integrated_i_s_axi_awaddr,
    dsp_cav1_p1_integrated_i_s_axi_awvalid => dsp_cav1_p1_integrated_i_s_axi_awvalid,
    dsp_cav1_p1_integrated_i_s_axi_wdata => dsp_cav1_p1_integrated_i_s_axi_wdata,
    dsp_cav1_p1_integrated_i_s_axi_wstrb => dsp_cav1_p1_integrated_i_s_axi_wstrb,
    dsp_cav1_p1_integrated_i_s_axi_wvalid => dsp_cav1_p1_integrated_i_s_axi_wvalid,
    dsp_cav1_p1_integrated_i_s_axi_bready => dsp_cav1_p1_integrated_i_s_axi_bready,
    dsp_cav1_p1_integrated_i_s_axi_araddr => dsp_cav1_p1_integrated_i_s_axi_araddr,
    dsp_cav1_p1_integrated_i_s_axi_arvalid => dsp_cav1_p1_integrated_i_s_axi_arvalid,
    dsp_cav1_p1_integrated_i_s_axi_rready => dsp_cav1_p1_integrated_i_s_axi_rready,
    dsp_cav1_p1_integrated_q_s_axi_awaddr => dsp_cav1_p1_integrated_q_s_axi_awaddr,
    dsp_cav1_p1_integrated_q_s_axi_awvalid => dsp_cav1_p1_integrated_q_s_axi_awvalid,
    dsp_cav1_p1_integrated_q_s_axi_wdata => dsp_cav1_p1_integrated_q_s_axi_wdata,
    dsp_cav1_p1_integrated_q_s_axi_wstrb => dsp_cav1_p1_integrated_q_s_axi_wstrb,
    dsp_cav1_p1_integrated_q_s_axi_wvalid => dsp_cav1_p1_integrated_q_s_axi_wvalid,
    dsp_cav1_p1_integrated_q_s_axi_bready => dsp_cav1_p1_integrated_q_s_axi_bready,
    dsp_cav1_p1_integrated_q_s_axi_araddr => dsp_cav1_p1_integrated_q_s_axi_araddr,
    dsp_cav1_p1_integrated_q_s_axi_arvalid => dsp_cav1_p1_integrated_q_s_axi_arvalid,
    dsp_cav1_p1_integrated_q_s_axi_rready => dsp_cav1_p1_integrated_q_s_axi_rready,
    dsp_cav1_p1_phase_out_s_axi_awaddr => dsp_cav1_p1_phase_out_s_axi_awaddr,
    dsp_cav1_p1_phase_out_s_axi_awvalid => dsp_cav1_p1_phase_out_s_axi_awvalid,
    dsp_cav1_p1_phase_out_s_axi_wdata => dsp_cav1_p1_phase_out_s_axi_wdata,
    dsp_cav1_p1_phase_out_s_axi_wstrb => dsp_cav1_p1_phase_out_s_axi_wstrb,
    dsp_cav1_p1_phase_out_s_axi_wvalid => dsp_cav1_p1_phase_out_s_axi_wvalid,
    dsp_cav1_p1_phase_out_s_axi_bready => dsp_cav1_p1_phase_out_s_axi_bready,
    dsp_cav1_p1_phase_out_s_axi_araddr => dsp_cav1_p1_phase_out_s_axi_araddr,
    dsp_cav1_p1_phase_out_s_axi_arvalid => dsp_cav1_p1_phase_out_s_axi_arvalid,
    dsp_cav1_p1_phase_out_s_axi_rready => dsp_cav1_p1_phase_out_s_axi_rready,
    dsp_cav1_p1_window_start_s_axi_awaddr => dsp_cav1_p1_window_start_s_axi_awaddr,
    dsp_cav1_p1_window_start_s_axi_awvalid => dsp_cav1_p1_window_start_s_axi_awvalid,
    dsp_cav1_p1_window_start_s_axi_wdata => dsp_cav1_p1_window_start_s_axi_wdata,
    dsp_cav1_p1_window_start_s_axi_wstrb => dsp_cav1_p1_window_start_s_axi_wstrb,
    dsp_cav1_p1_window_start_s_axi_wvalid => dsp_cav1_p1_window_start_s_axi_wvalid,
    dsp_cav1_p1_window_start_s_axi_bready => dsp_cav1_p1_window_start_s_axi_bready,
    dsp_cav1_p1_window_start_s_axi_araddr => dsp_cav1_p1_window_start_s_axi_araddr,
    dsp_cav1_p1_window_start_s_axi_arvalid => dsp_cav1_p1_window_start_s_axi_arvalid,
    dsp_cav1_p1_window_start_s_axi_rready => dsp_cav1_p1_window_start_s_axi_rready,
    dsp_cav1_p1_window_stop_s_axi_awaddr => dsp_cav1_p1_window_stop_s_axi_awaddr,
    dsp_cav1_p1_window_stop_s_axi_awvalid => dsp_cav1_p1_window_stop_s_axi_awvalid,
    dsp_cav1_p1_window_stop_s_axi_wdata => dsp_cav1_p1_window_stop_s_axi_wdata,
    dsp_cav1_p1_window_stop_s_axi_wstrb => dsp_cav1_p1_window_stop_s_axi_wstrb,
    dsp_cav1_p1_window_stop_s_axi_wvalid => dsp_cav1_p1_window_stop_s_axi_wvalid,
    dsp_cav1_p1_window_stop_s_axi_bready => dsp_cav1_p1_window_stop_s_axi_bready,
    dsp_cav1_p1_window_stop_s_axi_araddr => dsp_cav1_p1_window_stop_s_axi_araddr,
    dsp_cav1_p1_window_stop_s_axi_arvalid => dsp_cav1_p1_window_stop_s_axi_arvalid,
    dsp_cav1_p1_window_stop_s_axi_rready => dsp_cav1_p1_window_stop_s_axi_rready,
    dsp_cav1_p2_amp_out_s_axi_awaddr => dsp_cav1_p2_amp_out_s_axi_awaddr,
    dsp_cav1_p2_amp_out_s_axi_awvalid => dsp_cav1_p2_amp_out_s_axi_awvalid,
    dsp_cav1_p2_amp_out_s_axi_wdata => dsp_cav1_p2_amp_out_s_axi_wdata,
    dsp_cav1_p2_amp_out_s_axi_wstrb => dsp_cav1_p2_amp_out_s_axi_wstrb,
    dsp_cav1_p2_amp_out_s_axi_wvalid => dsp_cav1_p2_amp_out_s_axi_wvalid,
    dsp_cav1_p2_amp_out_s_axi_bready => dsp_cav1_p2_amp_out_s_axi_bready,
    dsp_cav1_p2_amp_out_s_axi_araddr => dsp_cav1_p2_amp_out_s_axi_araddr,
    dsp_cav1_p2_amp_out_s_axi_arvalid => dsp_cav1_p2_amp_out_s_axi_arvalid,
    dsp_cav1_p2_amp_out_s_axi_rready => dsp_cav1_p2_amp_out_s_axi_rready,
    dsp_cav1_p2_chan_sel_s_axi_awaddr => dsp_cav1_p2_chan_sel_s_axi_awaddr,
    dsp_cav1_p2_chan_sel_s_axi_awvalid => dsp_cav1_p2_chan_sel_s_axi_awvalid,
    dsp_cav1_p2_chan_sel_s_axi_wdata => dsp_cav1_p2_chan_sel_s_axi_wdata,
    dsp_cav1_p2_chan_sel_s_axi_wstrb => dsp_cav1_p2_chan_sel_s_axi_wstrb,
    dsp_cav1_p2_chan_sel_s_axi_wvalid => dsp_cav1_p2_chan_sel_s_axi_wvalid,
    dsp_cav1_p2_chan_sel_s_axi_bready => dsp_cav1_p2_chan_sel_s_axi_bready,
    dsp_cav1_p2_chan_sel_s_axi_araddr => dsp_cav1_p2_chan_sel_s_axi_araddr,
    dsp_cav1_p2_chan_sel_s_axi_arvalid => dsp_cav1_p2_chan_sel_s_axi_arvalid,
    dsp_cav1_p2_chan_sel_s_axi_rready => dsp_cav1_p2_chan_sel_s_axi_rready,
    dsp_cav1_p2_comparison_i_s_axi_awaddr => dsp_cav1_p2_comparison_i_s_axi_awaddr,
    dsp_cav1_p2_comparison_i_s_axi_awvalid => dsp_cav1_p2_comparison_i_s_axi_awvalid,
    dsp_cav1_p2_comparison_i_s_axi_wdata => dsp_cav1_p2_comparison_i_s_axi_wdata,
    dsp_cav1_p2_comparison_i_s_axi_wstrb => dsp_cav1_p2_comparison_i_s_axi_wstrb,
    dsp_cav1_p2_comparison_i_s_axi_wvalid => dsp_cav1_p2_comparison_i_s_axi_wvalid,
    dsp_cav1_p2_comparison_i_s_axi_bready => dsp_cav1_p2_comparison_i_s_axi_bready,
    dsp_cav1_p2_comparison_i_s_axi_araddr => dsp_cav1_p2_comparison_i_s_axi_araddr,
    dsp_cav1_p2_comparison_i_s_axi_arvalid => dsp_cav1_p2_comparison_i_s_axi_arvalid,
    dsp_cav1_p2_comparison_i_s_axi_rready => dsp_cav1_p2_comparison_i_s_axi_rready,
    dsp_cav1_p2_comparison_phase_s_axi_awaddr => dsp_cav1_p2_comparison_phase_s_axi_awaddr,
    dsp_cav1_p2_comparison_phase_s_axi_awvalid => dsp_cav1_p2_comparison_phase_s_axi_awvalid,
    dsp_cav1_p2_comparison_phase_s_axi_wdata => dsp_cav1_p2_comparison_phase_s_axi_wdata,
    dsp_cav1_p2_comparison_phase_s_axi_wstrb => dsp_cav1_p2_comparison_phase_s_axi_wstrb,
    dsp_cav1_p2_comparison_phase_s_axi_wvalid => dsp_cav1_p2_comparison_phase_s_axi_wvalid,
    dsp_cav1_p2_comparison_phase_s_axi_bready => dsp_cav1_p2_comparison_phase_s_axi_bready,
    dsp_cav1_p2_comparison_phase_s_axi_araddr => dsp_cav1_p2_comparison_phase_s_axi_araddr,
    dsp_cav1_p2_comparison_phase_s_axi_arvalid => dsp_cav1_p2_comparison_phase_s_axi_arvalid,
    dsp_cav1_p2_comparison_phase_s_axi_rready => dsp_cav1_p2_comparison_phase_s_axi_rready,
    dsp_cav1_p2_comparison_q_s_axi_awaddr => dsp_cav1_p2_comparison_q_s_axi_awaddr,
    dsp_cav1_p2_comparison_q_s_axi_awvalid => dsp_cav1_p2_comparison_q_s_axi_awvalid,
    dsp_cav1_p2_comparison_q_s_axi_wdata => dsp_cav1_p2_comparison_q_s_axi_wdata,
    dsp_cav1_p2_comparison_q_s_axi_wstrb => dsp_cav1_p2_comparison_q_s_axi_wstrb,
    dsp_cav1_p2_comparison_q_s_axi_wvalid => dsp_cav1_p2_comparison_q_s_axi_wvalid,
    dsp_cav1_p2_comparison_q_s_axi_bready => dsp_cav1_p2_comparison_q_s_axi_bready,
    dsp_cav1_p2_comparison_q_s_axi_araddr => dsp_cav1_p2_comparison_q_s_axi_araddr,
    dsp_cav1_p2_comparison_q_s_axi_arvalid => dsp_cav1_p2_comparison_q_s_axi_arvalid,
    dsp_cav1_p2_comparison_q_s_axi_rready => dsp_cav1_p2_comparison_q_s_axi_rready,
    dsp_cav1_p2_dc_freq_s_axi_awaddr => dsp_cav1_p2_dc_freq_s_axi_awaddr,
    dsp_cav1_p2_dc_freq_s_axi_awvalid => dsp_cav1_p2_dc_freq_s_axi_awvalid,
    dsp_cav1_p2_dc_freq_s_axi_wdata => dsp_cav1_p2_dc_freq_s_axi_wdata,
    dsp_cav1_p2_dc_freq_s_axi_wstrb => dsp_cav1_p2_dc_freq_s_axi_wstrb,
    dsp_cav1_p2_dc_freq_s_axi_wvalid => dsp_cav1_p2_dc_freq_s_axi_wvalid,
    dsp_cav1_p2_dc_freq_s_axi_bready => dsp_cav1_p2_dc_freq_s_axi_bready,
    dsp_cav1_p2_dc_freq_s_axi_araddr => dsp_cav1_p2_dc_freq_s_axi_araddr,
    dsp_cav1_p2_dc_freq_s_axi_arvalid => dsp_cav1_p2_dc_freq_s_axi_arvalid,
    dsp_cav1_p2_dc_freq_s_axi_rready => dsp_cav1_p2_dc_freq_s_axi_rready,
    dsp_cav1_p2_dc_img_s_axi_awaddr => dsp_cav1_p2_dc_img_s_axi_awaddr,
    dsp_cav1_p2_dc_img_s_axi_awvalid => dsp_cav1_p2_dc_img_s_axi_awvalid,
    dsp_cav1_p2_dc_img_s_axi_wdata => dsp_cav1_p2_dc_img_s_axi_wdata,
    dsp_cav1_p2_dc_img_s_axi_wstrb => dsp_cav1_p2_dc_img_s_axi_wstrb,
    dsp_cav1_p2_dc_img_s_axi_wvalid => dsp_cav1_p2_dc_img_s_axi_wvalid,
    dsp_cav1_p2_dc_img_s_axi_bready => dsp_cav1_p2_dc_img_s_axi_bready,
    dsp_cav1_p2_dc_img_s_axi_araddr => dsp_cav1_p2_dc_img_s_axi_araddr,
    dsp_cav1_p2_dc_img_s_axi_arvalid => dsp_cav1_p2_dc_img_s_axi_arvalid,
    dsp_cav1_p2_dc_img_s_axi_rready => dsp_cav1_p2_dc_img_s_axi_rready,
    dsp_cav1_p2_dc_real_s_axi_awaddr => dsp_cav1_p2_dc_real_s_axi_awaddr,
    dsp_cav1_p2_dc_real_s_axi_awvalid => dsp_cav1_p2_dc_real_s_axi_awvalid,
    dsp_cav1_p2_dc_real_s_axi_wdata => dsp_cav1_p2_dc_real_s_axi_wdata,
    dsp_cav1_p2_dc_real_s_axi_wstrb => dsp_cav1_p2_dc_real_s_axi_wstrb,
    dsp_cav1_p2_dc_real_s_axi_wvalid => dsp_cav1_p2_dc_real_s_axi_wvalid,
    dsp_cav1_p2_dc_real_s_axi_bready => dsp_cav1_p2_dc_real_s_axi_bready,
    dsp_cav1_p2_dc_real_s_axi_araddr => dsp_cav1_p2_dc_real_s_axi_araddr,
    dsp_cav1_p2_dc_real_s_axi_arvalid => dsp_cav1_p2_dc_real_s_axi_arvalid,
    dsp_cav1_p2_dc_real_s_axi_rready => dsp_cav1_p2_dc_real_s_axi_rready,
    dsp_cav1_p2_if_amp_s_axi_awaddr => dsp_cav1_p2_if_amp_s_axi_awaddr,
    dsp_cav1_p2_if_amp_s_axi_awvalid => dsp_cav1_p2_if_amp_s_axi_awvalid,
    dsp_cav1_p2_if_amp_s_axi_wdata => dsp_cav1_p2_if_amp_s_axi_wdata,
    dsp_cav1_p2_if_amp_s_axi_wstrb => dsp_cav1_p2_if_amp_s_axi_wstrb,
    dsp_cav1_p2_if_amp_s_axi_wvalid => dsp_cav1_p2_if_amp_s_axi_wvalid,
    dsp_cav1_p2_if_amp_s_axi_bready => dsp_cav1_p2_if_amp_s_axi_bready,
    dsp_cav1_p2_if_amp_s_axi_araddr => dsp_cav1_p2_if_amp_s_axi_araddr,
    dsp_cav1_p2_if_amp_s_axi_arvalid => dsp_cav1_p2_if_amp_s_axi_arvalid,
    dsp_cav1_p2_if_amp_s_axi_rready => dsp_cav1_p2_if_amp_s_axi_rready,
    dsp_cav1_p2_if_i_s_axi_awaddr => dsp_cav1_p2_if_i_s_axi_awaddr,
    dsp_cav1_p2_if_i_s_axi_awvalid => dsp_cav1_p2_if_i_s_axi_awvalid,
    dsp_cav1_p2_if_i_s_axi_wdata => dsp_cav1_p2_if_i_s_axi_wdata,
    dsp_cav1_p2_if_i_s_axi_wstrb => dsp_cav1_p2_if_i_s_axi_wstrb,
    dsp_cav1_p2_if_i_s_axi_wvalid => dsp_cav1_p2_if_i_s_axi_wvalid,
    dsp_cav1_p2_if_i_s_axi_bready => dsp_cav1_p2_if_i_s_axi_bready,
    dsp_cav1_p2_if_i_s_axi_araddr => dsp_cav1_p2_if_i_s_axi_araddr,
    dsp_cav1_p2_if_i_s_axi_arvalid => dsp_cav1_p2_if_i_s_axi_arvalid,
    dsp_cav1_p2_if_i_s_axi_rready => dsp_cav1_p2_if_i_s_axi_rready,
    dsp_cav1_p2_if_phase_s_axi_awaddr => dsp_cav1_p2_if_phase_s_axi_awaddr,
    dsp_cav1_p2_if_phase_s_axi_awvalid => dsp_cav1_p2_if_phase_s_axi_awvalid,
    dsp_cav1_p2_if_phase_s_axi_wdata => dsp_cav1_p2_if_phase_s_axi_wdata,
    dsp_cav1_p2_if_phase_s_axi_wstrb => dsp_cav1_p2_if_phase_s_axi_wstrb,
    dsp_cav1_p2_if_phase_s_axi_wvalid => dsp_cav1_p2_if_phase_s_axi_wvalid,
    dsp_cav1_p2_if_phase_s_axi_bready => dsp_cav1_p2_if_phase_s_axi_bready,
    dsp_cav1_p2_if_phase_s_axi_araddr => dsp_cav1_p2_if_phase_s_axi_araddr,
    dsp_cav1_p2_if_phase_s_axi_arvalid => dsp_cav1_p2_if_phase_s_axi_arvalid,
    dsp_cav1_p2_if_phase_s_axi_rready => dsp_cav1_p2_if_phase_s_axi_rready,
    dsp_cav1_p2_if_q_s_axi_awaddr => dsp_cav1_p2_if_q_s_axi_awaddr,
    dsp_cav1_p2_if_q_s_axi_awvalid => dsp_cav1_p2_if_q_s_axi_awvalid,
    dsp_cav1_p2_if_q_s_axi_wdata => dsp_cav1_p2_if_q_s_axi_wdata,
    dsp_cav1_p2_if_q_s_axi_wstrb => dsp_cav1_p2_if_q_s_axi_wstrb,
    dsp_cav1_p2_if_q_s_axi_wvalid => dsp_cav1_p2_if_q_s_axi_wvalid,
    dsp_cav1_p2_if_q_s_axi_bready => dsp_cav1_p2_if_q_s_axi_bready,
    dsp_cav1_p2_if_q_s_axi_araddr => dsp_cav1_p2_if_q_s_axi_araddr,
    dsp_cav1_p2_if_q_s_axi_arvalid => dsp_cav1_p2_if_q_s_axi_arvalid,
    dsp_cav1_p2_if_q_s_axi_rready => dsp_cav1_p2_if_q_s_axi_rready,
    dsp_cav1_p2_integrated_i_s_axi_awaddr => dsp_cav1_p2_integrated_i_s_axi_awaddr,
    dsp_cav1_p2_integrated_i_s_axi_awvalid => dsp_cav1_p2_integrated_i_s_axi_awvalid,
    dsp_cav1_p2_integrated_i_s_axi_wdata => dsp_cav1_p2_integrated_i_s_axi_wdata,
    dsp_cav1_p2_integrated_i_s_axi_wstrb => dsp_cav1_p2_integrated_i_s_axi_wstrb,
    dsp_cav1_p2_integrated_i_s_axi_wvalid => dsp_cav1_p2_integrated_i_s_axi_wvalid,
    dsp_cav1_p2_integrated_i_s_axi_bready => dsp_cav1_p2_integrated_i_s_axi_bready,
    dsp_cav1_p2_integrated_i_s_axi_araddr => dsp_cav1_p2_integrated_i_s_axi_araddr,
    dsp_cav1_p2_integrated_i_s_axi_arvalid => dsp_cav1_p2_integrated_i_s_axi_arvalid,
    dsp_cav1_p2_integrated_i_s_axi_rready => dsp_cav1_p2_integrated_i_s_axi_rready,
    dsp_cav1_p2_integrated_q_s_axi_awaddr => dsp_cav1_p2_integrated_q_s_axi_awaddr,
    dsp_cav1_p2_integrated_q_s_axi_awvalid => dsp_cav1_p2_integrated_q_s_axi_awvalid,
    dsp_cav1_p2_integrated_q_s_axi_wdata => dsp_cav1_p2_integrated_q_s_axi_wdata,
    dsp_cav1_p2_integrated_q_s_axi_wstrb => dsp_cav1_p2_integrated_q_s_axi_wstrb,
    dsp_cav1_p2_integrated_q_s_axi_wvalid => dsp_cav1_p2_integrated_q_s_axi_wvalid,
    dsp_cav1_p2_integrated_q_s_axi_bready => dsp_cav1_p2_integrated_q_s_axi_bready,
    dsp_cav1_p2_integrated_q_s_axi_araddr => dsp_cav1_p2_integrated_q_s_axi_araddr,
    dsp_cav1_p2_integrated_q_s_axi_arvalid => dsp_cav1_p2_integrated_q_s_axi_arvalid,
    dsp_cav1_p2_integrated_q_s_axi_rready => dsp_cav1_p2_integrated_q_s_axi_rready,
    dsp_cav1_p2_phase_out_s_axi_awaddr => dsp_cav1_p2_phase_out_s_axi_awaddr,
    dsp_cav1_p2_phase_out_s_axi_awvalid => dsp_cav1_p2_phase_out_s_axi_awvalid,
    dsp_cav1_p2_phase_out_s_axi_wdata => dsp_cav1_p2_phase_out_s_axi_wdata,
    dsp_cav1_p2_phase_out_s_axi_wstrb => dsp_cav1_p2_phase_out_s_axi_wstrb,
    dsp_cav1_p2_phase_out_s_axi_wvalid => dsp_cav1_p2_phase_out_s_axi_wvalid,
    dsp_cav1_p2_phase_out_s_axi_bready => dsp_cav1_p2_phase_out_s_axi_bready,
    dsp_cav1_p2_phase_out_s_axi_araddr => dsp_cav1_p2_phase_out_s_axi_araddr,
    dsp_cav1_p2_phase_out_s_axi_arvalid => dsp_cav1_p2_phase_out_s_axi_arvalid,
    dsp_cav1_p2_phase_out_s_axi_rready => dsp_cav1_p2_phase_out_s_axi_rready,
    dsp_cav1_p2_window_start_s_axi_awaddr => dsp_cav1_p2_window_start_s_axi_awaddr,
    dsp_cav1_p2_window_start_s_axi_awvalid => dsp_cav1_p2_window_start_s_axi_awvalid,
    dsp_cav1_p2_window_start_s_axi_wdata => dsp_cav1_p2_window_start_s_axi_wdata,
    dsp_cav1_p2_window_start_s_axi_wstrb => dsp_cav1_p2_window_start_s_axi_wstrb,
    dsp_cav1_p2_window_start_s_axi_wvalid => dsp_cav1_p2_window_start_s_axi_wvalid,
    dsp_cav1_p2_window_start_s_axi_bready => dsp_cav1_p2_window_start_s_axi_bready,
    dsp_cav1_p2_window_start_s_axi_araddr => dsp_cav1_p2_window_start_s_axi_araddr,
    dsp_cav1_p2_window_start_s_axi_arvalid => dsp_cav1_p2_window_start_s_axi_arvalid,
    dsp_cav1_p2_window_start_s_axi_rready => dsp_cav1_p2_window_start_s_axi_rready,
    dsp_cav1_p2_window_stop_s_axi_awaddr => dsp_cav1_p2_window_stop_s_axi_awaddr,
    dsp_cav1_p2_window_stop_s_axi_awvalid => dsp_cav1_p2_window_stop_s_axi_awvalid,
    dsp_cav1_p2_window_stop_s_axi_wdata => dsp_cav1_p2_window_stop_s_axi_wdata,
    dsp_cav1_p2_window_stop_s_axi_wstrb => dsp_cav1_p2_window_stop_s_axi_wstrb,
    dsp_cav1_p2_window_stop_s_axi_wvalid => dsp_cav1_p2_window_stop_s_axi_wvalid,
    dsp_cav1_p2_window_stop_s_axi_bready => dsp_cav1_p2_window_stop_s_axi_bready,
    dsp_cav1_p2_window_stop_s_axi_araddr => dsp_cav1_p2_window_stop_s_axi_araddr,
    dsp_cav1_p2_window_stop_s_axi_arvalid => dsp_cav1_p2_window_stop_s_axi_arvalid,
    dsp_cav1_p2_window_stop_s_axi_rready => dsp_cav1_p2_window_stop_s_axi_rready,
    dsp_cav2_p1_amp_out_s_axi_awaddr => dsp_cav2_p1_amp_out_s_axi_awaddr,
    dsp_cav2_p1_amp_out_s_axi_awvalid => dsp_cav2_p1_amp_out_s_axi_awvalid,
    dsp_cav2_p1_amp_out_s_axi_wdata => dsp_cav2_p1_amp_out_s_axi_wdata,
    dsp_cav2_p1_amp_out_s_axi_wstrb => dsp_cav2_p1_amp_out_s_axi_wstrb,
    dsp_cav2_p1_amp_out_s_axi_wvalid => dsp_cav2_p1_amp_out_s_axi_wvalid,
    dsp_cav2_p1_amp_out_s_axi_bready => dsp_cav2_p1_amp_out_s_axi_bready,
    dsp_cav2_p1_amp_out_s_axi_araddr => dsp_cav2_p1_amp_out_s_axi_araddr,
    dsp_cav2_p1_amp_out_s_axi_arvalid => dsp_cav2_p1_amp_out_s_axi_arvalid,
    dsp_cav2_p1_amp_out_s_axi_rready => dsp_cav2_p1_amp_out_s_axi_rready,
    dsp_cav2_p1_chan_sel_s_axi_awaddr => dsp_cav2_p1_chan_sel_s_axi_awaddr,
    dsp_cav2_p1_chan_sel_s_axi_awvalid => dsp_cav2_p1_chan_sel_s_axi_awvalid,
    dsp_cav2_p1_chan_sel_s_axi_wdata => dsp_cav2_p1_chan_sel_s_axi_wdata,
    dsp_cav2_p1_chan_sel_s_axi_wstrb => dsp_cav2_p1_chan_sel_s_axi_wstrb,
    dsp_cav2_p1_chan_sel_s_axi_wvalid => dsp_cav2_p1_chan_sel_s_axi_wvalid,
    dsp_cav2_p1_chan_sel_s_axi_bready => dsp_cav2_p1_chan_sel_s_axi_bready,
    dsp_cav2_p1_chan_sel_s_axi_araddr => dsp_cav2_p1_chan_sel_s_axi_araddr,
    dsp_cav2_p1_chan_sel_s_axi_arvalid => dsp_cav2_p1_chan_sel_s_axi_arvalid,
    dsp_cav2_p1_chan_sel_s_axi_rready => dsp_cav2_p1_chan_sel_s_axi_rready,
    dsp_cav2_p1_comparison_i_s_axi_awaddr => dsp_cav2_p1_comparison_i_s_axi_awaddr,
    dsp_cav2_p1_comparison_i_s_axi_awvalid => dsp_cav2_p1_comparison_i_s_axi_awvalid,
    dsp_cav2_p1_comparison_i_s_axi_wdata => dsp_cav2_p1_comparison_i_s_axi_wdata,
    dsp_cav2_p1_comparison_i_s_axi_wstrb => dsp_cav2_p1_comparison_i_s_axi_wstrb,
    dsp_cav2_p1_comparison_i_s_axi_wvalid => dsp_cav2_p1_comparison_i_s_axi_wvalid,
    dsp_cav2_p1_comparison_i_s_axi_bready => dsp_cav2_p1_comparison_i_s_axi_bready,
    dsp_cav2_p1_comparison_i_s_axi_araddr => dsp_cav2_p1_comparison_i_s_axi_araddr,
    dsp_cav2_p1_comparison_i_s_axi_arvalid => dsp_cav2_p1_comparison_i_s_axi_arvalid,
    dsp_cav2_p1_comparison_i_s_axi_rready => dsp_cav2_p1_comparison_i_s_axi_rready,
    dsp_cav2_p1_comparison_phase_s_axi_awaddr => dsp_cav2_p1_comparison_phase_s_axi_awaddr,
    dsp_cav2_p1_comparison_phase_s_axi_awvalid => dsp_cav2_p1_comparison_phase_s_axi_awvalid,
    dsp_cav2_p1_comparison_phase_s_axi_wdata => dsp_cav2_p1_comparison_phase_s_axi_wdata,
    dsp_cav2_p1_comparison_phase_s_axi_wstrb => dsp_cav2_p1_comparison_phase_s_axi_wstrb,
    dsp_cav2_p1_comparison_phase_s_axi_wvalid => dsp_cav2_p1_comparison_phase_s_axi_wvalid,
    dsp_cav2_p1_comparison_phase_s_axi_bready => dsp_cav2_p1_comparison_phase_s_axi_bready,
    dsp_cav2_p1_comparison_phase_s_axi_araddr => dsp_cav2_p1_comparison_phase_s_axi_araddr,
    dsp_cav2_p1_comparison_phase_s_axi_arvalid => dsp_cav2_p1_comparison_phase_s_axi_arvalid,
    dsp_cav2_p1_comparison_phase_s_axi_rready => dsp_cav2_p1_comparison_phase_s_axi_rready,
    dsp_cav2_p1_comparison_q_s_axi_awaddr => dsp_cav2_p1_comparison_q_s_axi_awaddr,
    dsp_cav2_p1_comparison_q_s_axi_awvalid => dsp_cav2_p1_comparison_q_s_axi_awvalid,
    dsp_cav2_p1_comparison_q_s_axi_wdata => dsp_cav2_p1_comparison_q_s_axi_wdata,
    dsp_cav2_p1_comparison_q_s_axi_wstrb => dsp_cav2_p1_comparison_q_s_axi_wstrb,
    dsp_cav2_p1_comparison_q_s_axi_wvalid => dsp_cav2_p1_comparison_q_s_axi_wvalid,
    dsp_cav2_p1_comparison_q_s_axi_bready => dsp_cav2_p1_comparison_q_s_axi_bready,
    dsp_cav2_p1_comparison_q_s_axi_araddr => dsp_cav2_p1_comparison_q_s_axi_araddr,
    dsp_cav2_p1_comparison_q_s_axi_arvalid => dsp_cav2_p1_comparison_q_s_axi_arvalid,
    dsp_cav2_p1_comparison_q_s_axi_rready => dsp_cav2_p1_comparison_q_s_axi_rready,
    dsp_cav2_p1_dc_freq_s_axi_awaddr => dsp_cav2_p1_dc_freq_s_axi_awaddr,
    dsp_cav2_p1_dc_freq_s_axi_awvalid => dsp_cav2_p1_dc_freq_s_axi_awvalid,
    dsp_cav2_p1_dc_freq_s_axi_wdata => dsp_cav2_p1_dc_freq_s_axi_wdata,
    dsp_cav2_p1_dc_freq_s_axi_wstrb => dsp_cav2_p1_dc_freq_s_axi_wstrb,
    dsp_cav2_p1_dc_freq_s_axi_wvalid => dsp_cav2_p1_dc_freq_s_axi_wvalid,
    dsp_cav2_p1_dc_freq_s_axi_bready => dsp_cav2_p1_dc_freq_s_axi_bready,
    dsp_cav2_p1_dc_freq_s_axi_araddr => dsp_cav2_p1_dc_freq_s_axi_araddr,
    dsp_cav2_p1_dc_freq_s_axi_arvalid => dsp_cav2_p1_dc_freq_s_axi_arvalid,
    dsp_cav2_p1_dc_freq_s_axi_rready => dsp_cav2_p1_dc_freq_s_axi_rready,
    dsp_cav2_p1_dc_img_s_axi_awaddr => dsp_cav2_p1_dc_img_s_axi_awaddr,
    dsp_cav2_p1_dc_img_s_axi_awvalid => dsp_cav2_p1_dc_img_s_axi_awvalid,
    dsp_cav2_p1_dc_img_s_axi_wdata => dsp_cav2_p1_dc_img_s_axi_wdata,
    dsp_cav2_p1_dc_img_s_axi_wstrb => dsp_cav2_p1_dc_img_s_axi_wstrb,
    dsp_cav2_p1_dc_img_s_axi_wvalid => dsp_cav2_p1_dc_img_s_axi_wvalid,
    dsp_cav2_p1_dc_img_s_axi_bready => dsp_cav2_p1_dc_img_s_axi_bready,
    dsp_cav2_p1_dc_img_s_axi_araddr => dsp_cav2_p1_dc_img_s_axi_araddr,
    dsp_cav2_p1_dc_img_s_axi_arvalid => dsp_cav2_p1_dc_img_s_axi_arvalid,
    dsp_cav2_p1_dc_img_s_axi_rready => dsp_cav2_p1_dc_img_s_axi_rready,
    dsp_cav2_p1_dc_real_s_axi_awaddr => dsp_cav2_p1_dc_real_s_axi_awaddr,
    dsp_cav2_p1_dc_real_s_axi_awvalid => dsp_cav2_p1_dc_real_s_axi_awvalid,
    dsp_cav2_p1_dc_real_s_axi_wdata => dsp_cav2_p1_dc_real_s_axi_wdata,
    dsp_cav2_p1_dc_real_s_axi_wstrb => dsp_cav2_p1_dc_real_s_axi_wstrb,
    dsp_cav2_p1_dc_real_s_axi_wvalid => dsp_cav2_p1_dc_real_s_axi_wvalid,
    dsp_cav2_p1_dc_real_s_axi_bready => dsp_cav2_p1_dc_real_s_axi_bready,
    dsp_cav2_p1_dc_real_s_axi_araddr => dsp_cav2_p1_dc_real_s_axi_araddr,
    dsp_cav2_p1_dc_real_s_axi_arvalid => dsp_cav2_p1_dc_real_s_axi_arvalid,
    dsp_cav2_p1_dc_real_s_axi_rready => dsp_cav2_p1_dc_real_s_axi_rready,
    dsp_cav2_p1_if_amp_s_axi_awaddr => dsp_cav2_p1_if_amp_s_axi_awaddr,
    dsp_cav2_p1_if_amp_s_axi_awvalid => dsp_cav2_p1_if_amp_s_axi_awvalid,
    dsp_cav2_p1_if_amp_s_axi_wdata => dsp_cav2_p1_if_amp_s_axi_wdata,
    dsp_cav2_p1_if_amp_s_axi_wstrb => dsp_cav2_p1_if_amp_s_axi_wstrb,
    dsp_cav2_p1_if_amp_s_axi_wvalid => dsp_cav2_p1_if_amp_s_axi_wvalid,
    dsp_cav2_p1_if_amp_s_axi_bready => dsp_cav2_p1_if_amp_s_axi_bready,
    dsp_cav2_p1_if_amp_s_axi_araddr => dsp_cav2_p1_if_amp_s_axi_araddr,
    dsp_cav2_p1_if_amp_s_axi_arvalid => dsp_cav2_p1_if_amp_s_axi_arvalid,
    dsp_cav2_p1_if_amp_s_axi_rready => dsp_cav2_p1_if_amp_s_axi_rready,
    dsp_cav2_p1_if_i_s_axi_awaddr => dsp_cav2_p1_if_i_s_axi_awaddr,
    dsp_cav2_p1_if_i_s_axi_awvalid => dsp_cav2_p1_if_i_s_axi_awvalid,
    dsp_cav2_p1_if_i_s_axi_wdata => dsp_cav2_p1_if_i_s_axi_wdata,
    dsp_cav2_p1_if_i_s_axi_wstrb => dsp_cav2_p1_if_i_s_axi_wstrb,
    dsp_cav2_p1_if_i_s_axi_wvalid => dsp_cav2_p1_if_i_s_axi_wvalid,
    dsp_cav2_p1_if_i_s_axi_bready => dsp_cav2_p1_if_i_s_axi_bready,
    dsp_cav2_p1_if_i_s_axi_araddr => dsp_cav2_p1_if_i_s_axi_araddr,
    dsp_cav2_p1_if_i_s_axi_arvalid => dsp_cav2_p1_if_i_s_axi_arvalid,
    dsp_cav2_p1_if_i_s_axi_rready => dsp_cav2_p1_if_i_s_axi_rready,
    dsp_cav2_p1_if_phase_s_axi_awaddr => dsp_cav2_p1_if_phase_s_axi_awaddr,
    dsp_cav2_p1_if_phase_s_axi_awvalid => dsp_cav2_p1_if_phase_s_axi_awvalid,
    dsp_cav2_p1_if_phase_s_axi_wdata => dsp_cav2_p1_if_phase_s_axi_wdata,
    dsp_cav2_p1_if_phase_s_axi_wstrb => dsp_cav2_p1_if_phase_s_axi_wstrb,
    dsp_cav2_p1_if_phase_s_axi_wvalid => dsp_cav2_p1_if_phase_s_axi_wvalid,
    dsp_cav2_p1_if_phase_s_axi_bready => dsp_cav2_p1_if_phase_s_axi_bready,
    dsp_cav2_p1_if_phase_s_axi_araddr => dsp_cav2_p1_if_phase_s_axi_araddr,
    dsp_cav2_p1_if_phase_s_axi_arvalid => dsp_cav2_p1_if_phase_s_axi_arvalid,
    dsp_cav2_p1_if_phase_s_axi_rready => dsp_cav2_p1_if_phase_s_axi_rready,
    dsp_cav2_p1_if_q_s_axi_awaddr => dsp_cav2_p1_if_q_s_axi_awaddr,
    dsp_cav2_p1_if_q_s_axi_awvalid => dsp_cav2_p1_if_q_s_axi_awvalid,
    dsp_cav2_p1_if_q_s_axi_wdata => dsp_cav2_p1_if_q_s_axi_wdata,
    dsp_cav2_p1_if_q_s_axi_wstrb => dsp_cav2_p1_if_q_s_axi_wstrb,
    dsp_cav2_p1_if_q_s_axi_wvalid => dsp_cav2_p1_if_q_s_axi_wvalid,
    dsp_cav2_p1_if_q_s_axi_bready => dsp_cav2_p1_if_q_s_axi_bready,
    dsp_cav2_p1_if_q_s_axi_araddr => dsp_cav2_p1_if_q_s_axi_araddr,
    dsp_cav2_p1_if_q_s_axi_arvalid => dsp_cav2_p1_if_q_s_axi_arvalid,
    dsp_cav2_p1_if_q_s_axi_rready => dsp_cav2_p1_if_q_s_axi_rready,
    dsp_cav2_p1_integrated_i_s_axi_awaddr => dsp_cav2_p1_integrated_i_s_axi_awaddr,
    dsp_cav2_p1_integrated_i_s_axi_awvalid => dsp_cav2_p1_integrated_i_s_axi_awvalid,
    dsp_cav2_p1_integrated_i_s_axi_wdata => dsp_cav2_p1_integrated_i_s_axi_wdata,
    dsp_cav2_p1_integrated_i_s_axi_wstrb => dsp_cav2_p1_integrated_i_s_axi_wstrb,
    dsp_cav2_p1_integrated_i_s_axi_wvalid => dsp_cav2_p1_integrated_i_s_axi_wvalid,
    dsp_cav2_p1_integrated_i_s_axi_bready => dsp_cav2_p1_integrated_i_s_axi_bready,
    dsp_cav2_p1_integrated_i_s_axi_araddr => dsp_cav2_p1_integrated_i_s_axi_araddr,
    dsp_cav2_p1_integrated_i_s_axi_arvalid => dsp_cav2_p1_integrated_i_s_axi_arvalid,
    dsp_cav2_p1_integrated_i_s_axi_rready => dsp_cav2_p1_integrated_i_s_axi_rready,
    dsp_cav2_p1_integrated_q_s_axi_awaddr => dsp_cav2_p1_integrated_q_s_axi_awaddr,
    dsp_cav2_p1_integrated_q_s_axi_awvalid => dsp_cav2_p1_integrated_q_s_axi_awvalid,
    dsp_cav2_p1_integrated_q_s_axi_wdata => dsp_cav2_p1_integrated_q_s_axi_wdata,
    dsp_cav2_p1_integrated_q_s_axi_wstrb => dsp_cav2_p1_integrated_q_s_axi_wstrb,
    dsp_cav2_p1_integrated_q_s_axi_wvalid => dsp_cav2_p1_integrated_q_s_axi_wvalid,
    dsp_cav2_p1_integrated_q_s_axi_bready => dsp_cav2_p1_integrated_q_s_axi_bready,
    dsp_cav2_p1_integrated_q_s_axi_araddr => dsp_cav2_p1_integrated_q_s_axi_araddr,
    dsp_cav2_p1_integrated_q_s_axi_arvalid => dsp_cav2_p1_integrated_q_s_axi_arvalid,
    dsp_cav2_p1_integrated_q_s_axi_rready => dsp_cav2_p1_integrated_q_s_axi_rready,
    dsp_cav2_p1_phase_out_s_axi_awaddr => dsp_cav2_p1_phase_out_s_axi_awaddr,
    dsp_cav2_p1_phase_out_s_axi_awvalid => dsp_cav2_p1_phase_out_s_axi_awvalid,
    dsp_cav2_p1_phase_out_s_axi_wdata => dsp_cav2_p1_phase_out_s_axi_wdata,
    dsp_cav2_p1_phase_out_s_axi_wstrb => dsp_cav2_p1_phase_out_s_axi_wstrb,
    dsp_cav2_p1_phase_out_s_axi_wvalid => dsp_cav2_p1_phase_out_s_axi_wvalid,
    dsp_cav2_p1_phase_out_s_axi_bready => dsp_cav2_p1_phase_out_s_axi_bready,
    dsp_cav2_p1_phase_out_s_axi_araddr => dsp_cav2_p1_phase_out_s_axi_araddr,
    dsp_cav2_p1_phase_out_s_axi_arvalid => dsp_cav2_p1_phase_out_s_axi_arvalid,
    dsp_cav2_p1_phase_out_s_axi_rready => dsp_cav2_p1_phase_out_s_axi_rready,
    dsp_cav2_p1_window_start_s_axi_awaddr => dsp_cav2_p1_window_start_s_axi_awaddr,
    dsp_cav2_p1_window_start_s_axi_awvalid => dsp_cav2_p1_window_start_s_axi_awvalid,
    dsp_cav2_p1_window_start_s_axi_wdata => dsp_cav2_p1_window_start_s_axi_wdata,
    dsp_cav2_p1_window_start_s_axi_wstrb => dsp_cav2_p1_window_start_s_axi_wstrb,
    dsp_cav2_p1_window_start_s_axi_wvalid => dsp_cav2_p1_window_start_s_axi_wvalid,
    dsp_cav2_p1_window_start_s_axi_bready => dsp_cav2_p1_window_start_s_axi_bready,
    dsp_cav2_p1_window_start_s_axi_araddr => dsp_cav2_p1_window_start_s_axi_araddr,
    dsp_cav2_p1_window_start_s_axi_arvalid => dsp_cav2_p1_window_start_s_axi_arvalid,
    dsp_cav2_p1_window_start_s_axi_rready => dsp_cav2_p1_window_start_s_axi_rready,
    dsp_cav2_p1_window_stop_s_axi_awaddr => dsp_cav2_p1_window_stop_s_axi_awaddr,
    dsp_cav2_p1_window_stop_s_axi_awvalid => dsp_cav2_p1_window_stop_s_axi_awvalid,
    dsp_cav2_p1_window_stop_s_axi_wdata => dsp_cav2_p1_window_stop_s_axi_wdata,
    dsp_cav2_p1_window_stop_s_axi_wstrb => dsp_cav2_p1_window_stop_s_axi_wstrb,
    dsp_cav2_p1_window_stop_s_axi_wvalid => dsp_cav2_p1_window_stop_s_axi_wvalid,
    dsp_cav2_p1_window_stop_s_axi_bready => dsp_cav2_p1_window_stop_s_axi_bready,
    dsp_cav2_p1_window_stop_s_axi_araddr => dsp_cav2_p1_window_stop_s_axi_araddr,
    dsp_cav2_p1_window_stop_s_axi_arvalid => dsp_cav2_p1_window_stop_s_axi_arvalid,
    dsp_cav2_p1_window_stop_s_axi_rready => dsp_cav2_p1_window_stop_s_axi_rready,
    dsp_cav2_p2_amp_out_s_axi_awaddr => dsp_cav2_p2_amp_out_s_axi_awaddr,
    dsp_cav2_p2_amp_out_s_axi_awvalid => dsp_cav2_p2_amp_out_s_axi_awvalid,
    dsp_cav2_p2_amp_out_s_axi_wdata => dsp_cav2_p2_amp_out_s_axi_wdata,
    dsp_cav2_p2_amp_out_s_axi_wstrb => dsp_cav2_p2_amp_out_s_axi_wstrb,
    dsp_cav2_p2_amp_out_s_axi_wvalid => dsp_cav2_p2_amp_out_s_axi_wvalid,
    dsp_cav2_p2_amp_out_s_axi_bready => dsp_cav2_p2_amp_out_s_axi_bready,
    dsp_cav2_p2_amp_out_s_axi_araddr => dsp_cav2_p2_amp_out_s_axi_araddr,
    dsp_cav2_p2_amp_out_s_axi_arvalid => dsp_cav2_p2_amp_out_s_axi_arvalid,
    dsp_cav2_p2_amp_out_s_axi_rready => dsp_cav2_p2_amp_out_s_axi_rready,
    dsp_cav2_p2_chan_sel_s_axi_awaddr => dsp_cav2_p2_chan_sel_s_axi_awaddr,
    dsp_cav2_p2_chan_sel_s_axi_awvalid => dsp_cav2_p2_chan_sel_s_axi_awvalid,
    dsp_cav2_p2_chan_sel_s_axi_wdata => dsp_cav2_p2_chan_sel_s_axi_wdata,
    dsp_cav2_p2_chan_sel_s_axi_wstrb => dsp_cav2_p2_chan_sel_s_axi_wstrb,
    dsp_cav2_p2_chan_sel_s_axi_wvalid => dsp_cav2_p2_chan_sel_s_axi_wvalid,
    dsp_cav2_p2_chan_sel_s_axi_bready => dsp_cav2_p2_chan_sel_s_axi_bready,
    dsp_cav2_p2_chan_sel_s_axi_araddr => dsp_cav2_p2_chan_sel_s_axi_araddr,
    dsp_cav2_p2_chan_sel_s_axi_arvalid => dsp_cav2_p2_chan_sel_s_axi_arvalid,
    dsp_cav2_p2_chan_sel_s_axi_rready => dsp_cav2_p2_chan_sel_s_axi_rready,
    dsp_cav2_p2_comparison_i_s_axi_awaddr => dsp_cav2_p2_comparison_i_s_axi_awaddr,
    dsp_cav2_p2_comparison_i_s_axi_awvalid => dsp_cav2_p2_comparison_i_s_axi_awvalid,
    dsp_cav2_p2_comparison_i_s_axi_wdata => dsp_cav2_p2_comparison_i_s_axi_wdata,
    dsp_cav2_p2_comparison_i_s_axi_wstrb => dsp_cav2_p2_comparison_i_s_axi_wstrb,
    dsp_cav2_p2_comparison_i_s_axi_wvalid => dsp_cav2_p2_comparison_i_s_axi_wvalid,
    dsp_cav2_p2_comparison_i_s_axi_bready => dsp_cav2_p2_comparison_i_s_axi_bready,
    dsp_cav2_p2_comparison_i_s_axi_araddr => dsp_cav2_p2_comparison_i_s_axi_araddr,
    dsp_cav2_p2_comparison_i_s_axi_arvalid => dsp_cav2_p2_comparison_i_s_axi_arvalid,
    dsp_cav2_p2_comparison_i_s_axi_rready => dsp_cav2_p2_comparison_i_s_axi_rready,
    dsp_cav2_p2_comparison_phase_s_axi_awaddr => dsp_cav2_p2_comparison_phase_s_axi_awaddr,
    dsp_cav2_p2_comparison_phase_s_axi_awvalid => dsp_cav2_p2_comparison_phase_s_axi_awvalid,
    dsp_cav2_p2_comparison_phase_s_axi_wdata => dsp_cav2_p2_comparison_phase_s_axi_wdata,
    dsp_cav2_p2_comparison_phase_s_axi_wstrb => dsp_cav2_p2_comparison_phase_s_axi_wstrb,
    dsp_cav2_p2_comparison_phase_s_axi_wvalid => dsp_cav2_p2_comparison_phase_s_axi_wvalid,
    dsp_cav2_p2_comparison_phase_s_axi_bready => dsp_cav2_p2_comparison_phase_s_axi_bready,
    dsp_cav2_p2_comparison_phase_s_axi_araddr => dsp_cav2_p2_comparison_phase_s_axi_araddr,
    dsp_cav2_p2_comparison_phase_s_axi_arvalid => dsp_cav2_p2_comparison_phase_s_axi_arvalid,
    dsp_cav2_p2_comparison_phase_s_axi_rready => dsp_cav2_p2_comparison_phase_s_axi_rready,
    dsp_cav2_p2_comparison_q_s_axi_awaddr => dsp_cav2_p2_comparison_q_s_axi_awaddr,
    dsp_cav2_p2_comparison_q_s_axi_awvalid => dsp_cav2_p2_comparison_q_s_axi_awvalid,
    dsp_cav2_p2_comparison_q_s_axi_wdata => dsp_cav2_p2_comparison_q_s_axi_wdata,
    dsp_cav2_p2_comparison_q_s_axi_wstrb => dsp_cav2_p2_comparison_q_s_axi_wstrb,
    dsp_cav2_p2_comparison_q_s_axi_wvalid => dsp_cav2_p2_comparison_q_s_axi_wvalid,
    dsp_cav2_p2_comparison_q_s_axi_bready => dsp_cav2_p2_comparison_q_s_axi_bready,
    dsp_cav2_p2_comparison_q_s_axi_araddr => dsp_cav2_p2_comparison_q_s_axi_araddr,
    dsp_cav2_p2_comparison_q_s_axi_arvalid => dsp_cav2_p2_comparison_q_s_axi_arvalid,
    dsp_cav2_p2_comparison_q_s_axi_rready => dsp_cav2_p2_comparison_q_s_axi_rready,
    dsp_cav2_p2_dc_freq_s_axi_awaddr => dsp_cav2_p2_dc_freq_s_axi_awaddr,
    dsp_cav2_p2_dc_freq_s_axi_awvalid => dsp_cav2_p2_dc_freq_s_axi_awvalid,
    dsp_cav2_p2_dc_freq_s_axi_wdata => dsp_cav2_p2_dc_freq_s_axi_wdata,
    dsp_cav2_p2_dc_freq_s_axi_wstrb => dsp_cav2_p2_dc_freq_s_axi_wstrb,
    dsp_cav2_p2_dc_freq_s_axi_wvalid => dsp_cav2_p2_dc_freq_s_axi_wvalid,
    dsp_cav2_p2_dc_freq_s_axi_bready => dsp_cav2_p2_dc_freq_s_axi_bready,
    dsp_cav2_p2_dc_freq_s_axi_araddr => dsp_cav2_p2_dc_freq_s_axi_araddr,
    dsp_cav2_p2_dc_freq_s_axi_arvalid => dsp_cav2_p2_dc_freq_s_axi_arvalid,
    dsp_cav2_p2_dc_freq_s_axi_rready => dsp_cav2_p2_dc_freq_s_axi_rready,
    dsp_cav2_p2_dc_img_s_axi_awaddr => dsp_cav2_p2_dc_img_s_axi_awaddr,
    dsp_cav2_p2_dc_img_s_axi_awvalid => dsp_cav2_p2_dc_img_s_axi_awvalid,
    dsp_cav2_p2_dc_img_s_axi_wdata => dsp_cav2_p2_dc_img_s_axi_wdata,
    dsp_cav2_p2_dc_img_s_axi_wstrb => dsp_cav2_p2_dc_img_s_axi_wstrb,
    dsp_cav2_p2_dc_img_s_axi_wvalid => dsp_cav2_p2_dc_img_s_axi_wvalid,
    dsp_cav2_p2_dc_img_s_axi_bready => dsp_cav2_p2_dc_img_s_axi_bready,
    dsp_cav2_p2_dc_img_s_axi_araddr => dsp_cav2_p2_dc_img_s_axi_araddr,
    dsp_cav2_p2_dc_img_s_axi_arvalid => dsp_cav2_p2_dc_img_s_axi_arvalid,
    dsp_cav2_p2_dc_img_s_axi_rready => dsp_cav2_p2_dc_img_s_axi_rready,
    dsp_cav2_p2_dc_real_s_axi_awaddr => dsp_cav2_p2_dc_real_s_axi_awaddr,
    dsp_cav2_p2_dc_real_s_axi_awvalid => dsp_cav2_p2_dc_real_s_axi_awvalid,
    dsp_cav2_p2_dc_real_s_axi_wdata => dsp_cav2_p2_dc_real_s_axi_wdata,
    dsp_cav2_p2_dc_real_s_axi_wstrb => dsp_cav2_p2_dc_real_s_axi_wstrb,
    dsp_cav2_p2_dc_real_s_axi_wvalid => dsp_cav2_p2_dc_real_s_axi_wvalid,
    dsp_cav2_p2_dc_real_s_axi_bready => dsp_cav2_p2_dc_real_s_axi_bready,
    dsp_cav2_p2_dc_real_s_axi_araddr => dsp_cav2_p2_dc_real_s_axi_araddr,
    dsp_cav2_p2_dc_real_s_axi_arvalid => dsp_cav2_p2_dc_real_s_axi_arvalid,
    dsp_cav2_p2_dc_real_s_axi_rready => dsp_cav2_p2_dc_real_s_axi_rready,
    dsp_cav2_p2_if_amp_s_axi_awaddr => dsp_cav2_p2_if_amp_s_axi_awaddr,
    dsp_cav2_p2_if_amp_s_axi_awvalid => dsp_cav2_p2_if_amp_s_axi_awvalid,
    dsp_cav2_p2_if_amp_s_axi_wdata => dsp_cav2_p2_if_amp_s_axi_wdata,
    dsp_cav2_p2_if_amp_s_axi_wstrb => dsp_cav2_p2_if_amp_s_axi_wstrb,
    dsp_cav2_p2_if_amp_s_axi_wvalid => dsp_cav2_p2_if_amp_s_axi_wvalid,
    dsp_cav2_p2_if_amp_s_axi_bready => dsp_cav2_p2_if_amp_s_axi_bready,
    dsp_cav2_p2_if_amp_s_axi_araddr => dsp_cav2_p2_if_amp_s_axi_araddr,
    dsp_cav2_p2_if_amp_s_axi_arvalid => dsp_cav2_p2_if_amp_s_axi_arvalid,
    dsp_cav2_p2_if_amp_s_axi_rready => dsp_cav2_p2_if_amp_s_axi_rready,
    dsp_cav2_p2_if_i_s_axi_awaddr => dsp_cav2_p2_if_i_s_axi_awaddr,
    dsp_cav2_p2_if_i_s_axi_awvalid => dsp_cav2_p2_if_i_s_axi_awvalid,
    dsp_cav2_p2_if_i_s_axi_wdata => dsp_cav2_p2_if_i_s_axi_wdata,
    dsp_cav2_p2_if_i_s_axi_wstrb => dsp_cav2_p2_if_i_s_axi_wstrb,
    dsp_cav2_p2_if_i_s_axi_wvalid => dsp_cav2_p2_if_i_s_axi_wvalid,
    dsp_cav2_p2_if_i_s_axi_bready => dsp_cav2_p2_if_i_s_axi_bready,
    dsp_cav2_p2_if_i_s_axi_araddr => dsp_cav2_p2_if_i_s_axi_araddr,
    dsp_cav2_p2_if_i_s_axi_arvalid => dsp_cav2_p2_if_i_s_axi_arvalid,
    dsp_cav2_p2_if_i_s_axi_rready => dsp_cav2_p2_if_i_s_axi_rready,
    dsp_cav2_p2_if_phase_s_axi_awaddr => dsp_cav2_p2_if_phase_s_axi_awaddr,
    dsp_cav2_p2_if_phase_s_axi_awvalid => dsp_cav2_p2_if_phase_s_axi_awvalid,
    dsp_cav2_p2_if_phase_s_axi_wdata => dsp_cav2_p2_if_phase_s_axi_wdata,
    dsp_cav2_p2_if_phase_s_axi_wstrb => dsp_cav2_p2_if_phase_s_axi_wstrb,
    dsp_cav2_p2_if_phase_s_axi_wvalid => dsp_cav2_p2_if_phase_s_axi_wvalid,
    dsp_cav2_p2_if_phase_s_axi_bready => dsp_cav2_p2_if_phase_s_axi_bready,
    dsp_cav2_p2_if_phase_s_axi_araddr => dsp_cav2_p2_if_phase_s_axi_araddr,
    dsp_cav2_p2_if_phase_s_axi_arvalid => dsp_cav2_p2_if_phase_s_axi_arvalid,
    dsp_cav2_p2_if_phase_s_axi_rready => dsp_cav2_p2_if_phase_s_axi_rready,
    dsp_cav2_p2_if_q_s_axi_awaddr => dsp_cav2_p2_if_q_s_axi_awaddr,
    dsp_cav2_p2_if_q_s_axi_awvalid => dsp_cav2_p2_if_q_s_axi_awvalid,
    dsp_cav2_p2_if_q_s_axi_wdata => dsp_cav2_p2_if_q_s_axi_wdata,
    dsp_cav2_p2_if_q_s_axi_wstrb => dsp_cav2_p2_if_q_s_axi_wstrb,
    dsp_cav2_p2_if_q_s_axi_wvalid => dsp_cav2_p2_if_q_s_axi_wvalid,
    dsp_cav2_p2_if_q_s_axi_bready => dsp_cav2_p2_if_q_s_axi_bready,
    dsp_cav2_p2_if_q_s_axi_araddr => dsp_cav2_p2_if_q_s_axi_araddr,
    dsp_cav2_p2_if_q_s_axi_arvalid => dsp_cav2_p2_if_q_s_axi_arvalid,
    dsp_cav2_p2_if_q_s_axi_rready => dsp_cav2_p2_if_q_s_axi_rready,
    dsp_cav2_p2_integrated_i_s_axi_awaddr => dsp_cav2_p2_integrated_i_s_axi_awaddr,
    dsp_cav2_p2_integrated_i_s_axi_awvalid => dsp_cav2_p2_integrated_i_s_axi_awvalid,
    dsp_cav2_p2_integrated_i_s_axi_wdata => dsp_cav2_p2_integrated_i_s_axi_wdata,
    dsp_cav2_p2_integrated_i_s_axi_wstrb => dsp_cav2_p2_integrated_i_s_axi_wstrb,
    dsp_cav2_p2_integrated_i_s_axi_wvalid => dsp_cav2_p2_integrated_i_s_axi_wvalid,
    dsp_cav2_p2_integrated_i_s_axi_bready => dsp_cav2_p2_integrated_i_s_axi_bready,
    dsp_cav2_p2_integrated_i_s_axi_araddr => dsp_cav2_p2_integrated_i_s_axi_araddr,
    dsp_cav2_p2_integrated_i_s_axi_arvalid => dsp_cav2_p2_integrated_i_s_axi_arvalid,
    dsp_cav2_p2_integrated_i_s_axi_rready => dsp_cav2_p2_integrated_i_s_axi_rready,
    dsp_cav2_p2_integrated_q_s_axi_awaddr => dsp_cav2_p2_integrated_q_s_axi_awaddr,
    dsp_cav2_p2_integrated_q_s_axi_awvalid => dsp_cav2_p2_integrated_q_s_axi_awvalid,
    dsp_cav2_p2_integrated_q_s_axi_wdata => dsp_cav2_p2_integrated_q_s_axi_wdata,
    dsp_cav2_p2_integrated_q_s_axi_wstrb => dsp_cav2_p2_integrated_q_s_axi_wstrb,
    dsp_cav2_p2_integrated_q_s_axi_wvalid => dsp_cav2_p2_integrated_q_s_axi_wvalid,
    dsp_cav2_p2_integrated_q_s_axi_bready => dsp_cav2_p2_integrated_q_s_axi_bready,
    dsp_cav2_p2_integrated_q_s_axi_araddr => dsp_cav2_p2_integrated_q_s_axi_araddr,
    dsp_cav2_p2_integrated_q_s_axi_arvalid => dsp_cav2_p2_integrated_q_s_axi_arvalid,
    dsp_cav2_p2_integrated_q_s_axi_rready => dsp_cav2_p2_integrated_q_s_axi_rready,
    dsp_cav2_p2_phase_out_s_axi_awaddr => dsp_cav2_p2_phase_out_s_axi_awaddr,
    dsp_cav2_p2_phase_out_s_axi_awvalid => dsp_cav2_p2_phase_out_s_axi_awvalid,
    dsp_cav2_p2_phase_out_s_axi_wdata => dsp_cav2_p2_phase_out_s_axi_wdata,
    dsp_cav2_p2_phase_out_s_axi_wstrb => dsp_cav2_p2_phase_out_s_axi_wstrb,
    dsp_cav2_p2_phase_out_s_axi_wvalid => dsp_cav2_p2_phase_out_s_axi_wvalid,
    dsp_cav2_p2_phase_out_s_axi_bready => dsp_cav2_p2_phase_out_s_axi_bready,
    dsp_cav2_p2_phase_out_s_axi_araddr => dsp_cav2_p2_phase_out_s_axi_araddr,
    dsp_cav2_p2_phase_out_s_axi_arvalid => dsp_cav2_p2_phase_out_s_axi_arvalid,
    dsp_cav2_p2_phase_out_s_axi_rready => dsp_cav2_p2_phase_out_s_axi_rready,
    dsp_cav2_p2_window_start_s_axi_awaddr => dsp_cav2_p2_window_start_s_axi_awaddr,
    dsp_cav2_p2_window_start_s_axi_awvalid => dsp_cav2_p2_window_start_s_axi_awvalid,
    dsp_cav2_p2_window_start_s_axi_wdata => dsp_cav2_p2_window_start_s_axi_wdata,
    dsp_cav2_p2_window_start_s_axi_wstrb => dsp_cav2_p2_window_start_s_axi_wstrb,
    dsp_cav2_p2_window_start_s_axi_wvalid => dsp_cav2_p2_window_start_s_axi_wvalid,
    dsp_cav2_p2_window_start_s_axi_bready => dsp_cav2_p2_window_start_s_axi_bready,
    dsp_cav2_p2_window_start_s_axi_araddr => dsp_cav2_p2_window_start_s_axi_araddr,
    dsp_cav2_p2_window_start_s_axi_arvalid => dsp_cav2_p2_window_start_s_axi_arvalid,
    dsp_cav2_p2_window_start_s_axi_rready => dsp_cav2_p2_window_start_s_axi_rready,
    dsp_cav2_p2_window_stop_s_axi_awaddr => dsp_cav2_p2_window_stop_s_axi_awaddr,
    dsp_cav2_p2_window_stop_s_axi_awvalid => dsp_cav2_p2_window_stop_s_axi_awvalid,
    dsp_cav2_p2_window_stop_s_axi_wdata => dsp_cav2_p2_window_stop_s_axi_wdata,
    dsp_cav2_p2_window_stop_s_axi_wstrb => dsp_cav2_p2_window_stop_s_axi_wstrb,
    dsp_cav2_p2_window_stop_s_axi_wvalid => dsp_cav2_p2_window_stop_s_axi_wvalid,
    dsp_cav2_p2_window_stop_s_axi_bready => dsp_cav2_p2_window_stop_s_axi_bready,
    dsp_cav2_p2_window_stop_s_axi_araddr => dsp_cav2_p2_window_stop_s_axi_araddr,
    dsp_cav2_p2_window_stop_s_axi_arvalid => dsp_cav2_p2_window_stop_s_axi_arvalid,
    dsp_cav2_p2_window_stop_s_axi_rready => dsp_cav2_p2_window_stop_s_axi_rready,
    dsp_ref_window_start_s_axi_awaddr => dsp_ref_window_start_s_axi_awaddr,
    dsp_ref_window_start_s_axi_awvalid => dsp_ref_window_start_s_axi_awvalid,
    dsp_ref_window_start_s_axi_wdata => dsp_ref_window_start_s_axi_wdata,
    dsp_ref_window_start_s_axi_wstrb => dsp_ref_window_start_s_axi_wstrb,
    dsp_ref_window_start_s_axi_wvalid => dsp_ref_window_start_s_axi_wvalid,
    dsp_ref_window_start_s_axi_bready => dsp_ref_window_start_s_axi_bready,
    dsp_ref_window_start_s_axi_araddr => dsp_ref_window_start_s_axi_araddr,
    dsp_ref_window_start_s_axi_arvalid => dsp_ref_window_start_s_axi_arvalid,
    dsp_ref_window_start_s_axi_rready => dsp_ref_window_start_s_axi_rready,
    dsp_ref_window_stop_s_axi_awaddr => dsp_ref_window_stop_s_axi_awaddr,
    dsp_ref_window_stop_s_axi_awvalid => dsp_ref_window_stop_s_axi_awvalid,
    dsp_ref_window_stop_s_axi_wdata => dsp_ref_window_stop_s_axi_wdata,
    dsp_ref_window_stop_s_axi_wstrb => dsp_ref_window_stop_s_axi_wstrb,
    dsp_ref_window_stop_s_axi_wvalid => dsp_ref_window_stop_s_axi_wvalid,
    dsp_ref_window_stop_s_axi_bready => dsp_ref_window_stop_s_axi_bready,
    dsp_ref_window_stop_s_axi_araddr => dsp_ref_window_stop_s_axi_araddr,
    dsp_ref_window_stop_s_axi_arvalid => dsp_ref_window_stop_s_axi_arvalid,
    dsp_ref_window_stop_s_axi_rready => dsp_ref_window_stop_s_axi_rready,
    dsp_rf_ref_amp_s_axi_awaddr => dsp_rf_ref_amp_s_axi_awaddr,
    dsp_rf_ref_amp_s_axi_awvalid => dsp_rf_ref_amp_s_axi_awvalid,
    dsp_rf_ref_amp_s_axi_wdata => dsp_rf_ref_amp_s_axi_wdata,
    dsp_rf_ref_amp_s_axi_wstrb => dsp_rf_ref_amp_s_axi_wstrb,
    dsp_rf_ref_amp_s_axi_wvalid => dsp_rf_ref_amp_s_axi_wvalid,
    dsp_rf_ref_amp_s_axi_bready => dsp_rf_ref_amp_s_axi_bready,
    dsp_rf_ref_amp_s_axi_araddr => dsp_rf_ref_amp_s_axi_araddr,
    dsp_rf_ref_amp_s_axi_arvalid => dsp_rf_ref_amp_s_axi_arvalid,
    dsp_rf_ref_amp_s_axi_rready => dsp_rf_ref_amp_s_axi_rready,
    dsp_rf_ref_chan_sel_s_axi_awaddr => dsp_rf_ref_chan_sel_s_axi_awaddr,
    dsp_rf_ref_chan_sel_s_axi_awvalid => dsp_rf_ref_chan_sel_s_axi_awvalid,
    dsp_rf_ref_chan_sel_s_axi_wdata => dsp_rf_ref_chan_sel_s_axi_wdata,
    dsp_rf_ref_chan_sel_s_axi_wstrb => dsp_rf_ref_chan_sel_s_axi_wstrb,
    dsp_rf_ref_chan_sel_s_axi_wvalid => dsp_rf_ref_chan_sel_s_axi_wvalid,
    dsp_rf_ref_chan_sel_s_axi_bready => dsp_rf_ref_chan_sel_s_axi_bready,
    dsp_rf_ref_chan_sel_s_axi_araddr => dsp_rf_ref_chan_sel_s_axi_araddr,
    dsp_rf_ref_chan_sel_s_axi_arvalid => dsp_rf_ref_chan_sel_s_axi_arvalid,
    dsp_rf_ref_chan_sel_s_axi_rready => dsp_rf_ref_chan_sel_s_axi_rready,
    dsp_rf_ref_i_s_axi_awaddr => dsp_rf_ref_i_s_axi_awaddr,
    dsp_rf_ref_i_s_axi_awvalid => dsp_rf_ref_i_s_axi_awvalid,
    dsp_rf_ref_i_s_axi_wdata => dsp_rf_ref_i_s_axi_wdata,
    dsp_rf_ref_i_s_axi_wstrb => dsp_rf_ref_i_s_axi_wstrb,
    dsp_rf_ref_i_s_axi_wvalid => dsp_rf_ref_i_s_axi_wvalid,
    dsp_rf_ref_i_s_axi_bready => dsp_rf_ref_i_s_axi_bready,
    dsp_rf_ref_i_s_axi_araddr => dsp_rf_ref_i_s_axi_araddr,
    dsp_rf_ref_i_s_axi_arvalid => dsp_rf_ref_i_s_axi_arvalid,
    dsp_rf_ref_i_s_axi_rready => dsp_rf_ref_i_s_axi_rready,
    dsp_rf_ref_phase_s_axi_awaddr => dsp_rf_ref_phase_s_axi_awaddr,
    dsp_rf_ref_phase_s_axi_awvalid => dsp_rf_ref_phase_s_axi_awvalid,
    dsp_rf_ref_phase_s_axi_wdata => dsp_rf_ref_phase_s_axi_wdata,
    dsp_rf_ref_phase_s_axi_wstrb => dsp_rf_ref_phase_s_axi_wstrb,
    dsp_rf_ref_phase_s_axi_wvalid => dsp_rf_ref_phase_s_axi_wvalid,
    dsp_rf_ref_phase_s_axi_bready => dsp_rf_ref_phase_s_axi_bready,
    dsp_rf_ref_phase_s_axi_araddr => dsp_rf_ref_phase_s_axi_araddr,
    dsp_rf_ref_phase_s_axi_arvalid => dsp_rf_ref_phase_s_axi_arvalid,
    dsp_rf_ref_phase_s_axi_rready => dsp_rf_ref_phase_s_axi_rready,
    dsp_rf_ref_q_s_axi_awaddr => dsp_rf_ref_q_s_axi_awaddr,
    dsp_rf_ref_q_s_axi_awvalid => dsp_rf_ref_q_s_axi_awvalid,
    dsp_rf_ref_q_s_axi_wdata => dsp_rf_ref_q_s_axi_wdata,
    dsp_rf_ref_q_s_axi_wstrb => dsp_rf_ref_q_s_axi_wstrb,
    dsp_rf_ref_q_s_axi_wvalid => dsp_rf_ref_q_s_axi_wvalid,
    dsp_rf_ref_q_s_axi_bready => dsp_rf_ref_q_s_axi_bready,
    dsp_rf_ref_q_s_axi_araddr => dsp_rf_ref_q_s_axi_araddr,
    dsp_rf_ref_q_s_axi_arvalid => dsp_rf_ref_q_s_axi_arvalid,
    dsp_rf_ref_q_s_axi_rready => dsp_rf_ref_q_s_axi_rready,
    axi_lite_s_axi_awready => axi_lite_s_axi_awready,
    axi_lite_s_axi_wready => axi_lite_s_axi_wready,
    axi_lite_s_axi_bresp => axi_lite_s_axi_bresp,
    axi_lite_s_axi_bvalid => axi_lite_s_axi_bvalid,
    axi_lite_s_axi_arready => axi_lite_s_axi_arready,
    axi_lite_s_axi_rdata => axi_lite_s_axi_rdata,
    axi_lite_s_axi_rresp => axi_lite_s_axi_rresp,
    axi_lite_s_axi_rvalid => axi_lite_s_axi_rvalid,
    dsp_cav1_nco_phase_adj_s_axi_awready => dsp_cav1_nco_phase_adj_s_axi_awready,
    dsp_cav1_nco_phase_adj_s_axi_wready => dsp_cav1_nco_phase_adj_s_axi_wready,
    dsp_cav1_nco_phase_adj_s_axi_bresp => dsp_cav1_nco_phase_adj_s_axi_bresp,
    dsp_cav1_nco_phase_adj_s_axi_bvalid => dsp_cav1_nco_phase_adj_s_axi_bvalid,
    dsp_cav1_nco_phase_adj_s_axi_arready => dsp_cav1_nco_phase_adj_s_axi_arready,
    dsp_cav1_nco_phase_adj_s_axi_rdata => dsp_cav1_nco_phase_adj_s_axi_rdata,
    dsp_cav1_nco_phase_adj_s_axi_rresp => dsp_cav1_nco_phase_adj_s_axi_rresp,
    dsp_cav1_nco_phase_adj_s_axi_rvalid => dsp_cav1_nco_phase_adj_s_axi_rvalid,
    dsp_cav1_nco_phase_reset_s_axi_awready => dsp_cav1_nco_phase_reset_s_axi_awready,
    dsp_cav1_nco_phase_reset_s_axi_wready => dsp_cav1_nco_phase_reset_s_axi_wready,
    dsp_cav1_nco_phase_reset_s_axi_bresp => dsp_cav1_nco_phase_reset_s_axi_bresp,
    dsp_cav1_nco_phase_reset_s_axi_bvalid => dsp_cav1_nco_phase_reset_s_axi_bvalid,
    dsp_cav1_nco_phase_reset_s_axi_arready => dsp_cav1_nco_phase_reset_s_axi_arready,
    dsp_cav1_nco_phase_reset_s_axi_rdata => dsp_cav1_nco_phase_reset_s_axi_rdata,
    dsp_cav1_nco_phase_reset_s_axi_rresp => dsp_cav1_nco_phase_reset_s_axi_rresp,
    dsp_cav1_nco_phase_reset_s_axi_rvalid => dsp_cav1_nco_phase_reset_s_axi_rvalid,
    dsp_cav1_p1_amp_out_s_axi_awready => dsp_cav1_p1_amp_out_s_axi_awready,
    dsp_cav1_p1_amp_out_s_axi_wready => dsp_cav1_p1_amp_out_s_axi_wready,
    dsp_cav1_p1_amp_out_s_axi_bresp => dsp_cav1_p1_amp_out_s_axi_bresp,
    dsp_cav1_p1_amp_out_s_axi_bvalid => dsp_cav1_p1_amp_out_s_axi_bvalid,
    dsp_cav1_p1_amp_out_s_axi_arready => dsp_cav1_p1_amp_out_s_axi_arready,
    dsp_cav1_p1_amp_out_s_axi_rdata => dsp_cav1_p1_amp_out_s_axi_rdata,
    dsp_cav1_p1_amp_out_s_axi_rresp => dsp_cav1_p1_amp_out_s_axi_rresp,
    dsp_cav1_p1_amp_out_s_axi_rvalid => dsp_cav1_p1_amp_out_s_axi_rvalid,
    dsp_cav1_p1_chan_sel_s_axi_awready => dsp_cav1_p1_chan_sel_s_axi_awready,
    dsp_cav1_p1_chan_sel_s_axi_wready => dsp_cav1_p1_chan_sel_s_axi_wready,
    dsp_cav1_p1_chan_sel_s_axi_bresp => dsp_cav1_p1_chan_sel_s_axi_bresp,
    dsp_cav1_p1_chan_sel_s_axi_bvalid => dsp_cav1_p1_chan_sel_s_axi_bvalid,
    dsp_cav1_p1_chan_sel_s_axi_arready => dsp_cav1_p1_chan_sel_s_axi_arready,
    dsp_cav1_p1_chan_sel_s_axi_rdata => dsp_cav1_p1_chan_sel_s_axi_rdata,
    dsp_cav1_p1_chan_sel_s_axi_rresp => dsp_cav1_p1_chan_sel_s_axi_rresp,
    dsp_cav1_p1_chan_sel_s_axi_rvalid => dsp_cav1_p1_chan_sel_s_axi_rvalid,
    dsp_cav1_p1_comparison_i_s_axi_awready => dsp_cav1_p1_comparison_i_s_axi_awready,
    dsp_cav1_p1_comparison_i_s_axi_wready => dsp_cav1_p1_comparison_i_s_axi_wready,
    dsp_cav1_p1_comparison_i_s_axi_bresp => dsp_cav1_p1_comparison_i_s_axi_bresp,
    dsp_cav1_p1_comparison_i_s_axi_bvalid => dsp_cav1_p1_comparison_i_s_axi_bvalid,
    dsp_cav1_p1_comparison_i_s_axi_arready => dsp_cav1_p1_comparison_i_s_axi_arready,
    dsp_cav1_p1_comparison_i_s_axi_rdata => dsp_cav1_p1_comparison_i_s_axi_rdata,
    dsp_cav1_p1_comparison_i_s_axi_rresp => dsp_cav1_p1_comparison_i_s_axi_rresp,
    dsp_cav1_p1_comparison_i_s_axi_rvalid => dsp_cav1_p1_comparison_i_s_axi_rvalid,
    dsp_cav1_p1_comparison_phase_s_axi_awready => dsp_cav1_p1_comparison_phase_s_axi_awready,
    dsp_cav1_p1_comparison_phase_s_axi_wready => dsp_cav1_p1_comparison_phase_s_axi_wready,
    dsp_cav1_p1_comparison_phase_s_axi_bresp => dsp_cav1_p1_comparison_phase_s_axi_bresp,
    dsp_cav1_p1_comparison_phase_s_axi_bvalid => dsp_cav1_p1_comparison_phase_s_axi_bvalid,
    dsp_cav1_p1_comparison_phase_s_axi_arready => dsp_cav1_p1_comparison_phase_s_axi_arready,
    dsp_cav1_p1_comparison_phase_s_axi_rdata => dsp_cav1_p1_comparison_phase_s_axi_rdata,
    dsp_cav1_p1_comparison_phase_s_axi_rresp => dsp_cav1_p1_comparison_phase_s_axi_rresp,
    dsp_cav1_p1_comparison_phase_s_axi_rvalid => dsp_cav1_p1_comparison_phase_s_axi_rvalid,
    dsp_cav1_p1_comparison_q_s_axi_awready => dsp_cav1_p1_comparison_q_s_axi_awready,
    dsp_cav1_p1_comparison_q_s_axi_wready => dsp_cav1_p1_comparison_q_s_axi_wready,
    dsp_cav1_p1_comparison_q_s_axi_bresp => dsp_cav1_p1_comparison_q_s_axi_bresp,
    dsp_cav1_p1_comparison_q_s_axi_bvalid => dsp_cav1_p1_comparison_q_s_axi_bvalid,
    dsp_cav1_p1_comparison_q_s_axi_arready => dsp_cav1_p1_comparison_q_s_axi_arready,
    dsp_cav1_p1_comparison_q_s_axi_rdata => dsp_cav1_p1_comparison_q_s_axi_rdata,
    dsp_cav1_p1_comparison_q_s_axi_rresp => dsp_cav1_p1_comparison_q_s_axi_rresp,
    dsp_cav1_p1_comparison_q_s_axi_rvalid => dsp_cav1_p1_comparison_q_s_axi_rvalid,
    dsp_cav1_p1_dc_freq_s_axi_awready => dsp_cav1_p1_dc_freq_s_axi_awready,
    dsp_cav1_p1_dc_freq_s_axi_wready => dsp_cav1_p1_dc_freq_s_axi_wready,
    dsp_cav1_p1_dc_freq_s_axi_bresp => dsp_cav1_p1_dc_freq_s_axi_bresp,
    dsp_cav1_p1_dc_freq_s_axi_bvalid => dsp_cav1_p1_dc_freq_s_axi_bvalid,
    dsp_cav1_p1_dc_freq_s_axi_arready => dsp_cav1_p1_dc_freq_s_axi_arready,
    dsp_cav1_p1_dc_freq_s_axi_rdata => dsp_cav1_p1_dc_freq_s_axi_rdata,
    dsp_cav1_p1_dc_freq_s_axi_rresp => dsp_cav1_p1_dc_freq_s_axi_rresp,
    dsp_cav1_p1_dc_freq_s_axi_rvalid => dsp_cav1_p1_dc_freq_s_axi_rvalid,
    dsp_cav1_p1_dc_img_s_axi_awready => dsp_cav1_p1_dc_img_s_axi_awready,
    dsp_cav1_p1_dc_img_s_axi_wready => dsp_cav1_p1_dc_img_s_axi_wready,
    dsp_cav1_p1_dc_img_s_axi_bresp => dsp_cav1_p1_dc_img_s_axi_bresp,
    dsp_cav1_p1_dc_img_s_axi_bvalid => dsp_cav1_p1_dc_img_s_axi_bvalid,
    dsp_cav1_p1_dc_img_s_axi_arready => dsp_cav1_p1_dc_img_s_axi_arready,
    dsp_cav1_p1_dc_img_s_axi_rdata => dsp_cav1_p1_dc_img_s_axi_rdata,
    dsp_cav1_p1_dc_img_s_axi_rresp => dsp_cav1_p1_dc_img_s_axi_rresp,
    dsp_cav1_p1_dc_img_s_axi_rvalid => dsp_cav1_p1_dc_img_s_axi_rvalid,
    dsp_cav1_p1_dc_real_s_axi_awready => dsp_cav1_p1_dc_real_s_axi_awready,
    dsp_cav1_p1_dc_real_s_axi_wready => dsp_cav1_p1_dc_real_s_axi_wready,
    dsp_cav1_p1_dc_real_s_axi_bresp => dsp_cav1_p1_dc_real_s_axi_bresp,
    dsp_cav1_p1_dc_real_s_axi_bvalid => dsp_cav1_p1_dc_real_s_axi_bvalid,
    dsp_cav1_p1_dc_real_s_axi_arready => dsp_cav1_p1_dc_real_s_axi_arready,
    dsp_cav1_p1_dc_real_s_axi_rdata => dsp_cav1_p1_dc_real_s_axi_rdata,
    dsp_cav1_p1_dc_real_s_axi_rresp => dsp_cav1_p1_dc_real_s_axi_rresp,
    dsp_cav1_p1_dc_real_s_axi_rvalid => dsp_cav1_p1_dc_real_s_axi_rvalid,
    dsp_cav1_p1_if_amp_s_axi_awready => dsp_cav1_p1_if_amp_s_axi_awready,
    dsp_cav1_p1_if_amp_s_axi_wready => dsp_cav1_p1_if_amp_s_axi_wready,
    dsp_cav1_p1_if_amp_s_axi_bresp => dsp_cav1_p1_if_amp_s_axi_bresp,
    dsp_cav1_p1_if_amp_s_axi_bvalid => dsp_cav1_p1_if_amp_s_axi_bvalid,
    dsp_cav1_p1_if_amp_s_axi_arready => dsp_cav1_p1_if_amp_s_axi_arready,
    dsp_cav1_p1_if_amp_s_axi_rdata => dsp_cav1_p1_if_amp_s_axi_rdata,
    dsp_cav1_p1_if_amp_s_axi_rresp => dsp_cav1_p1_if_amp_s_axi_rresp,
    dsp_cav1_p1_if_amp_s_axi_rvalid => dsp_cav1_p1_if_amp_s_axi_rvalid,
    dsp_cav1_p1_if_i_s_axi_awready => dsp_cav1_p1_if_i_s_axi_awready,
    dsp_cav1_p1_if_i_s_axi_wready => dsp_cav1_p1_if_i_s_axi_wready,
    dsp_cav1_p1_if_i_s_axi_bresp => dsp_cav1_p1_if_i_s_axi_bresp,
    dsp_cav1_p1_if_i_s_axi_bvalid => dsp_cav1_p1_if_i_s_axi_bvalid,
    dsp_cav1_p1_if_i_s_axi_arready => dsp_cav1_p1_if_i_s_axi_arready,
    dsp_cav1_p1_if_i_s_axi_rdata => dsp_cav1_p1_if_i_s_axi_rdata,
    dsp_cav1_p1_if_i_s_axi_rresp => dsp_cav1_p1_if_i_s_axi_rresp,
    dsp_cav1_p1_if_i_s_axi_rvalid => dsp_cav1_p1_if_i_s_axi_rvalid,
    dsp_cav1_p1_if_phase_s_axi_awready => dsp_cav1_p1_if_phase_s_axi_awready,
    dsp_cav1_p1_if_phase_s_axi_wready => dsp_cav1_p1_if_phase_s_axi_wready,
    dsp_cav1_p1_if_phase_s_axi_bresp => dsp_cav1_p1_if_phase_s_axi_bresp,
    dsp_cav1_p1_if_phase_s_axi_bvalid => dsp_cav1_p1_if_phase_s_axi_bvalid,
    dsp_cav1_p1_if_phase_s_axi_arready => dsp_cav1_p1_if_phase_s_axi_arready,
    dsp_cav1_p1_if_phase_s_axi_rdata => dsp_cav1_p1_if_phase_s_axi_rdata,
    dsp_cav1_p1_if_phase_s_axi_rresp => dsp_cav1_p1_if_phase_s_axi_rresp,
    dsp_cav1_p1_if_phase_s_axi_rvalid => dsp_cav1_p1_if_phase_s_axi_rvalid,
    dsp_cav1_p1_if_q_s_axi_awready => dsp_cav1_p1_if_q_s_axi_awready,
    dsp_cav1_p1_if_q_s_axi_wready => dsp_cav1_p1_if_q_s_axi_wready,
    dsp_cav1_p1_if_q_s_axi_bresp => dsp_cav1_p1_if_q_s_axi_bresp,
    dsp_cav1_p1_if_q_s_axi_bvalid => dsp_cav1_p1_if_q_s_axi_bvalid,
    dsp_cav1_p1_if_q_s_axi_arready => dsp_cav1_p1_if_q_s_axi_arready,
    dsp_cav1_p1_if_q_s_axi_rdata => dsp_cav1_p1_if_q_s_axi_rdata,
    dsp_cav1_p1_if_q_s_axi_rresp => dsp_cav1_p1_if_q_s_axi_rresp,
    dsp_cav1_p1_if_q_s_axi_rvalid => dsp_cav1_p1_if_q_s_axi_rvalid,
    dsp_cav1_p1_integrated_i_s_axi_awready => dsp_cav1_p1_integrated_i_s_axi_awready,
    dsp_cav1_p1_integrated_i_s_axi_wready => dsp_cav1_p1_integrated_i_s_axi_wready,
    dsp_cav1_p1_integrated_i_s_axi_bresp => dsp_cav1_p1_integrated_i_s_axi_bresp,
    dsp_cav1_p1_integrated_i_s_axi_bvalid => dsp_cav1_p1_integrated_i_s_axi_bvalid,
    dsp_cav1_p1_integrated_i_s_axi_arready => dsp_cav1_p1_integrated_i_s_axi_arready,
    dsp_cav1_p1_integrated_i_s_axi_rdata => dsp_cav1_p1_integrated_i_s_axi_rdata,
    dsp_cav1_p1_integrated_i_s_axi_rresp => dsp_cav1_p1_integrated_i_s_axi_rresp,
    dsp_cav1_p1_integrated_i_s_axi_rvalid => dsp_cav1_p1_integrated_i_s_axi_rvalid,
    dsp_cav1_p1_integrated_q_s_axi_awready => dsp_cav1_p1_integrated_q_s_axi_awready,
    dsp_cav1_p1_integrated_q_s_axi_wready => dsp_cav1_p1_integrated_q_s_axi_wready,
    dsp_cav1_p1_integrated_q_s_axi_bresp => dsp_cav1_p1_integrated_q_s_axi_bresp,
    dsp_cav1_p1_integrated_q_s_axi_bvalid => dsp_cav1_p1_integrated_q_s_axi_bvalid,
    dsp_cav1_p1_integrated_q_s_axi_arready => dsp_cav1_p1_integrated_q_s_axi_arready,
    dsp_cav1_p1_integrated_q_s_axi_rdata => dsp_cav1_p1_integrated_q_s_axi_rdata,
    dsp_cav1_p1_integrated_q_s_axi_rresp => dsp_cav1_p1_integrated_q_s_axi_rresp,
    dsp_cav1_p1_integrated_q_s_axi_rvalid => dsp_cav1_p1_integrated_q_s_axi_rvalid,
    dsp_cav1_p1_phase_out_s_axi_awready => dsp_cav1_p1_phase_out_s_axi_awready,
    dsp_cav1_p1_phase_out_s_axi_wready => dsp_cav1_p1_phase_out_s_axi_wready,
    dsp_cav1_p1_phase_out_s_axi_bresp => dsp_cav1_p1_phase_out_s_axi_bresp,
    dsp_cav1_p1_phase_out_s_axi_bvalid => dsp_cav1_p1_phase_out_s_axi_bvalid,
    dsp_cav1_p1_phase_out_s_axi_arready => dsp_cav1_p1_phase_out_s_axi_arready,
    dsp_cav1_p1_phase_out_s_axi_rdata => dsp_cav1_p1_phase_out_s_axi_rdata,
    dsp_cav1_p1_phase_out_s_axi_rresp => dsp_cav1_p1_phase_out_s_axi_rresp,
    dsp_cav1_p1_phase_out_s_axi_rvalid => dsp_cav1_p1_phase_out_s_axi_rvalid,
    dsp_cav1_p1_window_start_s_axi_awready => dsp_cav1_p1_window_start_s_axi_awready,
    dsp_cav1_p1_window_start_s_axi_wready => dsp_cav1_p1_window_start_s_axi_wready,
    dsp_cav1_p1_window_start_s_axi_bresp => dsp_cav1_p1_window_start_s_axi_bresp,
    dsp_cav1_p1_window_start_s_axi_bvalid => dsp_cav1_p1_window_start_s_axi_bvalid,
    dsp_cav1_p1_window_start_s_axi_arready => dsp_cav1_p1_window_start_s_axi_arready,
    dsp_cav1_p1_window_start_s_axi_rdata => dsp_cav1_p1_window_start_s_axi_rdata,
    dsp_cav1_p1_window_start_s_axi_rresp => dsp_cav1_p1_window_start_s_axi_rresp,
    dsp_cav1_p1_window_start_s_axi_rvalid => dsp_cav1_p1_window_start_s_axi_rvalid,
    dsp_cav1_p1_window_stop_s_axi_awready => dsp_cav1_p1_window_stop_s_axi_awready,
    dsp_cav1_p1_window_stop_s_axi_wready => dsp_cav1_p1_window_stop_s_axi_wready,
    dsp_cav1_p1_window_stop_s_axi_bresp => dsp_cav1_p1_window_stop_s_axi_bresp,
    dsp_cav1_p1_window_stop_s_axi_bvalid => dsp_cav1_p1_window_stop_s_axi_bvalid,
    dsp_cav1_p1_window_stop_s_axi_arready => dsp_cav1_p1_window_stop_s_axi_arready,
    dsp_cav1_p1_window_stop_s_axi_rdata => dsp_cav1_p1_window_stop_s_axi_rdata,
    dsp_cav1_p1_window_stop_s_axi_rresp => dsp_cav1_p1_window_stop_s_axi_rresp,
    dsp_cav1_p1_window_stop_s_axi_rvalid => dsp_cav1_p1_window_stop_s_axi_rvalid,
    dsp_cav1_p2_amp_out_s_axi_awready => dsp_cav1_p2_amp_out_s_axi_awready,
    dsp_cav1_p2_amp_out_s_axi_wready => dsp_cav1_p2_amp_out_s_axi_wready,
    dsp_cav1_p2_amp_out_s_axi_bresp => dsp_cav1_p2_amp_out_s_axi_bresp,
    dsp_cav1_p2_amp_out_s_axi_bvalid => dsp_cav1_p2_amp_out_s_axi_bvalid,
    dsp_cav1_p2_amp_out_s_axi_arready => dsp_cav1_p2_amp_out_s_axi_arready,
    dsp_cav1_p2_amp_out_s_axi_rdata => dsp_cav1_p2_amp_out_s_axi_rdata,
    dsp_cav1_p2_amp_out_s_axi_rresp => dsp_cav1_p2_amp_out_s_axi_rresp,
    dsp_cav1_p2_amp_out_s_axi_rvalid => dsp_cav1_p2_amp_out_s_axi_rvalid,
    dsp_cav1_p2_chan_sel_s_axi_awready => dsp_cav1_p2_chan_sel_s_axi_awready,
    dsp_cav1_p2_chan_sel_s_axi_wready => dsp_cav1_p2_chan_sel_s_axi_wready,
    dsp_cav1_p2_chan_sel_s_axi_bresp => dsp_cav1_p2_chan_sel_s_axi_bresp,
    dsp_cav1_p2_chan_sel_s_axi_bvalid => dsp_cav1_p2_chan_sel_s_axi_bvalid,
    dsp_cav1_p2_chan_sel_s_axi_arready => dsp_cav1_p2_chan_sel_s_axi_arready,
    dsp_cav1_p2_chan_sel_s_axi_rdata => dsp_cav1_p2_chan_sel_s_axi_rdata,
    dsp_cav1_p2_chan_sel_s_axi_rresp => dsp_cav1_p2_chan_sel_s_axi_rresp,
    dsp_cav1_p2_chan_sel_s_axi_rvalid => dsp_cav1_p2_chan_sel_s_axi_rvalid,
    dsp_cav1_p2_comparison_i_s_axi_awready => dsp_cav1_p2_comparison_i_s_axi_awready,
    dsp_cav1_p2_comparison_i_s_axi_wready => dsp_cav1_p2_comparison_i_s_axi_wready,
    dsp_cav1_p2_comparison_i_s_axi_bresp => dsp_cav1_p2_comparison_i_s_axi_bresp,
    dsp_cav1_p2_comparison_i_s_axi_bvalid => dsp_cav1_p2_comparison_i_s_axi_bvalid,
    dsp_cav1_p2_comparison_i_s_axi_arready => dsp_cav1_p2_comparison_i_s_axi_arready,
    dsp_cav1_p2_comparison_i_s_axi_rdata => dsp_cav1_p2_comparison_i_s_axi_rdata,
    dsp_cav1_p2_comparison_i_s_axi_rresp => dsp_cav1_p2_comparison_i_s_axi_rresp,
    dsp_cav1_p2_comparison_i_s_axi_rvalid => dsp_cav1_p2_comparison_i_s_axi_rvalid,
    dsp_cav1_p2_comparison_phase_s_axi_awready => dsp_cav1_p2_comparison_phase_s_axi_awready,
    dsp_cav1_p2_comparison_phase_s_axi_wready => dsp_cav1_p2_comparison_phase_s_axi_wready,
    dsp_cav1_p2_comparison_phase_s_axi_bresp => dsp_cav1_p2_comparison_phase_s_axi_bresp,
    dsp_cav1_p2_comparison_phase_s_axi_bvalid => dsp_cav1_p2_comparison_phase_s_axi_bvalid,
    dsp_cav1_p2_comparison_phase_s_axi_arready => dsp_cav1_p2_comparison_phase_s_axi_arready,
    dsp_cav1_p2_comparison_phase_s_axi_rdata => dsp_cav1_p2_comparison_phase_s_axi_rdata,
    dsp_cav1_p2_comparison_phase_s_axi_rresp => dsp_cav1_p2_comparison_phase_s_axi_rresp,
    dsp_cav1_p2_comparison_phase_s_axi_rvalid => dsp_cav1_p2_comparison_phase_s_axi_rvalid,
    dsp_cav1_p2_comparison_q_s_axi_awready => dsp_cav1_p2_comparison_q_s_axi_awready,
    dsp_cav1_p2_comparison_q_s_axi_wready => dsp_cav1_p2_comparison_q_s_axi_wready,
    dsp_cav1_p2_comparison_q_s_axi_bresp => dsp_cav1_p2_comparison_q_s_axi_bresp,
    dsp_cav1_p2_comparison_q_s_axi_bvalid => dsp_cav1_p2_comparison_q_s_axi_bvalid,
    dsp_cav1_p2_comparison_q_s_axi_arready => dsp_cav1_p2_comparison_q_s_axi_arready,
    dsp_cav1_p2_comparison_q_s_axi_rdata => dsp_cav1_p2_comparison_q_s_axi_rdata,
    dsp_cav1_p2_comparison_q_s_axi_rresp => dsp_cav1_p2_comparison_q_s_axi_rresp,
    dsp_cav1_p2_comparison_q_s_axi_rvalid => dsp_cav1_p2_comparison_q_s_axi_rvalid,
    dsp_cav1_p2_dc_freq_s_axi_awready => dsp_cav1_p2_dc_freq_s_axi_awready,
    dsp_cav1_p2_dc_freq_s_axi_wready => dsp_cav1_p2_dc_freq_s_axi_wready,
    dsp_cav1_p2_dc_freq_s_axi_bresp => dsp_cav1_p2_dc_freq_s_axi_bresp,
    dsp_cav1_p2_dc_freq_s_axi_bvalid => dsp_cav1_p2_dc_freq_s_axi_bvalid,
    dsp_cav1_p2_dc_freq_s_axi_arready => dsp_cav1_p2_dc_freq_s_axi_arready,
    dsp_cav1_p2_dc_freq_s_axi_rdata => dsp_cav1_p2_dc_freq_s_axi_rdata,
    dsp_cav1_p2_dc_freq_s_axi_rresp => dsp_cav1_p2_dc_freq_s_axi_rresp,
    dsp_cav1_p2_dc_freq_s_axi_rvalid => dsp_cav1_p2_dc_freq_s_axi_rvalid,
    dsp_cav1_p2_dc_img_s_axi_awready => dsp_cav1_p2_dc_img_s_axi_awready,
    dsp_cav1_p2_dc_img_s_axi_wready => dsp_cav1_p2_dc_img_s_axi_wready,
    dsp_cav1_p2_dc_img_s_axi_bresp => dsp_cav1_p2_dc_img_s_axi_bresp,
    dsp_cav1_p2_dc_img_s_axi_bvalid => dsp_cav1_p2_dc_img_s_axi_bvalid,
    dsp_cav1_p2_dc_img_s_axi_arready => dsp_cav1_p2_dc_img_s_axi_arready,
    dsp_cav1_p2_dc_img_s_axi_rdata => dsp_cav1_p2_dc_img_s_axi_rdata,
    dsp_cav1_p2_dc_img_s_axi_rresp => dsp_cav1_p2_dc_img_s_axi_rresp,
    dsp_cav1_p2_dc_img_s_axi_rvalid => dsp_cav1_p2_dc_img_s_axi_rvalid,
    dsp_cav1_p2_dc_real_s_axi_awready => dsp_cav1_p2_dc_real_s_axi_awready,
    dsp_cav1_p2_dc_real_s_axi_wready => dsp_cav1_p2_dc_real_s_axi_wready,
    dsp_cav1_p2_dc_real_s_axi_bresp => dsp_cav1_p2_dc_real_s_axi_bresp,
    dsp_cav1_p2_dc_real_s_axi_bvalid => dsp_cav1_p2_dc_real_s_axi_bvalid,
    dsp_cav1_p2_dc_real_s_axi_arready => dsp_cav1_p2_dc_real_s_axi_arready,
    dsp_cav1_p2_dc_real_s_axi_rdata => dsp_cav1_p2_dc_real_s_axi_rdata,
    dsp_cav1_p2_dc_real_s_axi_rresp => dsp_cav1_p2_dc_real_s_axi_rresp,
    dsp_cav1_p2_dc_real_s_axi_rvalid => dsp_cav1_p2_dc_real_s_axi_rvalid,
    dsp_cav1_p2_if_amp_s_axi_awready => dsp_cav1_p2_if_amp_s_axi_awready,
    dsp_cav1_p2_if_amp_s_axi_wready => dsp_cav1_p2_if_amp_s_axi_wready,
    dsp_cav1_p2_if_amp_s_axi_bresp => dsp_cav1_p2_if_amp_s_axi_bresp,
    dsp_cav1_p2_if_amp_s_axi_bvalid => dsp_cav1_p2_if_amp_s_axi_bvalid,
    dsp_cav1_p2_if_amp_s_axi_arready => dsp_cav1_p2_if_amp_s_axi_arready,
    dsp_cav1_p2_if_amp_s_axi_rdata => dsp_cav1_p2_if_amp_s_axi_rdata,
    dsp_cav1_p2_if_amp_s_axi_rresp => dsp_cav1_p2_if_amp_s_axi_rresp,
    dsp_cav1_p2_if_amp_s_axi_rvalid => dsp_cav1_p2_if_amp_s_axi_rvalid,
    dsp_cav1_p2_if_i_s_axi_awready => dsp_cav1_p2_if_i_s_axi_awready,
    dsp_cav1_p2_if_i_s_axi_wready => dsp_cav1_p2_if_i_s_axi_wready,
    dsp_cav1_p2_if_i_s_axi_bresp => dsp_cav1_p2_if_i_s_axi_bresp,
    dsp_cav1_p2_if_i_s_axi_bvalid => dsp_cav1_p2_if_i_s_axi_bvalid,
    dsp_cav1_p2_if_i_s_axi_arready => dsp_cav1_p2_if_i_s_axi_arready,
    dsp_cav1_p2_if_i_s_axi_rdata => dsp_cav1_p2_if_i_s_axi_rdata,
    dsp_cav1_p2_if_i_s_axi_rresp => dsp_cav1_p2_if_i_s_axi_rresp,
    dsp_cav1_p2_if_i_s_axi_rvalid => dsp_cav1_p2_if_i_s_axi_rvalid,
    dsp_cav1_p2_if_phase_s_axi_awready => dsp_cav1_p2_if_phase_s_axi_awready,
    dsp_cav1_p2_if_phase_s_axi_wready => dsp_cav1_p2_if_phase_s_axi_wready,
    dsp_cav1_p2_if_phase_s_axi_bresp => dsp_cav1_p2_if_phase_s_axi_bresp,
    dsp_cav1_p2_if_phase_s_axi_bvalid => dsp_cav1_p2_if_phase_s_axi_bvalid,
    dsp_cav1_p2_if_phase_s_axi_arready => dsp_cav1_p2_if_phase_s_axi_arready,
    dsp_cav1_p2_if_phase_s_axi_rdata => dsp_cav1_p2_if_phase_s_axi_rdata,
    dsp_cav1_p2_if_phase_s_axi_rresp => dsp_cav1_p2_if_phase_s_axi_rresp,
    dsp_cav1_p2_if_phase_s_axi_rvalid => dsp_cav1_p2_if_phase_s_axi_rvalid,
    dsp_cav1_p2_if_q_s_axi_awready => dsp_cav1_p2_if_q_s_axi_awready,
    dsp_cav1_p2_if_q_s_axi_wready => dsp_cav1_p2_if_q_s_axi_wready,
    dsp_cav1_p2_if_q_s_axi_bresp => dsp_cav1_p2_if_q_s_axi_bresp,
    dsp_cav1_p2_if_q_s_axi_bvalid => dsp_cav1_p2_if_q_s_axi_bvalid,
    dsp_cav1_p2_if_q_s_axi_arready => dsp_cav1_p2_if_q_s_axi_arready,
    dsp_cav1_p2_if_q_s_axi_rdata => dsp_cav1_p2_if_q_s_axi_rdata,
    dsp_cav1_p2_if_q_s_axi_rresp => dsp_cav1_p2_if_q_s_axi_rresp,
    dsp_cav1_p2_if_q_s_axi_rvalid => dsp_cav1_p2_if_q_s_axi_rvalid,
    dsp_cav1_p2_integrated_i_s_axi_awready => dsp_cav1_p2_integrated_i_s_axi_awready,
    dsp_cav1_p2_integrated_i_s_axi_wready => dsp_cav1_p2_integrated_i_s_axi_wready,
    dsp_cav1_p2_integrated_i_s_axi_bresp => dsp_cav1_p2_integrated_i_s_axi_bresp,
    dsp_cav1_p2_integrated_i_s_axi_bvalid => dsp_cav1_p2_integrated_i_s_axi_bvalid,
    dsp_cav1_p2_integrated_i_s_axi_arready => dsp_cav1_p2_integrated_i_s_axi_arready,
    dsp_cav1_p2_integrated_i_s_axi_rdata => dsp_cav1_p2_integrated_i_s_axi_rdata,
    dsp_cav1_p2_integrated_i_s_axi_rresp => dsp_cav1_p2_integrated_i_s_axi_rresp,
    dsp_cav1_p2_integrated_i_s_axi_rvalid => dsp_cav1_p2_integrated_i_s_axi_rvalid,
    dsp_cav1_p2_integrated_q_s_axi_awready => dsp_cav1_p2_integrated_q_s_axi_awready,
    dsp_cav1_p2_integrated_q_s_axi_wready => dsp_cav1_p2_integrated_q_s_axi_wready,
    dsp_cav1_p2_integrated_q_s_axi_bresp => dsp_cav1_p2_integrated_q_s_axi_bresp,
    dsp_cav1_p2_integrated_q_s_axi_bvalid => dsp_cav1_p2_integrated_q_s_axi_bvalid,
    dsp_cav1_p2_integrated_q_s_axi_arready => dsp_cav1_p2_integrated_q_s_axi_arready,
    dsp_cav1_p2_integrated_q_s_axi_rdata => dsp_cav1_p2_integrated_q_s_axi_rdata,
    dsp_cav1_p2_integrated_q_s_axi_rresp => dsp_cav1_p2_integrated_q_s_axi_rresp,
    dsp_cav1_p2_integrated_q_s_axi_rvalid => dsp_cav1_p2_integrated_q_s_axi_rvalid,
    dsp_cav1_p2_phase_out_s_axi_awready => dsp_cav1_p2_phase_out_s_axi_awready,
    dsp_cav1_p2_phase_out_s_axi_wready => dsp_cav1_p2_phase_out_s_axi_wready,
    dsp_cav1_p2_phase_out_s_axi_bresp => dsp_cav1_p2_phase_out_s_axi_bresp,
    dsp_cav1_p2_phase_out_s_axi_bvalid => dsp_cav1_p2_phase_out_s_axi_bvalid,
    dsp_cav1_p2_phase_out_s_axi_arready => dsp_cav1_p2_phase_out_s_axi_arready,
    dsp_cav1_p2_phase_out_s_axi_rdata => dsp_cav1_p2_phase_out_s_axi_rdata,
    dsp_cav1_p2_phase_out_s_axi_rresp => dsp_cav1_p2_phase_out_s_axi_rresp,
    dsp_cav1_p2_phase_out_s_axi_rvalid => dsp_cav1_p2_phase_out_s_axi_rvalid,
    dsp_cav1_p2_window_start_s_axi_awready => dsp_cav1_p2_window_start_s_axi_awready,
    dsp_cav1_p2_window_start_s_axi_wready => dsp_cav1_p2_window_start_s_axi_wready,
    dsp_cav1_p2_window_start_s_axi_bresp => dsp_cav1_p2_window_start_s_axi_bresp,
    dsp_cav1_p2_window_start_s_axi_bvalid => dsp_cav1_p2_window_start_s_axi_bvalid,
    dsp_cav1_p2_window_start_s_axi_arready => dsp_cav1_p2_window_start_s_axi_arready,
    dsp_cav1_p2_window_start_s_axi_rdata => dsp_cav1_p2_window_start_s_axi_rdata,
    dsp_cav1_p2_window_start_s_axi_rresp => dsp_cav1_p2_window_start_s_axi_rresp,
    dsp_cav1_p2_window_start_s_axi_rvalid => dsp_cav1_p2_window_start_s_axi_rvalid,
    dsp_cav1_p2_window_stop_s_axi_awready => dsp_cav1_p2_window_stop_s_axi_awready,
    dsp_cav1_p2_window_stop_s_axi_wready => dsp_cav1_p2_window_stop_s_axi_wready,
    dsp_cav1_p2_window_stop_s_axi_bresp => dsp_cav1_p2_window_stop_s_axi_bresp,
    dsp_cav1_p2_window_stop_s_axi_bvalid => dsp_cav1_p2_window_stop_s_axi_bvalid,
    dsp_cav1_p2_window_stop_s_axi_arready => dsp_cav1_p2_window_stop_s_axi_arready,
    dsp_cav1_p2_window_stop_s_axi_rdata => dsp_cav1_p2_window_stop_s_axi_rdata,
    dsp_cav1_p2_window_stop_s_axi_rresp => dsp_cav1_p2_window_stop_s_axi_rresp,
    dsp_cav1_p2_window_stop_s_axi_rvalid => dsp_cav1_p2_window_stop_s_axi_rvalid,
    dsp_cav2_p1_amp_out_s_axi_awready => dsp_cav2_p1_amp_out_s_axi_awready,
    dsp_cav2_p1_amp_out_s_axi_wready => dsp_cav2_p1_amp_out_s_axi_wready,
    dsp_cav2_p1_amp_out_s_axi_bresp => dsp_cav2_p1_amp_out_s_axi_bresp,
    dsp_cav2_p1_amp_out_s_axi_bvalid => dsp_cav2_p1_amp_out_s_axi_bvalid,
    dsp_cav2_p1_amp_out_s_axi_arready => dsp_cav2_p1_amp_out_s_axi_arready,
    dsp_cav2_p1_amp_out_s_axi_rdata => dsp_cav2_p1_amp_out_s_axi_rdata,
    dsp_cav2_p1_amp_out_s_axi_rresp => dsp_cav2_p1_amp_out_s_axi_rresp,
    dsp_cav2_p1_amp_out_s_axi_rvalid => dsp_cav2_p1_amp_out_s_axi_rvalid,
    dsp_cav2_p1_chan_sel_s_axi_awready => dsp_cav2_p1_chan_sel_s_axi_awready,
    dsp_cav2_p1_chan_sel_s_axi_wready => dsp_cav2_p1_chan_sel_s_axi_wready,
    dsp_cav2_p1_chan_sel_s_axi_bresp => dsp_cav2_p1_chan_sel_s_axi_bresp,
    dsp_cav2_p1_chan_sel_s_axi_bvalid => dsp_cav2_p1_chan_sel_s_axi_bvalid,
    dsp_cav2_p1_chan_sel_s_axi_arready => dsp_cav2_p1_chan_sel_s_axi_arready,
    dsp_cav2_p1_chan_sel_s_axi_rdata => dsp_cav2_p1_chan_sel_s_axi_rdata,
    dsp_cav2_p1_chan_sel_s_axi_rresp => dsp_cav2_p1_chan_sel_s_axi_rresp,
    dsp_cav2_p1_chan_sel_s_axi_rvalid => dsp_cav2_p1_chan_sel_s_axi_rvalid,
    dsp_cav2_p1_comparison_i_s_axi_awready => dsp_cav2_p1_comparison_i_s_axi_awready,
    dsp_cav2_p1_comparison_i_s_axi_wready => dsp_cav2_p1_comparison_i_s_axi_wready,
    dsp_cav2_p1_comparison_i_s_axi_bresp => dsp_cav2_p1_comparison_i_s_axi_bresp,
    dsp_cav2_p1_comparison_i_s_axi_bvalid => dsp_cav2_p1_comparison_i_s_axi_bvalid,
    dsp_cav2_p1_comparison_i_s_axi_arready => dsp_cav2_p1_comparison_i_s_axi_arready,
    dsp_cav2_p1_comparison_i_s_axi_rdata => dsp_cav2_p1_comparison_i_s_axi_rdata,
    dsp_cav2_p1_comparison_i_s_axi_rresp => dsp_cav2_p1_comparison_i_s_axi_rresp,
    dsp_cav2_p1_comparison_i_s_axi_rvalid => dsp_cav2_p1_comparison_i_s_axi_rvalid,
    dsp_cav2_p1_comparison_phase_s_axi_awready => dsp_cav2_p1_comparison_phase_s_axi_awready,
    dsp_cav2_p1_comparison_phase_s_axi_wready => dsp_cav2_p1_comparison_phase_s_axi_wready,
    dsp_cav2_p1_comparison_phase_s_axi_bresp => dsp_cav2_p1_comparison_phase_s_axi_bresp,
    dsp_cav2_p1_comparison_phase_s_axi_bvalid => dsp_cav2_p1_comparison_phase_s_axi_bvalid,
    dsp_cav2_p1_comparison_phase_s_axi_arready => dsp_cav2_p1_comparison_phase_s_axi_arready,
    dsp_cav2_p1_comparison_phase_s_axi_rdata => dsp_cav2_p1_comparison_phase_s_axi_rdata,
    dsp_cav2_p1_comparison_phase_s_axi_rresp => dsp_cav2_p1_comparison_phase_s_axi_rresp,
    dsp_cav2_p1_comparison_phase_s_axi_rvalid => dsp_cav2_p1_comparison_phase_s_axi_rvalid,
    dsp_cav2_p1_comparison_q_s_axi_awready => dsp_cav2_p1_comparison_q_s_axi_awready,
    dsp_cav2_p1_comparison_q_s_axi_wready => dsp_cav2_p1_comparison_q_s_axi_wready,
    dsp_cav2_p1_comparison_q_s_axi_bresp => dsp_cav2_p1_comparison_q_s_axi_bresp,
    dsp_cav2_p1_comparison_q_s_axi_bvalid => dsp_cav2_p1_comparison_q_s_axi_bvalid,
    dsp_cav2_p1_comparison_q_s_axi_arready => dsp_cav2_p1_comparison_q_s_axi_arready,
    dsp_cav2_p1_comparison_q_s_axi_rdata => dsp_cav2_p1_comparison_q_s_axi_rdata,
    dsp_cav2_p1_comparison_q_s_axi_rresp => dsp_cav2_p1_comparison_q_s_axi_rresp,
    dsp_cav2_p1_comparison_q_s_axi_rvalid => dsp_cav2_p1_comparison_q_s_axi_rvalid,
    dsp_cav2_p1_dc_freq_s_axi_awready => dsp_cav2_p1_dc_freq_s_axi_awready,
    dsp_cav2_p1_dc_freq_s_axi_wready => dsp_cav2_p1_dc_freq_s_axi_wready,
    dsp_cav2_p1_dc_freq_s_axi_bresp => dsp_cav2_p1_dc_freq_s_axi_bresp,
    dsp_cav2_p1_dc_freq_s_axi_bvalid => dsp_cav2_p1_dc_freq_s_axi_bvalid,
    dsp_cav2_p1_dc_freq_s_axi_arready => dsp_cav2_p1_dc_freq_s_axi_arready,
    dsp_cav2_p1_dc_freq_s_axi_rdata => dsp_cav2_p1_dc_freq_s_axi_rdata,
    dsp_cav2_p1_dc_freq_s_axi_rresp => dsp_cav2_p1_dc_freq_s_axi_rresp,
    dsp_cav2_p1_dc_freq_s_axi_rvalid => dsp_cav2_p1_dc_freq_s_axi_rvalid,
    dsp_cav2_p1_dc_img_s_axi_awready => dsp_cav2_p1_dc_img_s_axi_awready,
    dsp_cav2_p1_dc_img_s_axi_wready => dsp_cav2_p1_dc_img_s_axi_wready,
    dsp_cav2_p1_dc_img_s_axi_bresp => dsp_cav2_p1_dc_img_s_axi_bresp,
    dsp_cav2_p1_dc_img_s_axi_bvalid => dsp_cav2_p1_dc_img_s_axi_bvalid,
    dsp_cav2_p1_dc_img_s_axi_arready => dsp_cav2_p1_dc_img_s_axi_arready,
    dsp_cav2_p1_dc_img_s_axi_rdata => dsp_cav2_p1_dc_img_s_axi_rdata,
    dsp_cav2_p1_dc_img_s_axi_rresp => dsp_cav2_p1_dc_img_s_axi_rresp,
    dsp_cav2_p1_dc_img_s_axi_rvalid => dsp_cav2_p1_dc_img_s_axi_rvalid,
    dsp_cav2_p1_dc_real_s_axi_awready => dsp_cav2_p1_dc_real_s_axi_awready,
    dsp_cav2_p1_dc_real_s_axi_wready => dsp_cav2_p1_dc_real_s_axi_wready,
    dsp_cav2_p1_dc_real_s_axi_bresp => dsp_cav2_p1_dc_real_s_axi_bresp,
    dsp_cav2_p1_dc_real_s_axi_bvalid => dsp_cav2_p1_dc_real_s_axi_bvalid,
    dsp_cav2_p1_dc_real_s_axi_arready => dsp_cav2_p1_dc_real_s_axi_arready,
    dsp_cav2_p1_dc_real_s_axi_rdata => dsp_cav2_p1_dc_real_s_axi_rdata,
    dsp_cav2_p1_dc_real_s_axi_rresp => dsp_cav2_p1_dc_real_s_axi_rresp,
    dsp_cav2_p1_dc_real_s_axi_rvalid => dsp_cav2_p1_dc_real_s_axi_rvalid,
    dsp_cav2_p1_if_amp_s_axi_awready => dsp_cav2_p1_if_amp_s_axi_awready,
    dsp_cav2_p1_if_amp_s_axi_wready => dsp_cav2_p1_if_amp_s_axi_wready,
    dsp_cav2_p1_if_amp_s_axi_bresp => dsp_cav2_p1_if_amp_s_axi_bresp,
    dsp_cav2_p1_if_amp_s_axi_bvalid => dsp_cav2_p1_if_amp_s_axi_bvalid,
    dsp_cav2_p1_if_amp_s_axi_arready => dsp_cav2_p1_if_amp_s_axi_arready,
    dsp_cav2_p1_if_amp_s_axi_rdata => dsp_cav2_p1_if_amp_s_axi_rdata,
    dsp_cav2_p1_if_amp_s_axi_rresp => dsp_cav2_p1_if_amp_s_axi_rresp,
    dsp_cav2_p1_if_amp_s_axi_rvalid => dsp_cav2_p1_if_amp_s_axi_rvalid,
    dsp_cav2_p1_if_i_s_axi_awready => dsp_cav2_p1_if_i_s_axi_awready,
    dsp_cav2_p1_if_i_s_axi_wready => dsp_cav2_p1_if_i_s_axi_wready,
    dsp_cav2_p1_if_i_s_axi_bresp => dsp_cav2_p1_if_i_s_axi_bresp,
    dsp_cav2_p1_if_i_s_axi_bvalid => dsp_cav2_p1_if_i_s_axi_bvalid,
    dsp_cav2_p1_if_i_s_axi_arready => dsp_cav2_p1_if_i_s_axi_arready,
    dsp_cav2_p1_if_i_s_axi_rdata => dsp_cav2_p1_if_i_s_axi_rdata,
    dsp_cav2_p1_if_i_s_axi_rresp => dsp_cav2_p1_if_i_s_axi_rresp,
    dsp_cav2_p1_if_i_s_axi_rvalid => dsp_cav2_p1_if_i_s_axi_rvalid,
    dsp_cav2_p1_if_phase_s_axi_awready => dsp_cav2_p1_if_phase_s_axi_awready,
    dsp_cav2_p1_if_phase_s_axi_wready => dsp_cav2_p1_if_phase_s_axi_wready,
    dsp_cav2_p1_if_phase_s_axi_bresp => dsp_cav2_p1_if_phase_s_axi_bresp,
    dsp_cav2_p1_if_phase_s_axi_bvalid => dsp_cav2_p1_if_phase_s_axi_bvalid,
    dsp_cav2_p1_if_phase_s_axi_arready => dsp_cav2_p1_if_phase_s_axi_arready,
    dsp_cav2_p1_if_phase_s_axi_rdata => dsp_cav2_p1_if_phase_s_axi_rdata,
    dsp_cav2_p1_if_phase_s_axi_rresp => dsp_cav2_p1_if_phase_s_axi_rresp,
    dsp_cav2_p1_if_phase_s_axi_rvalid => dsp_cav2_p1_if_phase_s_axi_rvalid,
    dsp_cav2_p1_if_q_s_axi_awready => dsp_cav2_p1_if_q_s_axi_awready,
    dsp_cav2_p1_if_q_s_axi_wready => dsp_cav2_p1_if_q_s_axi_wready,
    dsp_cav2_p1_if_q_s_axi_bresp => dsp_cav2_p1_if_q_s_axi_bresp,
    dsp_cav2_p1_if_q_s_axi_bvalid => dsp_cav2_p1_if_q_s_axi_bvalid,
    dsp_cav2_p1_if_q_s_axi_arready => dsp_cav2_p1_if_q_s_axi_arready,
    dsp_cav2_p1_if_q_s_axi_rdata => dsp_cav2_p1_if_q_s_axi_rdata,
    dsp_cav2_p1_if_q_s_axi_rresp => dsp_cav2_p1_if_q_s_axi_rresp,
    dsp_cav2_p1_if_q_s_axi_rvalid => dsp_cav2_p1_if_q_s_axi_rvalid,
    dsp_cav2_p1_integrated_i_s_axi_awready => dsp_cav2_p1_integrated_i_s_axi_awready,
    dsp_cav2_p1_integrated_i_s_axi_wready => dsp_cav2_p1_integrated_i_s_axi_wready,
    dsp_cav2_p1_integrated_i_s_axi_bresp => dsp_cav2_p1_integrated_i_s_axi_bresp,
    dsp_cav2_p1_integrated_i_s_axi_bvalid => dsp_cav2_p1_integrated_i_s_axi_bvalid,
    dsp_cav2_p1_integrated_i_s_axi_arready => dsp_cav2_p1_integrated_i_s_axi_arready,
    dsp_cav2_p1_integrated_i_s_axi_rdata => dsp_cav2_p1_integrated_i_s_axi_rdata,
    dsp_cav2_p1_integrated_i_s_axi_rresp => dsp_cav2_p1_integrated_i_s_axi_rresp,
    dsp_cav2_p1_integrated_i_s_axi_rvalid => dsp_cav2_p1_integrated_i_s_axi_rvalid,
    dsp_cav2_p1_integrated_q_s_axi_awready => dsp_cav2_p1_integrated_q_s_axi_awready,
    dsp_cav2_p1_integrated_q_s_axi_wready => dsp_cav2_p1_integrated_q_s_axi_wready,
    dsp_cav2_p1_integrated_q_s_axi_bresp => dsp_cav2_p1_integrated_q_s_axi_bresp,
    dsp_cav2_p1_integrated_q_s_axi_bvalid => dsp_cav2_p1_integrated_q_s_axi_bvalid,
    dsp_cav2_p1_integrated_q_s_axi_arready => dsp_cav2_p1_integrated_q_s_axi_arready,
    dsp_cav2_p1_integrated_q_s_axi_rdata => dsp_cav2_p1_integrated_q_s_axi_rdata,
    dsp_cav2_p1_integrated_q_s_axi_rresp => dsp_cav2_p1_integrated_q_s_axi_rresp,
    dsp_cav2_p1_integrated_q_s_axi_rvalid => dsp_cav2_p1_integrated_q_s_axi_rvalid,
    dsp_cav2_p1_phase_out_s_axi_awready => dsp_cav2_p1_phase_out_s_axi_awready,
    dsp_cav2_p1_phase_out_s_axi_wready => dsp_cav2_p1_phase_out_s_axi_wready,
    dsp_cav2_p1_phase_out_s_axi_bresp => dsp_cav2_p1_phase_out_s_axi_bresp,
    dsp_cav2_p1_phase_out_s_axi_bvalid => dsp_cav2_p1_phase_out_s_axi_bvalid,
    dsp_cav2_p1_phase_out_s_axi_arready => dsp_cav2_p1_phase_out_s_axi_arready,
    dsp_cav2_p1_phase_out_s_axi_rdata => dsp_cav2_p1_phase_out_s_axi_rdata,
    dsp_cav2_p1_phase_out_s_axi_rresp => dsp_cav2_p1_phase_out_s_axi_rresp,
    dsp_cav2_p1_phase_out_s_axi_rvalid => dsp_cav2_p1_phase_out_s_axi_rvalid,
    dsp_cav2_p1_window_start_s_axi_awready => dsp_cav2_p1_window_start_s_axi_awready,
    dsp_cav2_p1_window_start_s_axi_wready => dsp_cav2_p1_window_start_s_axi_wready,
    dsp_cav2_p1_window_start_s_axi_bresp => dsp_cav2_p1_window_start_s_axi_bresp,
    dsp_cav2_p1_window_start_s_axi_bvalid => dsp_cav2_p1_window_start_s_axi_bvalid,
    dsp_cav2_p1_window_start_s_axi_arready => dsp_cav2_p1_window_start_s_axi_arready,
    dsp_cav2_p1_window_start_s_axi_rdata => dsp_cav2_p1_window_start_s_axi_rdata,
    dsp_cav2_p1_window_start_s_axi_rresp => dsp_cav2_p1_window_start_s_axi_rresp,
    dsp_cav2_p1_window_start_s_axi_rvalid => dsp_cav2_p1_window_start_s_axi_rvalid,
    dsp_cav2_p1_window_stop_s_axi_awready => dsp_cav2_p1_window_stop_s_axi_awready,
    dsp_cav2_p1_window_stop_s_axi_wready => dsp_cav2_p1_window_stop_s_axi_wready,
    dsp_cav2_p1_window_stop_s_axi_bresp => dsp_cav2_p1_window_stop_s_axi_bresp,
    dsp_cav2_p1_window_stop_s_axi_bvalid => dsp_cav2_p1_window_stop_s_axi_bvalid,
    dsp_cav2_p1_window_stop_s_axi_arready => dsp_cav2_p1_window_stop_s_axi_arready,
    dsp_cav2_p1_window_stop_s_axi_rdata => dsp_cav2_p1_window_stop_s_axi_rdata,
    dsp_cav2_p1_window_stop_s_axi_rresp => dsp_cav2_p1_window_stop_s_axi_rresp,
    dsp_cav2_p1_window_stop_s_axi_rvalid => dsp_cav2_p1_window_stop_s_axi_rvalid,
    dsp_cav2_p2_amp_out_s_axi_awready => dsp_cav2_p2_amp_out_s_axi_awready,
    dsp_cav2_p2_amp_out_s_axi_wready => dsp_cav2_p2_amp_out_s_axi_wready,
    dsp_cav2_p2_amp_out_s_axi_bresp => dsp_cav2_p2_amp_out_s_axi_bresp,
    dsp_cav2_p2_amp_out_s_axi_bvalid => dsp_cav2_p2_amp_out_s_axi_bvalid,
    dsp_cav2_p2_amp_out_s_axi_arready => dsp_cav2_p2_amp_out_s_axi_arready,
    dsp_cav2_p2_amp_out_s_axi_rdata => dsp_cav2_p2_amp_out_s_axi_rdata,
    dsp_cav2_p2_amp_out_s_axi_rresp => dsp_cav2_p2_amp_out_s_axi_rresp,
    dsp_cav2_p2_amp_out_s_axi_rvalid => dsp_cav2_p2_amp_out_s_axi_rvalid,
    dsp_cav2_p2_chan_sel_s_axi_awready => dsp_cav2_p2_chan_sel_s_axi_awready,
    dsp_cav2_p2_chan_sel_s_axi_wready => dsp_cav2_p2_chan_sel_s_axi_wready,
    dsp_cav2_p2_chan_sel_s_axi_bresp => dsp_cav2_p2_chan_sel_s_axi_bresp,
    dsp_cav2_p2_chan_sel_s_axi_bvalid => dsp_cav2_p2_chan_sel_s_axi_bvalid,
    dsp_cav2_p2_chan_sel_s_axi_arready => dsp_cav2_p2_chan_sel_s_axi_arready,
    dsp_cav2_p2_chan_sel_s_axi_rdata => dsp_cav2_p2_chan_sel_s_axi_rdata,
    dsp_cav2_p2_chan_sel_s_axi_rresp => dsp_cav2_p2_chan_sel_s_axi_rresp,
    dsp_cav2_p2_chan_sel_s_axi_rvalid => dsp_cav2_p2_chan_sel_s_axi_rvalid,
    dsp_cav2_p2_comparison_i_s_axi_awready => dsp_cav2_p2_comparison_i_s_axi_awready,
    dsp_cav2_p2_comparison_i_s_axi_wready => dsp_cav2_p2_comparison_i_s_axi_wready,
    dsp_cav2_p2_comparison_i_s_axi_bresp => dsp_cav2_p2_comparison_i_s_axi_bresp,
    dsp_cav2_p2_comparison_i_s_axi_bvalid => dsp_cav2_p2_comparison_i_s_axi_bvalid,
    dsp_cav2_p2_comparison_i_s_axi_arready => dsp_cav2_p2_comparison_i_s_axi_arready,
    dsp_cav2_p2_comparison_i_s_axi_rdata => dsp_cav2_p2_comparison_i_s_axi_rdata,
    dsp_cav2_p2_comparison_i_s_axi_rresp => dsp_cav2_p2_comparison_i_s_axi_rresp,
    dsp_cav2_p2_comparison_i_s_axi_rvalid => dsp_cav2_p2_comparison_i_s_axi_rvalid,
    dsp_cav2_p2_comparison_phase_s_axi_awready => dsp_cav2_p2_comparison_phase_s_axi_awready,
    dsp_cav2_p2_comparison_phase_s_axi_wready => dsp_cav2_p2_comparison_phase_s_axi_wready,
    dsp_cav2_p2_comparison_phase_s_axi_bresp => dsp_cav2_p2_comparison_phase_s_axi_bresp,
    dsp_cav2_p2_comparison_phase_s_axi_bvalid => dsp_cav2_p2_comparison_phase_s_axi_bvalid,
    dsp_cav2_p2_comparison_phase_s_axi_arready => dsp_cav2_p2_comparison_phase_s_axi_arready,
    dsp_cav2_p2_comparison_phase_s_axi_rdata => dsp_cav2_p2_comparison_phase_s_axi_rdata,
    dsp_cav2_p2_comparison_phase_s_axi_rresp => dsp_cav2_p2_comparison_phase_s_axi_rresp,
    dsp_cav2_p2_comparison_phase_s_axi_rvalid => dsp_cav2_p2_comparison_phase_s_axi_rvalid,
    dsp_cav2_p2_comparison_q_s_axi_awready => dsp_cav2_p2_comparison_q_s_axi_awready,
    dsp_cav2_p2_comparison_q_s_axi_wready => dsp_cav2_p2_comparison_q_s_axi_wready,
    dsp_cav2_p2_comparison_q_s_axi_bresp => dsp_cav2_p2_comparison_q_s_axi_bresp,
    dsp_cav2_p2_comparison_q_s_axi_bvalid => dsp_cav2_p2_comparison_q_s_axi_bvalid,
    dsp_cav2_p2_comparison_q_s_axi_arready => dsp_cav2_p2_comparison_q_s_axi_arready,
    dsp_cav2_p2_comparison_q_s_axi_rdata => dsp_cav2_p2_comparison_q_s_axi_rdata,
    dsp_cav2_p2_comparison_q_s_axi_rresp => dsp_cav2_p2_comparison_q_s_axi_rresp,
    dsp_cav2_p2_comparison_q_s_axi_rvalid => dsp_cav2_p2_comparison_q_s_axi_rvalid,
    dsp_cav2_p2_dc_freq_s_axi_awready => dsp_cav2_p2_dc_freq_s_axi_awready,
    dsp_cav2_p2_dc_freq_s_axi_wready => dsp_cav2_p2_dc_freq_s_axi_wready,
    dsp_cav2_p2_dc_freq_s_axi_bresp => dsp_cav2_p2_dc_freq_s_axi_bresp,
    dsp_cav2_p2_dc_freq_s_axi_bvalid => dsp_cav2_p2_dc_freq_s_axi_bvalid,
    dsp_cav2_p2_dc_freq_s_axi_arready => dsp_cav2_p2_dc_freq_s_axi_arready,
    dsp_cav2_p2_dc_freq_s_axi_rdata => dsp_cav2_p2_dc_freq_s_axi_rdata,
    dsp_cav2_p2_dc_freq_s_axi_rresp => dsp_cav2_p2_dc_freq_s_axi_rresp,
    dsp_cav2_p2_dc_freq_s_axi_rvalid => dsp_cav2_p2_dc_freq_s_axi_rvalid,
    dsp_cav2_p2_dc_img_s_axi_awready => dsp_cav2_p2_dc_img_s_axi_awready,
    dsp_cav2_p2_dc_img_s_axi_wready => dsp_cav2_p2_dc_img_s_axi_wready,
    dsp_cav2_p2_dc_img_s_axi_bresp => dsp_cav2_p2_dc_img_s_axi_bresp,
    dsp_cav2_p2_dc_img_s_axi_bvalid => dsp_cav2_p2_dc_img_s_axi_bvalid,
    dsp_cav2_p2_dc_img_s_axi_arready => dsp_cav2_p2_dc_img_s_axi_arready,
    dsp_cav2_p2_dc_img_s_axi_rdata => dsp_cav2_p2_dc_img_s_axi_rdata,
    dsp_cav2_p2_dc_img_s_axi_rresp => dsp_cav2_p2_dc_img_s_axi_rresp,
    dsp_cav2_p2_dc_img_s_axi_rvalid => dsp_cav2_p2_dc_img_s_axi_rvalid,
    dsp_cav2_p2_dc_real_s_axi_awready => dsp_cav2_p2_dc_real_s_axi_awready,
    dsp_cav2_p2_dc_real_s_axi_wready => dsp_cav2_p2_dc_real_s_axi_wready,
    dsp_cav2_p2_dc_real_s_axi_bresp => dsp_cav2_p2_dc_real_s_axi_bresp,
    dsp_cav2_p2_dc_real_s_axi_bvalid => dsp_cav2_p2_dc_real_s_axi_bvalid,
    dsp_cav2_p2_dc_real_s_axi_arready => dsp_cav2_p2_dc_real_s_axi_arready,
    dsp_cav2_p2_dc_real_s_axi_rdata => dsp_cav2_p2_dc_real_s_axi_rdata,
    dsp_cav2_p2_dc_real_s_axi_rresp => dsp_cav2_p2_dc_real_s_axi_rresp,
    dsp_cav2_p2_dc_real_s_axi_rvalid => dsp_cav2_p2_dc_real_s_axi_rvalid,
    dsp_cav2_p2_if_amp_s_axi_awready => dsp_cav2_p2_if_amp_s_axi_awready,
    dsp_cav2_p2_if_amp_s_axi_wready => dsp_cav2_p2_if_amp_s_axi_wready,
    dsp_cav2_p2_if_amp_s_axi_bresp => dsp_cav2_p2_if_amp_s_axi_bresp,
    dsp_cav2_p2_if_amp_s_axi_bvalid => dsp_cav2_p2_if_amp_s_axi_bvalid,
    dsp_cav2_p2_if_amp_s_axi_arready => dsp_cav2_p2_if_amp_s_axi_arready,
    dsp_cav2_p2_if_amp_s_axi_rdata => dsp_cav2_p2_if_amp_s_axi_rdata,
    dsp_cav2_p2_if_amp_s_axi_rresp => dsp_cav2_p2_if_amp_s_axi_rresp,
    dsp_cav2_p2_if_amp_s_axi_rvalid => dsp_cav2_p2_if_amp_s_axi_rvalid,
    dsp_cav2_p2_if_i_s_axi_awready => dsp_cav2_p2_if_i_s_axi_awready,
    dsp_cav2_p2_if_i_s_axi_wready => dsp_cav2_p2_if_i_s_axi_wready,
    dsp_cav2_p2_if_i_s_axi_bresp => dsp_cav2_p2_if_i_s_axi_bresp,
    dsp_cav2_p2_if_i_s_axi_bvalid => dsp_cav2_p2_if_i_s_axi_bvalid,
    dsp_cav2_p2_if_i_s_axi_arready => dsp_cav2_p2_if_i_s_axi_arready,
    dsp_cav2_p2_if_i_s_axi_rdata => dsp_cav2_p2_if_i_s_axi_rdata,
    dsp_cav2_p2_if_i_s_axi_rresp => dsp_cav2_p2_if_i_s_axi_rresp,
    dsp_cav2_p2_if_i_s_axi_rvalid => dsp_cav2_p2_if_i_s_axi_rvalid,
    dsp_cav2_p2_if_phase_s_axi_awready => dsp_cav2_p2_if_phase_s_axi_awready,
    dsp_cav2_p2_if_phase_s_axi_wready => dsp_cav2_p2_if_phase_s_axi_wready,
    dsp_cav2_p2_if_phase_s_axi_bresp => dsp_cav2_p2_if_phase_s_axi_bresp,
    dsp_cav2_p2_if_phase_s_axi_bvalid => dsp_cav2_p2_if_phase_s_axi_bvalid,
    dsp_cav2_p2_if_phase_s_axi_arready => dsp_cav2_p2_if_phase_s_axi_arready,
    dsp_cav2_p2_if_phase_s_axi_rdata => dsp_cav2_p2_if_phase_s_axi_rdata,
    dsp_cav2_p2_if_phase_s_axi_rresp => dsp_cav2_p2_if_phase_s_axi_rresp,
    dsp_cav2_p2_if_phase_s_axi_rvalid => dsp_cav2_p2_if_phase_s_axi_rvalid,
    dsp_cav2_p2_if_q_s_axi_awready => dsp_cav2_p2_if_q_s_axi_awready,
    dsp_cav2_p2_if_q_s_axi_wready => dsp_cav2_p2_if_q_s_axi_wready,
    dsp_cav2_p2_if_q_s_axi_bresp => dsp_cav2_p2_if_q_s_axi_bresp,
    dsp_cav2_p2_if_q_s_axi_bvalid => dsp_cav2_p2_if_q_s_axi_bvalid,
    dsp_cav2_p2_if_q_s_axi_arready => dsp_cav2_p2_if_q_s_axi_arready,
    dsp_cav2_p2_if_q_s_axi_rdata => dsp_cav2_p2_if_q_s_axi_rdata,
    dsp_cav2_p2_if_q_s_axi_rresp => dsp_cav2_p2_if_q_s_axi_rresp,
    dsp_cav2_p2_if_q_s_axi_rvalid => dsp_cav2_p2_if_q_s_axi_rvalid,
    dsp_cav2_p2_integrated_i_s_axi_awready => dsp_cav2_p2_integrated_i_s_axi_awready,
    dsp_cav2_p2_integrated_i_s_axi_wready => dsp_cav2_p2_integrated_i_s_axi_wready,
    dsp_cav2_p2_integrated_i_s_axi_bresp => dsp_cav2_p2_integrated_i_s_axi_bresp,
    dsp_cav2_p2_integrated_i_s_axi_bvalid => dsp_cav2_p2_integrated_i_s_axi_bvalid,
    dsp_cav2_p2_integrated_i_s_axi_arready => dsp_cav2_p2_integrated_i_s_axi_arready,
    dsp_cav2_p2_integrated_i_s_axi_rdata => dsp_cav2_p2_integrated_i_s_axi_rdata,
    dsp_cav2_p2_integrated_i_s_axi_rresp => dsp_cav2_p2_integrated_i_s_axi_rresp,
    dsp_cav2_p2_integrated_i_s_axi_rvalid => dsp_cav2_p2_integrated_i_s_axi_rvalid,
    dsp_cav2_p2_integrated_q_s_axi_awready => dsp_cav2_p2_integrated_q_s_axi_awready,
    dsp_cav2_p2_integrated_q_s_axi_wready => dsp_cav2_p2_integrated_q_s_axi_wready,
    dsp_cav2_p2_integrated_q_s_axi_bresp => dsp_cav2_p2_integrated_q_s_axi_bresp,
    dsp_cav2_p2_integrated_q_s_axi_bvalid => dsp_cav2_p2_integrated_q_s_axi_bvalid,
    dsp_cav2_p2_integrated_q_s_axi_arready => dsp_cav2_p2_integrated_q_s_axi_arready,
    dsp_cav2_p2_integrated_q_s_axi_rdata => dsp_cav2_p2_integrated_q_s_axi_rdata,
    dsp_cav2_p2_integrated_q_s_axi_rresp => dsp_cav2_p2_integrated_q_s_axi_rresp,
    dsp_cav2_p2_integrated_q_s_axi_rvalid => dsp_cav2_p2_integrated_q_s_axi_rvalid,
    dsp_cav2_p2_phase_out_s_axi_awready => dsp_cav2_p2_phase_out_s_axi_awready,
    dsp_cav2_p2_phase_out_s_axi_wready => dsp_cav2_p2_phase_out_s_axi_wready,
    dsp_cav2_p2_phase_out_s_axi_bresp => dsp_cav2_p2_phase_out_s_axi_bresp,
    dsp_cav2_p2_phase_out_s_axi_bvalid => dsp_cav2_p2_phase_out_s_axi_bvalid,
    dsp_cav2_p2_phase_out_s_axi_arready => dsp_cav2_p2_phase_out_s_axi_arready,
    dsp_cav2_p2_phase_out_s_axi_rdata => dsp_cav2_p2_phase_out_s_axi_rdata,
    dsp_cav2_p2_phase_out_s_axi_rresp => dsp_cav2_p2_phase_out_s_axi_rresp,
    dsp_cav2_p2_phase_out_s_axi_rvalid => dsp_cav2_p2_phase_out_s_axi_rvalid,
    dsp_cav2_p2_window_start_s_axi_awready => dsp_cav2_p2_window_start_s_axi_awready,
    dsp_cav2_p2_window_start_s_axi_wready => dsp_cav2_p2_window_start_s_axi_wready,
    dsp_cav2_p2_window_start_s_axi_bresp => dsp_cav2_p2_window_start_s_axi_bresp,
    dsp_cav2_p2_window_start_s_axi_bvalid => dsp_cav2_p2_window_start_s_axi_bvalid,
    dsp_cav2_p2_window_start_s_axi_arready => dsp_cav2_p2_window_start_s_axi_arready,
    dsp_cav2_p2_window_start_s_axi_rdata => dsp_cav2_p2_window_start_s_axi_rdata,
    dsp_cav2_p2_window_start_s_axi_rresp => dsp_cav2_p2_window_start_s_axi_rresp,
    dsp_cav2_p2_window_start_s_axi_rvalid => dsp_cav2_p2_window_start_s_axi_rvalid,
    dsp_cav2_p2_window_stop_s_axi_awready => dsp_cav2_p2_window_stop_s_axi_awready,
    dsp_cav2_p2_window_stop_s_axi_wready => dsp_cav2_p2_window_stop_s_axi_wready,
    dsp_cav2_p2_window_stop_s_axi_bresp => dsp_cav2_p2_window_stop_s_axi_bresp,
    dsp_cav2_p2_window_stop_s_axi_bvalid => dsp_cav2_p2_window_stop_s_axi_bvalid,
    dsp_cav2_p2_window_stop_s_axi_arready => dsp_cav2_p2_window_stop_s_axi_arready,
    dsp_cav2_p2_window_stop_s_axi_rdata => dsp_cav2_p2_window_stop_s_axi_rdata,
    dsp_cav2_p2_window_stop_s_axi_rresp => dsp_cav2_p2_window_stop_s_axi_rresp,
    dsp_cav2_p2_window_stop_s_axi_rvalid => dsp_cav2_p2_window_stop_s_axi_rvalid,
    dsp_ref_window_start_s_axi_awready => dsp_ref_window_start_s_axi_awready,
    dsp_ref_window_start_s_axi_wready => dsp_ref_window_start_s_axi_wready,
    dsp_ref_window_start_s_axi_bresp => dsp_ref_window_start_s_axi_bresp,
    dsp_ref_window_start_s_axi_bvalid => dsp_ref_window_start_s_axi_bvalid,
    dsp_ref_window_start_s_axi_arready => dsp_ref_window_start_s_axi_arready,
    dsp_ref_window_start_s_axi_rdata => dsp_ref_window_start_s_axi_rdata,
    dsp_ref_window_start_s_axi_rresp => dsp_ref_window_start_s_axi_rresp,
    dsp_ref_window_start_s_axi_rvalid => dsp_ref_window_start_s_axi_rvalid,
    dsp_ref_window_stop_s_axi_awready => dsp_ref_window_stop_s_axi_awready,
    dsp_ref_window_stop_s_axi_wready => dsp_ref_window_stop_s_axi_wready,
    dsp_ref_window_stop_s_axi_bresp => dsp_ref_window_stop_s_axi_bresp,
    dsp_ref_window_stop_s_axi_bvalid => dsp_ref_window_stop_s_axi_bvalid,
    dsp_ref_window_stop_s_axi_arready => dsp_ref_window_stop_s_axi_arready,
    dsp_ref_window_stop_s_axi_rdata => dsp_ref_window_stop_s_axi_rdata,
    dsp_ref_window_stop_s_axi_rresp => dsp_ref_window_stop_s_axi_rresp,
    dsp_ref_window_stop_s_axi_rvalid => dsp_ref_window_stop_s_axi_rvalid,
    dsp_rf_ref_amp_s_axi_awready => dsp_rf_ref_amp_s_axi_awready,
    dsp_rf_ref_amp_s_axi_wready => dsp_rf_ref_amp_s_axi_wready,
    dsp_rf_ref_amp_s_axi_bresp => dsp_rf_ref_amp_s_axi_bresp,
    dsp_rf_ref_amp_s_axi_bvalid => dsp_rf_ref_amp_s_axi_bvalid,
    dsp_rf_ref_amp_s_axi_arready => dsp_rf_ref_amp_s_axi_arready,
    dsp_rf_ref_amp_s_axi_rdata => dsp_rf_ref_amp_s_axi_rdata,
    dsp_rf_ref_amp_s_axi_rresp => dsp_rf_ref_amp_s_axi_rresp,
    dsp_rf_ref_amp_s_axi_rvalid => dsp_rf_ref_amp_s_axi_rvalid,
    dsp_rf_ref_chan_sel_s_axi_awready => dsp_rf_ref_chan_sel_s_axi_awready,
    dsp_rf_ref_chan_sel_s_axi_wready => dsp_rf_ref_chan_sel_s_axi_wready,
    dsp_rf_ref_chan_sel_s_axi_bresp => dsp_rf_ref_chan_sel_s_axi_bresp,
    dsp_rf_ref_chan_sel_s_axi_bvalid => dsp_rf_ref_chan_sel_s_axi_bvalid,
    dsp_rf_ref_chan_sel_s_axi_arready => dsp_rf_ref_chan_sel_s_axi_arready,
    dsp_rf_ref_chan_sel_s_axi_rdata => dsp_rf_ref_chan_sel_s_axi_rdata,
    dsp_rf_ref_chan_sel_s_axi_rresp => dsp_rf_ref_chan_sel_s_axi_rresp,
    dsp_rf_ref_chan_sel_s_axi_rvalid => dsp_rf_ref_chan_sel_s_axi_rvalid,
    dsp_rf_ref_i_s_axi_awready => dsp_rf_ref_i_s_axi_awready,
    dsp_rf_ref_i_s_axi_wready => dsp_rf_ref_i_s_axi_wready,
    dsp_rf_ref_i_s_axi_bresp => dsp_rf_ref_i_s_axi_bresp,
    dsp_rf_ref_i_s_axi_bvalid => dsp_rf_ref_i_s_axi_bvalid,
    dsp_rf_ref_i_s_axi_arready => dsp_rf_ref_i_s_axi_arready,
    dsp_rf_ref_i_s_axi_rdata => dsp_rf_ref_i_s_axi_rdata,
    dsp_rf_ref_i_s_axi_rresp => dsp_rf_ref_i_s_axi_rresp,
    dsp_rf_ref_i_s_axi_rvalid => dsp_rf_ref_i_s_axi_rvalid,
    dsp_rf_ref_phase_s_axi_awready => dsp_rf_ref_phase_s_axi_awready,
    dsp_rf_ref_phase_s_axi_wready => dsp_rf_ref_phase_s_axi_wready,
    dsp_rf_ref_phase_s_axi_bresp => dsp_rf_ref_phase_s_axi_bresp,
    dsp_rf_ref_phase_s_axi_bvalid => dsp_rf_ref_phase_s_axi_bvalid,
    dsp_rf_ref_phase_s_axi_arready => dsp_rf_ref_phase_s_axi_arready,
    dsp_rf_ref_phase_s_axi_rdata => dsp_rf_ref_phase_s_axi_rdata,
    dsp_rf_ref_phase_s_axi_rresp => dsp_rf_ref_phase_s_axi_rresp,
    dsp_rf_ref_phase_s_axi_rvalid => dsp_rf_ref_phase_s_axi_rvalid,
    dsp_rf_ref_q_s_axi_awready => dsp_rf_ref_q_s_axi_awready,
    dsp_rf_ref_q_s_axi_wready => dsp_rf_ref_q_s_axi_wready,
    dsp_rf_ref_q_s_axi_bresp => dsp_rf_ref_q_s_axi_bresp,
    dsp_rf_ref_q_s_axi_bvalid => dsp_rf_ref_q_s_axi_bvalid,
    dsp_rf_ref_q_s_axi_arready => dsp_rf_ref_q_s_axi_arready,
    dsp_rf_ref_q_s_axi_rdata => dsp_rf_ref_q_s_axi_rdata,
    dsp_rf_ref_q_s_axi_rresp => dsp_rf_ref_q_s_axi_rresp,
    dsp_rf_ref_q_s_axi_rvalid => dsp_rf_ref_q_s_axi_rvalid
  );
end structural;
