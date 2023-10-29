#!/bin/bash


clang main.c -O3 -S -masm=intel -march=icelake-client -Wall -Wextra -Wpedantic -fno-asynchronous-unwind-tables -fno-dwarf2-cfi-asm -o main.asm