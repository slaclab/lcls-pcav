#include "example.h"
#ifndef __linux__
int example_CfgInitialize(example *InstancePtr, example_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->example_BaseAddress = ConfigPtr->example_BaseAddress;
    InstancePtr->example_cav1_nco_phase_adj_BaseAddress = ConfigPtr->example_cav1_nco_phase_adj_BaseAddress;
    InstancePtr->example_cav1_nco_phase_reset_BaseAddress = ConfigPtr->example_cav1_nco_phase_reset_BaseAddress;
    InstancePtr->example_cav1_p1_chan_sel_BaseAddress = ConfigPtr->example_cav1_p1_chan_sel_BaseAddress;
    InstancePtr->example_cav1_p1_window_start_BaseAddress = ConfigPtr->example_cav1_p1_window_start_BaseAddress;
    InstancePtr->example_cav1_p1_window_stop_BaseAddress = ConfigPtr->example_cav1_p1_window_stop_BaseAddress;
    InstancePtr->example_cav1_p2_amp_out_BaseAddress = ConfigPtr->example_cav1_p2_amp_out_BaseAddress;
    InstancePtr->example_cav1_p2_chan_sel_BaseAddress = ConfigPtr->example_cav1_p2_chan_sel_BaseAddress;
    InstancePtr->example_cav1_p2_comparison_i_BaseAddress = ConfigPtr->example_cav1_p2_comparison_i_BaseAddress;
    InstancePtr->example_cav1_p2_comparison_phase_BaseAddress = ConfigPtr->example_cav1_p2_comparison_phase_BaseAddress;
    InstancePtr->example_cav1_p2_comparison_q_BaseAddress = ConfigPtr->example_cav1_p2_comparison_q_BaseAddress;
    InstancePtr->example_cav1_p2_dc_freq_BaseAddress = ConfigPtr->example_cav1_p2_dc_freq_BaseAddress;
    InstancePtr->example_cav1_p2_dc_img_BaseAddress = ConfigPtr->example_cav1_p2_dc_img_BaseAddress;
    InstancePtr->example_cav1_p2_dc_real_BaseAddress = ConfigPtr->example_cav1_p2_dc_real_BaseAddress;
    InstancePtr->example_cav1_p2_if_amp_BaseAddress = ConfigPtr->example_cav1_p2_if_amp_BaseAddress;
    InstancePtr->example_cav1_p2_if_i_BaseAddress = ConfigPtr->example_cav1_p2_if_i_BaseAddress;
    InstancePtr->example_cav1_p2_if_phase_BaseAddress = ConfigPtr->example_cav1_p2_if_phase_BaseAddress;
    InstancePtr->example_cav1_p2_if_q_BaseAddress = ConfigPtr->example_cav1_p2_if_q_BaseAddress;
    InstancePtr->example_cav1_p2_integrated_i_BaseAddress = ConfigPtr->example_cav1_p2_integrated_i_BaseAddress;
    InstancePtr->example_cav1_p2_integrated_q_BaseAddress = ConfigPtr->example_cav1_p2_integrated_q_BaseAddress;
    InstancePtr->example_cav1_p2_phase_out_BaseAddress = ConfigPtr->example_cav1_p2_phase_out_BaseAddress;
    InstancePtr->example_cav1_p2_window_start_BaseAddress = ConfigPtr->example_cav1_p2_window_start_BaseAddress;
    InstancePtr->example_cav1_p2_window_stop_BaseAddress = ConfigPtr->example_cav1_p2_window_stop_BaseAddress;
    InstancePtr->example_cav2_p1_amp_out_BaseAddress = ConfigPtr->example_cav2_p1_amp_out_BaseAddress;
    InstancePtr->example_cav2_p1_chan_sel_BaseAddress = ConfigPtr->example_cav2_p1_chan_sel_BaseAddress;
    InstancePtr->example_cav2_p1_comparison_i_BaseAddress = ConfigPtr->example_cav2_p1_comparison_i_BaseAddress;
    InstancePtr->example_cav2_p1_comparison_phase_BaseAddress = ConfigPtr->example_cav2_p1_comparison_phase_BaseAddress;
    InstancePtr->example_cav2_p1_comparison_q_BaseAddress = ConfigPtr->example_cav2_p1_comparison_q_BaseAddress;
    InstancePtr->example_cav2_p1_dc_freq_BaseAddress = ConfigPtr->example_cav2_p1_dc_freq_BaseAddress;
    InstancePtr->example_cav2_p1_dc_img_BaseAddress = ConfigPtr->example_cav2_p1_dc_img_BaseAddress;
    InstancePtr->example_cav2_p1_dc_real_BaseAddress = ConfigPtr->example_cav2_p1_dc_real_BaseAddress;
    InstancePtr->example_cav2_p1_if_amp_BaseAddress = ConfigPtr->example_cav2_p1_if_amp_BaseAddress;
    InstancePtr->example_cav2_p1_if_i_BaseAddress = ConfigPtr->example_cav2_p1_if_i_BaseAddress;
    InstancePtr->example_cav2_p1_if_phase_BaseAddress = ConfigPtr->example_cav2_p1_if_phase_BaseAddress;
    InstancePtr->example_cav2_p1_if_q_BaseAddress = ConfigPtr->example_cav2_p1_if_q_BaseAddress;
    InstancePtr->example_cav2_p1_integrated_i_BaseAddress = ConfigPtr->example_cav2_p1_integrated_i_BaseAddress;
    InstancePtr->example_cav2_p1_integrated_q_BaseAddress = ConfigPtr->example_cav2_p1_integrated_q_BaseAddress;
    InstancePtr->example_cav2_p1_phase_out_BaseAddress = ConfigPtr->example_cav2_p1_phase_out_BaseAddress;
    InstancePtr->example_cav2_p1_window_start_BaseAddress = ConfigPtr->example_cav2_p1_window_start_BaseAddress;
    InstancePtr->example_cav2_p1_window_stop_BaseAddress = ConfigPtr->example_cav2_p1_window_stop_BaseAddress;
    InstancePtr->example_cav2_p2_amp_out_BaseAddress = ConfigPtr->example_cav2_p2_amp_out_BaseAddress;
    InstancePtr->example_cav2_p2_chan_sel_BaseAddress = ConfigPtr->example_cav2_p2_chan_sel_BaseAddress;
    InstancePtr->example_cav2_p2_comparison_i_BaseAddress = ConfigPtr->example_cav2_p2_comparison_i_BaseAddress;
    InstancePtr->example_cav2_p2_comparison_phase_BaseAddress = ConfigPtr->example_cav2_p2_comparison_phase_BaseAddress;
    InstancePtr->example_cav2_p2_comparison_q_BaseAddress = ConfigPtr->example_cav2_p2_comparison_q_BaseAddress;
    InstancePtr->example_cav2_p2_dc_freq_BaseAddress = ConfigPtr->example_cav2_p2_dc_freq_BaseAddress;
    InstancePtr->example_cav2_p2_dc_img_BaseAddress = ConfigPtr->example_cav2_p2_dc_img_BaseAddress;
    InstancePtr->example_cav2_p2_dc_real_BaseAddress = ConfigPtr->example_cav2_p2_dc_real_BaseAddress;
    InstancePtr->example_cav2_p2_if_amp_BaseAddress = ConfigPtr->example_cav2_p2_if_amp_BaseAddress;
    InstancePtr->example_cav2_p2_if_i_BaseAddress = ConfigPtr->example_cav2_p2_if_i_BaseAddress;
    InstancePtr->example_cav2_p2_if_phase_BaseAddress = ConfigPtr->example_cav2_p2_if_phase_BaseAddress;
    InstancePtr->example_cav2_p2_if_q_BaseAddress = ConfigPtr->example_cav2_p2_if_q_BaseAddress;
    InstancePtr->example_cav2_p2_integrated_i_BaseAddress = ConfigPtr->example_cav2_p2_integrated_i_BaseAddress;
    InstancePtr->example_cav2_p2_integrated_q_BaseAddress = ConfigPtr->example_cav2_p2_integrated_q_BaseAddress;
    InstancePtr->example_cav2_p2_phase_out_BaseAddress = ConfigPtr->example_cav2_p2_phase_out_BaseAddress;
    InstancePtr->example_cav2_p2_window_start_BaseAddress = ConfigPtr->example_cav2_p2_window_start_BaseAddress;
    InstancePtr->example_cav2_p2_window_stop_BaseAddress = ConfigPtr->example_cav2_p2_window_stop_BaseAddress;
    InstancePtr->example_ref_window_start_BaseAddress = ConfigPtr->example_ref_window_start_BaseAddress;
    InstancePtr->example_ref_window_stop_BaseAddress = ConfigPtr->example_ref_window_stop_BaseAddress;
    InstancePtr->example_rf_ref_amp_BaseAddress = ConfigPtr->example_rf_ref_amp_BaseAddress;
    InstancePtr->example_rf_ref_chan_sel_BaseAddress = ConfigPtr->example_rf_ref_chan_sel_BaseAddress;
    InstancePtr->example_rf_ref_i_BaseAddress = ConfigPtr->example_rf_ref_i_BaseAddress;
    InstancePtr->example_rf_ref_phase_BaseAddress = ConfigPtr->example_rf_ref_phase_BaseAddress;
    InstancePtr->example_rf_ref_q_BaseAddress = ConfigPtr->example_rf_ref_q_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
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
u32 example_status_0_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 1016);
    return Data;
}
int example_cav1_p1_amp_out_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 256);
    return Data;
}
int example_cav1_p1_comparison_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 260);
    return Data;
}
int example_cav1_p1_comparison_phase_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 268);
    return Data;
}
int example_cav1_p1_comparison_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_BaseAddress, 264);
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
void example_cav2_nco_phase_adj_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_cav1_nco_phase_adj_BaseAddress, 688, Data);
}
u32 example_cav2_nco_phase_adj_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_nco_phase_adj_BaseAddress, 688);
    return Data;
}
void example_cav1_nco_phase_adj_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_cav1_nco_phase_adj_BaseAddress, 280, Data);
}
u32 example_cav1_nco_phase_adj_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_nco_phase_adj_BaseAddress, 280);
    return Data;
}
void example_cav2_nco_phase_reset_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_cav1_nco_phase_reset_BaseAddress, 692, Data);
}
u32 example_cav2_nco_phase_reset_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_nco_phase_reset_BaseAddress, 692);
    return Data;
}
void example_cav1_nco_phase_reset_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_cav1_nco_phase_reset_BaseAddress, 284, Data);
}
u32 example_cav1_nco_phase_reset_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_nco_phase_reset_BaseAddress, 284);
    return Data;
}
void example_cav1_p1_chan_sel_write(example *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_cav1_p1_chan_sel_BaseAddress, 220, Data);
}
u8 example_cav1_p1_chan_sel_read(example *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p1_chan_sel_BaseAddress, 220);
    return Data;
}
void example_cav1_p1_window_start_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_cav1_p1_window_start_BaseAddress, 232, Data);
}
u32 example_cav1_p1_window_start_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p1_window_start_BaseAddress, 232);
    return Data;
}
void example_cav1_p1_window_stop_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_cav1_p1_window_stop_BaseAddress, 236, Data);
}
u32 example_cav1_p1_window_stop_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p1_window_stop_BaseAddress, 236);
    return Data;
}
int example_cav1_p2_amp_out_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p2_amp_out_BaseAddress, 460);
    return Data;
}
void example_cav1_p2_chan_sel_write(example *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_cav1_p2_chan_sel_BaseAddress, 424, Data);
}
u8 example_cav1_p2_chan_sel_read(example *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p2_chan_sel_BaseAddress, 424);
    return Data;
}
int example_cav1_p2_comparison_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p2_comparison_i_BaseAddress, 464);
    return Data;
}
int example_cav1_p2_comparison_phase_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p2_comparison_phase_BaseAddress, 472);
    return Data;
}
int example_cav1_p2_comparison_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p2_comparison_q_BaseAddress, 468);
    return Data;
}
int example_cav1_p2_dc_freq_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p2_dc_freq_BaseAddress, 444);
    return Data;
}
int example_cav1_p2_dc_img_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p2_dc_img_BaseAddress, 432);
    return Data;
}
int example_cav1_p2_dc_real_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p2_dc_real_BaseAddress, 428);
    return Data;
}
int example_cav1_p2_if_amp_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p2_if_amp_BaseAddress, 408);
    return Data;
}
int example_cav1_p2_if_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p2_if_i_BaseAddress, 416);
    return Data;
}
int example_cav1_p2_if_phase_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p2_if_phase_BaseAddress, 412);
    return Data;
}
int example_cav1_p2_if_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p2_if_q_BaseAddress, 420);
    return Data;
}
int example_cav1_p2_integrated_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p2_integrated_i_BaseAddress, 448);
    return Data;
}
int example_cav1_p2_integrated_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p2_integrated_q_BaseAddress, 452);
    return Data;
}
int example_cav1_p2_phase_out_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p2_phase_out_BaseAddress, 456);
    return Data;
}
void example_cav1_p2_window_start_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_cav1_p2_window_start_BaseAddress, 436, Data);
}
u32 example_cav1_p2_window_start_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p2_window_start_BaseAddress, 436);
    return Data;
}
void example_cav1_p2_window_stop_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_cav1_p2_window_stop_BaseAddress, 440, Data);
}
u32 example_cav1_p2_window_stop_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav1_p2_window_stop_BaseAddress, 440);
    return Data;
}
int example_cav2_p1_amp_out_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p1_amp_out_BaseAddress, 664);
    return Data;
}
void example_cav2_p1_chan_sel_write(example *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_cav2_p1_chan_sel_BaseAddress, 628, Data);
}
u8 example_cav2_p1_chan_sel_read(example *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p1_chan_sel_BaseAddress, 628);
    return Data;
}
int example_cav2_p1_comparison_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p1_comparison_i_BaseAddress, 668);
    return Data;
}
int example_cav2_p1_comparison_phase_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p1_comparison_phase_BaseAddress, 676);
    return Data;
}
int example_cav1_p1_comparison_q_x0_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p1_comparison_q_BaseAddress, 672);
    return Data;
}
int example_cav2_p1_dc_freq_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p1_dc_freq_BaseAddress, 648);
    return Data;
}
int example_cav2_p1_dc_img_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p1_dc_img_BaseAddress, 636);
    return Data;
}
int example_cav2_p1_dc_real_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p1_dc_real_BaseAddress, 632);
    return Data;
}
int example_cav2_p1_if_amp_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p1_if_amp_BaseAddress, 612);
    return Data;
}
int example_cav2_p1_if_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p1_if_i_BaseAddress, 620);
    return Data;
}
int example_cav2_p1_if_phase_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p1_if_phase_BaseAddress, 616);
    return Data;
}
int example_cav2_p1_if_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p1_if_q_BaseAddress, 624);
    return Data;
}
int example_cav2_p1_integrated_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p1_integrated_i_BaseAddress, 652);
    return Data;
}
int example_cav2_p1_integrated_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p1_integrated_q_BaseAddress, 656);
    return Data;
}
int example_cav2_p1_phase_out_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p1_phase_out_BaseAddress, 660);
    return Data;
}
void example_cav2_p1_window_start_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_cav2_p1_window_start_BaseAddress, 640, Data);
}
u32 example_cav2_p1_window_start_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p1_window_start_BaseAddress, 640);
    return Data;
}
void example_cav2_p1_window_stop_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_cav2_p1_window_stop_BaseAddress, 644, Data);
}
u32 example_cav2_p1_window_stop_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p1_window_stop_BaseAddress, 644);
    return Data;
}
int example_cav2_p2_amp_out_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p2_amp_out_BaseAddress, 868);
    return Data;
}
void example_cav2_p2_chan_sel_write(example *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_cav2_p2_chan_sel_BaseAddress, 832, Data);
}
u8 example_cav2_p2_chan_sel_read(example *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p2_chan_sel_BaseAddress, 832);
    return Data;
}
int example_cav2_p2_comparison_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p2_comparison_i_BaseAddress, 872);
    return Data;
}
int example_cav2_p2_comparison_phase_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p2_comparison_phase_BaseAddress, 880);
    return Data;
}
int example_cav2_p2_comparison_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p2_comparison_q_BaseAddress, 876);
    return Data;
}
int example_cav2_p2_dc_freq_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p2_dc_freq_BaseAddress, 852);
    return Data;
}
int example_cav2_p2_dc_img_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p2_dc_img_BaseAddress, 840);
    return Data;
}
int example_cav2_p2_dc_real_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p2_dc_real_BaseAddress, 836);
    return Data;
}
int example_cav2_p2_if_amp_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p2_if_amp_BaseAddress, 816);
    return Data;
}
int example_cav2_p2_if_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p2_if_i_BaseAddress, 824);
    return Data;
}
int example_cav2_p2_if_phase_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p2_if_phase_BaseAddress, 820);
    return Data;
}
int example_cav2_p2_if_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p2_if_q_BaseAddress, 828);
    return Data;
}
int example_cav2_p2_integrated_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p2_integrated_i_BaseAddress, 856);
    return Data;
}
int example_cav2_p2_integrated_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p2_integrated_q_BaseAddress, 860);
    return Data;
}
int example_cav2_p2_phase_out_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p2_phase_out_BaseAddress, 864);
    return Data;
}
void example_cav2_p2_window_start_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_cav2_p2_window_start_BaseAddress, 844, Data);
}
u32 example_cav2_p2_window_start_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p2_window_start_BaseAddress, 844);
    return Data;
}
void example_cav2_p2_window_stop_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_cav2_p2_window_stop_BaseAddress, 848, Data);
}
u32 example_cav2_p2_window_stop_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_cav2_p2_window_stop_BaseAddress, 848);
    return Data;
}
void example_ref_window_start_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_ref_window_start_BaseAddress, 20, Data);
}
u32 example_ref_window_start_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_ref_window_start_BaseAddress, 20);
    return Data;
}
void example_ref_window_stop_write(example *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_ref_window_stop_BaseAddress, 24, Data);
}
u32 example_ref_window_stop_read(example *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_ref_window_stop_BaseAddress, 24);
    return Data;
}
int example_rf_ref_amp_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_rf_ref_amp_BaseAddress, 0);
    return Data;
}
void example_rf_ref_chan_sel_write(example *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    example_WriteReg(InstancePtr->example_rf_ref_chan_sel_BaseAddress, 16, Data);
}
u8 example_rf_ref_chan_sel_read(example *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_rf_ref_chan_sel_BaseAddress, 16);
    return Data;
}
int example_rf_ref_i_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_rf_ref_i_BaseAddress, 8);
    return Data;
}
int example_rf_ref_phase_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_rf_ref_phase_BaseAddress, 4);
    return Data;
}
int example_rf_ref_q_read(example *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = example_ReadReg(InstancePtr->example_rf_ref_q_BaseAddress, 12);
    return Data;
}
