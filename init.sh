#!/bin/bash

./build.sh
./build_asm.sh

rm -rf ./env

#python3-virtualenv or equivalent package needed!
python3 -m venv env
source env/bin/activate
pip install --upgrade pip
pip install -r requirements.txt