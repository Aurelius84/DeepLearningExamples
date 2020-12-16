#!/bin/bash

set -x

num_gpu=$1

if [ $num_gpu = 1 ]; then
    export CUDA_VISIBLE_DEVICES=0
else
    unset CUDA_VISIBLE_DEVICES
fi

# bs96, gpu1, fp16
bash scripts/run_benchmark.sh 96 $num_gpu fp16 50

# bs64, gpu1, fp16
bash scripts/run_benchmark.sh 64 $num_gpu fp16 50

# bs48, gpu1, fp32
bash scripts/run_benchmark.sh 48 $num_gpu fp32 50

# bs32, gpu1, fp32
bash scripts/run_benchmark.sh 32 $num_gpu fp32 50