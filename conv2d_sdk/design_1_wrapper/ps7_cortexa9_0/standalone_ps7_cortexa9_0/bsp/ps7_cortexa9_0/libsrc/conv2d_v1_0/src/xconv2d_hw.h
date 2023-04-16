// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of x
//        bit 31~0 - x[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of weight
//        bit 31~0 - weight[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of bias
//        bit 31~0 - bias[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of width
//        bit 31~0 - width[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of height
//        bit 31~0 - height[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of in_channels
//        bit 31~0 - in_channels[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of out_channels
//        bit 31~0 - out_channels[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of ksize
//        bit 31~0 - ksize[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of y
//        bit 31~0 - y[31:0] (Read)
// 0x54 : Control signal of y
//        bit 0  - y_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCONV2D_CONTROL_ADDR_AP_CTRL           0x00
#define XCONV2D_CONTROL_ADDR_GIE               0x04
#define XCONV2D_CONTROL_ADDR_IER               0x08
#define XCONV2D_CONTROL_ADDR_ISR               0x0c
#define XCONV2D_CONTROL_ADDR_X_DATA            0x10
#define XCONV2D_CONTROL_BITS_X_DATA            32
#define XCONV2D_CONTROL_ADDR_WEIGHT_DATA       0x18
#define XCONV2D_CONTROL_BITS_WEIGHT_DATA       32
#define XCONV2D_CONTROL_ADDR_BIAS_DATA         0x20
#define XCONV2D_CONTROL_BITS_BIAS_DATA         32
#define XCONV2D_CONTROL_ADDR_WIDTH_DATA        0x28
#define XCONV2D_CONTROL_BITS_WIDTH_DATA        32
#define XCONV2D_CONTROL_ADDR_HEIGHT_DATA       0x30
#define XCONV2D_CONTROL_BITS_HEIGHT_DATA       32
#define XCONV2D_CONTROL_ADDR_IN_CHANNELS_DATA  0x38
#define XCONV2D_CONTROL_BITS_IN_CHANNELS_DATA  32
#define XCONV2D_CONTROL_ADDR_OUT_CHANNELS_DATA 0x40
#define XCONV2D_CONTROL_BITS_OUT_CHANNELS_DATA 32
#define XCONV2D_CONTROL_ADDR_KSIZE_DATA        0x48
#define XCONV2D_CONTROL_BITS_KSIZE_DATA        32
#define XCONV2D_CONTROL_ADDR_Y_DATA            0x50
#define XCONV2D_CONTROL_BITS_Y_DATA            32
#define XCONV2D_CONTROL_ADDR_Y_CTRL            0x54

