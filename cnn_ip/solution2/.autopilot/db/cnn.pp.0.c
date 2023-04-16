# 1 "cnn_ip/src/cnn.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 338 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/tools/Xilinx/Vitis_HLS/2022.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 269 "/tools/Xilinx/Vitis_HLS/2022.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite() __attribute__ ((nothrow));


    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite() __attribute__ ((nothrow));
    void _ssdm_op_ReadReq() __attribute__ ((nothrow));
    void _ssdm_op_Read() __attribute__ ((nothrow));
    void _ssdm_op_WriteReq() __attribute__ ((nothrow));
    void _ssdm_op_Write() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbReadReq() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanReadReq() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbWriteReq() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanWriteReq() __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_PrintNone() __attribute__ ((nothrow));
    void _ssdm_op_PrintInt() __attribute__ ((nothrow));
    void _ssdm_op_PrintDouble() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_op_SpecStable() __attribute__ ((nothrow));
    void _ssdm_op_SpecStableContent() __attribute__ ((nothrow));

    void _ssdm_op_SpecBindPort() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipoDepth() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
# 2 "<built-in>" 2
# 1 "cnn_ip/src/cnn.c" 2
# 1 "/tools/Xilinx/Vitis_HLS/2022.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 1 3
# 63 "/tools/Xilinx/Vitis_HLS/2022.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 3
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 392 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
# 19 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 20 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 393 "/usr/include/features.h" 2 3 4
# 464 "/usr/include/features.h" 3 4
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 465 "/usr/include/features.h" 2 3 4
# 486 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 559 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 560 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 561 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 487 "/usr/include/features.h" 2 3 4
# 510 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 511 "/usr/include/features.h" 2 3 4
# 34 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 2 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
# 19 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 20 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 2 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 141 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 142 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/time64.h" 1 3 4
# 143 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 28 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 35 "/usr/include/stdint.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 3 4
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4





typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;


typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;





typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 71 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 87 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 101 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 64 "/tools/Xilinx/Vitis_HLS/2022.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 2 3
# 2 "cnn_ip/src/cnn.c" 2
# 1 "/tools/Xilinx/Vitis_HLS/2022.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/float.h" 1 3
# 3 "cnn_ip/src/cnn.c" 2



void conv2d(const float *x, const float *weight, const float *bias, int32_t width, int32_t height,
            int32_t in_channels, int32_t out_channels, int32_t ksize, float *y);
void linear(const float *x, const float *weight, const float *bias, int64_t in_features, int64_t out_features, float *y);
void maxpool2d(const float *x, int32_t width, int32_t height, int32_t channels, int32_t stride, float *y);
void relu(const float *x, int64_t size, float *y);
void cnn(const float* x,
  const float* weight0, const float* bias0,
  const float* weight1, const float* bias1,
  const float* weight2, const float* bias2,
  const float* weight3, const float* bias3,
  float* y);

__attribute__((sdx_kernel("cnn_top", 0))) void cnn_top(const float x[1][28][28],
        const float weight0[4][1][3][3], const float bias0[4],
        const float weight1[8][4][3][3], const float bias1[8],
        const float weight2[32][8*7*7] , const float bias2[32],
        const float weight3[10][32] , const float bias3[10],
        float y[10])
{
#line 10 "/home/reon/work/xilinx/cnn_ip/solution2/directives.tcl"
#pragma HLSDIRECTIVE INTERFACE s_axilite port=bias2
# 24 "cnn_ip/src/cnn.c"

#line 11 "/home/reon/work/xilinx/cnn_ip/solution2/directives.tcl"
#pragma HLSDIRECTIVE INTERFACE s_axilite port=bias0
# 24 "cnn_ip/src/cnn.c"

#line 12 "/home/reon/work/xilinx/cnn_ip/solution2/directives.tcl"
#pragma HLSDIRECTIVE INTERFACE s_axilite port=bias1
# 24 "cnn_ip/src/cnn.c"

#line 13 "/home/reon/work/xilinx/cnn_ip/solution2/directives.tcl"
#pragma HLSDIRECTIVE INTERFACE s_axilite port=weight2
# 24 "cnn_ip/src/cnn.c"

#line 14 "/home/reon/work/xilinx/cnn_ip/solution2/csynth.tcl"
#pragma HLSDIRECTIVE TOP name=cnn_top
# 24 "cnn_ip/src/cnn.c"

#line 14 "/home/reon/work/xilinx/cnn_ip/solution2/directives.tcl"
#pragma HLSDIRECTIVE INTERFACE s_axilite port=x
# 24 "cnn_ip/src/cnn.c"

#line 15 "/home/reon/work/xilinx/cnn_ip/solution2/directives.tcl"
#pragma HLSDIRECTIVE INTERFACE s_axilite port=weight1
# 24 "cnn_ip/src/cnn.c"

#line 16 "/home/reon/work/xilinx/cnn_ip/solution2/directives.tcl"
#pragma HLSDIRECTIVE INTERFACE s_axilite port=weight3
# 24 "cnn_ip/src/cnn.c"

#line 6 "/home/reon/work/xilinx/cnn_ip/solution2/directives.tcl"
#pragma HLSDIRECTIVE INTERFACE s_axilite port=return
# 24 "cnn_ip/src/cnn.c"

#line 7 "/home/reon/work/xilinx/cnn_ip/solution2/directives.tcl"
#pragma HLSDIRECTIVE INTERFACE s_axilite port=y
# 24 "cnn_ip/src/cnn.c"

#line 8 "/home/reon/work/xilinx/cnn_ip/solution2/directives.tcl"
#pragma HLSDIRECTIVE INTERFACE s_axilite port=bias3
# 24 "cnn_ip/src/cnn.c"

#line 9 "/home/reon/work/xilinx/cnn_ip/solution2/directives.tcl"
#pragma HLSDIRECTIVE INTERFACE s_axilite port=weight0
# 24 "cnn_ip/src/cnn.c"

 cnn(x, weight0, bias0, weight1, bias1, weight2, bias2, weight3, bias3, y);
}

