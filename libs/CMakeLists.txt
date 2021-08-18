# Not pushing this file down to libraries in order to keep source tree as is (not populating with extra files, such as CMakeList.txt)
#
# Below each section represents a library with its own settings




################### nasser
# Arduino - HAL based Arduino API Minimal (based on STM32duino project)
###################

set(ARDUINO_SRC
Arduino_Core_STM32/variants/${product_variant}/variant_${board}.cpp

Arduino_Core_STM32/variants/${product_variant}/PeripheralPins.c 
Arduino_Core_STM32/variants/${product_variant}/generic_clock.c
Arduino_Core_STM32/variants/${product_variant}/PeripheralPins_ARMED_V1.c
Arduino_Core_STM32/variants/${product_variant}/PeripheralPins_BLACK_F407VX.c
Arduino_Core_STM32/variants/${product_variant}/PeripheralPins_BLUE_F407VE_MINI.c
Arduino_Core_STM32/variants/${product_variant}/PeripheralPins_FK407M1.c
Arduino_Core_STM32/variants/${product_variant}/PeripheralPins_PRNTR_V1.c
Arduino_Core_STM32/variants/${product_variant}/PeripheralPins_PRNTR_V2.c
Arduino_Core_STM32/variants/${product_variant}/variant_ARMED_V1.cpp
Arduino_Core_STM32/variants/${product_variant}/variant_BLACK_F407VX.cpp
Arduino_Core_STM32/variants/${product_variant}/variant_BLUE_F407VE_MINI.cpp
Arduino_Core_STM32/variants/${product_variant}/variant_DIYMORE_F407VGT.cpp
Arduino_Core_STM32/variants/${product_variant}/variant_FK407M1.cpp
Arduino_Core_STM32/variants/${product_variant}/variant_generic.cpp
Arduino_Core_STM32/variants/${product_variant}/variant_PRNTR_Vx.cpp

Arduino_Core_STM32/cores/arduino/avr/dtostrf.c  

Arduino_Core_STM32/cores/arduino/stm32/startup_stm32yyxx.S

Arduino_Core_STM32/cores/arduino/board.c                                                                       
Arduino_Core_STM32/cores/arduino/hooks.c
Arduino_Core_STM32/cores/arduino/itoa.c
Arduino_Core_STM32/cores/arduino/pins_arduino.c                                                                
Arduino_Core_STM32/cores/arduino/wiring_analog.c
Arduino_Core_STM32/cores/arduino/wiring_digital.c                                   
Arduino_Core_STM32/cores/arduino/wiring_shift.c                                                                
Arduino_Core_STM32/cores/arduino/wiring_time.c                                                                                                                                                                                                                     

Arduino_Core_STM32/cores/arduino/abi.cpp
Arduino_Core_STM32/cores/arduino/HardwareSerial.cpp 
Arduino_Core_STM32/cores/arduino/HardwareTimer.cpp 
Arduino_Core_STM32/cores/arduino/IPAddress.cpp
Arduino_Core_STM32/cores/arduino/main.cpp 
Arduino_Core_STM32/cores/arduino/new.cpp
Arduino_Core_STM32/cores/arduino/Print.cpp
Arduino_Core_STM32/cores/arduino/RingBuffer.cpp
Arduino_Core_STM32/cores/arduino/Stream.cpp 
Arduino_Core_STM32/cores/arduino/Tone.cpp 
Arduino_Core_STM32/cores/arduino/USBSerial.cpp
Arduino_Core_STM32/cores/arduino/VirtIOSerial.cpp
Arduino_Core_STM32/cores/arduino/WInterrupts.cpp
Arduino_Core_STM32/cores/arduino/wiring_pulse.cpp
Arduino_Core_STM32/cores/arduino/WMath.cpp 
Arduino_Core_STM32/cores/arduino/WSerial.cpp
Arduino_Core_STM32/cores/arduino/WString.cpp 






Arduino_Core_STM32/cores/arduino/stm32/usb/usb_device_core.c   
Arduino_Core_STM32/cores/arduino/stm32/usb/usb_device_ctlreq.c 
Arduino_Core_STM32/cores/arduino/stm32/usb/usb_device_ioreq.c                                                                                   
Arduino_Core_STM32/cores/arduino/stm32/usb/usbd_conf.c                                                                                            
Arduino_Core_STM32/cores/arduino/stm32/usb/usbd_desc.c                                                                                            
Arduino_Core_STM32/cores/arduino/stm32/usb/usbd_ep_conf.c                                                                                         
Arduino_Core_STM32/cores/arduino/stm32/usb/usbd_if.c                                                                                              
Arduino_Core_STM32/cores/arduino/stm32/usb/cdc/cdc_queue.c                                                                                        
Arduino_Core_STM32/cores/arduino/stm32/usb/cdc/usbd_cdc.c                                                                                         
Arduino_Core_STM32/cores/arduino/stm32/usb/cdc/usbd_cdc_if.c                                                                                      
Arduino_Core_STM32/cores/arduino/stm32/usb/hid/usbd_hid_composite.c                                                                               
Arduino_Core_STM32/cores/arduino/stm32/usb/hid/usbd_hid_composite_if.c                                                                            

Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/mbox_ipcc.c
Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/openamp.c
Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/rsc_table.c
Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/virtio_buffer.c
Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/virtio_log.c
Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/virt_uart.c 

Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/device.c
Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/init.c
Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/io.c
Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/log.c
Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/shmem.c

Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/generic/condition.c
Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/generic/generic_device.c
Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/generic/generic_init.c
Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/generic/generic_io.c
Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/generic/generic_shmem.c
Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/generic/time.c

Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/generic/cortexm/sys.c

Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/open-amp/remoteproc/remoteproc_virtio.c

Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg.c
Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg_virtio.c

Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/virtio/virtio.c
Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/virtio/virtqueue.c


)
 
