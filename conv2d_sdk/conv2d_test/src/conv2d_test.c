#include <stdio.h>
#include <stdlib.h>
#include "xil_printf.h"
#include "xparameters.h"
#include "xconv2d.h"

#define WIDTH 10
#define HEIGHT 10
#define IN_CHANNELS 3
#define OUT_CHANNELS 3
#define KSIZE 3

XConv2d Instance;

int main()
{
	const float x[IN_CHANNELS][HEIGHT][WIDTH], weight[OUT_CHANNELS][IN_CHANNELS][KSIZE][KSIZE], bias[OUT_CHANNELS];
	float y[OUT_CHANNELS][HEIGHT][WIDTH];

    if(XConv2d_Initialize((&Instance, XPAR_CONV2D_0_DEVICE_ID) != XST_SUCCESS))
    {
        xil_printf("Init Error!\n");
        return XST_FAILURE;
    }

    XConv2d_Set_x(&Instance, Data);
    XConv2d_Set_weight(InstancePtr, Data);
    XConv2d_Set_bias(&Instance, Data);
    XConv2d_Set_width(&Instance, Data);
    XConv2d_Set_height(&Instance, Data);
    XConv2d_Set_in_channels(&Instance, Data);
    XConv2d_Set_out_channels(&Instance, Data);
    XConv2d_Set_ksize(&Instance, Data);

    XConv2d_Start(&Instance);
    while(XConv2d_IsDone(&Instance) == 0);

    temp = XConv2d_Get_y(&Instance);

    return 0;
}
