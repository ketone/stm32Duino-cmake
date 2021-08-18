# CMake Helper for STM32Duino for Windows
CMake based project for STM32Duino 2.0

# Hardware
Target platform for the project is stm32f103cBt6 "Blue Pill" arduino-nano-like development board.


# Project Structure

* cmake - CMake toolchain files and project wide compiler settings
* Libs - STM32duino from https://github.com/stm32duino/Arduino_Core_STM32, CMSIS from https://developer.arm.com/tools-and-software/embedded/cmsis libraries
* Src - Arduino sketches here
* Build - Cmake configuration and output binary files

# Prerequisite

* GNU Arm embedded toolchain
* Cmake
* Make
* St-flash (for binary flashing)

# How to build

CMake is used as a build system. Here is an example how to generate Makefile from Windows command prompt

```
configure
```
```
build
```


# Links and misc stuff

* Works great with VSCode, just need to install C/C++ and CMake extensions

* Cmake ported from https://github.com/ObKo/stm32-cmake