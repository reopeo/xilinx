#include <stdint.h>
#include <float.h>

#define max(a, b) ((a) > (b) ? (a) : (b))

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

void cnn_top(const float x[1][28][28],
        const float weight0[4][1][3][3], const float bias0[4],
        const float weight1[8][4][3][3], const float bias1[8],
        const float weight2[32][8*7*7] , const float bias2[32],
        const float weight3[10][32]	   , const float bias3[10],
        float y[10])
{
	cnn(x, weight0, bias0, weight1, bias1, weight2, bias2, weight3, bias3, y);
}

void conv2d(const float *x, const float *weight, const float *bias, int32_t width, int32_t height,
            int32_t in_channels, int32_t out_channels, int32_t ksize, float *y)
{
    for (int32_t och = 0; och < out_channels; ++och)
    {
        for (int32_t h = 0; h < height; ++h)
        {
            for (int32_t w = 0; w < width; ++w)
            {
                float sum = 0.f;

                for (int32_t ich = 0; ich < in_channels; ++ich)
                {
                    for (int32_t kh = 0; kh < ksize; ++kh)
                    {
                        for (int32_t kw = 0; kw < ksize; ++kw)
                        {
                            int32_t ph = h + kh - ksize / 2;
                            int32_t pw = w + kw - ksize / 2;

                            // zero padding
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

                // add bias
                sum += bias[och];

                y[(och * height + h) * width + w] = sum;
            }
        }
    }
}

void linear(const float *x, const float *weight, const float *bias, int64_t in_features, int64_t out_features, float *y)
{
    for (int64_t i = 0; i < out_features; ++i)
    {
        float sum = 0.f;
        for (int64_t j = 0; j < in_features; ++j)
        {
            sum += x[j] * weight[i * in_features + j];
        }
        y[i] = sum + bias[i];
    }
}

void maxpool2d(const float *x, int32_t width, int32_t height, int32_t channels, int32_t stride, float *y)
{
    for (int ch = 0; ch < channels; ++ch)
    {
        for (int32_t h = 0; h < height; h += stride)
        {
            for (int32_t w = 0; w < width; w += stride)
            {
                float maxval = -FLT_MAX;

                for (int bh = 0; bh < stride; ++bh)
                {
                    for (int bw = 0; bw < stride; ++bw)
                    {
                        maxval = max(maxval, x[(ch * height + h + bh) * width + w + bw]);
                    }
                }

                y[(ch * (height / stride) + (h / stride)) * (width / stride) + w / stride] = maxval;
            }
        }
    }
}

void relu(const float *x, int64_t size, float *y)
{
    for (int64_t i = 0; i < size; ++i)
    {
        y[i] = max(x[i], .0f);
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

    // 1st layer
    conv2d(x, weight0, bias0, kWidths[0], kHeights[0], kChannels[0], kChannels[1], 3, x1);
    relu(x1, kWidths[0] * kHeights[0] * kChannels[1], x2);
    maxpool2d(x2, kWidths[0], kHeights[0], kChannels[1], 2, x3);

    // 2nd layer
    conv2d(x3, weight1, bias1, kWidths[1], kHeights[1], kChannels[1], kChannels[2], 3, x4);
    relu(x4, kWidths[1] * kHeights[1] * kChannels[2], x5);
    maxpool2d(x5, kWidths[1], kHeights[1], kChannels[2], 2, x6);

    // 3rd layer
    linear(x6, weight2, bias2, kWidths[2] * kHeights[2] * kChannels[2], kChannels[3], x7);
    relu(x7, kChannels[3], x8);

    // 4th layer
    linear(x8, weight3, bias3, kChannels[3], kChannels[4], y);
}
