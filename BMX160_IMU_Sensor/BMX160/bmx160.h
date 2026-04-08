#include "stdio.h"
#include "main.h"


#define BMX160_DEFAULT_ADDR       				 0x68
#define BMX160_DEFAULT_CHIPID     				 0b11011000

//	Registers
#define BMX160_CHIPID                            0x00
#define BMX160_COMMAND_REG_ADDR                  0x7E
#define BMX160_MAGN_IF_0_ADDR                    0x4C
#define BMX160_MAGN_RANGE_ADDR                   0x4B
#define BMX160_MAGN_IF_0_ADDR                    0x4C
#define BMX160_MAGN_IF_1_ADDR                    0x4D
#define BMX160_MAGN_IF_2_ADDR                    0x4E
#define BMX160_MAGN_IF_3_ADDR                    0x4F
#define BMX160_MAGN_CONFIG_ADDR                  0x44
#define BMX160_SOFT_RESET_CMD                    0xb6
#define BMX160_SOFT_RESET_DELAY_MS               15



//  Sensor object
typedef struct{
    I2C_HandleTypeDef *hi2c;
    uint8_t address;
} BMX160_t;

typedef enum{
	BMX160_ERROR=0,
	BMX160_OK
} BMX160_Status;

void bmx160_attach(BMX160_t*,I2C_HandleTypeDef*);
void bmx160_begin(BMX160_t*);

uint8_t bmx160_read8(BMX160_t*, uint16_t);
BMX160_Status bmx160_CheckAlive(BMX160_t*);
