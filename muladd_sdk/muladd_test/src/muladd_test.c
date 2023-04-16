#include <stdio.h>
#include <stdlib.h>
#include "xil_printf.h"
#include "xparameters.h"
#include "xmuladd.h"

#define SIZE 16

XMuladd Instance;

int main()
{
    u32 a[SIZE], b[SIZE], temp=0;
    int i;

    if(XMuladd_Initialize(&Instance, XPAR_MULADD_0_DEVICE_ID) != XST_SUCCESS)
    {
        xil_printf("Init Error!\n");
        return XST_FAILURE;
    }

    for(i=0; i<SIZE; i++)
    {
        a[i] = rand() & 0xffff;
        b[i] = rand() & 0xffff;
        temp += a[i] * b[i];
        printf("a[%2d]=%04x b[%2d]=%04x temp=%08x\n", i, a[i], i, b[i], temp);
    }

    XMuladd_Write_a_Words(&Instance, 0, a, SIZE);
    XMuladd_Write_b_Words(&Instance, 0, b, SIZE);

    XMuladd_Start(&Instance);
    while(XMuladd_IsDone(&Instance) == 0);

    if(temp == XMuladd_Get_return(&Instance))
        xil_printf("OK.\n");
    else
        xil_printf("ERROR.\n");

    return 0;
}
