@echo off

cmake -DPATCH_VERSION=9999 -DBUILD_TESTS=ON --preset msvc-release
cmake --build --preset build-msvc-release