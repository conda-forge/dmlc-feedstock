#!/bin/bash

set -x
set -e

mkdir -p build

pushd build

cmake .. \
      -DCMAKE_INSTALL_PREFIX="$PREFIX" \
      -DCMAKE_INSTALL_LIBDIR="lib" \
      -DUSE_CXX14_IF_AVAILABLE=ON \
      -DGOOGLE_TEST=OFF \
      -DUSE_OPENMP=ON \
      -DINSTALL_DOCUMENTATION=OFF \
      -DUSE_HDFS=OFF 

make -j$CPU_COUNT
make install
