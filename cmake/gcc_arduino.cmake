#optimization
# -O0 - none
# -Os - optimise size
# -O1 - optimise
# -O2 - optimise more
# -O3 - optimise most
# -Og - optimise debug
set(OFLAG -Os)

#debug
# default none
# -g - debug
# -g1 - minimal
# -g3 - maximal
set(DFLAG )

# toolchain flags
set(COMMON_OFLAGS "${OFLAG} ${DFLAG} -Wl,--gc-sections  -ffunction-sections -fdata-sections -fmessage-length=0 -fsigned-char -ffreestanding -fno-move-loop-invariants -Wall -Wextra")
# set(FPU_FLAGS "-mfloat-abi=softfp -mfpu=fpv4-sp-d16 -fsingle-precision-constant")
set(TARGET_FLAGS "-mcpu=cortex-m3 -mthumb ${FPU_FLAGS}")
set(GLOBAL_CFLAGS "${COMMON_OFLAGS} ${TARGET_FLAGS}")
set(TARGET_CFLAGS ) 
set(GLOBAL_CXXFLAGS "-fno-rtti -fno-exceptions -fno-use-cxa-atexit -fno-threadsafe-statics ${COMMON_OFLAGS} ${TARGET_FLAGS}")
set(TARGET_CXXFLAGS )     
set(GLOBAL_ASFLAGS ${TARGET_FLAGS})
#set(TARGET_ASFLAGS "-Wl,--gc-sections" ${OFLAG} ${DFLAG} "-Xassembler -Wall")
set(TARGET_ASFLAGS "-Wl,--gc-sections ${OFLAG} ${DFLAG}")


# C CXX ASM flags
set(CFLAGS "${GLOBAL_CFLAGS} ${TARGET_CFLAGS}")
set(CXXFLAGS "${GLOBAL_CXXFLAGS} ${TARGET_CXXFLAGS}")
set(CPPFLAGS )
set(ASFLAGS "${GLOBAL_ASFLAGS} ${TARGET_ASFLAGS}")

# linker flags
set(GLOBAL_LDFLAGS "--specs=nano.specs -Xlinker --gc-sections")

set(TARGET_LDFLAGS "${TARGET_FLAGS} -Xlinker -T${LD_SCRIPT_PATH} -L ${variant_path}  -Wl,--defsym,LD_FLASH_OFFSET=${ld_flash_offset} -Wl,--defsym,LD_MAX_SIZE=${ld_flash_size} -Wl,--defsym,LD_MAX_DATA_SIZE=${ld_sram_size}")


set(TOOLCHAIN_LDFLAGS "-L ${LD_TOOLCHAIN_PATH} -L ${CMSIS_LD_PATH} -l ${cmsis_lib_gcc}")

set(LDFLAGS "${GLOBAL_LDFLAGS} ${TARGET_LDFLAGS} ${TOOLCHAIN_LDFLAGS} -Wl,-Map,${PROJECT_NAME}.map")


set(CMAKE_C_FLAGS ${CFLAGS} CACHE INTERNAL "c compiler flags")
set(CMAKE_CXX_FLAGS ${CXXFLAGS} CACHE INTERNAL "cxx compiler flags")
set(CMAKE_ASM_FLAGS ${ASFLAGS} CACHE INTERNAL "asm compiler flags")

set(CMAKE_EXE_LINKER_FLAGS ${LDFLAGS} CACHE INTERNAL "executable linker flags")
