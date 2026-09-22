#include <stdio.h>

__global__ void show_id()
{
    int global_id = blockIdx.x * blockDim.x + threadIdx.x;

    printf("Block: %d | Thread: %d | Global ID: %d\n",
            blockIdx.x,
            threadIdx.x,
            global_id);
}

int main()
{
    show_id<<<2, 32>>>();

    cudaDeviceSynchronize();

    return 0;
}