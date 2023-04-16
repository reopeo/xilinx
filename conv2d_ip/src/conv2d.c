#include <stdio.h>

/*
入力
x: 入力画像。shape=(in_channels, height, width)
weight: 重み係数。shape=(out_channels, in_channels, ksize, ksize)
bias: バイアス値。 shape=(out_channels)

出力
y: 出力画像。shape=(out_channels, height, width)

パラメータ:
width: 入力/出力画像の幅
height: 入力/出力画像の高さ
in_channels: 入力画像のチャネル数
out_channels: 出力画像のチャネル数
ksize: カーネルサイズ
*/

void conv2d(const float *x, const float *weight, const float *bias, __int32_t width, __int32_t height,
			__int32_t in_channels, __int32_t out_channels, __int32_t ksize, float *y)
{
	out_channels:for (__int32_t och = 0; och < out_channels; ++och)
	{
		height:for (__int32_t h = 0; h < height; ++h)
		{
			width:for (__int32_t w = 0; w < width; ++w)
			{
				float sum = 0.f;

				in_channels:for (__int32_t ich = 0; ich < in_channels; ++ich)
				{
					kh:for (__int32_t kh = 0; kh < ksize; ++kh)
					{
						kw:for (__int32_t kw = 0; kw < ksize; ++kw)
						{
							__int32_t ph = h + kh - ksize / 2;
							__int32_t pw = w + kw - ksize / 2;

							// zero padding
							if (ph < 0 || ph >= height || pw < 0 || pw >= width)
							{
								continue;
							}

							__int64_t pix_idx = (ich * height + ph) * width + pw;
							__int64_t weight_idx = ((och * in_channels + ich) * ksize + kh) * ksize + kw;

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
