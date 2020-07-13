/**
* @file appmodel_sinit.c
*
* The implementation of the appmodel driver's static initialzation
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
#include "appmodel.h"
extern appmodel_Config appmodel_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type appmodel_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
appmodel_Config *appmodel_LookupConfig(u16 DeviceId) {
    appmodel_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_APPMODEL_NUM_INSTANCES; Index++) {
        if (appmodel_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &appmodel_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int appmodel_Initialize(appmodel *InstancePtr, u16 DeviceId) {
    appmodel_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = appmodel_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return appmodel_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif
