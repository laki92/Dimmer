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
    MAP_TimerLoadSet(ulBase,ulTimer, temp); // 100Hz
    
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

	MAP_TimerEnable(TIMERA2_BASE, TIMER_B);// RED
	MAP_TimerEnable(TIMERA3_BASE, TIMER_A);// GREEN
	MAP_TimerEnable(TIMERA3_BASE, TIMER_B);// BLUE


    return 0;
}

void PWM_Disable_1()
{
	TimerDisable(TIMERA3_BASE, TIMER_A);
	GPIOPinWrite(GPIOA3_BASE, GPIO_PIN_1, GPIO_PIN_1);

}

void PWM_Disable_2()
{
	//TimerDisable(TIMERA3_BASE, TIMER_B);
	//GPIOPinWrite(GPIOA3_BASE, GPIO_PIN_1, GPIO_PIN_1);
}

void PWM_Disable_3()
{
	TimerDisable(TIMERA2_BASE, TIMER_B);
	GPIOPinWrite(GPIOA1_BASE, GPIO_PIN_7, GPIO_PIN_7);

}

void PWM_Set1(char temp)
{
	if(temp>100)
		temp=100;
	if(temp<=0)
		temp=0;
       TimerMatchSet(TIMERA2_BASE, TIMER_B, temp*((8000-1)/100));

}

void PWM_Set2(char temp)
{
	if(temp>100)
		temp=100;
	if(temp<=0)
		temp=0;
    TimerMatchSet(TIMERA3_BASE, TIMER_A, temp*((8000-1)/100));

}

void PWM_Set3(char temp)
{
	if(temp>100)
		temp=100;
	if(temp<=0)
		temp=0;
    TimerMatchSet(TIMERA3_BASE, TIMER_B, temp*((8000-1)/100));
}

/*void PWM_Set(double temp)
{
 //   double b = (temp > 0.5) ? (1 - 0.75 * temp) : 0.75 * temp;
 //   TimerMatchSet(TIMERA2_BASE, TIMER_B, temp * 53000); //RED
 //   TimerMatchSet(TIMERA3_BASE, TIMER_A, (1 - temp) * 53000); // GREEN
 //   TimerMatchSet(TIMERA3_BASE, TIMER_B, b* 53000);


    if(temp < 0.5)
    {
        TimerMatchSet(TIMERA2_BASE, TIMER_B, 0);
        TimerMatchSet(TIMERA3_BASE, TIMER_A, (0.5 - temp) * 2 * 53300);
        TimerMatchSet(TIMERA3_BASE, TIMER_B, temp * 53300);
    }
    else
    {
        TimerMatchSet(TIMERA2_BASE, TIMER_B, (temp - 0.5) * 2 * 53300);
        TimerMatchSet(TIMERA3_BASE, TIMER_A, 0);
        TimerMatchSet(TIMERA3_BASE, TIMER_B, (1 - temp) * 53300);
    }
}
*/
