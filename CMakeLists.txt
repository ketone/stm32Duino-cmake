# Always build in release as it uses -Os
# set from CMake-Tool
set(CMAKE_BUILD_TYPE Release)
# verbose
set(CMAKE_VERBOSE_MAKEFILE OFF)

# set board variant
set(firmware BLUEPILL_F103CB)
set(platform STM32)
set(platform_family STM32F1xx)
set(board BLUEPILL_F103CB)
set(product_line STM32F103xB)
set(product_series "F103C8T_F103CB(T-U)")
set(product_variant ${platform_family}/${product_series})

# setup core, CMSIS
set(core_name Arduino_Core_STM32)
set(cmsis_version  5.7.0)
# Handy path variables used in this script and passed to submodules
set(core_root ${CMAKE_CURRENT_SOURCE_DIR})
set(libs ${core_root}/libs)
set(core_path ${libs}/${core_name}/cores/arduino)
set(core_libraries_path ${libs}/${core_name}/libraries)
set(system_path ${libs}/${core_name}/system)
set(CMSIS_path ${libs}/CMSIS/${cmsis_version})
set(variant_path ${libs}/${core_name}/variants/${product_variant})
set(src_path ${CMAKE_CURRENT_SOURCE_DIR}/src)
# This is for the CMSIS math lib
set(CMSIS_LD_PATH ${CMSIS_path}/CMSIS/DSP/Lib/GCC)
set(cmsis_lib_gcc arm_cortexM3l_math)

#flash offset
set(ld_flash_offset 0)
#flash size
set(ld_flash_size 131072)
#sram size
set(ld_sram_size 20480)



# set toolchain
# update this to match 
# this should be the install base location of ARM_NONE_EABI_GCC toolchain
set(TOOLCHAIN_PREFIX "d:/arm-gcc")
set(TARGET_TRIPLET "arm-none-eabi")
# this should be the location of the arm standard libraries c & c++
# the arm-none-eabi/lib select the folder matching the arch
# compile options e.g. thumb and v7-m
set(LD_TOOLCHAIN_PATH ${TOOLCHAIN_PREFIX}/arm-none-eabi/lib/thumb/v7-m)

#this is the ld script in STM32F1/variants/$(variant)/ld to use
set(ldscript ldscript.ld)
set(LD_SCRIPT_PATH ${variant_path}/${ldscript})


# Load the toolchain file that uses vars above
set(CMAKE_TOOLCHAIN_FILE cmake/gcc.cmake)



# Project definition
project(Main C CXX ASM)

# Misc stuff
cmake_minimum_required(VERSION 3.20)


# Project wide definitions
add_definitions(
	-DUSE_FULL_LL_DRIVER
	-DSTM32F1xx 
	-DARDUINO=10813 
	-DARDUINO_BLUEPILL_F103CB 
	-DARDUINO_ARCH_STM32 
	"-DBOARD_NAME=\"BLUEPILL_F103CB\"" 
	"-DVARIANT_H=\"variant_PILL_F103Cx.h\"" 
	-DSTM32F103xB 
	-DUSBCON 
	-DUSBD_VID=0 
	-DUSBD_PID=0 
	-DHAL_PCD_MODULE_ENABLED 
	-DUSBD_USE_CDC 
	-DHAL_UART_MODULE_ENABLED	
# -DUSE_FULL_LL_DRIVER	
# -DSTM32F4xx 
# -DARDUINO=10813 
# -DARDUINO_DISCO_F407VG 
# -DARDUINO_ARCH_STM32 
# "-DBOARD_NAME=\"DISCO_F407VG\"" 
# "-DVARIANT_H=\"variant_DISCO_F407VG.h\"" 
# -DSTM32F407xx 
# -DUSBCON 
# -DUSBD_VID=0 
# -DUSBD_PID=0 
# -DHAL_PCD_MODULE_ENABLED 
# -DHAL_UART_MODULE_ENABLED
# -DUSBD_USE_CDC
# -DF_CPU=168000000L
# -DHSE_VALUE=8000000L

# -DARDUINO=189 
# -D${build_series}
# -DARDUINO_${build_board}
# -DARDUINO_ARCH_${build_arch} 
# -DBOARD_NAME=\"${build_board}\"
# -D${product_line}
# #-DVECT_TAB_SRAM
# #-DVECT_TAB_OFFSET=0
# -DDEBUG_LEVEL=DEBUG_NONE
# -DF_CPU=168000000L
# -DHSE_VALUE=8000000L
# -DHAL_UART_MODULE_ENABLED
# -DHAL_PCD_MODULE_ENABLED
# -DUSBCON
# -DUSBD_VID=0x0483
# -DUSBD_PID=0x0004
# -DUSB_MANUFACTURER=\"Unknown\"
# -DUSB_PRODUCT=\"${build_board}\"
# # usb serial
# -DUSBD_USE_CDC
)

