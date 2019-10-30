#!/usr/bin/env bash

set -e

export DEBIAN_FRONTEND=noninteractive

apt-get update

apt-get install --yes \
  build-essential \
  cmake \
  git \
  unzip \
  yasm \
  curl \
  vim \
  ca-certificates \
  libjpeg-dev \
  libpng-dev \
  libglfw3-dev \
  libglm-dev \
  libx11-dev \
  libomp-dev \
  libegl1-mesa-dev \
  pkg-config \
  python3-pip \
  python-pip \
  wget \
  zip \
  khronos-api \
  unzip 

unset DEBIAN_FRONTEND
rm -rf /var/lib/apt/lists/*
