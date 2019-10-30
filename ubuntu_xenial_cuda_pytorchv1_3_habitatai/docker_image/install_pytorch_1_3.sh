#!/usr/bin/env bash

set -e

#Pytorch 1.3 is the latest. Will replace or rename latest when that changes. 
pip3 install https://download.pytorch.org/whl/cu101/torch-1.3.0-cp35-cp35m-manylinux1_x86_64.whl
#pip3 install torch torchvision
