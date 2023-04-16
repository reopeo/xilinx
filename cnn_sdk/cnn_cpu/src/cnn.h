#ifndef _CNN_H_
#define _CNN_H_

#include <stdint.h>

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

#endif
