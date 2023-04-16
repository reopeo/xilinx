// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cnn_top_conv2d_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x_address0,
        x_ce0,
        x_q0,
        x_address1,
        x_ce1,
        x_q1,
        y_address0,
        y_ce0,
        y_we0,
        y_d0,
        grp_fu_837_p_din0,
        grp_fu_837_p_din1,
        grp_fu_837_p_opcode,
        grp_fu_837_p_dout0,
        grp_fu_837_p_ce,
        grp_fu_841_p_din0,
        grp_fu_841_p_din1,
        grp_fu_841_p_opcode,
        grp_fu_841_p_dout0,
        grp_fu_841_p_ce,
        grp_fu_845_p_din0,
        grp_fu_845_p_din1,
        grp_fu_845_p_dout0,
        grp_fu_845_p_ce,
        grp_fu_849_p_din0,
        grp_fu_849_p_din1,
        grp_fu_849_p_dout0,
        grp_fu_849_p_ce
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] x_address0;
output   x_ce0;
input  [31:0] x_q0;
output  [9:0] x_address1;
output   x_ce1;
input  [31:0] x_q1;
output  [11:0] y_address0;
output   y_ce0;
output   y_we0;
output  [31:0] y_d0;
output  [31:0] grp_fu_837_p_din0;
output  [31:0] grp_fu_837_p_din1;
output  [1:0] grp_fu_837_p_opcode;
input  [31:0] grp_fu_837_p_dout0;
output   grp_fu_837_p_ce;
output  [31:0] grp_fu_841_p_din0;
output  [31:0] grp_fu_841_p_din1;
output  [1:0] grp_fu_841_p_opcode;
input  [31:0] grp_fu_841_p_dout0;
output   grp_fu_841_p_ce;
output  [31:0] grp_fu_845_p_din0;
output  [31:0] grp_fu_845_p_din1;
input  [31:0] grp_fu_845_p_dout0;
output   grp_fu_845_p_ce;
output  [31:0] grp_fu_849_p_din0;
output  [31:0] grp_fu_849_p_din1;
input  [31:0] grp_fu_849_p_dout0;
output   grp_fu_849_p_ce;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] weight0_0_address0;
reg    weight0_0_ce0;
wire   [31:0] weight0_0_q0;
wire   [5:0] weight0_0_address1;
reg    weight0_0_ce1;
wire   [31:0] weight0_0_q1;
wire   [5:0] weight0_0_address2;
reg    weight0_0_ce2;
wire   [31:0] weight0_0_q2;
wire   [5:0] weight0_0_address3;
reg    weight0_0_ce3;
wire   [31:0] weight0_0_q3;
wire   [5:0] weight0_0_address4;
reg    weight0_0_ce4;
wire   [31:0] weight0_0_q4;
wire   [5:0] weight0_0_address5;
reg    weight0_0_ce5;
wire   [31:0] weight0_0_q5;
wire   [5:0] weight0_0_address6;
reg    weight0_0_ce6;
wire   [31:0] weight0_0_q6;
wire   [5:0] weight0_0_address7;
reg    weight0_0_ce7;
wire   [31:0] weight0_0_q7;
wire   [5:0] weight0_0_address8;
reg    weight0_0_ce8;
wire   [31:0] weight0_0_q8;
wire   [1:0] empty_71_fu_231_p1;
reg   [1:0] empty_71_reg_485;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln2793_fu_215_p2;
wire   [3:0] p_shl3_fu_235_p3;
reg   [3:0] p_shl3_reg_493;
wire   [5:0] empty_76_fu_269_p2;
reg   [5:0] empty_76_reg_498;
wire   [5:0] empty_79_fu_297_p2;
reg   [5:0] empty_79_reg_505;
wire   [5:0] empty_82_fu_325_p2;
reg   [5:0] empty_82_reg_512;
wire    ap_CS_fsm_state3;
wire   [7:0] empty_72_fu_422_p2;
reg   [7:0] empty_72_reg_564;
wire    ap_CS_fsm_state4;
wire   [31:0] merge_i_fu_466_p3;
reg   [31:0] merge_i_reg_569;
reg   [31:0] weight0_0_load_4_reg_574;
reg   [31:0] weight0_0_load_8_reg_579;
reg   [31:0] weight0_0_load_7_reg_584;
reg   [31:0] weight0_0_load_6_reg_589;
reg   [31:0] weight0_0_load_5_reg_594;
reg   [31:0] weight0_0_load_3_reg_599;
reg   [31:0] weight0_0_load_2_reg_604;
reg   [31:0] weight0_0_load_1_reg_609;
reg   [31:0] weight0_0_load_reg_614;
wire    grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_start;
wire    grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_done;
wire    grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_idle;
wire    grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_ready;
wire   [9:0] grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_x_address0;
wire    grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_x_ce0;
wire   [9:0] grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_x_address1;
wire    grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_x_ce1;
wire   [11:0] grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_y_address0;
wire    grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_y_ce0;
wire    grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_y_we0;
wire   [31:0] grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_y_d0;
wire   [31:0] grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_619_p_din0;
wire   [31:0] grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_619_p_din1;
wire   [1:0] grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_619_p_opcode;
wire    grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_619_p_ce;
wire   [31:0] grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_623_p_din0;
wire   [31:0] grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_623_p_din1;
wire   [1:0] grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_623_p_opcode;
wire    grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_623_p_ce;
wire   [31:0] grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_627_p_din0;
wire   [31:0] grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_627_p_din1;
wire    grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_627_p_ce;
wire   [31:0] grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_631_p_din0;
wire   [31:0] grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_631_p_din1;
wire    grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_631_p_ce;
reg    grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_start_reg;
wire    ap_CS_fsm_state5;
wire   [63:0] p_cast21_fu_336_p1;
wire   [63:0] zext_ln2817_fu_340_p1;
wire   [63:0] zext_ln2819_fu_349_p1;
wire   [63:0] zext_ln2817_1_fu_354_p1;
wire   [63:0] zext_ln2819_1_fu_363_p1;
wire   [63:0] zext_ln2819_2_fu_373_p1;
wire   [63:0] zext_ln2819_3_fu_383_p1;
wire   [63:0] zext_ln2819_4_fu_393_p1;
wire   [63:0] zext_ln2819_5_fu_403_p1;
reg   [2:0] och_fu_66;
wire   [2:0] add_ln2793_fu_221_p2;
wire   [4:0] p_shl3_cast2_fu_243_p1;
wire   [4:0] zext_ln2793_fu_227_p1;
wire  signed [4:0] empty_74_fu_247_p2;
wire   [3:0] empty_75_fu_257_p1;
wire   [5:0] p_shl9_fu_261_p3;
wire  signed [5:0] p_cast_fu_253_p1;
wire  signed [4:0] empty_77_fu_275_p2;
wire   [3:0] empty_78_fu_285_p1;
wire   [5:0] p_shl9_0_1_fu_289_p3;
wire  signed [5:0] p_cast4_fu_281_p1;
wire  signed [4:0] empty_80_fu_303_p2;
wire   [3:0] empty_81_fu_313_p1;
wire   [5:0] p_shl9_0_2_fu_317_p3;
wire  signed [5:0] p_cast5_fu_309_p1;
wire   [5:0] add_ln2817_2_fu_344_p2;
wire   [5:0] add_ln2817_5_fu_358_p2;
wire   [5:0] add_ln2817_4_fu_368_p2;
wire   [5:0] add_ln2817_3_fu_378_p2;
wire   [5:0] add_ln2817_1_fu_388_p2;
wire   [5:0] add_ln2817_fu_398_p2;
wire   [6:0] p_shl_fu_408_p3;
wire   [7:0] p_shl_cast_fu_415_p1;
wire   [7:0] p_shl3_cast_fu_419_p1;
wire   [0:0] icmp_ln9_fu_429_p2;
wire   [0:0] icmp_ln9_2_fu_447_p2;
wire   [0:0] icmp_ln9_1_fu_442_p2;
wire   [0:0] empty_73_fu_460_p2;
wire   [31:0] select_ln9_1_i_fu_452_p3;
wire   [31:0] select_ln9_fu_434_p3;
reg    grp_fu_619_ce;
reg    grp_fu_623_ce;
reg    grp_fu_627_ce;
reg    grp_fu_631_ce;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_start_reg = 1'b0;
end

