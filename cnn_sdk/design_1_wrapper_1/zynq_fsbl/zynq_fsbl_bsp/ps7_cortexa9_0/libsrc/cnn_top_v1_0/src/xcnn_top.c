// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcnn_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCnn_top_CfgInitialize(XCnn_top *InstancePtr, XCnn_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCnn_top_Start(XCnn_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCnn_top_IsDone(XCnn_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCnn_top_IsIdle(XCnn_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCnn_top_IsReady(XCnn_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCnn_top_EnableAutoRestart(XCnn_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCnn_top_DisableAutoRestart(XCnn_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XCnn_top_Get_bias0_BaseAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS0_BASE);
}

u32 XCnn_top_Get_bias0_HighAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS0_HIGH);
}

u32 XCnn_top_Get_bias0_TotalBytes(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_TOP_CONTROL_ADDR_BIAS0_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS0_BASE + 1);
}

u32 XCnn_top_Get_bias0_BitWidth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_WIDTH_BIAS0;
}

u32 XCnn_top_Get_bias0_Depth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_DEPTH_BIAS0;
}

u32 XCnn_top_Write_bias0_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_BIAS0_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_bias0_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_BIAS0_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_top_Write_bias0_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_BIAS0_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_bias0_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_BIAS0_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS0_BASE + offset + i);
    }
    return length;
}

u32 XCnn_top_Get_bias1_BaseAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS1_BASE);
}

u32 XCnn_top_Get_bias1_HighAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS1_HIGH);
}

u32 XCnn_top_Get_bias1_TotalBytes(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_TOP_CONTROL_ADDR_BIAS1_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS1_BASE + 1);
}

u32 XCnn_top_Get_bias1_BitWidth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_WIDTH_BIAS1;
}

u32 XCnn_top_Get_bias1_Depth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_DEPTH_BIAS1;
}

u32 XCnn_top_Write_bias1_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_BIAS1_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_bias1_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_BIAS1_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_top_Write_bias1_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_BIAS1_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_bias1_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_BIAS1_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS1_BASE + offset + i);
    }
    return length;
}

u32 XCnn_top_Get_bias3_BaseAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS3_BASE);
}

u32 XCnn_top_Get_bias3_HighAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS3_HIGH);
}

u32 XCnn_top_Get_bias3_TotalBytes(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_TOP_CONTROL_ADDR_BIAS3_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS3_BASE + 1);
}

u32 XCnn_top_Get_bias3_BitWidth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_WIDTH_BIAS3;
}

u32 XCnn_top_Get_bias3_Depth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_DEPTH_BIAS3;
}

u32 XCnn_top_Write_bias3_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_BIAS3_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS3_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_bias3_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_BIAS3_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS3_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_top_Write_bias3_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_BIAS3_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS3_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_bias3_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_BIAS3_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS3_BASE + offset + i);
    }
    return length;
}

u32 XCnn_top_Get_bias2_BaseAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS2_BASE);
}

u32 XCnn_top_Get_bias2_HighAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS2_HIGH);
}

u32 XCnn_top_Get_bias2_TotalBytes(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_TOP_CONTROL_ADDR_BIAS2_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS2_BASE + 1);
}

u32 XCnn_top_Get_bias2_BitWidth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_WIDTH_BIAS2;
}

u32 XCnn_top_Get_bias2_Depth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_DEPTH_BIAS2;
}

u32 XCnn_top_Write_bias2_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_BIAS2_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_bias2_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_BIAS2_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_top_Write_bias2_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_BIAS2_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_bias2_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_BIAS2_HIGH - XCNN_TOP_CONTROL_ADDR_BIAS2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_BIAS2_BASE + offset + i);
    }
    return length;
}

u32 XCnn_top_Get_weight0_BaseAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT0_BASE);
}

u32 XCnn_top_Get_weight0_HighAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT0_HIGH);
}

u32 XCnn_top_Get_weight0_TotalBytes(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_TOP_CONTROL_ADDR_WEIGHT0_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT0_BASE + 1);
}

u32 XCnn_top_Get_weight0_BitWidth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_WIDTH_WEIGHT0;
}

u32 XCnn_top_Get_weight0_Depth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_DEPTH_WEIGHT0;
}

u32 XCnn_top_Write_weight0_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_WEIGHT0_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_weight0_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_WEIGHT0_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_top_Write_weight0_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_WEIGHT0_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_weight0_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_WEIGHT0_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT0_BASE + offset + i);
    }
    return length;
}

u32 XCnn_top_Get_y_BaseAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_Y_BASE);
}

u32 XCnn_top_Get_y_HighAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_Y_HIGH);
}

u32 XCnn_top_Get_y_TotalBytes(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_TOP_CONTROL_ADDR_Y_HIGH - XCNN_TOP_CONTROL_ADDR_Y_BASE + 1);
}

