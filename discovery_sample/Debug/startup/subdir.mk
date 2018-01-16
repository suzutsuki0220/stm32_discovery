################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../startup/startup_stm32f303xc.s 

OBJS += \
./startup/startup_stm32f303xc.o 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -I"C:/Users/suzuki/workspace/discovery_sample/HAL_Driver/Inc/Legacy" -I"C:/Users/suzuki/workspace/discovery_sample/Utilities/STM32F3-Discovery" -I"C:/Users/suzuki/workspace/discovery_sample/Utilities/Components/lsm303dlhc" -I"C:/Users/suzuki/workspace/discovery_sample/Utilities/Components/Common" -I"C:/Users/suzuki/workspace/discovery_sample/Utilities/Components/l3gd20" -I"C:/Users/suzuki/workspace/discovery_sample/inc" -I"C:/Users/suzuki/workspace/discovery_sample/CMSIS/device" -I"C:/Users/suzuki/workspace/discovery_sample/CMSIS/core" -I"C:/Users/suzuki/workspace/discovery_sample/HAL_Driver/Inc" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


