################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../VL6180X/vl6180x.c 

OBJS += \
./VL6180X/vl6180x.o 

C_DEPS += \
./VL6180X/vl6180x.d 


# Each subdirectory must supply rules for building sources it contributes
VL6180X/%.o VL6180X/%.su VL6180X/%.cyclo: ../VL6180X/%.c VL6180X/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F410Rx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../VL6180X -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-VL6180X

clean-VL6180X:
	-$(RM) ./VL6180X/vl6180x.cyclo ./VL6180X/vl6180x.d ./VL6180X/vl6180x.o ./VL6180X/vl6180x.su

.PHONY: clean-VL6180X

