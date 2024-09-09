#! /bin/bash

cmake -DPATCH_VERSION=9999 -DBUILD_TEST=ON -DSETUP_DEB_PACKAGE=ON --preset linux-release
cmake --build --preset build-linux-release