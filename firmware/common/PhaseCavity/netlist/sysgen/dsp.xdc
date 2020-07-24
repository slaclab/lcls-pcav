set rateCedsp12 dsp_default_clock_driver/clockdriver_x0/pipelined_ce.ce_pipeline[1].ce_reg/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp
set rateCellsdsp12 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCedsp12/Q]] IS_ENABLE]]
set rateCedsp144 dsp_default_clock_driver/clockdriver/pipelined_ce.ce_pipeline[1].ce_reg/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp
set rateCellsdsp144 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCedsp144/Q]] IS_ENABLE]]
set_multicycle_path -from $rateCellsdsp12 -to $rateCellsdsp12 -setup 12
set_multicycle_path -from $rateCellsdsp12 -to $rateCellsdsp12 -hold 11
set_multicycle_path -from $rateCellsdsp12 -to $rateCellsdsp144 -setup 12
set_multicycle_path -from $rateCellsdsp12 -to $rateCellsdsp144 -hold 11
set_multicycle_path -from $rateCellsdsp144 -to $rateCellsdsp12 -setup 12
set_multicycle_path -from $rateCellsdsp144 -to $rateCellsdsp12 -hold 11
set_multicycle_path -from $rateCellsdsp144 -to $rateCellsdsp144 -setup 144
set_multicycle_path -from $rateCellsdsp144 -to $rateCellsdsp144 -hold 143
