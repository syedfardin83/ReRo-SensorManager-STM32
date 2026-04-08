################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../BMX160/bmx160.c 

OBJS += \
./BMX160/bmx160.o 

C_DEPS += \
./BMX160/bmx160.d 


# Each subdirectory must supply rules for building sources it contributes
BMX160/%.o BMX160/%.su BMX160/%.cyclo: ../BMX160/%.c BMX160/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F410Rx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../BMX160 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-BMX160

clean-BMX160:
	-$(RM) ./BMX160/bmx160.cyclo ./BMX160/bmx160.d ./BMX160/bmx160.o ./BMX160/bmx160.su

.PHONY: clean-BMX160

