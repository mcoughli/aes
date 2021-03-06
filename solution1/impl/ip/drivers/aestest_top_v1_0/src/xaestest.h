// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef XAESTEST_H
#define XAESTEST_H

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
#include "xaestest_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Aes_io_BaseAddress;
} XAestest_Config;
#endif

typedef struct {
    u32 Aes_io_BaseAddress;
    u32 IsReady;
} XAestest;

typedef struct {
    u32 word_0;
    u32 word_1;
    u32 word_2;
    u32 word_3;
} XAestest_Inptext_v;

typedef struct {
    u32 word_0;
    u32 word_1;
    u32 word_2;
    u32 word_3;
} XAestest_Key_v;

typedef struct {
    u32 word_0;
    u32 word_1;
    u32 word_2;
    u32 word_3;
} XAestest_Outtext_v;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAestest_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAestest_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAestest_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAestest_ReadReg(BaseAddress, RegOffset) \
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
int XAestest_Initialize(XAestest *InstancePtr, u16 DeviceId);
XAestest_Config* XAestest_LookupConfig(u16 DeviceId);
int XAestest_CfgInitialize(XAestest *InstancePtr, XAestest_Config *ConfigPtr);
#else
int XAestest_Initialize(XAestest *InstancePtr, const char* InstanceName);
int XAestest_Release(XAestest *InstancePtr);
#endif

void XAestest_Start(XAestest *InstancePtr);
u32 XAestest_IsDone(XAestest *InstancePtr);
u32 XAestest_IsIdle(XAestest *InstancePtr);
u32 XAestest_IsReady(XAestest *InstancePtr);
void XAestest_EnableAutoRestart(XAestest *InstancePtr);
void XAestest_DisableAutoRestart(XAestest *InstancePtr);

void XAestest_SetInptext_v(XAestest *InstancePtr, XAestest_Inptext_v Data);
XAestest_Inptext_v XAestest_GetInptext_v(XAestest *InstancePtr);
void XAestest_SetKey_v(XAestest *InstancePtr, XAestest_Key_v Data);
XAestest_Key_v XAestest_GetKey_v(XAestest *InstancePtr);
XAestest_Outtext_v XAestest_GetOuttext_v(XAestest *InstancePtr);
u32 XAestest_GetOuttext_vVld(XAestest *InstancePtr);

void XAestest_InterruptGlobalEnable(XAestest *InstancePtr);
void XAestest_InterruptGlobalDisable(XAestest *InstancePtr);
void XAestest_InterruptEnable(XAestest *InstancePtr, u32 Mask);
void XAestest_InterruptDisable(XAestest *InstancePtr, u32 Mask);
void XAestest_InterruptClear(XAestest *InstancePtr, u32 Mask);
u32 XAestest_InterruptGetEnabled(XAestest *InstancePtr);
u32 XAestest_InterruptGetStatus(XAestest *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
