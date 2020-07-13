#include "appmodel.h"
#ifndef __linux__
int appmodel_CfgInitialize(appmodel *InstancePtr, appmodel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->appmodel_BaseAddress = ConfigPtr->appmodel_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void appmodel_scratchpad_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 4092, Data);
}
u32 appmodel_scratchpad_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 4092);
    return Data;
}
void appmodel_rf_ref_chan_sel_write(appmodel *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 16, Data);
}
u8 appmodel_rf_ref_chan_sel_read(appmodel *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 16);
    return Data;
}
void appmodel_ref_window_stop_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 24, Data);
}
u32 appmodel_ref_window_stop_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 24);
    return Data;
}
void appmodel_ref_window_start_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 20, Data);
}
u32 appmodel_ref_window_start_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 20);
    return Data;
}
void appmodel_cav2_p2_window_stop_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 848, Data);
}
u32 appmodel_cav2_p2_window_stop_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 848);
    return Data;
}
void appmodel_cav2_p2_window_start_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 844, Data);
}
u32 appmodel_cav2_p2_window_start_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 844);
    return Data;
}
void appmodel_cav2_p2_chan_sel_write(appmodel *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 832, Data);
}
u8 appmodel_cav2_p2_chan_sel_read(appmodel *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 832);
    return Data;
}
void appmodel_cav2_p2_calibration_coeff_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 888, Data);
}
u32 appmodel_cav2_p2_calibration_coeff_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 888);
    return Data;
}
void appmodel_cav2_p1_window_stop_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 644, Data);
}
u32 appmodel_cav2_p1_window_stop_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 644);
    return Data;
}
void appmodel_cav2_p1_window_start_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 640, Data);
}
u32 appmodel_cav2_p1_window_start_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 640);
    return Data;
}
void appmodel_cav2_p1_chan_sel_write(appmodel *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 628, Data);
}
u8 appmodel_cav2_p1_chan_sel_read(appmodel *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 628);
    return Data;
}
void appmodel_cav2_p1_calibration_coeff_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 684, Data);
}
u32 appmodel_cav2_p1_calibration_coeff_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 684);
    return Data;
}
void appmodel_cav2_nco_phase_reset_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 692, Data);
}
u32 appmodel_cav2_nco_phase_reset_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 692);
    return Data;
}
void appmodel_cav2_nco_phase_adj_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 688, Data);
}
u32 appmodel_cav2_nco_phase_adj_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 688);
    return Data;
}
void appmodel_cav1_p2_window_stop_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 440, Data);
}
u32 appmodel_cav1_p2_window_stop_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 440);
    return Data;
}
void appmodel_cav1_p2_window_start_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 436, Data);
}
u32 appmodel_cav1_p2_window_start_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 436);
    return Data;
}
void appmodel_cav1_p2_chan_sel_write(appmodel *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 424, Data);
}
u8 appmodel_cav1_p2_chan_sel_read(appmodel *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 424);
    return Data;
}
void appmodel_cav1_p2_calibration_coeff_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 480, Data);
}
u32 appmodel_cav1_p2_calibration_coeff_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 480);
    return Data;
}
void appmodel_cav1_p1_window_stop_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 236, Data);
}
u32 appmodel_cav1_p1_window_stop_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 236);
    return Data;
}
void appmodel_cav1_p1_window_start_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 232, Data);
}
u32 appmodel_cav1_p1_window_start_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 232);
    return Data;
}
void appmodel_cav1_p1_chan_sel_write(appmodel *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 220, Data);
}
u8 appmodel_cav1_p1_chan_sel_read(appmodel *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 220);
    return Data;
}
void appmodel_cav1_p1_calibration_coeff_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 276, Data);
}
u32 appmodel_cav1_p1_calibration_coeff_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 276);
    return Data;
}
void appmodel_cav1_nco_phase_reset_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 284, Data);
}
u32 appmodel_cav1_nco_phase_reset_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 284);
    return Data;
}
void appmodel_cav1_nco_phase_adj_write(appmodel *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    appmodel_WriteReg(InstancePtr->appmodel_BaseAddress, 280, Data);
}
u32 appmodel_cav1_nco_phase_adj_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 280);
    return Data;
}
int appmodel_cav1_p1_amp_out_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 256);
    return Data;
}
int appmodel_cav1_p1_comparison_i_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 260);
    return Data;
}
int appmodel_cav1_p1_comparison_phase_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 268);
    return Data;
}
int appmodel_cav1_p1_comparison_q_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 264);
    return Data;
}
int appmodel_cav1_p1_dc_freq_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 240);
    return Data;
}
int appmodel_cav1_p1_dc_img_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 228);
    return Data;
}
int appmodel_cav1_p1_dc_real_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 224);
    return Data;
}
int appmodel_cav1_p1_if_amp_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 204);
    return Data;
}
int appmodel_cav1_p1_if_i_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 212);
    return Data;
}
int appmodel_cav1_p1_if_phase_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 208);
    return Data;
}
int appmodel_cav1_p1_if_q_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 216);
    return Data;
}
int appmodel_cav1_p1_integrated_i_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 244);
    return Data;
}
int appmodel_cav1_p1_integrated_q_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 248);
    return Data;
}
int appmodel_cav1_p1_phase_out_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 252);
    return Data;
}
int appmodel_cav1_p2_amp_out_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 460);
    return Data;
}
int appmodel_cav1_p2_comparison_i_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 464);
    return Data;
}
int appmodel_cav1_p2_comparison_phase_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 472);
    return Data;
}
int appmodel_cav1_p2_comparison_q_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 468);
    return Data;
}
int appmodel_cav1_p2_dc_freq_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 444);
    return Data;
}
int appmodel_cav1_p2_dc_img_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 432);
    return Data;
}
int appmodel_cav1_p2_dc_real_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 428);
    return Data;
}
int appmodel_cav1_p2_if_amp_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 408);
    return Data;
}
int appmodel_cav1_p2_if_i_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 416);
    return Data;
}
int appmodel_cav1_p2_if_phase_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 412);
    return Data;
}
int appmodel_cav1_p2_if_q_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 420);
    return Data;
}
int appmodel_cav1_p2_integrated_i_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 448);
    return Data;
}
int appmodel_cav1_p2_integrated_q_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 452);
    return Data;
}
int appmodel_cav1_p2_phase_out_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 456);
    return Data;
}
int appmodel_cav2_p1_amp_out_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 664);
    return Data;
}
int appmodel_cav2_p1_comparison_i_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 668);
    return Data;
}
int appmodel_cav2_p1_comparison_phase_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 676);
    return Data;
}
int appmodel_cav2_p1_comparison_q_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 672);
    return Data;
}
int appmodel_cav2_p1_dc_freq_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 648);
    return Data;
}
int appmodel_cav2_p1_dc_img_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 636);
    return Data;
}
int appmodel_cav2_p1_dc_real_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 632);
    return Data;
}
int appmodel_cav2_p1_if_amp_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 612);
    return Data;
}
int appmodel_cav2_p1_if_i_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 620);
    return Data;
}
int appmodel_cav2_p1_if_phase_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 616);
    return Data;
}
int appmodel_cav2_p1_if_q_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 624);
    return Data;
}
int appmodel_cav2_p1_integrated_i_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 652);
    return Data;
}
int appmodel_cav2_p1_integrated_q_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 656);
    return Data;
}
int appmodel_cav2_p1_phase_out_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 660);
    return Data;
}
int appmodel_cav2_p2_amp_out_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 868);
    return Data;
}
int appmodel_cav2_p2_comparison_i_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 872);
    return Data;
}
int appmodel_cav2_p2_comparison_phase_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 880);
    return Data;
}
int appmodel_cav2_p2_comparison_q_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 876);
    return Data;
}
int appmodel_cav2_p2_dc_freq_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 852);
    return Data;
}
int appmodel_cav2_p2_dc_img_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 840);
    return Data;
}
int appmodel_cav2_p2_dc_real_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 836);
    return Data;
}
int appmodel_cav2_p2_if_amp_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 816);
    return Data;
}
int appmodel_cav2_p2_if_i_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 824);
    return Data;
}
int appmodel_cav2_p2_if_phase_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 820);
    return Data;
}
int appmodel_cav2_p2_if_q_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 828);
    return Data;
}
int appmodel_cav2_p2_integrated_i_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 856);
    return Data;
}
int appmodel_cav2_p2_integrated_q_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 860);
    return Data;
}
int appmodel_cav2_p2_phase_out_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 864);
    return Data;
}
int appmodel_rf_ref_amp_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 0);
    return Data;
}
int appmodel_rf_ref_i_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 8);
    return Data;
}
int appmodel_rf_ref_phase_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 4);
    return Data;
}
int appmodel_rf_ref_q_read(appmodel *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 12);
    return Data;
}
u32 appmodel_status_0_read(appmodel *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = appmodel_ReadReg(InstancePtr->appmodel_BaseAddress, 1016);
    return Data;
}
