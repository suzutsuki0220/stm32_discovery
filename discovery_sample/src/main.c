/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/

#include "stm32f3xx.h"
#include "stm32f3_discovery.h"
#include "stm32f3xx_hal_gpio.h"
#include "stm32f3xx_hal_rcc.h"

#define WAITLOOP_COUNT 10000

static inline void
doWaitLoop() {
	unsigned int i;

	i = WAITLOOP_COUNT;
	while(i != 0) {
		i--;
	}
}

int main(void)
{
    //GPIOにクロック供給
	__HAL_RCC_GPIOE_CLK_ENABLE();

    //GPIOの設定
    GPIO_InitTypeDef pin_PE9;
    pin_PE9.Pin = GPIO_PIN_9;
    pin_PE9.Mode = GPIO_MODE_OUTPUT_PP;
    pin_PE9.Pull = GPIO_PULLDOWN;

    //GPIOの初期化
    HAL_GPIO_Init(GPIOE, &pin_PE9);

    //HAL_GPIO_WritePin(GPIOE, GPIO_PIN_9, GPIO_PIN_SET);

	for(;;) {
		HAL_GPIO_TogglePin(GPIOE, GPIO_PIN_9);
		doWaitLoop();
	}
}
