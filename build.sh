#! /bin/bash

cmake -DPATCH_VERSION=9999 -DBUILD_TEST=ON -DSETUP_DEB_PACKAGE=ON --preset linux-debug
cmake --build --preset linux-build-release