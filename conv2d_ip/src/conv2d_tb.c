#include <stdio.h>
#include <stdlib.h>

#define WIDTH 10
#define HEIGHT 10
#define IN_CHANNELS 3
#define OUT_CHANNELS 3
#define KSIZE 3

void conv2d(const float *x, const float *weight, const float *bias, __int32_t width, __int32_t height,
			__int32_t in_channels, __int32_t out_channels, __int32_t ksize, float *y);

int main()
{
	const float x[IN_CHANNELS][HEIGHT][WIDTH], weight[OUT_CHANNELS][IN_CHANNELS][KSIZE][KSIZE], bias[OUT_CHANNELS];
	float y[OUT_CHANNELS][HEIGHT][WIDTH];

	conv2d(x, weight, bias, WIDTH, HEIGHT, IN_CHANNELS, OUT_CHANNELS, KSIZE, y);

	return 0;
}
