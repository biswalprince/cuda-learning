#include <stdio.h>

__global__ void addTen(int *data)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    data[id] = data[id] + 10;
}

int main()
{
    const int N = 64;

    int h_data[N];

    for (int i = 0; i < N; i++)
    {
        h_data[i] = i;
    }

    int *d_data;

    cudaMalloc(&d_data, N * sizeof(int));

    cudaMemcpy(
        d_data,
        h_data,
        N * sizeof(int),
        cudaMemcpyHostToDevice
    );

    addTen<<<2, 32>>>(d_data);

    cudaError_t err = cudaGetLastError();

    if (err != cudaSuccess)
    {
        printf("CUDA kernel error: %s\n", cudaGetErrorString(err));
    }

    cudaDeviceSynchronize();

    cudaMemcpy(
        h_data,
        d_data,
        N * sizeof(int),
        cudaMemcpyDeviceToHost
    );

    for (int i = 0; i < N; i++)
    {
        printf("data[%d] = %d\n", i, h_data[i]);
    }

    cudaFree(d_data);

    return 0;
}