# Project wide include directories
include_directories(

	${src_path}
	${variant_path}
	${system_path}/Drivers/CMSIS/Device/ST/${platform_family}/Include
#	${system_path}/Drivers/CMSIS/Device/ST/${platform_family}/Source/Templates/gcc/
	${CMSIS_path}/CMSIS/Core/Include
	${CMSIS_path}/CMSIS/DSP/Include
	${CMSIS_path}/CMSIS/DSP/PrivateInclude
	${core_path}
	${core_path}/avr
	${core_path}/stm32
	${core_path}/stm32/LL 
	${core_path}/stm32/usb 
	${core_path}/stm32/usb/hid 
	${core_path}/stm32/usb/cdc 
	${core_path}/stm32/OpenAMP
	${system_path}/Drivers/${platform_family}_HAL_Driver/Inc 
	${system_path}/Drivers/${platform_family}_HAL_Driver/Src 
	${system_path}/${platform_family}
	${system_path}/Middlewares/ST/STM32_USB_Device_Library/Core/Inc 
	${system_path}/Middlewares/ST/STM32_USB_Device_Library/Core/Src
	${system_path}/Middlewares/OpenAMP
	${system_path}/Middlewares/OpenAMP/open-amp/lib/include
	${system_path}/Middlewares/OpenAMP/libmetal/lib/include
	${system_path}/Middlewares/OpenAMP/virtual_driver
	${core_libraries_path}/SrcWrapper/Src
)

add_subdirectory(libs)
add_subdirectory(src)

file(GLOB_RECURSE SOURCE_FILES CONFIGURE_DEPENDS 
"${system_path}/Drivers/CMSIS/Device/ST/${platform_family}/Source/Templates/gcc/startup_${product_line}.s"
"${src_path}/*.c"
"${src_path}/*.cpp"
"${core_path}/*.c"
"${core_path}/*.cpp"
"${core_libraries_path}/SrcWrapper/*.c"
"${core_libraries_path}/SrcWrapper/*.cpp"
"${variant_path}/*.c"
"${variant_path}/*.cpp"
)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})

# Link to Arduino and standard lib
target_link_libraries(${PROJECT_NAME})

target_compile_definitions(${PROJECT_NAME} PRIVATE)

# generate extended listing
# add_custom_target(Main.lss DEPENDS ${PROJECT_NAME} COMMAND ${CMAKE_OBJDUMP} -S ${PROJECT_NAME} > Main.lss)

# output elf file
add_custom_command(TARGET ${PROJECT_NAME}
                   POST_BUILD
                   COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_FILE:Main> Main.elf)

# message(STATUS "CFLAGS =" ${CFLAGS})
# message(STATUS "CXXFLAGS =" ${CXXFLAGS})
# message(STATUS "ASFLAGS =" ${ASFLAGS})
# message(STATUS "LDFLAGS =" ${LDFLAGS})

# message( STATUS "" ${SOURCE_FILES})

add_custom_target(${PROJECT_NAME}.hex ALL DEPENDS ${PROJECT_NAME} COMMAND ${CMAKE_OBJCOPY} -Oihex ${PROJECT_NAME} ${PROJECT_NAME}.hex)
add_custom_target(${PROJECT_NAME}.bin ALL DEPENDS ${PROJECT_NAME} COMMAND ${CMAKE_OBJCOPY} -Obinary ${PROJECT_NAME} ${PROJECT_NAME}.bin)

# add dump file with c++ filter for better readability (apperently doesn't work on script, does work on command prompt, comment out)
# add_custom_target(temp DEPENDS ${PROJECT_NAME} COMMAND arm-none-eabi-objdump -x -D -S -s ${PROJECT_NAME} >temp)
# add_custom_target(${PROJECT_NAME}.dump DEPENDS ${PROJECT_NAME} COMMAND arm-none-eabi-c++filt temp >${PROJECT_NAME}.dump)


