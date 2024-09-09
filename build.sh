#! /bin/bash

cmake -DPROJECT_VERSION="0.0.2" -DBUILD_TESTS=ON -DCONFIGURE_DEB_PACKAGE=ON --preset linux-release
cmake --build --preset build-linux-release
cpack -G DEB --preset deb-package-release