void conv2d(const float *x, const float *weight, const float *bias, int32_t width, int32_t height,
            int32_t in_channels, int32_t out_channels, int32_t ksize, float *y)
{
    VITIS_LOOP_31_1: for (int32_t och = 0; och < out_channels; ++och)
    {
        VITIS_LOOP_33_2: for (int32_t h = 0; h < height; ++h)
        {
            VITIS_LOOP_35_3: for (int32_t w = 0; w < width; ++w)
            {
                float sum = 0.f;

                VITIS_LOOP_39_4: for (int32_t ich = 0; ich < in_channels; ++ich)
                {
                    VITIS_LOOP_41_5: for (int32_t kh = 0; kh < ksize; ++kh)
                    {
                        VITIS_LOOP_43_6: for (int32_t kw = 0; kw < ksize; ++kw)
                        {
                            int32_t ph = h + kh - ksize / 2;
                            int32_t pw = w + kw - ksize / 2;


                            if (ph < 0 || ph >= height || pw < 0 || pw >= width)
                            {
                                continue;
                            }

                            int64_t pix_idx = (ich * height + ph) * width + pw;
                            int64_t weight_idx = ((och * in_channels + ich) * ksize + kh) * ksize + kw;

                            sum += x[pix_idx] * weight[weight_idx];
                        }
                    }
                }


                sum += bias[och];

                y[(och * height + h) * width + w] = sum;
            }
        }
    }
}

void linear(const float *x, const float *weight, const float *bias, int64_t in_features, int64_t out_features, float *y)
{
    VITIS_LOOP_73_1: for (int64_t i = 0; i < out_features; ++i)
    {
        float sum = 0.f;
        VITIS_LOOP_76_2: for (int64_t j = 0; j < in_features; ++j)
        {
            sum += x[j] * weight[i * in_features + j];
        }
        y[i] = sum + bias[i];
    }
}

void maxpool2d(const float *x, int32_t width, int32_t height, int32_t channels, int32_t stride, float *y)
{
    VITIS_LOOP_86_1: for (int ch = 0; ch < channels; ++ch)
    {
        VITIS_LOOP_88_2: for (int32_t h = 0; h < height; h += stride)
        {
            VITIS_LOOP_90_3: for (int32_t w = 0; w < width; w += stride)
            {
                float maxval = -3.40282347e+38F;

                VITIS_LOOP_94_4: for (int bh = 0; bh < stride; ++bh)
                {
                    VITIS_LOOP_96_5: for (int bw = 0; bw < stride; ++bw)
                    {
                        maxval = ((maxval) > (x[(ch * height + h + bh) * width + w + bw]) ? (maxval) : (x[(ch * height + h + bh) * width + w + bw]));
                    }
                }

                y[(ch * (height / stride) + (h / stride)) * (width / stride) + w / stride] = maxval;
            }
        }
    }
}

void relu(const float *x, int64_t size, float *y)
{
    VITIS_LOOP_110_1: for (int64_t i = 0; i < size; ++i)
    {
        y[i] = ((x[i]) > (.0f) ? (x[i]) : (.0f));
    }
}

void cnn(const float* x,
  const float* weight0, const float* bias0,
  const float* weight1, const float* bias1,
  const float* weight2, const float* bias2,
  const float* weight3, const float* bias3,
  float* y)
{
#pragma HLS inline

 static const int kWidths[] = {28, 14, 7};
    static const int kHeights[] = {28, 14, 7};
    static const int kChannels[] = {1, 4, 8, 32, 10};

    float x1[kWidths[0] * kHeights[0] * kChannels[1]];
    float x2[kWidths[0] * kHeights[0] * kChannels[1]];
    float x3[kWidths[1] * kHeights[1] * kChannels[1]];
    float x4[kWidths[1] * kHeights[1] * kChannels[2]];
    float x5[kWidths[1] * kHeights[1] * kChannels[2]];
    float x6[kWidths[2] * kHeights[2] * kChannels[2]];
    float x7[kChannels[3]];
    float x8[kChannels[3]];


    conv2d(x, weight0, bias0, kWidths[0], kHeights[0], kChannels[0], kChannels[1], 3, x1);
    relu(x1, kWidths[0] * kHeights[0] * kChannels[1], x2);
    maxpool2d(x2, kWidths[0], kHeights[0], kChannels[1], 2, x3);


    conv2d(x3, weight1, bias1, kWidths[1], kHeights[1], kChannels[1], kChannels[2], 3, x4);
    relu(x4, kWidths[1] * kHeights[1] * kChannels[2], x5);
    maxpool2d(x5, kWidths[1], kHeights[1], kChannels[2], 2, x6);


    linear(x6, weight2, bias2, kWidths[2] * kHeights[2] * kChannels[2], kChannels[3], x7);
    relu(x7, kChannels[3], x8);


    linear(x8, weight3, bias3, kChannels[3], kChannels[4], y);
}
