//  Includes
#include "main.h"
#include "stdio.h"
#include "stdbool.h"

//  Defines
//  Registers
#define VL6180X_DEFAULT_ADDR						  0x29

#define VL6180X_READOUT_AVERAGING_SAMPLE_PERIOD       0x10A
#define VL6180X_SYSALS_ANALOGUE_GAIN                  0x03F
#define VL6180X_SYSRANGE_VHV_REPEAT_RATE              0x031
#define VL6180X_SYSALS_INTEGRATION_PERIOD             0x040
#define VL6180X_SYSRANGE_VHV_RECALIBRATE              0x02E

typedef enum{
	VL6180X_ERROR=0,
	VL6180X_OK
} VL6180X_Status;

//  Sensor object
typedef struct{
    I2C_HandleTypeDef *hi2c;
    uint8_t address;
    GPIO_TypeDef* CE_gpio_port;
    uint16_t CE_gpio_pin;
} VL6180X_t;

//  Object methods
void vl6180x_attach(VL6180X_t*,I2C_HandleTypeDef*,uint8_t,GPIO_TypeDef*,uint16_t);
void vl6180x_TurnOnCE(VL6180X_t*);
VL6180X_Status vl6180x_CheckAlive(VL6180X_t*);
void vl6180x_init(VL6180X_t*);