u32 XCnn_top_Get_y_BitWidth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_WIDTH_Y;
}

u32 XCnn_top_Get_y_Depth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_DEPTH_Y;
}

u32 XCnn_top_Write_y_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_Y_HIGH - XCNN_TOP_CONTROL_ADDR_Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_Y_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_y_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_Y_HIGH - XCNN_TOP_CONTROL_ADDR_Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_Y_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_top_Write_y_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_Y_HIGH - XCNN_TOP_CONTROL_ADDR_Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_Y_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_y_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_Y_HIGH - XCNN_TOP_CONTROL_ADDR_Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_Y_BASE + offset + i);
    }
    return length;
}

u32 XCnn_top_Get_weight1_BaseAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT1_BASE);
}

u32 XCnn_top_Get_weight1_HighAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT1_HIGH);
}

u32 XCnn_top_Get_weight1_TotalBytes(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_TOP_CONTROL_ADDR_WEIGHT1_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT1_BASE + 1);
}

u32 XCnn_top_Get_weight1_BitWidth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_WIDTH_WEIGHT1;
}

u32 XCnn_top_Get_weight1_Depth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_DEPTH_WEIGHT1;
}

u32 XCnn_top_Write_weight1_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_WEIGHT1_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_weight1_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_WEIGHT1_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_top_Write_weight1_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_WEIGHT1_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_weight1_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_WEIGHT1_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT1_BASE + offset + i);
    }
    return length;
}

u32 XCnn_top_Get_x_BaseAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_X_BASE);
}

u32 XCnn_top_Get_x_HighAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_X_HIGH);
}

u32 XCnn_top_Get_x_TotalBytes(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_TOP_CONTROL_ADDR_X_HIGH - XCNN_TOP_CONTROL_ADDR_X_BASE + 1);
}

u32 XCnn_top_Get_x_BitWidth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_WIDTH_X;
}

u32 XCnn_top_Get_x_Depth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_DEPTH_X;
}

u32 XCnn_top_Write_x_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_X_HIGH - XCNN_TOP_CONTROL_ADDR_X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_X_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_x_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_X_HIGH - XCNN_TOP_CONTROL_ADDR_X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_X_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_top_Write_x_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_X_HIGH - XCNN_TOP_CONTROL_ADDR_X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_X_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_x_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_X_HIGH - XCNN_TOP_CONTROL_ADDR_X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_X_BASE + offset + i);
    }
    return length;
}

u32 XCnn_top_Get_weight3_BaseAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT3_BASE);
}

u32 XCnn_top_Get_weight3_HighAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT3_HIGH);
}

u32 XCnn_top_Get_weight3_TotalBytes(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_TOP_CONTROL_ADDR_WEIGHT3_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT3_BASE + 1);
}

u32 XCnn_top_Get_weight3_BitWidth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_WIDTH_WEIGHT3;
}

u32 XCnn_top_Get_weight3_Depth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_DEPTH_WEIGHT3;
}

u32 XCnn_top_Write_weight3_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_WEIGHT3_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT3_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_weight3_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_WEIGHT3_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT3_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_top_Write_weight3_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_WEIGHT3_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT3_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_weight3_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_WEIGHT3_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT3_BASE + offset + i);
    }
    return length;
}

u32 XCnn_top_Get_weight2_BaseAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT2_BASE);
}

u32 XCnn_top_Get_weight2_HighAddress(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT2_HIGH);
}

u32 XCnn_top_Get_weight2_TotalBytes(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_TOP_CONTROL_ADDR_WEIGHT2_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT2_BASE + 1);
}

u32 XCnn_top_Get_weight2_BitWidth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_WIDTH_WEIGHT2;
}

u32 XCnn_top_Get_weight2_Depth(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_TOP_CONTROL_DEPTH_WEIGHT2;
}

u32 XCnn_top_Write_weight2_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_WEIGHT2_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_weight2_Words(XCnn_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_TOP_CONTROL_ADDR_WEIGHT2_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_top_Write_weight2_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_WEIGHT2_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_top_Read_weight2_Bytes(XCnn_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_TOP_CONTROL_ADDR_WEIGHT2_HIGH - XCNN_TOP_CONTROL_ADDR_WEIGHT2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XCNN_TOP_CONTROL_ADDR_WEIGHT2_BASE + offset + i);
    }
    return length;
}

void XCnn_top_InterruptGlobalEnable(XCnn_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_GIE, 1);
}

void XCnn_top_InterruptGlobalDisable(XCnn_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_GIE, 0);
}

void XCnn_top_InterruptEnable(XCnn_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_IER);
    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_IER, Register | Mask);
}

void XCnn_top_InterruptDisable(XCnn_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_IER);
    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCnn_top_InterruptClear(XCnn_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_ISR, Mask);
}

u32 XCnn_top_InterruptGetEnabled(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_IER);
}

u32 XCnn_top_InterruptGetStatus(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_ISR);
}

