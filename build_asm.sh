#!/bin/bash

gcc main.c -O3 -S -masm=intel -march=native -Wall -Wextra -Wpedantic -fno-asynchronous-unwind-tables -fno-dwarf2-cfi-asm -o ./asm/main.asm