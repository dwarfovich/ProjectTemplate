#! /bin/bash

cmake -DPATCH_VERSION=9999 -DBUILD_TESTS=ON -DCREATE_DEB_PACKAGE=ON --preset linux-release
cmake --build --preset linux-build-release