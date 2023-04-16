// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module cnn_top_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 17,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    input  wire [1:0]                    bias0_address0,
    input  wire                          bias0_ce0,
    output wire [31:0]                   bias0_q0,
    input  wire [2:0]                    bias1_address0,
    input  wire                          bias1_ce0,
    output wire [31:0]                   bias1_q0,
    input  wire [3:0]                    bias3_address0,
    input  wire                          bias3_ce0,
    output wire [31:0]                   bias3_q0,
    input  wire [4:0]                    bias2_address0,
    input  wire                          bias2_ce0,
    output wire [31:0]                   bias2_q0,
    input  wire [5:0]                    weight0_address0,
    input  wire                          weight0_ce0,
    output wire [31:0]                   weight0_q0,
    input  wire [3:0]                    y_address0,
    input  wire                          y_ce0,
    input  wire                          y_we0,
    input  wire [31:0]                   y_d0,
    input  wire [8:0]                    weight1_address0,
    input  wire                          weight1_ce0,
    output wire [31:0]                   weight1_q0,
    input  wire [9:0]                    x_address0,
    input  wire                          x_ce0,
    output wire [31:0]                   x_q0,
    input  wire [8:0]                    weight3_address0,
    input  wire                          weight3_ce0,
    output wire [31:0]                   weight3_q0,
    input  wire [13:0]                   weight2_address0,
    input  wire                          weight2_ce0,
    output wire [31:0]                   weight2_q0,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
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

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL      = 17'h00000,
    ADDR_GIE          = 17'h00004,
    ADDR_IER          = 17'h00008,
    ADDR_ISR          = 17'h0000c,
    ADDR_BIAS0_BASE   = 17'h00010,
    ADDR_BIAS0_HIGH   = 17'h0001f,
    ADDR_BIAS1_BASE   = 17'h00020,
    ADDR_BIAS1_HIGH   = 17'h0003f,
    ADDR_BIAS3_BASE   = 17'h00040,
    ADDR_BIAS3_HIGH   = 17'h0007f,
    ADDR_BIAS2_BASE   = 17'h00080,
    ADDR_BIAS2_HIGH   = 17'h000ff,
    ADDR_WEIGHT0_BASE = 17'h00100,
    ADDR_WEIGHT0_HIGH = 17'h001ff,
    ADDR_Y_BASE       = 17'h00200,
    ADDR_Y_HIGH       = 17'h0023f,
    ADDR_WEIGHT1_BASE = 17'h00800,
    ADDR_WEIGHT1_HIGH = 17'h00fff,
    ADDR_X_BASE       = 17'h01000,
    ADDR_X_HIGH       = 17'h01fff,
    ADDR_WEIGHT3_BASE = 17'h02000,
    ADDR_WEIGHT3_HIGH = 17'h027ff,
    ADDR_WEIGHT2_BASE = 17'h10000,
    ADDR_WEIGHT2_HIGH = 17'h1ffff,
    WRIDLE            = 2'd0,
    WRDATA            = 2'd1,
    WRRESP            = 2'd2,
    WRRESET           = 2'd3,
    RDIDLE            = 2'd0,
    RDDATA            = 2'd1,
    RDRESET           = 2'd2,
    ADDR_BITS                = 17;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    // memory signals
    wire [1:0]                    int_bias0_address0;
    wire                          int_bias0_ce0;
    wire [31:0]                   int_bias0_q0;
    wire [1:0]                    int_bias0_address1;
    wire                          int_bias0_ce1;
    wire                          int_bias0_we1;
    wire [3:0]                    int_bias0_be1;
    wire [31:0]                   int_bias0_d1;
    wire [31:0]                   int_bias0_q1;
    reg                           int_bias0_read;
    reg                           int_bias0_write;
    wire [2:0]                    int_bias1_address0;
    wire                          int_bias1_ce0;
    wire [31:0]                   int_bias1_q0;
    wire [2:0]                    int_bias1_address1;
    wire                          int_bias1_ce1;
    wire                          int_bias1_we1;
    wire [3:0]                    int_bias1_be1;
    wire [31:0]                   int_bias1_d1;
    wire [31:0]                   int_bias1_q1;
    reg                           int_bias1_read;
    reg                           int_bias1_write;
    wire [3:0]                    int_bias3_address0;
    wire                          int_bias3_ce0;
    wire [31:0]                   int_bias3_q0;
    wire [3:0]                    int_bias3_address1;
    wire                          int_bias3_ce1;
    wire                          int_bias3_we1;
    wire [3:0]                    int_bias3_be1;
    wire [31:0]                   int_bias3_d1;
    wire [31:0]                   int_bias3_q1;
    reg                           int_bias3_read;
    reg                           int_bias3_write;
    wire [4:0]                    int_bias2_address0;
    wire                          int_bias2_ce0;
    wire [31:0]                   int_bias2_q0;
    wire [4:0]                    int_bias2_address1;
    wire                          int_bias2_ce1;
    wire                          int_bias2_we1;
    wire [3:0]                    int_bias2_be1;
    wire [31:0]                   int_bias2_d1;
    wire [31:0]                   int_bias2_q1;
    reg                           int_bias2_read;
    reg                           int_bias2_write;
    wire [5:0]                    int_weight0_address0;
    wire                          int_weight0_ce0;
    wire [31:0]                   int_weight0_q0;
    wire [5:0]                    int_weight0_address1;
    wire                          int_weight0_ce1;
    wire                          int_weight0_we1;
    wire [3:0]                    int_weight0_be1;
    wire [31:0]                   int_weight0_d1;
    wire [31:0]                   int_weight0_q1;
    reg                           int_weight0_read;
    reg                           int_weight0_write;
    wire [3:0]                    int_y_address0;
    wire                          int_y_ce0;
    wire [3:0]                    int_y_be0;
    wire [31:0]                   int_y_d0;
    wire [3:0]                    int_y_address1;
    wire                          int_y_ce1;
    wire [31:0]                   int_y_q1;
    reg                           int_y_read;
    reg                           int_y_write;
    wire [8:0]                    int_weight1_address0;
    wire                          int_weight1_ce0;
    wire [31:0]                   int_weight1_q0;
    wire [8:0]                    int_weight1_address1;
    wire                          int_weight1_ce1;
    wire                          int_weight1_we1;
    wire [3:0]                    int_weight1_be1;
    wire [31:0]                   int_weight1_d1;
    wire [31:0]                   int_weight1_q1;
    reg                           int_weight1_read;
    reg                           int_weight1_write;
    wire [9:0]                    int_x_address0;
    wire                          int_x_ce0;
    wire [31:0]                   int_x_q0;
    wire [9:0]                    int_x_address1;
    wire                          int_x_ce1;
    wire                          int_x_we1;
    wire [3:0]                    int_x_be1;
    wire [31:0]                   int_x_d1;
    wire [31:0]                   int_x_q1;
    reg                           int_x_read;
    reg                           int_x_write;
    wire [8:0]                    int_weight3_address0;
    wire                          int_weight3_ce0;
    wire [31:0]                   int_weight3_q0;
    wire [8:0]                    int_weight3_address1;
    wire                          int_weight3_ce1;
    wire                          int_weight3_we1;
    wire [3:0]                    int_weight3_be1;
    wire [31:0]                   int_weight3_d1;
    wire [31:0]                   int_weight3_q1;
    reg                           int_weight3_read;
    reg                           int_weight3_write;
    wire [13:0]                   int_weight2_address0;
    wire                          int_weight2_ce0;
    wire [31:0]                   int_weight2_q0;
    wire [13:0]                   int_weight2_address1;
    wire                          int_weight2_ce1;
    wire                          int_weight2_we1;
    wire [3:0]                    int_weight2_be1;
    wire [31:0]                   int_weight2_d1;
    wire [31:0]                   int_weight2_q1;
    reg                           int_weight2_read;
    reg                           int_weight2_write;

