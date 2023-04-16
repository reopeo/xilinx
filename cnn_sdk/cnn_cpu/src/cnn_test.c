#include <stdio.h>
#include <stdlib.h>
#include "xtime_l.h"
#include "cnn.h"

extern const float weight0[4][1][3][3];
extern const float bias0[4];
extern const float weight1[8][4][3][3];
extern const float bias1[8];
extern const float weight2[32][8*7*7];
extern const float bias2[32];
extern const float weight3[10][32];
extern const float bias3[10];

int main()
{
	XTime tStart, tEnd;

    float x[1][28][28]={{{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.3254902 , 0.35686275 , 0.56078434 , 1.0 , 0.74509805 , 0.35686275 , 0.19607843 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.03529412 , 0.19215687 , 0.7058824 , 0.9647059 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.8627451 , 0.6039216 , 0.06666667 , 0.011764706 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.18039216 , 0.41960785 , 0.69803923 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.49411765 , 0.1764706 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.41960785 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.8745098 , 0.8627451 , 0.8627451 , 0.8627451 , 0.8627451 , 0.9607843 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.41568628 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.41960785 , 0.6784314 , 0.99215686 , 0.8980392 , 0.5058824 , 0.047058824 , 0.0 , 0.0 , 0.0 , 0.0 , 0.43137255 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.41568628 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.06666667 , 0.05490196 , 0.15686275 , 0.1254902 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.22352941 , 0.99215686 , 0.99215686 , 0.99215686 , 0.9490196 , 0.33333334 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.019607844 , 0.54509807 , 0.8784314 , 0.99215686 , 0.99215686 , 0.99215686 , 0.4117647 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.25490198 , 0.69803923 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.85882354 , 0.09411765 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.38039216 , 0.98039216 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.49803922 , 0.18431373 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.18039216 , 0.49019608 , 0.98039216 , 0.99215686 , 0.99215686 , 0.99215686 , 0.9607843 , 0.67058825 , 0.12941177 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.019607844 , 0.16078432 , 0.8509804 , 0.99215686 , 0.99215686 , 0.98039216 , 0.9607843 , 0.9607843 , 0.4509804 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.4862745 , 0.99215686 , 0.99215686 , 0.99215686 , 0.7529412 , 0.4117647 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.043137256 , 0.18431373 , 0.8627451 , 0.99215686 , 0.99215686 , 0.7372549 , 0.09803922 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.41960785 , 0.99215686 , 0.99215686 , 0.99215686 , 0.7411765 , 0.050980393 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.16078432 , 0.88235295 , 0.99215686 , 0.99215686 , 0.7294118 , 0.08627451 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.12156863 , 0.16470589 , 0.68235296 , 0.8039216 , 0.8039216 , 0.8039216 , 0.75686276 , 0.22745098 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.1882353 , 0.85490197 , 0.99215686 , 0.99215686 , 0.99215686 , 0.5882353 , 0.23137255 , 0.0 , 0.0 , 0.5019608 , 0.5137255 , 0.5137255 , 0.87058824 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.36862746 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.047058824 , 0.59607846 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.9254902 , 0.87058824 , 0.87058824 , 0.9882353 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.47843137 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.02745098 , 0.654902 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.4862745 , 0.41568628 , 0.02745098 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.29803923 , 0.7372549 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.99215686 , 0.8784314 , 0.22352941 , 0.05882353 , 0.05882353 , 0.05882353 , 0.007843138 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.047058824 , 0.34901962 , 0.4745098 , 0.99215686 , 0.99215686 , 0.5921569 , 0.34901962 , 0.34901962 , 0.21568628 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,
    		{0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0  } ,}};
    float y[10]={0};

    printf("START CPU.\n");

    XTime_GetTime(&tStart);
    cnn(x, weight0, bias0, weight1, bias1, weight2, bias2, weight3, bias3, y);
    XTime_GetTime(&tEnd);

    printf("Output took %llu clock cycles.\n", 2 * (tEnd - tStart));
    printf("Output took %.2lf us.\n", 1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND / 100000000));

    printf("Result is\n");
    for(int i=0; i<10; i++)
    	printf("%lf ",y[i]);

    printf("\nDONE.\n");

    return 0;
}
