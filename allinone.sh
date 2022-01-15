#!/bin/bash

gcc hw/mul.c -o hw/mul -O0
gcc hw/mul_block.c -o hw/mul_block -O0
set INTEL_JIT_PROFILER intel64/lib/libpinjitprofiling.so
cd source/tools/Memory
make dcache.test
cd ../../..
mv source/tools/Memory/obj-intel64/dcache.so hw/dcache.so
mkdir hw/out

echo 8_32_1 && ./pin -t hw/dcache.so  -o hw/out/mul_8_32_1.txt -c 8 -b 32 -a 1 -- hw/mul
echo 8_32_2 && ./pin -t hw/dcache.so -o hw/out/mul_8_32_2.txt -c 8 -b 32 -a 2 -- hw/mul
echo 8_32_4 && ./pin -t hw/dcache.so -o hw/out/mul_8_32_4.txt -c 8 -b 32 -a 4 -- hw/mul
echo 16_16_1 && ./pin -t hw/dcache.so -o hw/out/mul_16_16_1.txt -c 16 -b 16 -a 1 -- hw/mul
echo 16_16_2 && ./pin -t hw/dcache.so -o hw/out/mul_16_16_2.txt -c 16 -b 16 -a 2 -- hw/mul
echo 16_16_4 && ./pin -t hw/dcache.so -o hw/out/mul_16_16_4.txt -c 16 -b 16 -a 4 -- hw/mul
echo 16_32_1 && ./pin -t hw/dcache.so -o hw/out/mul_16_32_1.txt -c 16 -b 32 -a 1 -- hw/mul
echo 16_32_2 && ./pin -t hw/dcache.so -o hw/out/mul_16_32_2.txt -c 16 -b 32 -a 2 -- hw/mul
echo 16_32_4 && ./pin -t hw/dcache.so -o hw/out/mul_16_32_4.txt -c 16 -b 32 -a 4 -- hw/mul
echo 16_64_1 && ./pin -t hw/dcache.so -o hw/out/mul_16_64_1.txt -c 16 -b 64 -a 1 -- hw/mul
echo 16_64_2 && ./pin -t hw/dcache.so -o hw/out/mul_16_64_2.txt -c 16 -b 64 -a 2 -- hw/mul
echo 16_64_4 && ./pin -t hw/dcache.so -o hw/out/mul_16_64_4.txt -c 16 -b 64 -a 4 -- hw/mul
echo 32_32_1 && ./pin -t hw/dcache.so -o hw/out/mul_32_32_1.txt -c 32 -b 32 -a 1 -- hw/mul
echo 32_32_2 && ./pin -t hw/dcache.so -o hw/out/mul_32_32_2.txt -c 32 -b 32 -a 2 -- hw/mul
echo 32_32_4 && ./pin -t hw/dcache.so -o hw/out/mul_32_32_4.txt -c 32 -b 32 -a 4 -- hw/mul

echo 8_32_1 && ./pin -t hw/dcache.so -o hw/out/block_8_32_1.txt -c 8 -b 32 -a 1 -- hw/mul_block
echo 8_32_2 && ./pin -t hw/dcache.so -o hw/out/block_8_32_2.txt -c 8 -b 32 -a 2 -- hw/mul_block
echo 8_32_4 && ./pin -t hw/dcache.so -o hw/out/block_8_32_4.txt -c 8 -b 32 -a 4 -- hw/mul_block
echo 16_16_1 && ./pin -t hw/dcache.so -o hw/out/block_16_16_1.txt -c 16 -b 16 -a 1 -- hw/mul_block
echo 16_16_2 && ./pin -t hw/dcache.so -o hw/out/block_16_16_2.txt -c 16 -b 16 -a 2 -- hw/mul_block
echo 16_16_4 && ./pin -t hw/dcache.so -o hw/out/block_16_16_4.txt -c 16 -b 16 -a 4 -- hw/mul_block
echo 16_32_1 && ./pin -t hw/dcache.so -o hw/out/block_16_32_1.txt -c 16 -b 32 -a 1 -- hw/mul_block
echo 16_32_2 && ./pin -t hw/dcache.so -o hw/out/block_16_32_2.txt -c 16 -b 32 -a 2 -- hw/mul_block
echo 16_32_4 && ./pin -t hw/dcache.so -o hw/out/block_16_32_4.txt -c 16 -b 32 -a 4 -- hw/mul_block
echo 16_64_1 && ./pin -t hw/dcache.so -o hw/out/block_16_64_1.txt -c 16 -b 64 -a 1 -- hw/mul_block
echo 16_64_2 && ./pin -t hw/dcache.so -o hw/out/block_16_64_2.txt -c 16 -b 64 -a 2 -- hw/mul_block
echo 16_64_4 && ./pin -t hw/dcache.so -o hw/out/block_16_64_4.txt -c 16 -b 64 -a 4 -- hw/mul_block
echo 32_32_1 && ./pin -t hw/dcache.so -o hw/out/block_32_32_1.txt -c 32 -b 32 -a 1 -- hw/mul_block
echo 32_32_2 && ./pin -t hw/dcache.so -o hw/out/block_32_32_2.txt -c 32 -b 32 -a 2 -- hw/mul_block
echo 32_32_4 && ./pin -t hw/dcache.so -o hw/out/block_32_32_4.txt -c 32 -b 32 -a 4 -- hw/mul_block
