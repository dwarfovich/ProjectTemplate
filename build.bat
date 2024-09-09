@echo off

cmake -DPROJECT_VERSION="0.0.1" -DBUILD_TESTS=ON --preset msvc-release
cmake --build --preset build-msvc-release