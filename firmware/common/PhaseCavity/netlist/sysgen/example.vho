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