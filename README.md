# CUDA GPU Programming Learning Project

A hands-on project for learning NVIDIA CUDA, GPU programming,
parallel computing, memory management, profiling, and optimization.

## Hardware

- GPU: NVIDIA GeForce RTX 5050 Laptop GPU
- VRAM: 8 GB
- CPU: Intel Core i5-14450HX
- RAM: 16 GB DDR5

## Environment

- Windows
- Visual Studio Community 2026
- MSVC
- CUDA Toolkit 13.4
- NVIDIA CUDA compiler (`nvcc`)
- VS Code

## Current Progress

### 01 — Hello GPU

A minimal CUDA program demonstrating:

- CUDA kernel functions
- `__global__`
- kernel launches
- CUDA threads
- `threadIdx.x`
- `cudaDeviceSynchronize()`

The current program launches 32 GPU threads and prints
each thread's ID.

## Planned Progression

1. Hello GPU
2. Thread and block model
3. Global thread IDs
4. Parallel vector addition
5. GPU memory management
6. CPU vs GPU image grayscale
7. CUDA blur
8. CUDA Sobel edge detection
9. Memory-access optimization
10. Shared memory
11. CUDA profiling
12. Performance optimization

## Goal

Understand how CUDA programs execute on NVIDIA GPUs and learn
how to measure and optimize GPU workloads rather than simply
using CUDA libraries as black boxes.