@echo off

cmake -DPATCH_VERSION=9999 -DBUILD_TEST=ON -DSETUP_DEB_PACKAGE=OFF --preset msvc-release
cmake --build --preset build-msvc-release