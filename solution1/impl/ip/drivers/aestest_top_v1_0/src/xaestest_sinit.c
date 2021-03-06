// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xaestest.h"

extern XAestest_Config XAestest_ConfigTable[];

XAestest_Config *XAestest_LookupConfig(u16 DeviceId) {
	XAestest_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAESTEST_NUM_INSTANCES; Index++) {
		if (XAestest_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAestest_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAestest_Initialize(XAestest *InstancePtr, u16 DeviceId) {
	XAestest_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAestest_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAestest_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

