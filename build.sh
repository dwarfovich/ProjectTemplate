#! /bin/bash

cmake -DPATCH_VERSION=9999 -DBUILD_TESTS=ON -DCONFIGURE_DEB_PACKAGE=ON --preset linux-release
cmake --build --preset build-linux-release
cpack -G DEB --preset Default