/**
* @file example_sinit.c
*
* The implementation of the example driver's static initialzation
* functionality.
*
* @note
*
* None
*
*/
#ifndef __linux__
#include "xstatus.h"
#include "xparameters.h"
#include "example.h"
extern example_Config example_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type example_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
example_Config *example_LookupConfig(u16 DeviceId) {
    example_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_EXAMPLE_NUM_INSTANCES; Index++) {
        if (example_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &example_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int example_Initialize(example *InstancePtr, u16 DeviceId) {
    example_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = example_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return example_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif
