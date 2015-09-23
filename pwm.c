#include "pwm.h"
#include "hw_types.h"
#include "hw_ints.h"
#include "hw_memmap.h"
#include "hw_apps_rcm.h"
#include "hw_common_reg.h"
#include "interrupt.h"
#include "rom.h"
#include "rom_map.h"
#include "timer.h"
#include "utils.h"
#include "prcm.h"
#include "pin.h"
#include "gpio.h"


void SetupTimerPWMMode(unsigned long ulBase, unsigned long ulTimer,
                       unsigned long ulConfig, unsigned char ucInvert, unsigned int fpwm)
{
    unsigned int temp = 80000000/fpwm + 0.5;
    //
    // Set GPT - Configured Timer in PWM mode.
    //
    MAP_TimerConfigure(ulBase,ulConfig);
    MAP_TimerPrescaleSet(ulBase,ulTimer,0);
    
    //
    // Inverting the timer output if required
    //
    MAP_TimerControlLevel(ulBase,ulTimer,ucInvert);
    
    //
    // Load value set to ~0.5 ms time period
    //
    MAP_TimerLoadSet(ulBase,ulTimer, temp);
    
    //
    // Match value set so as to output level 0
    //
    MAP_TimerMatchSet(ulBase,ulTimer,0);

}

unsigned char PWM_Init(unsigned int fpwm)
{
    PRCMPeripheralClkEnable(PRCM_TIMERA2, PRCM_RUN_MODE_CLK);
    PRCMPeripheralClkEnable(PRCM_TIMERA3, PRCM_RUN_MODE_CLK);
    
    PinTypeTimer(PIN_01, PIN_MODE_3);
    PinTypeTimer(PIN_02, PIN_MODE_3);
    PinTypeTimer(PIN_64, PIN_MODE_3);
    
    SetupTimerPWMMode(TIMERA2_BASE, TIMER_B, 
              (TIMER_CFG_SPLIT_PAIR | TIMER_CFG_B_PWM), 1, fpwm);
	SetupTimerPWMMode(TIMERA3_BASE, TIMER_B,
			  (TIMER_CFG_SPLIT_PAIR | TIMER_CFG_A_PWM | TIMER_CFG_B_PWM), 1, fpwm);
	SetupTimerPWMMode(TIMERA3_BASE, TIMER_A,
			  (TIMER_CFG_SPLIT_PAIR | TIMER_CFG_A_PWM | TIMER_CFG_B_PWM), 1, fpwm);

	MAP_TimerEnable(TIMERA2_BASE, TIMER_B);
	MAP_TimerEnable(TIMERA3_BASE, TIMER_A);
	MAP_TimerEnable(TIMERA3_BASE, TIMER_B);


    return 0;
}

void PWM_Disable_1()
{
	TimerDisable(TIMERA3_BASE, TIMER_A);
	PinTypeGPIO(PIN_01, PIN_MODE_0, false);
	GPIODirModeSet(GPIOA1_BASE, GPIO_PIN_2, GPIO_DIR_MODE_OUT);
	GPIOPinWrite(GPIOA1_BASE, GPIO_PIN_2, GPIO_PIN_2);

}

void PWM_Disable_2()
{
	TimerDisable(TIMERA3_BASE, TIMER_B);
	PinTypeGPIO(PIN_02, PIN_MODE_0, false);
	GPIODirModeSet(GPIOA1_BASE, GPIO_PIN_3, GPIO_DIR_MODE_OUT);
	GPIOPinWrite(GPIOA1_BASE, GPIO_PIN_3, GPIO_PIN_3);
}

void PWM_Disable_3()
{
	TimerDisable(TIMERA2_BASE, TIMER_B);
	PinTypeGPIO(PIN_64, PIN_MODE_0, false);
	GPIODirModeSet(GPIOA1_BASE, GPIO_PIN_1, GPIO_DIR_MODE_OUT);
	GPIOPinWrite(GPIOA1_BASE, GPIO_PIN_1, GPIO_PIN_1);

}

void PWM_Set1(char temp)
{
	if(temp>255)
		temp=255;
	if(temp<=0)
		temp=0;
    TimerMatchSet(TIMERA2_BASE, TIMER_B, (255-temp)*(7999/255));

}

void PWM_Set2(char temp)
{
	if(temp>255)
		temp=255;
	if(temp<=0)
		temp=0;
    TimerMatchSet(TIMERA3_BASE, TIMER_A, (255-temp)*(7999/255));

}

void PWM_Set3(char temp)
{
	if(temp>255)
		temp=255;
	if(temp<=0)
		temp=0;
    TimerMatchSet(TIMERA3_BASE, TIMER_B, (255-temp)*(7999/255));
}
