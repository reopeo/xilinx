// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xconv2d.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XConv2d_CfgInitialize(XConv2d *InstancePtr, XConv2d_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XConv2d_Start(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_AP_CTRL) & 0x80;
    XConv2d_WriteReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XConv2d_IsDone(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XConv2d_IsIdle(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XConv2d_IsReady(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XConv2d_EnableAutoRestart(XConv2d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XConv2d_DisableAutoRestart(XConv2d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_AP_CTRL, 0);
}

void XConv2d_Set_x(XConv2d *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_X_DATA, Data);
}

u32 XConv2d_Get_x(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_X_DATA);
    return Data;
}

void XConv2d_Set_weight(XConv2d *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_WEIGHT_DATA, Data);
}

u32 XConv2d_Get_weight(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_WEIGHT_DATA);
    return Data;
}

void XConv2d_Set_bias(XConv2d *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_BIAS_DATA, Data);
}

u32 XConv2d_Get_bias(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_BIAS_DATA);
    return Data;
}

void XConv2d_Set_width(XConv2d *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_WIDTH_DATA, Data);
}

u32 XConv2d_Get_width(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_WIDTH_DATA);
    return Data;
}

void XConv2d_Set_height(XConv2d *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_HEIGHT_DATA, Data);
}

u32 XConv2d_Get_height(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_HEIGHT_DATA);
    return Data;
}

void XConv2d_Set_in_channels(XConv2d *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_IN_CHANNELS_DATA, Data);
}

u32 XConv2d_Get_in_channels(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_IN_CHANNELS_DATA);
    return Data;
}

void XConv2d_Set_out_channels(XConv2d *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_OUT_CHANNELS_DATA, Data);
}

u32 XConv2d_Get_out_channels(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_OUT_CHANNELS_DATA);
    return Data;
}

void XConv2d_Set_ksize(XConv2d *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_KSIZE_DATA, Data);
}

u32 XConv2d_Get_ksize(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_KSIZE_DATA);
    return Data;
}

u32 XConv2d_Get_y(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_Y_DATA);
    return Data;
}

u32 XConv2d_Get_y_vld(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_Y_CTRL);
    return Data & 0x1;
}

void XConv2d_InterruptGlobalEnable(XConv2d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_GIE, 1);
}

void XConv2d_InterruptGlobalDisable(XConv2d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_GIE, 0);
}

void XConv2d_InterruptEnable(XConv2d *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_IER);
    XConv2d_WriteReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_IER, Register | Mask);
}

void XConv2d_InterruptDisable(XConv2d *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_IER);
    XConv2d_WriteReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_IER, Register & (~Mask));
}

void XConv2d_InterruptClear(XConv2d *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_ISR, Mask);
}

u32 XConv2d_InterruptGetEnabled(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_IER);
}

u32 XConv2d_InterruptGetStatus(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XConv2d_ReadReg(InstancePtr->Control_BaseAddress, XCONV2D_CONTROL_ADDR_ISR);
}