#add_library(Arduino STATIC ${ARDUINO_SRC})
 
#  TARGET_COMPILE_DEFINITIONS(Arduino PRIVATE 
# 	 -DVECT_TAB_OFFSET=${VECT_TAB_ADDR} 
#  )
#set_target_properties(Arduino PROPERTIES LINKER_LANGUAGE C)


# SrcWrapper lib

set(SRCWRAPPER_SRC

Arduino_Core_STM32/libraries/SrcWrapper/src/syscalls.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_adc.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_adc_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_can.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_cec.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_comp.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_comp_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_cordic.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_cortex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_crc.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_crc_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_cryp.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_cryp_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dac.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dac_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dcmi.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dcmi_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dfsdm.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dfsdm_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dma.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dma_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dma2d.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dsi.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dts.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_eth.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_eth_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_exti.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_fdcan.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_firewall.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_flash.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_flash_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_flash_ramfunc.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_fmac.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_fmpi2c.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_fmpi2c_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_fmpsmbus.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_fmpsmbus_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_gfxmmu.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_gpio.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_gpio_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_gtzc.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_hash.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_hash_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_hcd.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_hrtim.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_hsem.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_i2c.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_i2c_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_i2s.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_i2s_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_icache.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_ipcc.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_irda.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_iwdg.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_jpeg.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_lcd.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_lptim.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_ltdc.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_ltdc_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_mdios.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_mdma.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_mmc.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_mmc_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_nand.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_nor.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_opamp.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_opamp_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_ospi.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_otfdec.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_pccard.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_pcd.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_pcd_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_pka.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_pssi.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_pwr.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_pwr_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_qspi.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_ramecc.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_rcc.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_rcc_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_rng.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_rng_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_rtc.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_rtc_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_sai.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_sai_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_sd.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_sd_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_sdadc.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_sdram.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_smartcard.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_smartcard_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_smbus.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_smbus_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_spdifrx.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_spi.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_spi_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_sram.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_swpmi.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_tim.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_tim_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_tsc.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_uart.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_uart_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_usart.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_usart_ex.c
Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_wwdg.c


Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_adc.c                                                                                      
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_bdma.c                                                                                     
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_comp.c                                                                                     
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_cordic.c                                                                                   
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_crc.c                                                                                      
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_crs.c                                                                                      
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_dac.c                                                                                      
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_delayblock.c                                                                               
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_dma.c                                                                                      
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_dma2d.c                                                                                    
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_exti.c                                                                                     
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_fmac.c                                                                                     
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_fmc.c
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_fmpi2c.c                                                                                      
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_fsmc.c                                                                                     
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_gpio.c                                                                                     
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_hrtim.c                                                                                    
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_i2c.c
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_icache.c                                                                                      
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_lptim.c                                                                                    
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_lpuart.c                                                                                   
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_mdma.c                                                                                     
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_opamp.c                                                                                    
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_pka.c                                                                                      
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_pwr.c                                                                                      
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_rcc.c                                                                                      
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_rtc.c                                                                                      
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_rng.c                                                                                      
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_sdmmc.c                                                                                    
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_spi.c                                                                                      
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_swpmi.c                                                                                    
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_tim.c                                                                                      
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_ucpd.c                                                                                     
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_usart.c                                                                                    
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_usb.c                                                                                      
Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_utils.c                                                                                    


Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/bootloader.c
Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/clock.c
Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/core_callback.c
Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/dwt.c
Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/hw_config.c
Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/interrupt.cpp
Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/otp.c
Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/pinmap.c
Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/PortNames.c
Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/stm32_def.c

Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/system_stm32yyxx.c
Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/timer.c
Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/uart.c


Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/analog.cpp
Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/interrupt.cpp

)

# add_library(SrcWrapper STATIC ${SRCWRAPPER_SRC})
# set_target_properties(SrcWrapper PROPERTIES LINKER_LANGUAGE C)