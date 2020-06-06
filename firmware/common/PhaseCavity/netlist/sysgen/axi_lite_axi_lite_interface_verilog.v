//-----------------------------------------------------------------
// System Generator version 2017.4 Verilog source file.
//
// Copyright(C) 2017 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2017 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------

`include "conv_pkg.v"
module axi_lite_axi_lite_interface_verilog#(parameter C_S_AXI_DATA_WIDTH = 32, C_S_AXI_ADDR_WIDTH = 12, C_S_NUM_OFFSETS = 81)(
  output wire[31:0] scratchpad,
  output wire[3:0] rf_ref_chan_sel,
  output wire[15:0] ref_window_stop,
  output wire[15:0] ref_window_start,
  output wire[15:0] cav2_p2_window_stop,
  output wire[15:0] cav2_p2_window_start,
  output wire[3:0] cav2_p2_chan_sel,
  output wire[15:0] cav2_p1_window_stop,
  output wire[15:0] cav2_p1_window_start,
  output wire[3:0] cav2_p1_chan_sel,
  output wire[0:0] cav2_nco_phase_reset,
  output wire[28:0] cav2_nco_phase_adj,
  output wire[15:0] cav1_p2_window_stop,
  output wire[15:0] cav1_p2_window_start,
  output wire[3:0] cav1_p2_chan_sel,
  output wire[15:0] cav1_p1_window_stop,
  output wire[15:0] cav1_p1_window_start,
  output wire[3:0] cav1_p1_chan_sel,
  output wire[0:0] cav1_nco_phase_reset,
  output wire[28:0] cav1_nco_phase_adj,
  input wire[17:0] cav1_p1_amp_out,
  input wire[17:0] cav1_p1_comparison_i,
  input wire[17:0] cav1_p1_comparison_phase,
  input wire[17:0] cav1_p1_comparison_q,
  input wire[25:0] cav1_p1_dc_freq,
  input wire[28:0] cav1_p1_dc_img,
  input wire[28:0] cav1_p1_dc_real,
  input wire[17:0] cav1_p1_if_amp,
  input wire[17:0] cav1_p1_if_i,
  input wire[17:0] cav1_p1_if_phase,
  input wire[17:0] cav1_p1_if_q,
  input wire[17:0] cav1_p1_integrated_i,
  input wire[17:0] cav1_p1_integrated_q,
  input wire[17:0] cav1_p1_phase_out,
  input wire[17:0] cav1_p2_amp_out,
  input wire[17:0] cav1_p2_comparison_i,
  input wire[17:0] cav1_p2_comparison_phase,
  input wire[17:0] cav1_p2_comparison_q,
  input wire[25:0] cav1_p2_dc_freq,
  input wire[17:0] cav1_p2_dc_img,
  input wire[17:0] cav1_p2_dc_real,
  input wire[17:0] cav1_p2_if_amp,
  input wire[17:0] cav1_p2_if_i,
  input wire[17:0] cav1_p2_if_phase,
  input wire[17:0] cav1_p2_if_q,
  input wire[17:0] cav1_p2_integrated_i,
  input wire[17:0] cav1_p2_integrated_q,
  input wire[17:0] cav1_p2_phase_out,
  input wire[17:0] cav2_p1_amp_out,
  input wire[17:0] cav2_p1_comparison_i,
  input wire[17:0] cav2_p1_comparison_phase,
  input wire[17:0] cav2_p1_comparison_q,
  input wire[25:0] cav2_p1_dc_freq,
  input wire[28:0] cav2_p1_dc_img,
  input wire[28:0] cav2_p1_dc_real,
  input wire[17:0] cav2_p1_if_amp,
  input wire[17:0] cav2_p1_if_i,
  input wire[17:0] cav2_p1_if_phase,
  input wire[17:0] cav2_p1_if_q,
  input wire[17:0] cav2_p1_integrated_i,
  input wire[17:0] cav2_p1_integrated_q,
  input wire[17:0] cav2_p1_phase_out,
  input wire[17:0] cav2_p2_amp_out,
  input wire[17:0] cav2_p2_comparison_i,
  input wire[17:0] cav2_p2_comparison_phase,
  input wire[17:0] cav2_p2_comparison_q,
  input wire[25:0] cav2_p2_dc_freq,
  input wire[28:0] cav2_p2_dc_img,
  input wire[28:0] cav2_p2_dc_real,
  input wire[17:0] cav2_p2_if_amp,
  input wire[17:0] cav2_p2_if_i,
  input wire[17:0] cav2_p2_if_phase,
  input wire[17:0] cav2_p2_if_q,
  input wire[17:0] cav2_p2_integrated_i,
  input wire[17:0] cav2_p2_integrated_q,
  input wire[17:0] cav2_p2_phase_out,
  input wire[17:0] rf_ref_amp,
  input wire[17:0] rf_ref_i,
  input wire[17:0] rf_ref_phase,
  input wire[17:0] rf_ref_q,
  input wire[31:0] status_0,
  output wire axi_lite_clk,
  input wire axi_lite_aclk,
  input wire axi_lite_aresetn,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] axi_lite_s_axi_awaddr,
  input  wire axi_lite_s_axi_awvalid,
  output wire axi_lite_s_axi_awready,
  input  wire [C_S_AXI_DATA_WIDTH-1:0] axi_lite_s_axi_wdata,
  input  wire [C_S_AXI_DATA_WIDTH/8-1:0] axi_lite_s_axi_wstrb,
  input  wire axi_lite_s_axi_wvalid,
  output wire axi_lite_s_axi_wready,
  output wire [1:0] axi_lite_s_axi_bresp,
  output wire axi_lite_s_axi_bvalid,
  input  wire axi_lite_s_axi_bready,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] axi_lite_s_axi_araddr,
  input  wire axi_lite_s_axi_arvalid,
  output wire axi_lite_s_axi_arready,
  output wire [C_S_AXI_DATA_WIDTH-1:0] axi_lite_s_axi_rdata,
  output wire [1:0] axi_lite_s_axi_rresp,
  output wire axi_lite_s_axi_rvalid,
  input  wire axi_lite_s_axi_rready
);
function integer clogb2 (input integer bit_depth);
begin
  for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
    bit_depth = bit_depth >> 1;
  end
endfunction
localparam integer ADDR_LSB = clogb2(C_S_AXI_DATA_WIDTH/8);
localparam integer ADDR_MSB = C_S_AXI_ADDR_WIDTH;
localparam integer DEC_SIZE = clogb2(C_S_NUM_OFFSETS);
reg [1 :0] axi_rresp;
reg [1 :0] axi_bresp;
reg axi_awready;
reg axi_wready;
reg axi_bvalid;
reg axi_rvalid;
reg [ADDR_MSB-1:0] axi_awaddr;
reg [ADDR_MSB-1:0] axi_araddr;
reg [C_S_AXI_DATA_WIDTH-1:0] axi_rdata;
reg axi_arready;
wire [C_S_AXI_DATA_WIDTH-1:0] slv_wire_array [0:C_S_NUM_OFFSETS-1];
reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg_array [0:C_S_NUM_OFFSETS-1];
wire slv_reg_rden;
wire slv_reg_wren;
reg [DEC_SIZE-1:0] dec_w;
reg [DEC_SIZE-1:0] dec_r;
reg [C_S_AXI_DATA_WIDTH-1:0] reg_data_out;
integer byte_index;
integer offset_index;
assign axi_lite_s_axi_awready = axi_awready;
assign axi_lite_s_axi_wready  = axi_wready;
assign axi_lite_s_axi_bresp  = axi_bresp;
assign axi_lite_s_axi_bvalid = axi_bvalid;
assign axi_lite_s_axi_arready = axi_arready;
assign axi_lite_s_axi_rdata  = axi_rdata;
assign axi_lite_s_axi_rvalid = axi_rvalid;
assign axi_lite_s_axi_rresp  = axi_rresp;
// map input 0
assign slv_wire_array[0] = slv_reg_array[0];
assign scratchpad[31:0] = slv_wire_array[0][31:0];
// map input 1
assign slv_wire_array[1] = slv_reg_array[1];
assign rf_ref_chan_sel[3:0] = slv_wire_array[1][3:0];
// map input 2
assign slv_wire_array[2] = slv_reg_array[2];
assign ref_window_stop[15:0] = slv_wire_array[2][15:0];
// map input 3
assign slv_wire_array[3] = slv_reg_array[3];
assign ref_window_start[15:0] = slv_wire_array[3][15:0];
// map input 4
assign slv_wire_array[4] = slv_reg_array[4];
assign cav2_p2_window_stop[15:0] = slv_wire_array[4][15:0];
// map input 5
assign slv_wire_array[5] = slv_reg_array[5];
assign cav2_p2_window_start[15:0] = slv_wire_array[5][15:0];
// map input 6
assign slv_wire_array[6] = slv_reg_array[6];
assign cav2_p2_chan_sel[3:0] = slv_wire_array[6][3:0];
// map input 7
assign slv_wire_array[7] = slv_reg_array[7];
assign cav2_p1_window_stop[15:0] = slv_wire_array[7][15:0];
// map input 8
assign slv_wire_array[8] = slv_reg_array[8];
assign cav2_p1_window_start[15:0] = slv_wire_array[8][15:0];
// map input 9
assign slv_wire_array[9] = slv_reg_array[9];
assign cav2_p1_chan_sel[3:0] = slv_wire_array[9][3:0];
// map input 10
assign slv_wire_array[10] = slv_reg_array[10];
assign cav2_nco_phase_reset = slv_wire_array[10][0];
// map input 11
assign slv_wire_array[11] = slv_reg_array[11];
assign cav2_nco_phase_adj[28:0] = slv_wire_array[11][28:0];
// map input 12
assign slv_wire_array[12] = slv_reg_array[12];
assign cav1_p2_window_stop[15:0] = slv_wire_array[12][15:0];
// map input 13
assign slv_wire_array[13] = slv_reg_array[13];
assign cav1_p2_window_start[15:0] = slv_wire_array[13][15:0];
// map input 14
assign slv_wire_array[14] = slv_reg_array[14];
assign cav1_p2_chan_sel[3:0] = slv_wire_array[14][3:0];
// map input 15
assign slv_wire_array[15] = slv_reg_array[15];
assign cav1_p1_window_stop[15:0] = slv_wire_array[15][15:0];
// map input 16
assign slv_wire_array[16] = slv_reg_array[16];
assign cav1_p1_window_start[15:0] = slv_wire_array[16][15:0];
// map input 17
assign slv_wire_array[17] = slv_reg_array[17];
assign cav1_p1_chan_sel[3:0] = slv_wire_array[17][3:0];
// map input 18
assign slv_wire_array[18] = slv_reg_array[18];
assign cav1_nco_phase_reset = slv_wire_array[18][0];
// map input 19
assign slv_wire_array[19] = slv_reg_array[19];
assign cav1_nco_phase_adj[28:0] = slv_wire_array[19][28:0];
// map output 20
assign slv_wire_array[20] = {14'h0, cav1_p1_amp_out[17:0]};
// map output 21
assign slv_wire_array[21] = {14'h0, cav1_p1_comparison_i[17:0]};
// map output 22
assign slv_wire_array[22] = {14'h0, cav1_p1_comparison_phase[17:0]};
// map output 23
assign slv_wire_array[23] = {14'h0, cav1_p1_comparison_q[17:0]};
// map output 24
assign slv_wire_array[24] = {6'h0, cav1_p1_dc_freq[25:0]};
// map output 25
assign slv_wire_array[25] = {3'h0, cav1_p1_dc_img[28:0]};
// map output 26
assign slv_wire_array[26] = {3'h0, cav1_p1_dc_real[28:0]};
// map output 27
assign slv_wire_array[27] = {14'h0, cav1_p1_if_amp[17:0]};
// map output 28
assign slv_wire_array[28] = {14'h0, cav1_p1_if_i[17:0]};
// map output 29
assign slv_wire_array[29] = {14'h0, cav1_p1_if_phase[17:0]};
// map output 30
assign slv_wire_array[30] = {14'h0, cav1_p1_if_q[17:0]};
// map output 31
assign slv_wire_array[31] = {14'h0, cav1_p1_integrated_i[17:0]};
// map output 32
assign slv_wire_array[32] = {14'h0, cav1_p1_integrated_q[17:0]};
// map output 33
assign slv_wire_array[33] = {14'h0, cav1_p1_phase_out[17:0]};
// map output 34
assign slv_wire_array[34] = {14'h0, cav1_p2_amp_out[17:0]};
// map output 35
assign slv_wire_array[35] = {14'h0, cav1_p2_comparison_i[17:0]};
// map output 36
assign slv_wire_array[36] = {14'h0, cav1_p2_comparison_phase[17:0]};
// map output 37
assign slv_wire_array[37] = {14'h0, cav1_p2_comparison_q[17:0]};
// map output 38
assign slv_wire_array[38] = {6'h0, cav1_p2_dc_freq[25:0]};
// map output 39
assign slv_wire_array[39] = {14'h0, cav1_p2_dc_img[17:0]};
// map output 40
assign slv_wire_array[40] = {14'h0, cav1_p2_dc_real[17:0]};
// map output 41
assign slv_wire_array[41] = {14'h0, cav1_p2_if_amp[17:0]};
// map output 42
assign slv_wire_array[42] = {14'h0, cav1_p2_if_i[17:0]};
// map output 43
assign slv_wire_array[43] = {14'h0, cav1_p2_if_phase[17:0]};
// map output 44
assign slv_wire_array[44] = {14'h0, cav1_p2_if_q[17:0]};
// map output 45
assign slv_wire_array[45] = {14'h0, cav1_p2_integrated_i[17:0]};
// map output 46
assign slv_wire_array[46] = {14'h0, cav1_p2_integrated_q[17:0]};
// map output 47
assign slv_wire_array[47] = {14'h0, cav1_p2_phase_out[17:0]};
// map output 48
assign slv_wire_array[48] = {14'h0, cav2_p1_amp_out[17:0]};
// map output 49
assign slv_wire_array[49] = {14'h0, cav2_p1_comparison_i[17:0]};
// map output 50
assign slv_wire_array[50] = {14'h0, cav2_p1_comparison_phase[17:0]};
// map output 51
assign slv_wire_array[51] = {14'h0, cav2_p1_comparison_q[17:0]};
// map output 52
assign slv_wire_array[52] = {6'h0, cav2_p1_dc_freq[25:0]};
// map output 53
assign slv_wire_array[53] = {3'h0, cav2_p1_dc_img[28:0]};
// map output 54
assign slv_wire_array[54] = {3'h0, cav2_p1_dc_real[28:0]};
// map output 55
assign slv_wire_array[55] = {14'h0, cav2_p1_if_amp[17:0]};
// map output 56
assign slv_wire_array[56] = {14'h0, cav2_p1_if_i[17:0]};
// map output 57
assign slv_wire_array[57] = {14'h0, cav2_p1_if_phase[17:0]};
// map output 58
assign slv_wire_array[58] = {14'h0, cav2_p1_if_q[17:0]};
// map output 59
assign slv_wire_array[59] = {14'h0, cav2_p1_integrated_i[17:0]};
// map output 60
assign slv_wire_array[60] = {14'h0, cav2_p1_integrated_q[17:0]};
// map output 61
assign slv_wire_array[61] = {14'h0, cav2_p1_phase_out[17:0]};
// map output 62
assign slv_wire_array[62] = {14'h0, cav2_p2_amp_out[17:0]};
// map output 63
assign slv_wire_array[63] = {14'h0, cav2_p2_comparison_i[17:0]};
// map output 64
assign slv_wire_array[64] = {14'h0, cav2_p2_comparison_phase[17:0]};
// map output 65
assign slv_wire_array[65] = {14'h0, cav2_p2_comparison_q[17:0]};
// map output 66
assign slv_wire_array[66] = {6'h0, cav2_p2_dc_freq[25:0]};
// map output 67
assign slv_wire_array[67] = {3'h0, cav2_p2_dc_img[28:0]};
// map output 68
assign slv_wire_array[68] = {3'h0, cav2_p2_dc_real[28:0]};
// map output 69
assign slv_wire_array[69] = {14'h0, cav2_p2_if_amp[17:0]};
// map output 70
assign slv_wire_array[70] = {14'h0, cav2_p2_if_i[17:0]};
// map output 71
assign slv_wire_array[71] = {14'h0, cav2_p2_if_phase[17:0]};
// map output 72
assign slv_wire_array[72] = {14'h0, cav2_p2_if_q[17:0]};
// map output 73
assign slv_wire_array[73] = {14'h0, cav2_p2_integrated_i[17:0]};
// map output 74
assign slv_wire_array[74] = {14'h0, cav2_p2_integrated_q[17:0]};
// map output 75
assign slv_wire_array[75] = {14'h0, cav2_p2_phase_out[17:0]};
// map output 76
assign slv_wire_array[76] = {14'h0, rf_ref_amp[17:0]};
// map output 77
assign slv_wire_array[77] = {14'h0, rf_ref_i[17:0]};
// map output 78
assign slv_wire_array[78] = {14'h0, rf_ref_phase[17:0]};
// map output 79
assign slv_wire_array[79] = {14'h0, rf_ref_q[17:0]};
// map output 80
assign slv_wire_array[80] = status_0[31:0];
  initial
  begin
    slv_reg_array[1023] = 32'd0;
    slv_reg_array[4] = 32'd0;
    slv_reg_array[6] = 32'd0;
    slv_reg_array[5] = 32'd0;
    slv_reg_array[212] = 32'd0;
    slv_reg_array[211] = 32'd0;
    slv_reg_array[208] = 32'd0;
    slv_reg_array[161] = 32'd0;
    slv_reg_array[160] = 32'd0;
    slv_reg_array[157] = 32'd0;
    slv_reg_array[173] = 32'd0;
    slv_reg_array[172] = 32'd0;
    slv_reg_array[110] = 32'd0;
    slv_reg_array[109] = 32'd0;
    slv_reg_array[106] = 32'd0;
    slv_reg_array[59] = 32'd0;
    slv_reg_array[58] = 32'd0;
    slv_reg_array[55] = 32'd0;
    slv_reg_array[71] = 32'd0;
    slv_reg_array[70] = 32'd0;
  end
  always @(axi_awaddr)
  begin
    case(axi_awaddr)
      12'd4092 : dec_w = 0;
      12'd16 : dec_w = 1;
      12'd24 : dec_w = 2;
      12'd20 : dec_w = 3;
      12'd848 : dec_w = 4;
      12'd844 : dec_w = 5;
      12'd832 : dec_w = 6;
      12'd644 : dec_w = 7;
      12'd640 : dec_w = 8;
      12'd628 : dec_w = 9;
      12'd692 : dec_w = 10;
      12'd688 : dec_w = 11;
      12'd440 : dec_w = 12;
      12'd436 : dec_w = 13;
      12'd424 : dec_w = 14;
      12'd236 : dec_w = 15;
      12'd232 : dec_w = 16;
      12'd220 : dec_w = 17;
      12'd284 : dec_w = 18;
      12'd280 : dec_w = 19;
      12'd256 : dec_w = 20;
      12'd260 : dec_w = 21;
      12'd268 : dec_w = 22;
      12'd264 : dec_w = 23;
      12'd240 : dec_w = 24;
      12'd228 : dec_w = 25;
      12'd224 : dec_w = 26;
      12'd204 : dec_w = 27;
      12'd212 : dec_w = 28;
      12'd208 : dec_w = 29;
      12'd216 : dec_w = 30;
      12'd244 : dec_w = 31;
      12'd248 : dec_w = 32;
      12'd252 : dec_w = 33;
      12'd460 : dec_w = 34;
      12'd464 : dec_w = 35;
      12'd472 : dec_w = 36;
      12'd468 : dec_w = 37;
      12'd444 : dec_w = 38;
      12'd432 : dec_w = 39;
      12'd428 : dec_w = 40;
      12'd408 : dec_w = 41;
      12'd416 : dec_w = 42;
      12'd412 : dec_w = 43;
      12'd420 : dec_w = 44;
      12'd448 : dec_w = 45;
      12'd452 : dec_w = 46;
      12'd456 : dec_w = 47;
      12'd664 : dec_w = 48;
      12'd668 : dec_w = 49;
      12'd676 : dec_w = 50;
      12'd672 : dec_w = 51;
      12'd648 : dec_w = 52;
      12'd636 : dec_w = 53;
      12'd632 : dec_w = 54;
      12'd612 : dec_w = 55;
      12'd620 : dec_w = 56;
      12'd616 : dec_w = 57;
      12'd624 : dec_w = 58;
      12'd652 : dec_w = 59;
      12'd656 : dec_w = 60;
      12'd660 : dec_w = 61;
      12'd868 : dec_w = 62;
      12'd872 : dec_w = 63;
      12'd880 : dec_w = 64;
      12'd876 : dec_w = 65;
      12'd852 : dec_w = 66;
      12'd840 : dec_w = 67;
      12'd836 : dec_w = 68;
      12'd816 : dec_w = 69;
      12'd824 : dec_w = 70;
      12'd820 : dec_w = 71;
      12'd828 : dec_w = 72;
      12'd856 : dec_w = 73;
      12'd860 : dec_w = 74;
      12'd864 : dec_w = 75;
      12'd0 : dec_w = 76;
      12'd8 : dec_w = 77;
      12'd4 : dec_w = 78;
      12'd12 : dec_w = 79;
      12'd1016 : dec_w = 80;
      default : dec_w = 0;
    endcase
  end
  always @(axi_araddr)
  begin
    case(axi_araddr)
      12'd4092 : dec_r = 0;
      12'd16 : dec_r = 1;
      12'd24 : dec_r = 2;
      12'd20 : dec_r = 3;
      12'd848 : dec_r = 4;
      12'd844 : dec_r = 5;
      12'd832 : dec_r = 6;
      12'd644 : dec_r = 7;
      12'd640 : dec_r = 8;
      12'd628 : dec_r = 9;
      12'd692 : dec_r = 10;
      12'd688 : dec_r = 11;
      12'd440 : dec_r = 12;
      12'd436 : dec_r = 13;
      12'd424 : dec_r = 14;
      12'd236 : dec_r = 15;
      12'd232 : dec_r = 16;
      12'd220 : dec_r = 17;
      12'd284 : dec_r = 18;
      12'd280 : dec_r = 19;
      12'd256 : dec_r = 20;
      12'd260 : dec_r = 21;
      12'd268 : dec_r = 22;
      12'd264 : dec_r = 23;
      12'd240 : dec_r = 24;
      12'd228 : dec_r = 25;
      12'd224 : dec_r = 26;
      12'd204 : dec_r = 27;
      12'd212 : dec_r = 28;
      12'd208 : dec_r = 29;
      12'd216 : dec_r = 30;
      12'd244 : dec_r = 31;
      12'd248 : dec_r = 32;
      12'd252 : dec_r = 33;
      12'd460 : dec_r = 34;
      12'd464 : dec_r = 35;
      12'd472 : dec_r = 36;
      12'd468 : dec_r = 37;
      12'd444 : dec_r = 38;
      12'd432 : dec_r = 39;
      12'd428 : dec_r = 40;
      12'd408 : dec_r = 41;
      12'd416 : dec_r = 42;
      12'd412 : dec_r = 43;
      12'd420 : dec_r = 44;
      12'd448 : dec_r = 45;
      12'd452 : dec_r = 46;
      12'd456 : dec_r = 47;
      12'd664 : dec_r = 48;
      12'd668 : dec_r = 49;
      12'd676 : dec_r = 50;
      12'd672 : dec_r = 51;
      12'd648 : dec_r = 52;
      12'd636 : dec_r = 53;
      12'd632 : dec_r = 54;
      12'd612 : dec_r = 55;
      12'd620 : dec_r = 56;
      12'd616 : dec_r = 57;
      12'd624 : dec_r = 58;
      12'd652 : dec_r = 59;
      12'd656 : dec_r = 60;
      12'd660 : dec_r = 61;
      12'd868 : dec_r = 62;
      12'd872 : dec_r = 63;
      12'd880 : dec_r = 64;
      12'd876 : dec_r = 65;
      12'd852 : dec_r = 66;
      12'd840 : dec_r = 67;
      12'd836 : dec_r = 68;
      12'd816 : dec_r = 69;
      12'd824 : dec_r = 70;
      12'd820 : dec_r = 71;
      12'd828 : dec_r = 72;
      12'd856 : dec_r = 73;
      12'd860 : dec_r = 74;
      12'd864 : dec_r = 75;
      12'd0 : dec_r = 76;
      12'd8 : dec_r = 77;
      12'd4 : dec_r = 78;
      12'd12 : dec_r = 79;
      12'd1016 : dec_r = 80;
      default : dec_r = 0;
    endcase
  end
  always @( posedge axi_lite_aclk )
  begin
    if ( axi_lite_aresetn == 1'b0 )
      begin
        axi_awready <= 1'b0;
        axi_awaddr <= 0;
      end
    else
      begin
        if (~axi_awready && axi_lite_s_axi_awvalid && axi_lite_s_axi_wvalid)
          begin
            axi_awready <= 1'b1;
            axi_awaddr <= axi_lite_s_axi_awaddr;
          end
        else
          begin
            axi_awready <= 1'b0;
          end
      end
  end
  always @( posedge axi_lite_aclk )
  begin
    if ( axi_lite_aresetn == 1'b0 )
      begin
        axi_wready <= 1'b0;
      end
    else
      begin
        if (~axi_wready && axi_lite_s_axi_wvalid && axi_lite_s_axi_awvalid)
          begin
            axi_wready <= 1'b1;
          end
        else
          begin
            axi_wready <= 1'b0;
          end
      end
  end
  assign slv_reg_wren = axi_wready && axi_lite_s_axi_wvalid && axi_awready && axi_lite_s_axi_awvalid;
  always @( posedge axi_lite_aclk )
  begin
    if ( axi_lite_aresetn == 1'b0 )
      begin
        slv_reg_array[1023] = 32'd0;
        slv_reg_array[4] = 32'd0;
        slv_reg_array[6] = 32'd0;
        slv_reg_array[5] = 32'd0;
        slv_reg_array[212] = 32'd0;
        slv_reg_array[211] = 32'd0;
        slv_reg_array[208] = 32'd0;
        slv_reg_array[161] = 32'd0;
        slv_reg_array[160] = 32'd0;
        slv_reg_array[157] = 32'd0;
        slv_reg_array[173] = 32'd0;
        slv_reg_array[172] = 32'd0;
        slv_reg_array[110] = 32'd0;
        slv_reg_array[109] = 32'd0;
        slv_reg_array[106] = 32'd0;
        slv_reg_array[59] = 32'd0;
        slv_reg_array[58] = 32'd0;
        slv_reg_array[55] = 32'd0;
        slv_reg_array[71] = 32'd0;
        slv_reg_array[70] = 32'd0;
      end
    else begin
      if (slv_reg_wren)
        begin
          for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
            if ( axi_lite_s_axi_wstrb[byte_index] == 1 ) begin
              slv_reg_array[dec_w][(byte_index*8) +: 8] <= axi_lite_s_axi_wdata[(byte_index*8) +: 8];
            end
        end
    end
  end
  always @( posedge axi_lite_aclk )
  begin
    if ( axi_lite_aresetn == 1'b0 )
      begin
        axi_bvalid  <= 0;
        axi_bresp   <= 2'b0;
      end
    else
      begin
        if (axi_awready && axi_lite_s_axi_awvalid && ~axi_bvalid && axi_wready && axi_lite_s_axi_wvalid)
          begin
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; 
          end
        else
          begin
            if (axi_lite_s_axi_bready && axi_bvalid)
              begin
                axi_bvalid <= 1'b0;
              end
          end
      end
  end
  always @( posedge axi_lite_aclk )
  begin
    if ( axi_lite_aresetn == 1'b0 )
      begin
        axi_arready <= 1'b0;
        axi_araddr  <= {ADDR_MSB{1'b0}};
      end
    else
      begin
        if (~axi_arready && axi_lite_s_axi_arvalid)
          begin
            axi_arready <= 1'b1;
            axi_araddr  <= axi_lite_s_axi_araddr;
          end
        else
          begin
            axi_arready <= 1'b0;
          end
      end
  end

  // AXI read response (inferred flops)
  always @( posedge axi_lite_aclk )
  begin
    if ( axi_lite_aresetn == 1'b0 )
      begin
        axi_rvalid <= 1'b0;
        axi_rresp  <= 2'b0;
      end
    else
      begin
        if (slv_reg_rden)
          begin
            axi_rvalid <= 1'b1;
            axi_rresp  <= 2'b0; 
          end
        else if (axi_rvalid && axi_lite_s_axi_rready)
          begin
            axi_rvalid <= 1'b0;
            axi_rresp  <= 2'b0; 
          end
      end
  end
  assign slv_reg_rden = axi_arready & axi_lite_s_axi_arvalid & ~axi_rvalid;
  always @(axi_lite_aresetn, slv_reg_rden, axi_araddr, slv_wire_array, dec_r)
  begin
    if ( axi_lite_aresetn == 1'b0 )
      begin
        reg_data_out <= {C_S_AXI_DATA_WIDTH{1'b0}};
      end
    else
      begin
     reg_data_out <= slv_wire_array[dec_r];
      end
  end
  // flop for AXI read data
  always @( posedge axi_lite_aclk )
  begin
    if ( axi_lite_aresetn == 1'b0 )
      begin
        axi_rdata  <= 0;
      end
    else
      begin
        if (slv_reg_rden)
          begin
            axi_rdata <= reg_data_out;
          end
      end
  end

  assign axi_lite_clk = axi_lite_aclk;

endmodule

