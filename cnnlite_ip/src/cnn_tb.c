void cnn_top(const float x[1][28][28], float y[10]);

int main()
{
    const float x[1][28][28];
	float y[10];

    cnn_top(x, y);

    return 0;
}