cnn_top_conv2d_1_weight0_0_ROM_AUTO_1R #(
    .DataWidth( 32 ),
    .AddressRange( 36 ),
    .AddressWidth( 6 ))
weight0_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(weight0_0_address0),
    .ce0(weight0_0_ce0),
    .q0(weight0_0_q0),
    .address1(weight0_0_address1),
    .ce1(weight0_0_ce1),
    .q1(weight0_0_q1),
    .address2(weight0_0_address2),
    .ce2(weight0_0_ce2),
    .q2(weight0_0_q2),
    .address3(weight0_0_address3),
    .ce3(weight0_0_ce3),
    .q3(weight0_0_q3),
    .address4(weight0_0_address4),
    .ce4(weight0_0_ce4),
    .q4(weight0_0_q4),
    .address5(weight0_0_address5),
    .ce5(weight0_0_ce5),
    .q5(weight0_0_q5),
    .address6(weight0_0_address6),
    .ce6(weight0_0_ce6),
    .q6(weight0_0_q6),
    .address7(weight0_0_address7),
    .ce7(weight0_0_ce7),
    .q7(weight0_0_q7),
    .address8(weight0_0_address8),
    .ce8(weight0_0_ce8),
    .q8(weight0_0_q8)
);

cnn_top_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3 grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_start),
    .ap_done(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_done),
    .ap_idle(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_idle),
    .ap_ready(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_ready),
    .empty(empty_72_reg_564),
    .x_address0(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_x_address0),
    .x_ce0(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_x_ce0),
    .x_q0(x_q0),
    .x_address1(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_x_address1),
    .x_ce1(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_x_ce1),
    .x_q1(x_q1),
    .weight0_0_load(weight0_0_load_reg_614),
    .weight0_0_load_1(weight0_0_load_1_reg_609),
    .weight0_0_load_2(weight0_0_load_2_reg_604),
    .weight0_0_load_3(weight0_0_load_3_reg_599),
    .weight0_0_load_4(weight0_0_load_4_reg_574),
    .weight0_0_load_5(weight0_0_load_5_reg_594),
    .weight0_0_load_6(weight0_0_load_6_reg_589),
    .weight0_0_load_7(weight0_0_load_7_reg_584),
    .weight0_0_load_8(weight0_0_load_8_reg_579),
    .merge_i(merge_i_reg_569),
    .y_address0(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_y_address0),
    .y_ce0(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_y_ce0),
    .y_we0(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_y_we0),
    .y_d0(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_y_d0),
    .grp_fu_619_p_din0(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_619_p_din0),
    .grp_fu_619_p_din1(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_619_p_din1),
    .grp_fu_619_p_opcode(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_619_p_opcode),
    .grp_fu_619_p_dout0(grp_fu_837_p_dout0),
    .grp_fu_619_p_ce(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_619_p_ce),
    .grp_fu_623_p_din0(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_623_p_din0),
    .grp_fu_623_p_din1(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_623_p_din1),
    .grp_fu_623_p_opcode(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_623_p_opcode),
    .grp_fu_623_p_dout0(grp_fu_841_p_dout0),
    .grp_fu_623_p_ce(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_623_p_ce),
    .grp_fu_627_p_din0(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_627_p_din0),
    .grp_fu_627_p_din1(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_627_p_din1),
    .grp_fu_627_p_dout0(grp_fu_845_p_dout0),
    .grp_fu_627_p_ce(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_627_p_ce),
    .grp_fu_631_p_din0(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_631_p_din0),
    .grp_fu_631_p_din1(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_631_p_din1),
    .grp_fu_631_p_dout0(grp_fu_849_p_dout0),
    .grp_fu_631_p_ce(grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_631_p_ce)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_start_reg <= 1'b1;
        end else if ((grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_ready == 1'b1)) begin
            grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        och_fu_66 <= 3'd0;
    end else if (((icmp_ln2793_fu_215_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        och_fu_66 <= add_ln2793_fu_221_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln2793_fu_215_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        empty_71_reg_485 <= empty_71_fu_231_p1;
        empty_76_reg_498 <= empty_76_fu_269_p2;
        empty_79_reg_505 <= empty_79_fu_297_p2;
        empty_82_reg_512 <= empty_82_fu_325_p2;
        p_shl3_reg_493[3 : 2] <= p_shl3_fu_235_p3[3 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_72_reg_564[7 : 2] <= empty_72_fu_422_p2[7 : 2];
        merge_i_reg_569[11 : 0] <= merge_i_fu_466_p3[11 : 0];
merge_i_reg_569[19 : 13] <= merge_i_fu_466_p3[19 : 13];
merge_i_reg_569[25 : 21] <= merge_i_fu_466_p3[25 : 21];
        weight0_0_load_1_reg_609 <= weight0_0_q1;
        weight0_0_load_2_reg_604 <= weight0_0_q2;
        weight0_0_load_3_reg_599 <= weight0_0_q3;
        weight0_0_load_4_reg_574 <= weight0_0_q8;
        weight0_0_load_5_reg_594 <= weight0_0_q4;
        weight0_0_load_6_reg_589 <= weight0_0_q5;
        weight0_0_load_7_reg_584 <= weight0_0_q6;
        weight0_0_load_8_reg_579 <= weight0_0_q7;
        weight0_0_load_reg_614 <= weight0_0_q0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln2793_fu_215_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln2793_fu_215_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_619_ce = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_619_p_ce;
    end else begin
        grp_fu_619_ce = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_623_ce = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_623_p_ce;
    end else begin
        grp_fu_623_ce = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_627_ce = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_627_p_ce;
    end else begin
        grp_fu_627_ce = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_631_ce = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_631_p_ce;
    end else begin
        grp_fu_631_ce = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        weight0_0_ce0 = 1'b1;
    end else begin
        weight0_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        weight0_0_ce1 = 1'b1;
    end else begin
        weight0_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        weight0_0_ce2 = 1'b1;
    end else begin
        weight0_0_ce2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        weight0_0_ce3 = 1'b1;
    end else begin
        weight0_0_ce3 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        weight0_0_ce4 = 1'b1;
    end else begin
        weight0_0_ce4 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        weight0_0_ce5 = 1'b1;
    end else begin
        weight0_0_ce5 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        weight0_0_ce6 = 1'b1;
    end else begin
        weight0_0_ce6 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        weight0_0_ce7 = 1'b1;
    end else begin
        weight0_0_ce7 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        weight0_0_ce8 = 1'b1;
    end else begin
        weight0_0_ce8 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln2793_fu_215_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln2793_fu_221_p2 = (och_fu_66 + 3'd1);

assign add_ln2817_1_fu_388_p2 = (empty_76_reg_498 + 6'd2);

assign add_ln2817_2_fu_344_p2 = (empty_79_reg_505 + 6'd1);

assign add_ln2817_3_fu_378_p2 = (empty_79_reg_505 + 6'd2);

assign add_ln2817_4_fu_368_p2 = (empty_82_reg_512 + 6'd1);

assign add_ln2817_5_fu_358_p2 = (empty_82_reg_512 + 6'd2);

assign add_ln2817_fu_398_p2 = (empty_76_reg_498 + 6'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign empty_71_fu_231_p1 = och_fu_66[1:0];

assign empty_72_fu_422_p2 = (p_shl_cast_fu_415_p1 - p_shl3_cast_fu_419_p1);

assign empty_73_fu_460_p2 = (icmp_ln9_2_fu_447_p2 | icmp_ln9_1_fu_442_p2);

assign empty_74_fu_247_p2 = (p_shl3_cast2_fu_243_p1 - zext_ln2793_fu_227_p1);

assign empty_75_fu_257_p1 = empty_74_fu_247_p2[3:0];

assign empty_76_fu_269_p2 = ($signed(p_shl9_fu_261_p3) - $signed(p_cast_fu_253_p1));

assign empty_77_fu_275_p2 = ($signed(empty_74_fu_247_p2) + $signed(5'd1));

assign empty_78_fu_285_p1 = empty_77_fu_275_p2[3:0];

assign empty_79_fu_297_p2 = ($signed(p_shl9_0_1_fu_289_p3) - $signed(p_cast4_fu_281_p1));

assign empty_80_fu_303_p2 = ($signed(empty_74_fu_247_p2) + $signed(5'd2));

assign empty_81_fu_313_p1 = empty_80_fu_303_p2[3:0];

assign empty_82_fu_325_p2 = ($signed(p_shl9_0_2_fu_317_p3) - $signed(p_cast5_fu_309_p1));

assign grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_start = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_ap_start_reg;

assign grp_fu_837_p_ce = grp_fu_619_ce;

assign grp_fu_837_p_din0 = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_619_p_din0;

assign grp_fu_837_p_din1 = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_619_p_din1;

assign grp_fu_837_p_opcode = 2'd0;

assign grp_fu_841_p_ce = grp_fu_623_ce;

assign grp_fu_841_p_din0 = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_623_p_din0;

assign grp_fu_841_p_din1 = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_623_p_din1;

assign grp_fu_841_p_opcode = 2'd0;

assign grp_fu_845_p_ce = grp_fu_627_ce;

assign grp_fu_845_p_din0 = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_627_p_din0;

assign grp_fu_845_p_din1 = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_627_p_din1;

assign grp_fu_849_p_ce = grp_fu_631_ce;

assign grp_fu_849_p_din0 = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_631_p_din0;

assign grp_fu_849_p_din1 = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_grp_fu_631_p_din1;

assign icmp_ln2793_fu_215_p2 = ((och_fu_66 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln9_1_fu_442_p2 = ((empty_71_reg_485 == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln9_2_fu_447_p2 = ((empty_71_reg_485 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln9_fu_429_p2 = ((empty_71_reg_485 == 2'd0) ? 1'b1 : 1'b0);

assign merge_i_fu_466_p3 = ((empty_73_fu_460_p2[0:0] == 1'b1) ? select_ln9_1_i_fu_452_p3 : select_ln9_fu_434_p3);

assign p_cast21_fu_336_p1 = empty_76_reg_498;

assign p_cast4_fu_281_p1 = empty_77_fu_275_p2;

assign p_cast5_fu_309_p1 = empty_80_fu_303_p2;

assign p_cast_fu_253_p1 = empty_74_fu_247_p2;

assign p_shl3_cast2_fu_243_p1 = p_shl3_fu_235_p3;

assign p_shl3_cast_fu_419_p1 = p_shl3_reg_493;

assign p_shl3_fu_235_p3 = {{empty_71_fu_231_p1}, {2'd0}};

assign p_shl9_0_1_fu_289_p3 = {{empty_78_fu_285_p1}, {2'd0}};

assign p_shl9_0_2_fu_317_p3 = {{empty_81_fu_313_p1}, {2'd0}};

assign p_shl9_fu_261_p3 = {{empty_75_fu_257_p1}, {2'd0}};

assign p_shl_cast_fu_415_p1 = p_shl_fu_408_p3;

assign p_shl_fu_408_p3 = {{empty_71_reg_485}, {5'd0}};

assign select_ln9_1_i_fu_452_p3 = ((icmp_ln9_2_fu_447_p2[0:0] == 1'b1) ? 32'd1045891645 : 32'd1020645291);

assign select_ln9_fu_434_p3 = ((icmp_ln9_fu_429_p2[0:0] == 1'b1) ? 32'd1039811582 : 32'd1027450130);

assign weight0_0_address0 = p_cast21_fu_336_p1;

assign weight0_0_address1 = zext_ln2819_5_fu_403_p1;

assign weight0_0_address2 = zext_ln2819_4_fu_393_p1;

assign weight0_0_address3 = zext_ln2817_fu_340_p1;

assign weight0_0_address4 = zext_ln2819_3_fu_383_p1;

assign weight0_0_address5 = zext_ln2817_1_fu_354_p1;

assign weight0_0_address6 = zext_ln2819_2_fu_373_p1;

assign weight0_0_address7 = zext_ln2819_1_fu_363_p1;

assign weight0_0_address8 = zext_ln2819_fu_349_p1;

assign x_address0 = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_x_address0;

assign x_address1 = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_x_address1;

assign x_ce0 = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_x_ce0;

assign x_ce1 = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_x_ce1;

assign y_address0 = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_y_address0;

assign y_ce0 = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_y_ce0;

assign y_d0 = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_y_d0;

assign y_we0 = grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_179_y_we0;

assign zext_ln2793_fu_227_p1 = och_fu_66;

assign zext_ln2817_1_fu_354_p1 = empty_82_reg_512;

assign zext_ln2817_fu_340_p1 = empty_79_reg_505;

assign zext_ln2819_1_fu_363_p1 = add_ln2817_5_fu_358_p2;

assign zext_ln2819_2_fu_373_p1 = add_ln2817_4_fu_368_p2;

assign zext_ln2819_3_fu_383_p1 = add_ln2817_3_fu_378_p2;

assign zext_ln2819_4_fu_393_p1 = add_ln2817_1_fu_388_p2;

assign zext_ln2819_5_fu_403_p1 = add_ln2817_fu_398_p2;

assign zext_ln2819_fu_349_p1 = add_ln2817_2_fu_344_p2;

always @ (posedge ap_clk) begin
    p_shl3_reg_493[1:0] <= 2'b00;
    empty_72_reg_564[1:0] <= 2'b00;
    merge_i_reg_569[12] <= 1'b0;
    merge_i_reg_569[20:20] <= 1'b1;
    merge_i_reg_569[31:26] <= 6'b001111;
end

endmodule //cnn_top_conv2d_1
