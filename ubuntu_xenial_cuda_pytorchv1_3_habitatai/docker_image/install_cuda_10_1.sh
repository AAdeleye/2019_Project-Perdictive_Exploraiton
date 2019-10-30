#!/usr/bin/env bash

set -e

export DEBIAN_FRONTEND=noninteractive

TEMP_DEB="$(mktemp)" && wget -O "$TEMP_DEB" 'http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-10-1_10.1.243-1_amd64.deb' && sudo dpkg -i "$TEMP_DEB"
rm -f "$TEMP_DEB"
apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
apt-get update

apt-get install --yes \
  cuda-command-line-tools-10-1 \
  cuda-core-10-1 \
  cuda-cublas-10-1 \
  cuda-cublas-dev-10-1 \
  cuda-cudart-10-1 \
  cuda-cudart-dev-10-1 \
  cuda-cufft-10-1 \
  cuda-cufft-dev-10-1 \
  cuda-curand-10-1 \
  cuda-curand-dev-10-1 \
  cuda-cusolver-10-1 \
  cuda-cusolver-dev-10-1 \
  cuda-cusparse-10-1 \
  cuda-cusparse-dev-10-1 \
  cuda-documentation-10-1 \
  cuda-driver-dev-10-1 \
  cuda-gdb-src-10-1 \
  cuda-libraries-10-1 \
  cuda-libraries-dev-10-1 \
  cuda-license-10-1 \
  cuda-minimal-build-10-1 \
  cuda-misc-headers-10-1 \
  cuda-npp-10-1 \
  cuda-npp-dev-10-1 \
  cuda-nvgraph-10-1 \
  cuda-nvgraph-dev-10-1 \
  cuda-nvml-dev-10-1 \
  cuda-nvrtc-10-1 \
  cuda-nvrtc-dev-10-1 \
  cuda-samples-10-1 \
  cuda-toolkit-10-1 \
  cuda-visual-tools-10-1

unset DEBIAN_FRONTEND
rm -rf /var/lib/apt/lists/*
