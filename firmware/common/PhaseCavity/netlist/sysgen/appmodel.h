#ifndef APPMODEL__H
#define APPMODEL__H
#ifdef __cplusplus
extern "C" {
#endif
/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "appmodel_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 appmodel_BaseAddress;
} appmodel_Config;
#endif
/**
* The appmodel driver instance data. The user is required to
* allocate a variable of this type for every appmodel device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 appmodel_BaseAddress;
    u32 IsReady;
} appmodel;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define appmodel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define appmodel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define appmodel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define appmodel_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif
/************************** Function Prototypes *****************************/
#ifndef __linux__
int appmodel_Initialize(appmodel *InstancePtr, u16 DeviceId);
appmodel_Config* appmodel_LookupConfig(u16 DeviceId);
int appmodel_CfgInitialize(appmodel *InstancePtr, appmodel_Config *ConfigPtr);
#else
int appmodel_Initialize(appmodel *InstancePtr, const char* InstanceName);
int appmodel_Release(appmodel *InstancePtr);
#endif
/**
* Write to scratchpad gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the scratchpad instance to operate on.
* @param	Data is value to be written to gateway scratchpad.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_scratchpad_write(appmodel *InstancePtr, u32 Data);
/**
* Read from scratchpad gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the scratchpad instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_scratchpad_read(appmodel *InstancePtr);
/**
* Write to rf_ref_chan_sel gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the rf_ref_chan_sel instance to operate on.
* @param	Data is value to be written to gateway rf_ref_chan_sel.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_rf_ref_chan_sel_write(appmodel *InstancePtr, u8 Data);
/**
* Read from rf_ref_chan_sel gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the rf_ref_chan_sel instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 appmodel_rf_ref_chan_sel_read(appmodel *InstancePtr);
/**
* Write to ref_window_stop gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the ref_window_stop instance to operate on.
* @param	Data is value to be written to gateway ref_window_stop.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_ref_window_stop_write(appmodel *InstancePtr, u32 Data);
/**
* Read from ref_window_stop gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the ref_window_stop instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_ref_window_stop_read(appmodel *InstancePtr);
/**
* Write to ref_window_start gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the ref_window_start instance to operate on.
* @param	Data is value to be written to gateway ref_window_start.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_ref_window_start_write(appmodel *InstancePtr, u32 Data);
/**
* Read from ref_window_start gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the ref_window_start instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_ref_window_start_read(appmodel *InstancePtr);
/**
* Write to cav2_p2_window_stop gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_window_stop instance to operate on.
* @param	Data is value to be written to gateway cav2_p2_window_stop.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav2_p2_window_stop_write(appmodel *InstancePtr, u32 Data);
/**
* Read from cav2_p2_window_stop gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_window_stop instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_cav2_p2_window_stop_read(appmodel *InstancePtr);
/**
* Write to cav2_p2_window_start gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_window_start instance to operate on.
* @param	Data is value to be written to gateway cav2_p2_window_start.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav2_p2_window_start_write(appmodel *InstancePtr, u32 Data);
/**
* Read from cav2_p2_window_start gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_window_start instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_cav2_p2_window_start_read(appmodel *InstancePtr);
/**
* Write to cav2_p2_chan_sel gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_chan_sel instance to operate on.
* @param	Data is value to be written to gateway cav2_p2_chan_sel.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav2_p2_chan_sel_write(appmodel *InstancePtr, u8 Data);
/**
* Read from cav2_p2_chan_sel gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_chan_sel instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 appmodel_cav2_p2_chan_sel_read(appmodel *InstancePtr);
/**
* Write to cav2_p2_calibration_coeff gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_calibration_coeff instance to operate on.
* @param	Data is value to be written to gateway cav2_p2_calibration_coeff.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav2_p2_calibration_coeff_write(appmodel *InstancePtr, u32 Data);
/**
* Read from cav2_p2_calibration_coeff gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_calibration_coeff instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_cav2_p2_calibration_coeff_read(appmodel *InstancePtr);
/**
* Write to cav2_p1_window_stop gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_window_stop instance to operate on.
* @param	Data is value to be written to gateway cav2_p1_window_stop.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav2_p1_window_stop_write(appmodel *InstancePtr, u32 Data);
/**
* Read from cav2_p1_window_stop gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_window_stop instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_cav2_p1_window_stop_read(appmodel *InstancePtr);
/**
* Write to cav2_p1_window_start gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_window_start instance to operate on.
* @param	Data is value to be written to gateway cav2_p1_window_start.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav2_p1_window_start_write(appmodel *InstancePtr, u32 Data);
/**
* Read from cav2_p1_window_start gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_window_start instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_cav2_p1_window_start_read(appmodel *InstancePtr);
/**
* Write to cav2_p1_chan_sel gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_chan_sel instance to operate on.
* @param	Data is value to be written to gateway cav2_p1_chan_sel.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav2_p1_chan_sel_write(appmodel *InstancePtr, u8 Data);
/**
* Read from cav2_p1_chan_sel gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_chan_sel instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 appmodel_cav2_p1_chan_sel_read(appmodel *InstancePtr);
/**
* Write to cav2_p1_calibration_coeff gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_calibration_coeff instance to operate on.
* @param	Data is value to be written to gateway cav2_p1_calibration_coeff.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav2_p1_calibration_coeff_write(appmodel *InstancePtr, u32 Data);
/**
* Read from cav2_p1_calibration_coeff gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_calibration_coeff instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_cav2_p1_calibration_coeff_read(appmodel *InstancePtr);
/**
* Write to cav2_nco_phase_reset gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_nco_phase_reset instance to operate on.
* @param	Data is value to be written to gateway cav2_nco_phase_reset.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav2_nco_phase_reset_write(appmodel *InstancePtr, u32 Data);
/**
* Read from cav2_nco_phase_reset gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_nco_phase_reset instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_cav2_nco_phase_reset_read(appmodel *InstancePtr);
/**
* Write to cav2_nco_phase_adj gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_nco_phase_adj instance to operate on.
* @param	Data is value to be written to gateway cav2_nco_phase_adj.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav2_nco_phase_adj_write(appmodel *InstancePtr, u32 Data);
/**
* Read from cav2_nco_phase_adj gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_nco_phase_adj instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_cav2_nco_phase_adj_read(appmodel *InstancePtr);
/**
* Write to cav1_p2_window_stop gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_window_stop instance to operate on.
* @param	Data is value to be written to gateway cav1_p2_window_stop.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav1_p2_window_stop_write(appmodel *InstancePtr, u32 Data);
/**
* Read from cav1_p2_window_stop gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_window_stop instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_cav1_p2_window_stop_read(appmodel *InstancePtr);
/**
* Write to cav1_p2_window_start gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_window_start instance to operate on.
* @param	Data is value to be written to gateway cav1_p2_window_start.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav1_p2_window_start_write(appmodel *InstancePtr, u32 Data);
/**
* Read from cav1_p2_window_start gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_window_start instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_cav1_p2_window_start_read(appmodel *InstancePtr);
/**
* Write to cav1_p2_chan_sel gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_chan_sel instance to operate on.
* @param	Data is value to be written to gateway cav1_p2_chan_sel.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav1_p2_chan_sel_write(appmodel *InstancePtr, u8 Data);
/**
* Read from cav1_p2_chan_sel gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_chan_sel instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 appmodel_cav1_p2_chan_sel_read(appmodel *InstancePtr);
/**
* Write to cav1_p2_calibration_coeff gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_calibration_coeff instance to operate on.
* @param	Data is value to be written to gateway cav1_p2_calibration_coeff.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav1_p2_calibration_coeff_write(appmodel *InstancePtr, u32 Data);
/**
* Read from cav1_p2_calibration_coeff gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_calibration_coeff instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_cav1_p2_calibration_coeff_read(appmodel *InstancePtr);
/**
* Write to cav1_p1_window_stop gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_window_stop instance to operate on.
* @param	Data is value to be written to gateway cav1_p1_window_stop.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav1_p1_window_stop_write(appmodel *InstancePtr, u32 Data);
/**
* Read from cav1_p1_window_stop gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_window_stop instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_cav1_p1_window_stop_read(appmodel *InstancePtr);
/**
* Write to cav1_p1_window_start gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_window_start instance to operate on.
* @param	Data is value to be written to gateway cav1_p1_window_start.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav1_p1_window_start_write(appmodel *InstancePtr, u32 Data);
/**
* Read from cav1_p1_window_start gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_window_start instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_cav1_p1_window_start_read(appmodel *InstancePtr);
/**
* Write to cav1_p1_chan_sel gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_chan_sel instance to operate on.
* @param	Data is value to be written to gateway cav1_p1_chan_sel.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav1_p1_chan_sel_write(appmodel *InstancePtr, u8 Data);
/**
* Read from cav1_p1_chan_sel gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_chan_sel instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 appmodel_cav1_p1_chan_sel_read(appmodel *InstancePtr);
/**
* Write to cav1_p1_calibration_coeff gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_calibration_coeff instance to operate on.
* @param	Data is value to be written to gateway cav1_p1_calibration_coeff.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav1_p1_calibration_coeff_write(appmodel *InstancePtr, u32 Data);
/**
* Read from cav1_p1_calibration_coeff gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_calibration_coeff instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_cav1_p1_calibration_coeff_read(appmodel *InstancePtr);
/**
* Write to cav1_nco_phase_reset gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_nco_phase_reset instance to operate on.
* @param	Data is value to be written to gateway cav1_nco_phase_reset.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav1_nco_phase_reset_write(appmodel *InstancePtr, u32 Data);
/**
* Read from cav1_nco_phase_reset gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_nco_phase_reset instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_cav1_nco_phase_reset_read(appmodel *InstancePtr);
/**
* Write to cav1_nco_phase_adj gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_nco_phase_adj instance to operate on.
* @param	Data is value to be written to gateway cav1_nco_phase_adj.
*
* @return	None.
*
* @note    .
*
*/
void appmodel_cav1_nco_phase_adj_write(appmodel *InstancePtr, u32 Data);
/**
* Read from cav1_nco_phase_adj gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_nco_phase_adj instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_cav1_nco_phase_adj_read(appmodel *InstancePtr);
/**
* Read from cav1_p1_amp_out gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_amp_out instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p1_amp_out_read(appmodel *InstancePtr);
/**
* Read from cav1_p1_comparison_i gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_comparison_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p1_comparison_i_read(appmodel *InstancePtr);
/**
* Read from cav1_p1_comparison_phase gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_comparison_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p1_comparison_phase_read(appmodel *InstancePtr);
/**
* Read from cav1_p1_comparison_q gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_comparison_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p1_comparison_q_read(appmodel *InstancePtr);
/**
* Read from cav1_p1_dc_freq gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_dc_freq instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p1_dc_freq_read(appmodel *InstancePtr);
/**
* Read from cav1_p1_dc_img gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_dc_img instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p1_dc_img_read(appmodel *InstancePtr);
/**
* Read from cav1_p1_dc_real gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_dc_real instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p1_dc_real_read(appmodel *InstancePtr);
/**
* Read from cav1_p1_if_amp gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_if_amp instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p1_if_amp_read(appmodel *InstancePtr);
/**
* Read from cav1_p1_if_i gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_if_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p1_if_i_read(appmodel *InstancePtr);
/**
* Read from cav1_p1_if_phase gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_if_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p1_if_phase_read(appmodel *InstancePtr);
/**
* Read from cav1_p1_if_q gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_if_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p1_if_q_read(appmodel *InstancePtr);
/**
* Read from cav1_p1_integrated_i gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_integrated_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p1_integrated_i_read(appmodel *InstancePtr);
/**
* Read from cav1_p1_integrated_q gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_integrated_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p1_integrated_q_read(appmodel *InstancePtr);
/**
* Read from cav1_p1_phase_out gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_phase_out instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p1_phase_out_read(appmodel *InstancePtr);
/**
* Read from cav1_p2_amp_out gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_amp_out instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p2_amp_out_read(appmodel *InstancePtr);
/**
* Read from cav1_p2_comparison_i gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_comparison_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p2_comparison_i_read(appmodel *InstancePtr);
/**
* Read from cav1_p2_comparison_phase gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_comparison_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p2_comparison_phase_read(appmodel *InstancePtr);
/**
* Read from cav1_p2_comparison_q gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_comparison_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p2_comparison_q_read(appmodel *InstancePtr);
/**
* Read from cav1_p2_dc_freq gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_dc_freq instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p2_dc_freq_read(appmodel *InstancePtr);
/**
* Read from cav1_p2_dc_img gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_dc_img instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p2_dc_img_read(appmodel *InstancePtr);
/**
* Read from cav1_p2_dc_real gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_dc_real instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p2_dc_real_read(appmodel *InstancePtr);
/**
* Read from cav1_p2_if_amp gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_if_amp instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p2_if_amp_read(appmodel *InstancePtr);
/**
* Read from cav1_p2_if_i gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_if_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p2_if_i_read(appmodel *InstancePtr);
/**
* Read from cav1_p2_if_phase gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_if_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p2_if_phase_read(appmodel *InstancePtr);
/**
* Read from cav1_p2_if_q gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_if_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p2_if_q_read(appmodel *InstancePtr);
/**
* Read from cav1_p2_integrated_i gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_integrated_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p2_integrated_i_read(appmodel *InstancePtr);
/**
* Read from cav1_p2_integrated_q gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_integrated_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p2_integrated_q_read(appmodel *InstancePtr);
/**
* Read from cav1_p2_phase_out gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_phase_out instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav1_p2_phase_out_read(appmodel *InstancePtr);
/**
* Read from cav2_p1_amp_out gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_amp_out instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p1_amp_out_read(appmodel *InstancePtr);
/**
* Read from cav2_p1_comparison_i gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_comparison_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p1_comparison_i_read(appmodel *InstancePtr);
/**
* Read from cav2_p1_comparison_phase gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_comparison_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p1_comparison_phase_read(appmodel *InstancePtr);
/**
* Read from cav2_p1_comparison_q gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_comparison_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p1_comparison_q_read(appmodel *InstancePtr);
/**
* Read from cav2_p1_dc_freq gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_dc_freq instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p1_dc_freq_read(appmodel *InstancePtr);
/**
* Read from cav2_p1_dc_img gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_dc_img instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p1_dc_img_read(appmodel *InstancePtr);
/**
* Read from cav2_p1_dc_real gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_dc_real instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p1_dc_real_read(appmodel *InstancePtr);
/**
* Read from cav2_p1_if_amp gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_if_amp instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p1_if_amp_read(appmodel *InstancePtr);
/**
* Read from cav2_p1_if_i gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_if_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p1_if_i_read(appmodel *InstancePtr);
/**
* Read from cav2_p1_if_phase gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_if_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p1_if_phase_read(appmodel *InstancePtr);
/**
* Read from cav2_p1_if_q gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_if_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p1_if_q_read(appmodel *InstancePtr);
/**
* Read from cav2_p1_integrated_i gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_integrated_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p1_integrated_i_read(appmodel *InstancePtr);
/**
* Read from cav2_p1_integrated_q gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_integrated_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p1_integrated_q_read(appmodel *InstancePtr);
/**
* Read from cav2_p1_phase_out gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_phase_out instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p1_phase_out_read(appmodel *InstancePtr);
/**
* Read from cav2_p2_amp_out gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_amp_out instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p2_amp_out_read(appmodel *InstancePtr);
/**
* Read from cav2_p2_comparison_i gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_comparison_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p2_comparison_i_read(appmodel *InstancePtr);
/**
* Read from cav2_p2_comparison_phase gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_comparison_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p2_comparison_phase_read(appmodel *InstancePtr);
/**
* Read from cav2_p2_comparison_q gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_comparison_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p2_comparison_q_read(appmodel *InstancePtr);
/**
* Read from cav2_p2_dc_freq gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_dc_freq instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p2_dc_freq_read(appmodel *InstancePtr);
/**
* Read from cav2_p2_dc_img gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_dc_img instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p2_dc_img_read(appmodel *InstancePtr);
/**
* Read from cav2_p2_dc_real gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_dc_real instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p2_dc_real_read(appmodel *InstancePtr);
/**
* Read from cav2_p2_if_amp gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_if_amp instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p2_if_amp_read(appmodel *InstancePtr);
/**
* Read from cav2_p2_if_i gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_if_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p2_if_i_read(appmodel *InstancePtr);
/**
* Read from cav2_p2_if_phase gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_if_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p2_if_phase_read(appmodel *InstancePtr);
/**
* Read from cav2_p2_if_q gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_if_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p2_if_q_read(appmodel *InstancePtr);
/**
* Read from cav2_p2_integrated_i gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_integrated_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p2_integrated_i_read(appmodel *InstancePtr);
/**
* Read from cav2_p2_integrated_q gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_integrated_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p2_integrated_q_read(appmodel *InstancePtr);
/**
* Read from cav2_p2_phase_out gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_phase_out instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_cav2_p2_phase_out_read(appmodel *InstancePtr);
/**
* Read from rf_ref_amp gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the rf_ref_amp instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_rf_ref_amp_read(appmodel *InstancePtr);
/**
* Read from rf_ref_i gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the rf_ref_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_rf_ref_i_read(appmodel *InstancePtr);
/**
* Read from rf_ref_phase gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the rf_ref_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_rf_ref_phase_read(appmodel *InstancePtr);
/**
* Read from rf_ref_q gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the rf_ref_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int appmodel_rf_ref_q_read(appmodel *InstancePtr);
/**
* Read from status_0 gateway of appmodel. Assignments are LSB-justified.
*
* @param	InstancePtr is the status_0 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 appmodel_status_0_read(appmodel *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif
