// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x0000 : Control signals
//          bit 0  - ap_start (Read/Write/COH)
//          bit 1  - ap_done (Read/COR)
//          bit 2  - ap_idle (Read)
//          bit 3  - ap_ready (Read/COR)
//          bit 7  - auto_restart (Read/Write)
//          bit 9  - interrupt (Read)
//          others - reserved
// 0x0004 : Global Interrupt Enable Register
//          bit 0  - Global Interrupt Enable (Read/Write)
//          others - reserved
// 0x0008 : IP Interrupt Enable Register (Read/Write)
//          bit 0 - enable ap_done interrupt (Read/Write)
//          bit 1 - enable ap_ready interrupt (Read/Write)
//          others - reserved
// 0x000c : IP Interrupt Status Register (Read/TOW)
//          bit 0 - ap_done (Read/TOW)
//          bit 1 - ap_ready (Read/TOW)
//          others - reserved
// 0x0040 ~
// 0x007f : Memory 'y' (10 * 32b)
//          Word n : bit [31:0] - y[n]
// 0x1000 ~
// 0x1fff : Memory 'x' (784 * 32b)
//          Word n : bit [31:0] - x[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCNN_TOP_CONTROL_ADDR_AP_CTRL 0x0000
#define XCNN_TOP_CONTROL_ADDR_GIE     0x0004
#define XCNN_TOP_CONTROL_ADDR_IER     0x0008
#define XCNN_TOP_CONTROL_ADDR_ISR     0x000c
#define XCNN_TOP_CONTROL_ADDR_Y_BASE  0x0040
#define XCNN_TOP_CONTROL_ADDR_Y_HIGH  0x007f
#define XCNN_TOP_CONTROL_WIDTH_Y      32
#define XCNN_TOP_CONTROL_DEPTH_Y      10
#define XCNN_TOP_CONTROL_ADDR_X_BASE  0x1000
#define XCNN_TOP_CONTROL_ADDR_X_HIGH  0x1fff
#define XCNN_TOP_CONTROL_WIDTH_X      32
#define XCNN_TOP_CONTROL_DEPTH_X      784

