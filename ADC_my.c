#include "adc.h"
#include "hw_memmap.h"

void ReadADC3(long *value){
	char j=0;
	j=ADCFIFOLvlGet(ADC_BASE, ADC_CH_3);
	//UART_PRINT("j%d\n\r",j);
	while(j){
		*value+=ADCFIFORead(ADC_BASE, ADC_CH_3);
		j--;
	}
	*value/=4;
}
