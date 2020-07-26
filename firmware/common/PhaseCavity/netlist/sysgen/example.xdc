set rateCedsp12 example_default_clock_driver/clockdriver_x1/pipelined_ce.ce_pipeline[1].ce_reg/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp
set rateCellsdsp12 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCedsp12/Q]] IS_ENABLE]]
set rateCeaxi_lite8 example_default_clock_driver/clockdriver/pipelined_ce.ce_pipeline[1].ce_reg/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp
set rateCellsaxi_lite8 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCeaxi_lite8/Q]] IS_ENABLE]]
set_multicycle_path -from $rateCellsdsp12 -to $rateCellsdsp12 -setup 12
set_multicycle_path -from $rateCellsdsp12 -to $rateCellsdsp12 -hold 11
set_multicycle_path -from $rateCellsaxi_lite8 -to $rateCellsaxi_lite8 -setup 8
set_multicycle_path -from $rateCellsaxi_lite8 -to $rateCellsaxi_lite8 -hold 7
