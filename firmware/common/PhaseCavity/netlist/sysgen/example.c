#include "example.h"
#ifndef __linux__
int example_CfgInitialize(example *InstancePtr, example_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->example_BaseAddress = ConfigPtr->example_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void example_cav2_p2_window_stop_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 848, Data);
}
u32 example_cav2_p2_window_stop_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 848);
    return Data;
}
void example_cav2_p2_window_start_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 844, Data);
}
u32 example_cav2_p2_window_start_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 844);
    return Data;
}
void example_wfdata_7_sel_write(example *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 48, Data);
}
u8 example_wfdata_7_sel_read(example *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 48);
    return Data;
}
void example_wfdata_6_sel_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 44, Data);
}
u32 example_wfdata_6_sel_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 44);
    return Data;
}
void example_wfdata_5_sel_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 40, Data);
}
u32 example_wfdata_5_sel_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 40);
    return Data;
}
void example_wfdata_4_sel_write(example *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 36, Data);
}
u8 example_wfdata_4_sel_read(example *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 36);
    return Data;
}
void example_wfdata_3_sel_write(example *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 32, Data);
}
u8 example_wfdata_3_sel_read(example *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 32);
    return Data;
}
void example_wfdata_2_sel_write(example *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 28, Data);
}
u8 example_wfdata_2_sel_read(example *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 28);
    return Data;
}
void example_wfdata_1_sel_write(example *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 24, Data);
}
u8 example_wfdata_1_sel_read(example *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 24);
    return Data;
}
void example_wfdata_0_sel_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 20, Data);
}
u32 example_wfdata_0_sel_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 20);
    return Data;
}
void example_scratchpad_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 4092, Data);
}
u32 example_scratchpad_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 4092);
    return Data;
}
void example_rf_ref_chan_sel_write(example *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 16, Data);
}
u8 example_rf_ref_chan_sel_read(example *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 16);
    return Data;
}
void example_cav2_reg_latch_pt_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 884, Data);
}
u32 example_cav2_reg_latch_pt_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 884);
    return Data;
}
void example_cav2_p2_chan_sel_write(example *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 832, Data);
}
u8 example_cav2_p2_chan_sel_read(example *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 832);
    return Data;
}
void example_cav2_p2_calibration_coeff_write(example *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 888, Data);
}
int example_cav2_p2_calibration_coeff_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 888);
    return Data;
}
void example_cav2_p1_window_stop_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 644, Data);
}
u32 example_cav2_p1_window_stop_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 644);
    return Data;
}
void example_cav2_p1_window_start_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 640, Data);
}
u32 example_cav2_p1_window_start_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 640);
    return Data;
}
void example_cav2_p1_chan_sel_write(example *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 628, Data);
}
u8 example_cav2_p1_chan_sel_read(example *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 628);
    return Data;
}
void example_cav2_p1_calibration_coeff_write(example *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 684, Data);
}
int example_cav2_p1_calibration_coeff_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 684);
    return Data;
}
void example_cav2_nco_phase_reset_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 692, Data);
}
u32 example_cav2_nco_phase_reset_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 692);
    return Data;
}
void example_cav2_nco_phase_adj_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 688, Data);
}
u32 example_cav2_nco_phase_adj_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 688);
    return Data;
}
void example_cav2_freq_eval_stop_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 876, Data);
}
u32 example_cav2_freq_eval_stop_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 876);
    return Data;
}
void example_cav2_freq_eval_start_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 872, Data);
}
u32 example_cav2_freq_eval_start_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 872);
    return Data;
}
void example_cav1_reg_latch_pt_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 476, Data);
}
u32 example_cav1_reg_latch_pt_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 476);
    return Data;
}
void example_cav1_p2_window_stop_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 440, Data);
}
u32 example_cav1_p2_window_stop_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 440);
    return Data;
}
void example_cav1_p2_window_start_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 436, Data);
}
u32 example_cav1_p2_window_start_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 436);
    return Data;
}
void example_cav1_p2_chan_sel_write(example *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 424, Data);
}
u8 example_cav1_p2_chan_sel_read(example *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 424);
    return Data;
}
void example_cav1_p2_calibration_coeff_write(example *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 480, Data);
}
int example_cav1_p2_calibration_coeff_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 480);
    return Data;
}
void example_cav1_p1_window_stop_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 236, Data);
}
u32 example_cav1_p1_window_stop_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 236);
    return Data;
}
void example_cav1_p1_window_start_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 232, Data);
}
u32 example_cav1_p1_window_start_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 232);
    return Data;
}
void example_cav1_p1_chan_sel_write(example *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 220, Data);
}
u8 example_cav1_p1_chan_sel_read(example *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 220);
    return Data;
}
void example_cav1_p1_calibration_coeff_write(example *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 276, Data);
}
int example_cav1_p1_calibration_coeff_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 276);
    return Data;
}
void example_cav1_nco_phase_reset_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 284, Data);
}
u32 example_cav1_nco_phase_reset_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 284);
    return Data;
}
void example_cav1_nco_phase_adj_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 280, Data);
}
u32 example_cav1_nco_phase_adj_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 280);
    return Data;
}
void example_cav1_freq_eval_stop_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 468, Data);
}
u32 example_cav1_freq_eval_stop_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 468);
    return Data;
}
void example_cav1_freq_eval_start_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_BaseAddress, 464, Data);
}
u32 example_cav1_freq_eval_start_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 464);
    return Data;
}
int example_cav1_p1_amp_out_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 256);
    return Data;
}
int example_cav1_p1_comparison_phase_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 268);
    return Data;
}
int example_cav1_p1_dc_freq_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 240);
    return Data;
}
int example_cav1_p1_dc_img_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 228);
    return Data;
}
int example_cav1_p1_dc_real_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 224);
    return Data;
}
int example_cav1_p1_if_amp_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 204);
    return Data;
}
int example_cav1_p1_if_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 212);
    return Data;
}
int example_cav1_p1_if_phase_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 208);
    return Data;
}
int example_cav1_p1_if_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 216);
    return Data;
}
int example_cav1_p1_integrated_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 244);
    return Data;
}
int example_cav1_p1_integrated_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 248);
    return Data;
}
int example_cav1_p1_phase_out_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 252);
    return Data;
}
int example_cav1_p2_amp_out_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 460);
    return Data;
}
int example_cav1_p2_comparison_phase_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 472);
    return Data;
}
int example_cav1_p2_dc_freq_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 444);
    return Data;
}
int example_cav1_p2_dc_img_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 432);
    return Data;
}
int example_cav1_p2_dc_real_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 428);
    return Data;
}
int example_cav1_p2_if_amp_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 408);
    return Data;
}
int example_cav1_p2_if_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 416);
    return Data;
}
int example_cav1_p2_if_phase_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 412);
    return Data;
}
int example_cav1_p2_if_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 420);
    return Data;
}
int example_cav1_p2_integrated_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 448);
    return Data;
}
int example_cav1_p2_integrated_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 452);
    return Data;
}
int example_cav1_p2_phase_out_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 456);
    return Data;
}
int example_cav2_p1_amp_out_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 664);
    return Data;
}
int example_cav2_p1_comparison_phase_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 676);
    return Data;
}
int example_cav2_p1_dc_freq_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 648);
    return Data;
}
int example_cav2_p1_dc_img_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 636);
    return Data;
}
int example_cav2_p1_dc_real_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 632);
    return Data;
}
int example_cav2_p1_if_amp_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 612);
    return Data;
}
int example_cav2_p1_if_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 620);
    return Data;
}
int example_cav2_p1_if_phase_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 616);
    return Data;
}
int example_cav2_p1_if_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 624);
    return Data;
}
int example_cav2_p1_integrated_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 652);
    return Data;
}
int example_cav2_p1_integrated_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 656);
    return Data;
}
int example_cav2_p1_phase_out_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 660);
    return Data;
}
int example_cav2_p2_amp_out_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 868);
    return Data;
}
int example_cav2_p2_comparison_phase_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 880);
    return Data;
}
int example_cav2_p2_dc_freq_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 852);
    return Data;
}
int example_cav2_p2_dc_img_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 840);
    return Data;
}
int example_cav2_p2_dc_real_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 836);
    return Data;
}
int example_cav2_p2_if_amp_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 816);
    return Data;
}
int example_cav2_p2_if_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 824);
    return Data;
}
int example_cav2_p2_if_phase_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 820);
    return Data;
}
int example_cav2_p2_if_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 828);
    return Data;
}
int example_cav2_p2_integrated_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 856);
    return Data;
}
int example_cav2_p2_integrated_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 860);
    return Data;
}
int example_cav2_p2_phase_out_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 864);
    return Data;
}
int example_rf_ref_amp_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 0);
    return Data;
}
int example_rf_ref_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 8);
    return Data;
}
int example_rf_ref_phase_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 4);
    return Data;
}
int example_rf_ref_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 12);
    return Data;
}
u32 example_status_0_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 1016);
    return Data;
}
