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
// 0x10 : Data signal of ap_return
//        bit 31~0 - ap_return[31:0] (Read)
// 0x40 ~
// 0x7f : Memory 'a' (16 * 32b)
//        Word n : bit [31:0] - a[n]
// 0x80 ~
// 0xbf : Memory 'b' (16 * 32b)
//        Word n : bit [31:0] - b[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL   0x00
#define CONTROL_ADDR_GIE       0x04
#define CONTROL_ADDR_IER       0x08
#define CONTROL_ADDR_ISR       0x0c
#define CONTROL_ADDR_AP_RETURN 0x10
#define CONTROL_BITS_AP_RETURN 32
#define CONTROL_ADDR_A_BASE    0x40
#define CONTROL_ADDR_A_HIGH    0x7f
#define CONTROL_WIDTH_A        32
#define CONTROL_DEPTH_A        16
#define CONTROL_ADDR_B_BASE    0x80
#define CONTROL_ADDR_B_HIGH    0xbf
#define CONTROL_WIDTH_B        32
#define CONTROL_DEPTH_B        16
