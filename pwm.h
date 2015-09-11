#ifndef _PWM_H_INCLUDED
#define _PWM_H_INCLUDED

unsigned char PWM_Init(unsigned int fpwm);
void PWM_Disable_1();
void PWM_Disable_2();
void PWM_Disable_3();
void PWM_Set1(char a);
void PWM_Set2(char a);
void PWM_Set3(char a);

#endif