//------------------------Instantiation------------------
// int_bias0
cnn_top_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 4 )
) int_bias0 (
    .clk0      ( ACLK ),
    .address0  ( int_bias0_address0 ),
    .ce0       ( int_bias0_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {32{1'b0}} ),
    .q0        ( int_bias0_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_bias0_address1 ),
    .ce1       ( int_bias0_ce1 ),
    .we1       ( int_bias0_be1 ),
    .d1        ( int_bias0_d1 ),
    .q1        ( int_bias0_q1 )
);
// int_bias1
cnn_top_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 8 )
) int_bias1 (
    .clk0      ( ACLK ),
    .address0  ( int_bias1_address0 ),
    .ce0       ( int_bias1_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {32{1'b0}} ),
    .q0        ( int_bias1_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_bias1_address1 ),
    .ce1       ( int_bias1_ce1 ),
    .we1       ( int_bias1_be1 ),
    .d1        ( int_bias1_d1 ),
    .q1        ( int_bias1_q1 )
);
// int_bias3
cnn_top_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 10 )
) int_bias3 (
    .clk0      ( ACLK ),
    .address0  ( int_bias3_address0 ),
    .ce0       ( int_bias3_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {32{1'b0}} ),
    .q0        ( int_bias3_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_bias3_address1 ),
    .ce1       ( int_bias3_ce1 ),
    .we1       ( int_bias3_be1 ),
    .d1        ( int_bias3_d1 ),
    .q1        ( int_bias3_q1 )
);
// int_bias2
cnn_top_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 32 )
) int_bias2 (
    .clk0      ( ACLK ),
    .address0  ( int_bias2_address0 ),
    .ce0       ( int_bias2_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {32{1'b0}} ),
    .q0        ( int_bias2_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_bias2_address1 ),
    .ce1       ( int_bias2_ce1 ),
    .we1       ( int_bias2_be1 ),
    .d1        ( int_bias2_d1 ),
    .q1        ( int_bias2_q1 )
);
// int_weight0
cnn_top_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 36 )
) int_weight0 (
    .clk0      ( ACLK ),
    .address0  ( int_weight0_address0 ),
    .ce0       ( int_weight0_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {32{1'b0}} ),
    .q0        ( int_weight0_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weight0_address1 ),
    .ce1       ( int_weight0_ce1 ),
    .we1       ( int_weight0_be1 ),
    .d1        ( int_weight0_d1 ),
    .q1        ( int_weight0_q1 )
);
// int_y
cnn_top_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "S2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 10 )
) int_y (
    .clk0      ( ACLK ),
    .address0  ( int_y_address0 ),
    .ce0       ( int_y_ce0 ),
    .we0       ( int_y_be0 ),
    .d0        ( int_y_d0 ),
    .q0        (  ),
    .clk1      ( ACLK ),
    .address1  ( int_y_address1 ),
    .ce1       ( int_y_ce1 ),
    .we1       ( {4{1'b0}} ),
    .d1        ( {32{1'b0}} ),
    .q1        ( int_y_q1 )
);
// int_weight1
cnn_top_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 288 )
) int_weight1 (
    .clk0      ( ACLK ),
    .address0  ( int_weight1_address0 ),
    .ce0       ( int_weight1_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {32{1'b0}} ),
    .q0        ( int_weight1_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weight1_address1 ),
    .ce1       ( int_weight1_ce1 ),
    .we1       ( int_weight1_be1 ),
    .d1        ( int_weight1_d1 ),
    .q1        ( int_weight1_q1 )
);
// int_x
cnn_top_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 784 )
) int_x (
    .clk0      ( ACLK ),
    .address0  ( int_x_address0 ),
    .ce0       ( int_x_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {32{1'b0}} ),
    .q0        ( int_x_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_x_address1 ),
    .ce1       ( int_x_ce1 ),
    .we1       ( int_x_be1 ),
    .d1        ( int_x_d1 ),
    .q1        ( int_x_q1 )
);
// int_weight3
cnn_top_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 320 )
) int_weight3 (
    .clk0      ( ACLK ),
    .address0  ( int_weight3_address0 ),
    .ce0       ( int_weight3_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {32{1'b0}} ),
    .q0        ( int_weight3_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weight3_address1 ),
    .ce1       ( int_weight3_ce1 ),
    .we1       ( int_weight3_be1 ),
    .d1        ( int_weight3_d1 ),
    .q1        ( int_weight3_q1 )
);
// int_weight2
cnn_top_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 12544 )
) int_weight2 (
    .clk0      ( ACLK ),
    .address0  ( int_weight2_address0 ),
    .ce0       ( int_weight2_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {32{1'b0}} ),
    .q0        ( int_weight2_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weight2_address1 ),
    .ce1       ( int_weight2_ce1 ),
    .we1       ( int_weight2_be1 ),
    .d1        ( int_weight2_d1 ),
    .q1        ( int_weight2_q1 )
);


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA) && (!ar_hs);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (w_hs)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA) & !int_bias0_read & !int_bias1_read & !int_bias3_read & !int_bias2_read & !int_weight0_read & !int_y_read & !int_weight1_read & !int_x_read & !int_weight3_read & !int_weight2_read;
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                    rdata[9] <= int_interrupt;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
            endcase
        end
        else if (int_bias0_read) begin
            rdata <= int_bias0_q1;
        end
        else if (int_bias1_read) begin
            rdata <= int_bias1_q1;
        end
        else if (int_bias3_read) begin
            rdata <= int_bias3_q1;
        end
        else if (int_bias2_read) begin
            rdata <= int_bias2_q1;
        end
        else if (int_weight0_read) begin
            rdata <= int_weight0_q1;
        end
        else if (int_y_read) begin
            rdata <= int_y_q1;
        end
        else if (int_weight1_read) begin
            rdata <= int_weight1_q1;
        end
        else if (int_x_read) begin
            rdata <= int_x_q1;
        end
        else if (int_weight3_read) begin
            rdata <= int_weight3_q1;
        end
        else if (int_weight2_read) begin
            rdata <= int_weight2_q1;
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_interrupt;
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign auto_restart_done = auto_restart_status && (ap_idle && !int_ap_idle);
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------
// bias0
assign int_bias0_address0   = bias0_address0;
assign int_bias0_ce0        = bias0_ce0;
assign bias0_q0             = int_bias0_q0;
assign int_bias0_address1   = ar_hs? raddr[3:2] : waddr[3:2];
assign int_bias0_ce1        = ar_hs | (int_bias0_write & WVALID);
assign int_bias0_we1        = int_bias0_write & w_hs;
assign int_bias0_be1        = int_bias0_we1 ? WSTRB : 'b0;
assign int_bias0_d1         = WDATA;
// bias1
assign int_bias1_address0   = bias1_address0;
assign int_bias1_ce0        = bias1_ce0;
assign bias1_q0             = int_bias1_q0;
assign int_bias1_address1   = ar_hs? raddr[4:2] : waddr[4:2];
assign int_bias1_ce1        = ar_hs | (int_bias1_write & WVALID);
assign int_bias1_we1        = int_bias1_write & w_hs;
assign int_bias1_be1        = int_bias1_we1 ? WSTRB : 'b0;
assign int_bias1_d1         = WDATA;
// bias3
assign int_bias3_address0   = bias3_address0;
assign int_bias3_ce0        = bias3_ce0;
assign bias3_q0             = int_bias3_q0;
assign int_bias3_address1   = ar_hs? raddr[5:2] : waddr[5:2];
assign int_bias3_ce1        = ar_hs | (int_bias3_write & WVALID);
assign int_bias3_we1        = int_bias3_write & w_hs;
assign int_bias3_be1        = int_bias3_we1 ? WSTRB : 'b0;
assign int_bias3_d1         = WDATA;
// bias2
assign int_bias2_address0   = bias2_address0;
assign int_bias2_ce0        = bias2_ce0;
assign bias2_q0             = int_bias2_q0;
assign int_bias2_address1   = ar_hs? raddr[6:2] : waddr[6:2];
assign int_bias2_ce1        = ar_hs | (int_bias2_write & WVALID);
assign int_bias2_we1        = int_bias2_write & w_hs;
assign int_bias2_be1        = int_bias2_we1 ? WSTRB : 'b0;
assign int_bias2_d1         = WDATA;
// weight0
assign int_weight0_address0 = weight0_address0;
assign int_weight0_ce0      = weight0_ce0;
assign weight0_q0           = int_weight0_q0;
assign int_weight0_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weight0_ce1      = ar_hs | (int_weight0_write & WVALID);
assign int_weight0_we1      = int_weight0_write & w_hs;
assign int_weight0_be1      = int_weight0_we1 ? WSTRB : 'b0;
assign int_weight0_d1       = WDATA;
// y
assign int_y_address0       = y_address0;
assign int_y_ce0            = y_ce0;
assign int_y_be0            = {4{y_we0}};
assign int_y_d0             = y_d0;
assign int_y_address1       = ar_hs? raddr[5:2] : waddr[5:2];
assign int_y_ce1            = ar_hs | (int_y_write & WVALID);
// weight1
assign int_weight1_address0 = weight1_address0;
assign int_weight1_ce0      = weight1_ce0;
assign weight1_q0           = int_weight1_q0;
assign int_weight1_address1 = ar_hs? raddr[10:2] : waddr[10:2];
assign int_weight1_ce1      = ar_hs | (int_weight1_write & WVALID);
assign int_weight1_we1      = int_weight1_write & w_hs;
assign int_weight1_be1      = int_weight1_we1 ? WSTRB : 'b0;
assign int_weight1_d1       = WDATA;
// x
assign int_x_address0       = x_address0;
assign int_x_ce0            = x_ce0;
assign x_q0                 = int_x_q0;
assign int_x_address1       = ar_hs? raddr[11:2] : waddr[11:2];
assign int_x_ce1            = ar_hs | (int_x_write & WVALID);
assign int_x_we1            = int_x_write & w_hs;
assign int_x_be1            = int_x_we1 ? WSTRB : 'b0;
assign int_x_d1             = WDATA;
// weight3
assign int_weight3_address0 = weight3_address0;
assign int_weight3_ce0      = weight3_ce0;
assign weight3_q0           = int_weight3_q0;
assign int_weight3_address1 = ar_hs? raddr[10:2] : waddr[10:2];
assign int_weight3_ce1      = ar_hs | (int_weight3_write & WVALID);
assign int_weight3_we1      = int_weight3_write & w_hs;
assign int_weight3_be1      = int_weight3_we1 ? WSTRB : 'b0;
assign int_weight3_d1       = WDATA;
// weight2
assign int_weight2_address0 = weight2_address0;
assign int_weight2_ce0      = weight2_ce0;
assign weight2_q0           = int_weight2_q0;
assign int_weight2_address1 = ar_hs? raddr[15:2] : waddr[15:2];
assign int_weight2_ce1      = ar_hs | (int_weight2_write & WVALID);
assign int_weight2_we1      = int_weight2_write & w_hs;
assign int_weight2_be1      = int_weight2_we1 ? WSTRB : 'b0;
assign int_weight2_d1       = WDATA;
// int_bias0_read
always @(posedge ACLK) begin
    if (ARESET)
        int_bias0_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_BIAS0_BASE && raddr <= ADDR_BIAS0_HIGH)
            int_bias0_read <= 1'b1;
        else
            int_bias0_read <= 1'b0;
    end
end

// int_bias0_write
always @(posedge ACLK) begin
    if (ARESET)
        int_bias0_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_BIAS0_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_BIAS0_HIGH)
            int_bias0_write <= 1'b1;
        else if (w_hs)
            int_bias0_write <= 1'b0;
    end
end

// int_bias1_read
always @(posedge ACLK) begin
    if (ARESET)
        int_bias1_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_BIAS1_BASE && raddr <= ADDR_BIAS1_HIGH)
            int_bias1_read <= 1'b1;
        else
            int_bias1_read <= 1'b0;
    end
end

// int_bias1_write
always @(posedge ACLK) begin
    if (ARESET)
        int_bias1_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_BIAS1_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_BIAS1_HIGH)
            int_bias1_write <= 1'b1;
        else if (w_hs)
            int_bias1_write <= 1'b0;
    end
end

// int_bias3_read
always @(posedge ACLK) begin
    if (ARESET)
        int_bias3_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_BIAS3_BASE && raddr <= ADDR_BIAS3_HIGH)
            int_bias3_read <= 1'b1;
        else
            int_bias3_read <= 1'b0;
    end
end

// int_bias3_write
always @(posedge ACLK) begin
    if (ARESET)
        int_bias3_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_BIAS3_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_BIAS3_HIGH)
            int_bias3_write <= 1'b1;
        else if (w_hs)
            int_bias3_write <= 1'b0;
    end
end

// int_bias2_read
always @(posedge ACLK) begin
    if (ARESET)
        int_bias2_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_BIAS2_BASE && raddr <= ADDR_BIAS2_HIGH)
            int_bias2_read <= 1'b1;
        else
            int_bias2_read <= 1'b0;
    end
end

// int_bias2_write
always @(posedge ACLK) begin
    if (ARESET)
        int_bias2_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_BIAS2_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_BIAS2_HIGH)
            int_bias2_write <= 1'b1;
        else if (w_hs)
            int_bias2_write <= 1'b0;
    end
end

// int_weight0_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weight0_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHT0_BASE && raddr <= ADDR_WEIGHT0_HIGH)
            int_weight0_read <= 1'b1;
        else
            int_weight0_read <= 1'b0;
    end
end

// int_weight0_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weight0_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHT0_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHT0_HIGH)
            int_weight0_write <= 1'b1;
        else if (w_hs)
            int_weight0_write <= 1'b0;
    end
end

// int_y_read
always @(posedge ACLK) begin
    if (ARESET)
        int_y_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_Y_BASE && raddr <= ADDR_Y_HIGH)
            int_y_read <= 1'b1;
        else
            int_y_read <= 1'b0;
    end
end

// int_weight1_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weight1_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHT1_BASE && raddr <= ADDR_WEIGHT1_HIGH)
            int_weight1_read <= 1'b1;
        else
            int_weight1_read <= 1'b0;
    end
end

// int_weight1_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weight1_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHT1_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHT1_HIGH)
            int_weight1_write <= 1'b1;
        else if (w_hs)
            int_weight1_write <= 1'b0;
    end
end

// int_x_read
always @(posedge ACLK) begin
    if (ARESET)
        int_x_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_X_BASE && raddr <= ADDR_X_HIGH)
            int_x_read <= 1'b1;
        else
            int_x_read <= 1'b0;
    end
end

// int_x_write
always @(posedge ACLK) begin
    if (ARESET)
        int_x_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_X_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_X_HIGH)
            int_x_write <= 1'b1;
        else if (w_hs)
            int_x_write <= 1'b0;
    end
end

// int_weight3_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weight3_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHT3_BASE && raddr <= ADDR_WEIGHT3_HIGH)
            int_weight3_read <= 1'b1;
        else
            int_weight3_read <= 1'b0;
    end
end

// int_weight3_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weight3_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHT3_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHT3_HIGH)
            int_weight3_write <= 1'b1;
        else if (w_hs)
            int_weight3_write <= 1'b0;
    end
end

// int_weight2_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weight2_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHT2_BASE && raddr <= ADDR_WEIGHT2_HIGH)
            int_weight2_read <= 1'b1;
        else
            int_weight2_read <= 1'b0;
    end
end

// int_weight2_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weight2_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHT2_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHT2_HIGH)
            int_weight2_write <= 1'b1;
        else if (w_hs)
            int_weight2_write <= 1'b0;
    end
end


endmodule


`timescale 1ns/1ps

module cnn_top_control_s_axi_ram
#(parameter
    MEM_STYLE = "auto",
    MEM_TYPE  = "S2P",
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire [BYTES-1:0]   we0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire [BYTES-1:0]   we1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------ Parameters -------------------
localparam
    BYTE_WIDTH = 8,
    PORT0 = (MEM_TYPE == "S2P") ? "WO" : ((MEM_TYPE == "2P") ? "RO" : "RW"),
    PORT1 = (MEM_TYPE == "S2P") ? "RO" : "RW";
//------------------------Local signal-------------------
(* ram_style = MEM_STYLE*)
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
wire re0, re1;
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
generate
    if (MEM_STYLE == "hls_ultra" && PORT0 == "RW") begin
        assign re0 = ce0 & ~|we0;
    end else begin
        assign re0 = ce0;
    end
endgenerate

generate
    if (MEM_STYLE == "hls_ultra" && PORT1 == "RW") begin
        assign re1 = ce1 & ~|we1;
    end else begin
        assign re1 = ce1;
    end
endgenerate

// read port 0
generate if (PORT0 != "WO") begin
    always @(posedge clk0) begin
        if (re0) q0 <= mem[address0];
    end
end
endgenerate

// read port 1
generate if (PORT1 != "WO") begin
    always @(posedge clk1) begin
        if (re1) q1 <= mem[address1];
    end
end
endgenerate

integer i;
// write port 0
generate if (PORT0 != "RO") begin
    always @(posedge clk0) begin
        if (ce0)
        for (i = 0; i < BYTES; i = i + 1)
            if (we0[i])
                mem[address0][i*BYTE_WIDTH +: BYTE_WIDTH] <= d0[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

// write port 1
generate if (PORT1 != "RO") begin
    always @(posedge clk1) begin
        if (ce1)
        for (i = 0; i < BYTES; i = i + 1)
            if (we1[i])
                mem[address1][i*BYTE_WIDTH +: BYTE_WIDTH] <= d1[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

endmodule

