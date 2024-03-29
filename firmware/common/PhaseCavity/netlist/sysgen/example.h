#ifndef EXAMPLE__H
#define EXAMPLE__H
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
#include "example_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 example_BaseAddress;
} example_Config;
#endif
/**
* The example driver instance data. The user is required to
* allocate a variable of this type for every example device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 example_BaseAddress;
    u32 IsReady;
} example;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define example_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define example_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define example_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define example_ReadReg(BaseAddress, RegOffset) \
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
int example_Initialize(example *InstancePtr, u16 DeviceId);
example_Config* example_LookupConfig(u16 DeviceId);
int example_CfgInitialize(example *InstancePtr, example_Config *ConfigPtr);
#else
int example_Initialize(example *InstancePtr, const char* InstanceName);
int example_Release(example *InstancePtr);
#endif
/**
* Write to cav2_p2_window_stop gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_window_stop instance to operate on.
* @param	Data is value to be written to gateway cav2_p2_window_stop.
*
* @return	None.
*
* @note    .
*
*/
void example_cav2_p2_window_stop_write(example *InstancePtr, u32 Data);
/**
* Read from cav2_p2_window_stop gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_window_stop instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav2_p2_window_stop_read(example *InstancePtr);
/**
* Write to cav2_p2_window_start gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_window_start instance to operate on.
* @param	Data is value to be written to gateway cav2_p2_window_start.
*
* @return	None.
*
* @note    .
*
*/
void example_cav2_p2_window_start_write(example *InstancePtr, u32 Data);
/**
* Read from cav2_p2_window_start gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_window_start instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav2_p2_window_start_read(example *InstancePtr);
/**
* Write to cav2_p1_window_stop gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_window_stop instance to operate on.
* @param	Data is value to be written to gateway cav2_p1_window_stop.
*
* @return	None.
*
* @note    .
*
*/
void example_cav2_p1_window_stop_write(example *InstancePtr, u32 Data);
/**
* Read from cav2_p1_window_stop gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_window_stop instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav2_p1_window_stop_read(example *InstancePtr);
/**
* Write to cav2_p1_window_start gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_window_start instance to operate on.
* @param	Data is value to be written to gateway cav2_p1_window_start.
*
* @return	None.
*
* @note    .
*
*/
void example_cav2_p1_window_start_write(example *InstancePtr, u32 Data);
/**
* Read from cav2_p1_window_start gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_window_start instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav2_p1_window_start_read(example *InstancePtr);
/**
* Write to wfdata_7_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the wfdata_7_sel instance to operate on.
* @param	Data is value to be written to gateway wfdata_7_sel.
*
* @return	None.
*
* @note    .
*
*/
void example_wfdata_7_sel_write(example *InstancePtr, u8 Data);
/**
* Read from wfdata_7_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the wfdata_7_sel instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 example_wfdata_7_sel_read(example *InstancePtr);
/**
* Write to wfdata_6_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the wfdata_6_sel instance to operate on.
* @param	Data is value to be written to gateway wfdata_6_sel.
*
* @return	None.
*
* @note    .
*
*/
void example_wfdata_6_sel_write(example *InstancePtr, u32 Data);
/**
* Read from wfdata_6_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the wfdata_6_sel instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_wfdata_6_sel_read(example *InstancePtr);
/**
* Write to wfdata_5_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the wfdata_5_sel instance to operate on.
* @param	Data is value to be written to gateway wfdata_5_sel.
*
* @return	None.
*
* @note    .
*
*/
void example_wfdata_5_sel_write(example *InstancePtr, u32 Data);
/**
* Read from wfdata_5_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the wfdata_5_sel instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_wfdata_5_sel_read(example *InstancePtr);
/**
* Write to wfdata_4_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the wfdata_4_sel instance to operate on.
* @param	Data is value to be written to gateway wfdata_4_sel.
*
* @return	None.
*
* @note    .
*
*/
void example_wfdata_4_sel_write(example *InstancePtr, u8 Data);
/**
* Read from wfdata_4_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the wfdata_4_sel instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 example_wfdata_4_sel_read(example *InstancePtr);
/**
* Write to wfdata_3_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the wfdata_3_sel instance to operate on.
* @param	Data is value to be written to gateway wfdata_3_sel.
*
* @return	None.
*
* @note    .
*
*/
void example_wfdata_3_sel_write(example *InstancePtr, u8 Data);
/**
* Read from wfdata_3_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the wfdata_3_sel instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 example_wfdata_3_sel_read(example *InstancePtr);
/**
* Write to wfdata_2_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the wfdata_2_sel instance to operate on.
* @param	Data is value to be written to gateway wfdata_2_sel.
*
* @return	None.
*
* @note    .
*
*/
void example_wfdata_2_sel_write(example *InstancePtr, u8 Data);
/**
* Read from wfdata_2_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the wfdata_2_sel instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 example_wfdata_2_sel_read(example *InstancePtr);
/**
* Write to wfdata_1_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the wfdata_1_sel instance to operate on.
* @param	Data is value to be written to gateway wfdata_1_sel.
*
* @return	None.
*
* @note    .
*
*/
void example_wfdata_1_sel_write(example *InstancePtr, u8 Data);
/**
* Read from wfdata_1_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the wfdata_1_sel instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 example_wfdata_1_sel_read(example *InstancePtr);
/**
* Write to wfdata_0_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the wfdata_0_sel instance to operate on.
* @param	Data is value to be written to gateway wfdata_0_sel.
*
* @return	None.
*
* @note    .
*
*/
void example_wfdata_0_sel_write(example *InstancePtr, u32 Data);
/**
* Read from wfdata_0_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the wfdata_0_sel instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_wfdata_0_sel_read(example *InstancePtr);
/**
* Write to scratchpad gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the scratchpad instance to operate on.
* @param	Data is value to be written to gateway scratchpad.
*
* @return	None.
*
* @note    .
*
*/
void example_scratchpad_write(example *InstancePtr, u32 Data);
/**
* Read from scratchpad gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the scratchpad instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_scratchpad_read(example *InstancePtr);
/**
* Write to rf_ref_chan_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the rf_ref_chan_sel instance to operate on.
* @param	Data is value to be written to gateway rf_ref_chan_sel.
*
* @return	None.
*
* @note    .
*
*/
void example_rf_ref_chan_sel_write(example *InstancePtr, u8 Data);
/**
* Read from rf_ref_chan_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the rf_ref_chan_sel instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 example_rf_ref_chan_sel_read(example *InstancePtr);
/**
* Write to cav2_reg_latch_pt gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_reg_latch_pt instance to operate on.
* @param	Data is value to be written to gateway cav2_reg_latch_pt.
*
* @return	None.
*
* @note    .
*
*/
void example_cav2_reg_latch_pt_write(example *InstancePtr, u32 Data);
/**
* Read from cav2_reg_latch_pt gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_reg_latch_pt instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav2_reg_latch_pt_read(example *InstancePtr);
/**
* Write to cav2_p2_chan_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_chan_sel instance to operate on.
* @param	Data is value to be written to gateway cav2_p2_chan_sel.
*
* @return	None.
*
* @note    .
*
*/
void example_cav2_p2_chan_sel_write(example *InstancePtr, u8 Data);
/**
* Read from cav2_p2_chan_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_chan_sel instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 example_cav2_p2_chan_sel_read(example *InstancePtr);
/**
* Write to cav2_p2_calibration_coeff gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_calibration_coeff instance to operate on.
* @param	Data is value to be written to gateway cav2_p2_calibration_coeff.
*
* @return	None.
*
* @note    .
*
*/
void example_cav2_p2_calibration_coeff_write(example *InstancePtr, int Data);
/**
* Read from cav2_p2_calibration_coeff gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_calibration_coeff instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p2_calibration_coeff_read(example *InstancePtr);
/**
* Write to cav2_p1_chan_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_chan_sel instance to operate on.
* @param	Data is value to be written to gateway cav2_p1_chan_sel.
*
* @return	None.
*
* @note    .
*
*/
void example_cav2_p1_chan_sel_write(example *InstancePtr, u8 Data);
/**
* Read from cav2_p1_chan_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_chan_sel instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 example_cav2_p1_chan_sel_read(example *InstancePtr);
/**
* Write to cav2_p1_calibration_coeff gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_calibration_coeff instance to operate on.
* @param	Data is value to be written to gateway cav2_p1_calibration_coeff.
*
* @return	None.
*
* @note    .
*
*/
void example_cav2_p1_calibration_coeff_write(example *InstancePtr, int Data);
/**
* Read from cav2_p1_calibration_coeff gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_calibration_coeff instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p1_calibration_coeff_read(example *InstancePtr);
/**
* Write to cav2_nco_phase_reset gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_nco_phase_reset instance to operate on.
* @param	Data is value to be written to gateway cav2_nco_phase_reset.
*
* @return	None.
*
* @note    .
*
*/
void example_cav2_nco_phase_reset_write(example *InstancePtr, u32 Data);
/**
* Read from cav2_nco_phase_reset gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_nco_phase_reset instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav2_nco_phase_reset_read(example *InstancePtr);
/**
* Write to cav2_nco_phase_adj gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_nco_phase_adj instance to operate on.
* @param	Data is value to be written to gateway cav2_nco_phase_adj.
*
* @return	None.
*
* @note    .
*
*/
void example_cav2_nco_phase_adj_write(example *InstancePtr, u32 Data);
/**
* Read from cav2_nco_phase_adj gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_nco_phase_adj instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav2_nco_phase_adj_read(example *InstancePtr);
/**
* Write to cav2_freq_eval_stop gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_freq_eval_stop instance to operate on.
* @param	Data is value to be written to gateway cav2_freq_eval_stop.
*
* @return	None.
*
* @note    .
*
*/
void example_cav2_freq_eval_stop_write(example *InstancePtr, u32 Data);
/**
* Read from cav2_freq_eval_stop gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_freq_eval_stop instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav2_freq_eval_stop_read(example *InstancePtr);
/**
* Write to cav2_freq_eval_start gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_freq_eval_start instance to operate on.
* @param	Data is value to be written to gateway cav2_freq_eval_start.
*
* @return	None.
*
* @note    .
*
*/
void example_cav2_freq_eval_start_write(example *InstancePtr, u32 Data);
/**
* Read from cav2_freq_eval_start gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_freq_eval_start instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav2_freq_eval_start_read(example *InstancePtr);
/**
* Write to cav1_reg_latch_pt gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_reg_latch_pt instance to operate on.
* @param	Data is value to be written to gateway cav1_reg_latch_pt.
*
* @return	None.
*
* @note    .
*
*/
void example_cav1_reg_latch_pt_write(example *InstancePtr, u32 Data);
/**
* Read from cav1_reg_latch_pt gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_reg_latch_pt instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav1_reg_latch_pt_read(example *InstancePtr);
/**
* Write to cav1_p2_window_stop gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_window_stop instance to operate on.
* @param	Data is value to be written to gateway cav1_p2_window_stop.
*
* @return	None.
*
* @note    .
*
*/
void example_cav1_p2_window_stop_write(example *InstancePtr, u32 Data);
/**
* Read from cav1_p2_window_stop gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_window_stop instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav1_p2_window_stop_read(example *InstancePtr);
/**
* Write to cav1_p2_window_start gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_window_start instance to operate on.
* @param	Data is value to be written to gateway cav1_p2_window_start.
*
* @return	None.
*
* @note    .
*
*/
void example_cav1_p2_window_start_write(example *InstancePtr, u32 Data);
/**
* Read from cav1_p2_window_start gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_window_start instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav1_p2_window_start_read(example *InstancePtr);
/**
* Write to cav1_p2_chan_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_chan_sel instance to operate on.
* @param	Data is value to be written to gateway cav1_p2_chan_sel.
*
* @return	None.
*
* @note    .
*
*/
void example_cav1_p2_chan_sel_write(example *InstancePtr, u8 Data);
/**
* Read from cav1_p2_chan_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_chan_sel instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 example_cav1_p2_chan_sel_read(example *InstancePtr);
/**
* Write to cav1_p2_calibration_coeff gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_calibration_coeff instance to operate on.
* @param	Data is value to be written to gateway cav1_p2_calibration_coeff.
*
* @return	None.
*
* @note    .
*
*/
void example_cav1_p2_calibration_coeff_write(example *InstancePtr, int Data);
/**
* Read from cav1_p2_calibration_coeff gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_calibration_coeff instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p2_calibration_coeff_read(example *InstancePtr);
/**
* Write to cav1_p1_window_stop gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_window_stop instance to operate on.
* @param	Data is value to be written to gateway cav1_p1_window_stop.
*
* @return	None.
*
* @note    .
*
*/
void example_cav1_p1_window_stop_write(example *InstancePtr, u32 Data);
/**
* Read from cav1_p1_window_stop gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_window_stop instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav1_p1_window_stop_read(example *InstancePtr);
/**
* Write to cav1_p1_window_start gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_window_start instance to operate on.
* @param	Data is value to be written to gateway cav1_p1_window_start.
*
* @return	None.
*
* @note    .
*
*/
void example_cav1_p1_window_start_write(example *InstancePtr, u32 Data);
/**
* Read from cav1_p1_window_start gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_window_start instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav1_p1_window_start_read(example *InstancePtr);
/**
* Write to cav1_p1_chan_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_chan_sel instance to operate on.
* @param	Data is value to be written to gateway cav1_p1_chan_sel.
*
* @return	None.
*
* @note    .
*
*/
void example_cav1_p1_chan_sel_write(example *InstancePtr, u8 Data);
/**
* Read from cav1_p1_chan_sel gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_chan_sel instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 example_cav1_p1_chan_sel_read(example *InstancePtr);
/**
* Write to cav1_p1_calibration_coeff gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_calibration_coeff instance to operate on.
* @param	Data is value to be written to gateway cav1_p1_calibration_coeff.
*
* @return	None.
*
* @note    .
*
*/
void example_cav1_p1_calibration_coeff_write(example *InstancePtr, int Data);
/**
* Read from cav1_p1_calibration_coeff gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_calibration_coeff instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p1_calibration_coeff_read(example *InstancePtr);
/**
* Write to cav1_nco_phase_reset gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_nco_phase_reset instance to operate on.
* @param	Data is value to be written to gateway cav1_nco_phase_reset.
*
* @return	None.
*
* @note    .
*
*/
void example_cav1_nco_phase_reset_write(example *InstancePtr, u32 Data);
/**
* Read from cav1_nco_phase_reset gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_nco_phase_reset instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav1_nco_phase_reset_read(example *InstancePtr);
/**
* Write to cav1_nco_phase_adj gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_nco_phase_adj instance to operate on.
* @param	Data is value to be written to gateway cav1_nco_phase_adj.
*
* @return	None.
*
* @note    .
*
*/
void example_cav1_nco_phase_adj_write(example *InstancePtr, u32 Data);
/**
* Read from cav1_nco_phase_adj gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_nco_phase_adj instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav1_nco_phase_adj_read(example *InstancePtr);
/**
* Write to cav1_freq_eval_stop gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_freq_eval_stop instance to operate on.
* @param	Data is value to be written to gateway cav1_freq_eval_stop.
*
* @return	None.
*
* @note    .
*
*/
void example_cav1_freq_eval_stop_write(example *InstancePtr, u32 Data);
/**
* Read from cav1_freq_eval_stop gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_freq_eval_stop instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav1_freq_eval_stop_read(example *InstancePtr);
/**
* Write to cav1_freq_eval_start gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_freq_eval_start instance to operate on.
* @param	Data is value to be written to gateway cav1_freq_eval_start.
*
* @return	None.
*
* @note    .
*
*/
void example_cav1_freq_eval_start_write(example *InstancePtr, u32 Data);
/**
* Read from cav1_freq_eval_start gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_freq_eval_start instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_cav1_freq_eval_start_read(example *InstancePtr);
/**
* Read from cav1_p1_amp_out gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_amp_out instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p1_amp_out_read(example *InstancePtr);
/**
* Read from cav1_p1_comparison_phase gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_comparison_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p1_comparison_phase_read(example *InstancePtr);
/**
* Read from cav1_p1_dc_freq gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_dc_freq instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p1_dc_freq_read(example *InstancePtr);
/**
* Read from cav1_p1_dc_img gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_dc_img instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p1_dc_img_read(example *InstancePtr);
/**
* Read from cav1_p1_dc_real gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_dc_real instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p1_dc_real_read(example *InstancePtr);
/**
* Read from cav1_p1_if_amp gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_if_amp instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p1_if_amp_read(example *InstancePtr);
/**
* Read from cav1_p1_if_i gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_if_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p1_if_i_read(example *InstancePtr);
/**
* Read from cav1_p1_if_phase gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_if_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p1_if_phase_read(example *InstancePtr);
/**
* Read from cav1_p1_if_q gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_if_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p1_if_q_read(example *InstancePtr);
/**
* Read from cav1_p1_integrated_i gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_integrated_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p1_integrated_i_read(example *InstancePtr);
/**
* Read from cav1_p1_integrated_q gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_integrated_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p1_integrated_q_read(example *InstancePtr);
/**
* Read from cav1_p1_phase_out gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p1_phase_out instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p1_phase_out_read(example *InstancePtr);
/**
* Read from cav1_p2_amp_out gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_amp_out instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p2_amp_out_read(example *InstancePtr);
/**
* Read from cav1_p2_comparison_phase gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_comparison_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p2_comparison_phase_read(example *InstancePtr);
/**
* Read from cav1_p2_dc_freq gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_dc_freq instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p2_dc_freq_read(example *InstancePtr);
/**
* Read from cav1_p2_dc_img gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_dc_img instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p2_dc_img_read(example *InstancePtr);
/**
* Read from cav1_p2_dc_real gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_dc_real instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p2_dc_real_read(example *InstancePtr);
/**
* Read from cav1_p2_if_amp gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_if_amp instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p2_if_amp_read(example *InstancePtr);
/**
* Read from cav1_p2_if_i gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_if_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p2_if_i_read(example *InstancePtr);
/**
* Read from cav1_p2_if_phase gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_if_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p2_if_phase_read(example *InstancePtr);
/**
* Read from cav1_p2_if_q gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_if_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p2_if_q_read(example *InstancePtr);
/**
* Read from cav1_p2_integrated_i gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_integrated_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p2_integrated_i_read(example *InstancePtr);
/**
* Read from cav1_p2_integrated_q gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_integrated_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p2_integrated_q_read(example *InstancePtr);
/**
* Read from cav1_p2_phase_out gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav1_p2_phase_out instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav1_p2_phase_out_read(example *InstancePtr);
/**
* Read from cav2_p1_amp_out gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_amp_out instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p1_amp_out_read(example *InstancePtr);
/**
* Read from cav2_p1_comparison_phase gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_comparison_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p1_comparison_phase_read(example *InstancePtr);
/**
* Read from cav2_p1_dc_freq gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_dc_freq instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p1_dc_freq_read(example *InstancePtr);
/**
* Read from cav2_p1_dc_img gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_dc_img instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p1_dc_img_read(example *InstancePtr);
/**
* Read from cav2_p1_dc_real gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_dc_real instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p1_dc_real_read(example *InstancePtr);
/**
* Read from cav2_p1_if_amp gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_if_amp instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p1_if_amp_read(example *InstancePtr);
/**
* Read from cav2_p1_if_i gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_if_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p1_if_i_read(example *InstancePtr);
/**
* Read from cav2_p1_if_phase gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_if_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p1_if_phase_read(example *InstancePtr);
/**
* Read from cav2_p1_if_q gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_if_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p1_if_q_read(example *InstancePtr);
/**
* Read from cav2_p1_integrated_i gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_integrated_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p1_integrated_i_read(example *InstancePtr);
/**
* Read from cav2_p1_integrated_q gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_integrated_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p1_integrated_q_read(example *InstancePtr);
/**
* Read from cav2_p1_phase_out gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p1_phase_out instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p1_phase_out_read(example *InstancePtr);
/**
* Read from cav2_p2_amp_out gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_amp_out instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p2_amp_out_read(example *InstancePtr);
/**
* Read from cav2_p2_comparison_phase gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_comparison_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p2_comparison_phase_read(example *InstancePtr);
/**
* Read from cav2_p2_dc_freq gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_dc_freq instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p2_dc_freq_read(example *InstancePtr);
/**
* Read from cav2_p2_dc_img gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_dc_img instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p2_dc_img_read(example *InstancePtr);
/**
* Read from cav2_p2_dc_real gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_dc_real instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p2_dc_real_read(example *InstancePtr);
/**
* Read from cav2_p2_if_amp gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_if_amp instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p2_if_amp_read(example *InstancePtr);
/**
* Read from cav2_p2_if_i gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_if_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p2_if_i_read(example *InstancePtr);
/**
* Read from cav2_p2_if_phase gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_if_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p2_if_phase_read(example *InstancePtr);
/**
* Read from cav2_p2_if_q gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_if_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p2_if_q_read(example *InstancePtr);
/**
* Read from cav2_p2_integrated_i gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_integrated_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p2_integrated_i_read(example *InstancePtr);
/**
* Read from cav2_p2_integrated_q gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_integrated_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p2_integrated_q_read(example *InstancePtr);
/**
* Read from cav2_p2_phase_out gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the cav2_p2_phase_out instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_cav2_p2_phase_out_read(example *InstancePtr);
/**
* Read from rf_ref_amp gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the rf_ref_amp instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_rf_ref_amp_read(example *InstancePtr);
/**
* Read from rf_ref_i gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the rf_ref_i instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_rf_ref_i_read(example *InstancePtr);
/**
* Read from rf_ref_phase gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the rf_ref_phase instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_rf_ref_phase_read(example *InstancePtr);
/**
* Read from rf_ref_q gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the rf_ref_q instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int example_rf_ref_q_read(example *InstancePtr);
/**
* Read from status_0 gateway of example. Assignments are LSB-justified.
*
* @param	InstancePtr is the status_0 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 example_status_0_read(example *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif
