// 0x00000 : Control signals
//           bit 0  - ap_start (Read/Write/COH)
//           bit 1  - ap_done (Read/COR)
//           bit 2  - ap_idle (Read)
//           bit 3  - ap_ready (Read/COR)
//           bit 7  - auto_restart (Read/Write)
//           bit 9  - interrupt (Read)
//           others - reserved
// 0x00004 : Global Interrupt Enable Register
//           bit 0  - Global Interrupt Enable (Read/Write)
//           others - reserved
// 0x00008 : IP Interrupt Enable Register (Read/Write)
//           bit 0 - enable ap_done interrupt (Read/Write)
//           bit 1 - enable ap_ready interrupt (Read/Write)
//           others - reserved
// 0x0000c : IP Interrupt Status Register (Read/TOW)
//           bit 0 - ap_done (Read/TOW)
//           bit 1 - ap_ready (Read/TOW)
//           others - reserved
// 0x00010 ~
// 0x0001f : Memory 'bias0' (4 * 32b)
//           Word n : bit [31:0] - bias0[n]
// 0x00020 ~
// 0x0003f : Memory 'bias1' (8 * 32b)
//           Word n : bit [31:0] - bias1[n]
// 0x00040 ~
// 0x0007f : Memory 'bias3' (10 * 32b)
//           Word n : bit [31:0] - bias3[n]
// 0x00080 ~
// 0x000ff : Memory 'bias2' (32 * 32b)
//           Word n : bit [31:0] - bias2[n]
// 0x00100 ~
// 0x001ff : Memory 'weight0' (36 * 32b)
//           Word n : bit [31:0] - weight0[n]
// 0x00200 ~
// 0x0023f : Memory 'y' (10 * 32b)
//           Word n : bit [31:0] - y[n]
// 0x00800 ~
// 0x00fff : Memory 'weight1' (288 * 32b)
//           Word n : bit [31:0] - weight1[n]
// 0x01000 ~
// 0x01fff : Memory 'x' (784 * 32b)
//           Word n : bit [31:0] - x[n]
// 0x02000 ~
// 0x027ff : Memory 'weight3' (320 * 32b)
//           Word n : bit [31:0] - weight3[n]
// 0x10000 ~
// 0x1ffff : Memory 'weight2' (12544 * 32b)
//           Word n : bit [31:0] - weight2[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL      0x00000
#define CONTROL_ADDR_GIE          0x00004
#define CONTROL_ADDR_IER          0x00008
#define CONTROL_ADDR_ISR          0x0000c
#define CONTROL_ADDR_BIAS0_BASE   0x00010
#define CONTROL_ADDR_BIAS0_HIGH   0x0001f
#define CONTROL_WIDTH_BIAS0       32
#define CONTROL_DEPTH_BIAS0       4
#define CONTROL_ADDR_BIAS1_BASE   0x00020
#define CONTROL_ADDR_BIAS1_HIGH   0x0003f
#define CONTROL_WIDTH_BIAS1       32
#define CONTROL_DEPTH_BIAS1       8
#define CONTROL_ADDR_BIAS3_BASE   0x00040
#define CONTROL_ADDR_BIAS3_HIGH   0x0007f
#define CONTROL_WIDTH_BIAS3       32
#define CONTROL_DEPTH_BIAS3       10
#define CONTROL_ADDR_BIAS2_BASE   0x00080
#define CONTROL_ADDR_BIAS2_HIGH   0x000ff
#define CONTROL_WIDTH_BIAS2       32
#define CONTROL_DEPTH_BIAS2       32
#define CONTROL_ADDR_WEIGHT0_BASE 0x00100
#define CONTROL_ADDR_WEIGHT0_HIGH 0x001ff
#define CONTROL_WIDTH_WEIGHT0     32
#define CONTROL_DEPTH_WEIGHT0     36
#define CONTROL_ADDR_Y_BASE       0x00200
#define CONTROL_ADDR_Y_HIGH       0x0023f
#define CONTROL_WIDTH_Y           32
#define CONTROL_DEPTH_Y           10
#define CONTROL_ADDR_WEIGHT1_BASE 0x00800
#define CONTROL_ADDR_WEIGHT1_HIGH 0x00fff
#define CONTROL_WIDTH_WEIGHT1     32
#define CONTROL_DEPTH_WEIGHT1     288
#define CONTROL_ADDR_X_BASE       0x01000
#define CONTROL_ADDR_X_HIGH       0x01fff
#define CONTROL_WIDTH_X           32
#define CONTROL_DEPTH_X           784
#define CONTROL_ADDR_WEIGHT3_BASE 0x02000
#define CONTROL_ADDR_WEIGHT3_HIGH 0x027ff
#define CONTROL_WIDTH_WEIGHT3     32
#define CONTROL_DEPTH_WEIGHT3     320
#define CONTROL_ADDR_WEIGHT2_BASE 0x10000
#define CONTROL_ADDR_WEIGHT2_HIGH 0x1ffff
#define CONTROL_WIDTH_WEIGHT2     32
#define CONTROL_DEPTH_WEIGHT2     12544
