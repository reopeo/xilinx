// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "/home/reon/work/xilinx/cnn_ip/src/cnn_tb.c"
# 1 "/home/reon/work/xilinx/cnn_ip/src/cnn_tb.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 149 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/reon/work/xilinx/cnn_ip/src/cnn_tb.c" 2

#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_cnn_sw(const float *, const float *, const float *, const float *, const float *, const float *, const float *, const float *, const float *, float *);
#endif
# 1 "/home/reon/work/xilinx/cnn_ip/src/cnn_tb.c"
void cnn(const float *x, const float *weight0, const float *bias0, const float *weight1, const float *bias1,
         const float *weight2, const float *bias2, const float *weight3, const float *bias3, float *y);


#ifndef HLS_FASTSIM
# 4 "/home/reon/work/xilinx/cnn_ip/src/cnn_tb.c"
int main()
{
    const float x[1][28][28];
    const float weight0[4][1][3][3];
    const float bias0[4];
    const float weight1[8][4][3][3];
    const float bias1[8];
    const float weight2[32][8*7*7];
    const float bias2[32];
    const float weight3[10][32];
    const float bias3[10];
 float y[10];

    
#ifndef HLS_FASTSIM
#define cnn apatb_cnn_sw
#endif
# 17 "/home/reon/work/xilinx/cnn_ip/src/cnn_tb.c"
cnn(x, weight0, bias0, weight1, bias1, weight2, bias2, weight3, bias3, y);
#undef cnn
# 17 "/home/reon/work/xilinx/cnn_ip/src/cnn_tb.c"


    return 0;
}
#endif
# 20 "/home/reon/work/xilinx/cnn_ip/src/cnn_tb.c"

