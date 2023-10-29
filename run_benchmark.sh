#!/bin/bash

./build.sh

source env/bin/activate

python3 benchmark.py
