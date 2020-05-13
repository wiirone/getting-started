@echo off

setlocal
cd /d %~dp0\..

IF EXIST build (rd /S /Q build)

cmake -Bbuild -GNinja -DCMAKE_TOOLCHAIN_FILE="../../cmake/arm-gcc-cortex-m7.cmake"
cmake --build build

IF %0 == "%~0"  pause