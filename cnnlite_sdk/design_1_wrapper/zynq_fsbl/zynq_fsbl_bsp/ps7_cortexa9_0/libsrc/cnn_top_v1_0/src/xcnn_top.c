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

