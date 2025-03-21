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
    gateway_out_x0 => gateway_out_x0,
    gateway_out1_x3 => gateway_out1_x3,
    gateway_out2_x2 => gateway_out2_x2,
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
    gateway_out => gateway_out,
    gateway_out1_x2 => gateway_out1_x2,
    gateway_out10 => gateway_out10,
    gateway_out11_x1 => gateway_out11_x1,
    gateway_out12 => gateway_out12,
    gateway_out13_x1 => gateway_out13_x1,
    gateway_out2_x1 => gateway_out2_x1,
    gateway_out25 => gateway_out25,
    gateway_out3 => gateway_out3,
    gateway_out4 => gateway_out4,
    gateway_out5 => gateway_out5,
    gateway_out6 => gateway_out6,
    gateway_out7 => gateway_out7,
    gateway_out8_x0 => gateway_out8_x0,
    gateway_out9 => gateway_out9,
    gateway_out1 => gateway_out1,
    gateway_out11 => gateway_out11,
    gateway_out13 => gateway_out13,
    gateway_out14_x0 => gateway_out14_x0,
    gateway_out2 => gateway_out2,
    gateway_out4_x0 => gateway_out4_x0,
    gateway_out5_x0 => gateway_out5_x0,
    gateway_out6_x0 => gateway_out6_x0,
    gateway_out7_x0 => gateway_out7_x0,
    gateway_out8 => gateway_out8,
    gateway_out9_x0 => gateway_out9_x0,
    gateway_out1_x0 => gateway_out1_x0,
    gateway_out2_x0 => gateway_out2_x0,
    gateway_out22 => gateway_out22,
    gateway_out24 => gateway_out24,
    gateway_out27 => gateway_out27,
    gateway_out3_x0 => gateway_out3_x0,
    gateway_out4_x1 => gateway_out4_x1,
    gateway_out5_x1 => gateway_out5_x1,
    gateway_out6_x1 => gateway_out6_x1,
    gateway_out1_x1 => gateway_out1_x1,
    gateway_out11_x0 => gateway_out11_x0,
    gateway_out13_x0 => gateway_out13_x0,
    gateway_out14 => gateway_out14,
    gateway_out2_x14 => gateway_out2_x14,
    gateway_out4_x11 => gateway_out4_x11,
    gateway_out5_x16 => gateway_out5_x16,
    gateway_out6_x14 => gateway_out6_x14,
    gateway_out7_x6 => gateway_out7_x6,
    gateway_out8_x6 => gateway_out8_x6,
    gateway_out9_x6 => gateway_out9_x6,
    gateway_out1_x19 => gateway_out1_x19,
    gateway_out2_x15 => gateway_out2_x15,
    gateway_out22_x0 => gateway_out22_x0,
    gateway_out24_x6 => gateway_out24_x6,
    gateway_out27_x8 => gateway_out27_x8,
    gateway_out3_x11 => gateway_out3_x11,
    gateway_out4_x17 => gateway_out4_x17,
    gateway_out5_x17 => gateway_out5_x17,
    gateway_out6_x15 => gateway_out6_x15,
    gateway_out1_x18 => gateway_out1_x18,
    gateway_out11_x8 => gateway_out11_x8,
    gateway_out13_x6 => gateway_out13_x6,
    gateway_out14_x5 => gateway_out14_x5,
    gateway_out2_x16 => gateway_out2_x16,
    gateway_out4_x18 => gateway_out4_x18,
    gateway_out5_x18 => gateway_out5_x18,
    gateway_out6_x16 => gateway_out6_x16,
    gateway_out7_x8 => gateway_out7_x8,
    gateway_out8_x7 => gateway_out8_x7,
    gateway_out9_x7 => gateway_out9_x7,
    gateway_out1_x20 => gateway_out1_x20,
    gateway_out2_x17 => gateway_out2_x17,
    gateway_out22_x6 => gateway_out22_x6,
    gateway_out24_x4 => gateway_out24_x4,
    gateway_out27_x6 => gateway_out27_x6,
    gateway_out3_x9 => gateway_out3_x9,
    gateway_out4_x14 => gateway_out4_x14,
    gateway_out5_x13 => gateway_out5_x13,
    gateway_out6_x11 => gateway_out6_x11,
    gateway_out1_x15 => gateway_out1_x15,
    gateway_out11_x7 => gateway_out11_x7,
    gateway_out13_x5 => gateway_out13_x5,
    gateway_out14_x4 => gateway_out14_x4,
    gateway_out2_x12 => gateway_out2_x12,
    gateway_out4_x15 => gateway_out4_x15,
    gateway_out5_x14 => gateway_out5_x14,
    gateway_out6_x12 => gateway_out6_x12,
    gateway_out7_x4 => gateway_out7_x4,
    gateway_out8_x4 => gateway_out8_x4,
    gateway_out9_x5 => gateway_out9_x5,
    gateway_out1_x16 => gateway_out1_x16,
    gateway_out2_x13 => gateway_out2_x13,
    gateway_out22_x5 => gateway_out22_x5,
    gateway_out24_x5 => gateway_out24_x5,
    gateway_out27_x7 => gateway_out27_x7,
    gateway_out3_x10 => gateway_out3_x10,
    gateway_out4_x16 => gateway_out4_x16,
    gateway_out5_x15 => gateway_out5_x15,
    gateway_out6_x13 => gateway_out6_x13,
    gateway_out1_x17 => gateway_out1_x17,
    gateway_out7_x5 => gateway_out7_x5,
    gateway_out8_x5 => gateway_out8_x5,
    gateway_out9_x8 => gateway_out9_x8,
    gateway_out44_x1 => gateway_out44_x1,
    gateway_out46_x1 => gateway_out46_x1,
    gateway_out11_x10 => gateway_out11_x10,
    gateway_out19_x1 => gateway_out19_x1,
    gateway_out20_x1 => gateway_out20_x1,
    gateway_out3_x14 => gateway_out3_x14,
    gateway_out4_x22 => gateway_out4_x22,
    gateway_out5_x23 => gateway_out5_x23,
    gateway_out27_x10 => gateway_out27_x10,
    gateway_out28_x2 => gateway_out28_x2,
    gateway_out29_x2 => gateway_out29_x2,
    gateway_out_x5 => gateway_out_x5,
    gateway_out1_x25 => gateway_out1_x25,
    gateway_out2_x21 => gateway_out2_x21,
    gateway_out3_x15 => gateway_out3_x15,
    gateway_out4_x23 => gateway_out4_x23,
    gateway_out5_x24 => gateway_out5_x24,
    gateway_out1_x26 => gateway_out1_x26,
    gateway_out6_x20 => gateway_out6_x20,
    gateway_out44_x2 => gateway_out44_x2,
    gateway_out46_x2 => gateway_out46_x2,
    gateway_out11_x11 => gateway_out11_x11,
    gateway_out19_x2 => gateway_out19_x2,
    gateway_out20_x2 => gateway_out20_x2,
    gateway_out3_x16 => gateway_out3_x16,
    gateway_out4_x24 => gateway_out4_x24,
    gateway_out5_x22 => gateway_out5_x22,
    gateway_out27_x9 => gateway_out27_x9,
    gateway_out28_x1 => gateway_out28_x1,
    gateway_out29_x1 => gateway_out29_x1,
    gateway_out_x3 => gateway_out_x3,
    gateway_out1_x21 => gateway_out1_x21,
    gateway_out2_x18 => gateway_out2_x18,
    gateway_out3_x12 => gateway_out3_x12,
    gateway_out4_x19 => gateway_out4_x19,
    gateway_out5_x19 => gateway_out5_x19,
    gateway_out1_x22 => gateway_out1_x22,
    gateway_out6_x17 => gateway_out6_x17,
    gateway_out_x4 => gateway_out_x4,
    gateway_out1_x23 => gateway_out1_x23,
    gateway_out2_x19 => gateway_out2_x19,
    gateway_out3_x13 => gateway_out3_x13,
    gateway_out39 => gateway_out39,
    gateway_out4_x20 => gateway_out4_x20,
    gateway_out40 => gateway_out40,
    gateway_out5_x20 => gateway_out5_x20,
    gateway_out6_x18 => gateway_out6_x18,
    gateway_out1_x24 => gateway_out1_x24,
    gateway_out11_x9 => gateway_out11_x9,
    gateway_out13_x7 => gateway_out13_x7,
    gateway_out14_x6 => gateway_out14_x6,
    gateway_out2_x20 => gateway_out2_x20,
    gateway_out4_x21 => gateway_out4_x21,
    gateway_out5_x21 => gateway_out5_x21,
    gateway_out6_x19 => gateway_out6_x19,
    gateway_out7_x7 => gateway_out7_x7,
    gateway_out8_x8 => gateway_out8_x8,
    gateway_out9_x2 => gateway_out9_x2,
    gateway_out1_x7 => gateway_out1_x7,
    gateway_out2_x7 => gateway_out2_x7,
    gateway_out22_x2 => gateway_out22_x2,
    gateway_out24_x1 => gateway_out24_x1,
    gateway_out27_x1 => gateway_out27_x1,
    gateway_out3_x2 => gateway_out3_x2,
    gateway_out4_x5 => gateway_out4_x5,
    gateway_out5_x6 => gateway_out5_x6,
    gateway_out6_x6 => gateway_out6_x6,
    gateway_out1_x8 => gateway_out1_x8,
    gateway_out11_x4 => gateway_out11_x4,
    gateway_out13_x4 => gateway_out13_x4,
    gateway_out14_x3 => gateway_out14_x3,
    gateway_out2_x6 => gateway_out2_x6,
    gateway_out4_x6 => gateway_out4_x6,
    gateway_out5_x7 => gateway_out5_x7,
    gateway_out6_x7 => gateway_out6_x7,
    gateway_out7_x3 => gateway_out7_x3,
    gateway_out8_x2 => gateway_out8_x2,
    gateway_out9_x3 => gateway_out9_x3,
    gateway_out1_x9 => gateway_out1_x9,
    gateway_out2_x8 => gateway_out2_x8,
    gateway_out22_x3 => gateway_out22_x3,
    gateway_out24_x2 => gateway_out24_x2,
    gateway_out27_x2 => gateway_out27_x2,
    gateway_out3_x3 => gateway_out3_x3,
    gateway_out4_x7 => gateway_out4_x7,
    gateway_out5_x3 => gateway_out5_x3,
    gateway_out6_x2 => gateway_out6_x2,
    gateway_out1_x4 => gateway_out1_x4,
    gateway_out11_x2 => gateway_out11_x2,
    gateway_out13_x2 => gateway_out13_x2,
    gateway_out14_x1 => gateway_out14_x1,
    gateway_out2_x3 => gateway_out2_x3,
    gateway_out4_x2 => gateway_out4_x2,
    gateway_out5_x2 => gateway_out5_x2,
    gateway_out6_x3 => gateway_out6_x3,
    gateway_out7_x1 => gateway_out7_x1,
    gateway_out8_x1 => gateway_out8_x1,
    gateway_out9_x1 => gateway_out9_x1,
    gateway_out1_x5 => gateway_out1_x5,
    gateway_out2_x4 => gateway_out2_x4,
    gateway_out22_x1 => gateway_out22_x1,
    gateway_out24_x0 => gateway_out24_x0,
    gateway_out27_x0 => gateway_out27_x0,
    gateway_out3_x1 => gateway_out3_x1,
    gateway_out4_x3 => gateway_out4_x3,
    gateway_out5_x4 => gateway_out5_x4,
    gateway_out6_x4 => gateway_out6_x4,
    gateway_out1_x6 => gateway_out1_x6,
    gateway_out11_x3 => gateway_out11_x3,
    gateway_out13_x3 => gateway_out13_x3,
    gateway_out14_x2 => gateway_out14_x2,
    gateway_out2_x5 => gateway_out2_x5,
    gateway_out4_x4 => gateway_out4_x4,
    gateway_out5_x5 => gateway_out5_x5,
    gateway_out6_x5 => gateway_out6_x5,
    gateway_out7_x2 => gateway_out7_x2,
    gateway_out8_x3 => gateway_out8_x3,
    gateway_out9_x4 => gateway_out9_x4,
    gateway_out1_x13 => gateway_out1_x13,
    gateway_out2_x10 => gateway_out2_x10,
    gateway_out22_x4 => gateway_out22_x4,
    gateway_out24_x3 => gateway_out24_x3,
    gateway_out27_x4 => gateway_out27_x4,
    gateway_out3_x6 => gateway_out3_x6,
    gateway_out4_x10 => gateway_out4_x10,
    gateway_out5_x10 => gateway_out5_x10,
    gateway_out6_x10 => gateway_out6_x10,
    gateway_out44_x0 => gateway_out44_x0,
    gateway_out46_x0 => gateway_out46_x0,
    gateway_out11_x6 => gateway_out11_x6,
    gateway_out19_x0 => gateway_out19_x0,
    gateway_out20_x0 => gateway_out20_x0,
    gateway_out3_x7 => gateway_out3_x7,
    gateway_out4_x12 => gateway_out4_x12,
    gateway_out5_x11 => gateway_out5_x11,
    gateway_out27_x5 => gateway_out27_x5,
    gateway_out28_x0 => gateway_out28_x0,
    gateway_out29_x0 => gateway_out29_x0,
    gateway_out_x2 => gateway_out_x2,
    gateway_out1_x14 => gateway_out1_x14,
    gateway_out2_x11 => gateway_out2_x11,
    gateway_out3_x8 => gateway_out3_x8,
    gateway_out4_x13 => gateway_out4_x13,
    gateway_out5_x12 => gateway_out5_x12,
    gateway_out1_x11 => gateway_out1_x11,
    gateway_out6_x8 => gateway_out6_x8,
    gateway_out44 => gateway_out44,
    gateway_out46 => gateway_out46,
    gateway_out11_x5 => gateway_out11_x5,
    gateway_out19 => gateway_out19,
    gateway_out20 => gateway_out20,
    gateway_out3_x4 => gateway_out3_x4,
    gateway_out4_x8 => gateway_out4_x8,
    gateway_out5_x8 => gateway_out5_x8,
    gateway_out27_x3 => gateway_out27_x3,
    gateway_out28 => gateway_out28,
    gateway_out29 => gateway_out29,
    gateway_out_x1 => gateway_out_x1,
    gateway_out1_x10 => gateway_out1_x10,
    gateway_out2_x9 => gateway_out2_x9,
    gateway_out3_x5 => gateway_out3_x5,
    gateway_out4_x9 => gateway_out4_x9,
    gateway_out5_x9 => gateway_out5_x9,
    gateway_out1_x12 => gateway_out1_x12,
    gateway_out6_x9 => gateway_out6_x9,
    axi_lite_s_axi_awready => axi_lite_s_axi_awready,
    axi_lite_s_axi_wready => axi_lite_s_axi_wready,
    axi_lite_s_axi_bresp => axi_lite_s_axi_bresp,
    axi_lite_s_axi_bvalid => axi_lite_s_axi_bvalid,
    axi_lite_s_axi_arready => axi_lite_s_axi_arready,
    axi_lite_s_axi_rdata => axi_lite_s_axi_rdata,
    axi_lite_s_axi_rresp => axi_lite_s_axi_rresp,
    axi_lite_s_axi_rvalid => axi_lite_s_axi_rvalid
  );
