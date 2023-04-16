void cnn_top(const float x[1][28][28],
        const float weight0[4][1][3][3], const float bias0[4],
        const float weight1[8][4][3][3], const float bias1[8],
        const float weight2[32][8*7*7] , const float bias2[32],
        const float weight3[10][32]	   , const float bias3[10],
        float y[10]);

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

    cnn_top(x, weight0, bias0, weight1, bias1, weight2, bias2, weight3, bias3, y);

    return 0;
}
