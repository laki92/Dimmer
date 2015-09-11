################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
ADC_my.obj: ../ADC_my.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/inc" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common" --define=cc3200 --define=SL_PLATFORM_MULTI_THREADED --define=USE_FREERTOS --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="ADC_my.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Flash.obj: ../Flash.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/inc" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common" --define=cc3200 --define=SL_PLATFORM_MULTI_THREADED --define=USE_FREERTOS --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="Flash.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

gpio_if.obj: C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common/gpio_if.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/inc" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common" --define=cc3200 --define=SL_PLATFORM_MULTI_THREADED --define=USE_FREERTOS --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="gpio_if.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/inc" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common" --define=cc3200 --define=SL_PLATFORM_MULTI_THREADED --define=USE_FREERTOS --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="main.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pinmux.obj: ../pinmux.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/inc" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common" --define=cc3200 --define=SL_PLATFORM_MULTI_THREADED --define=USE_FREERTOS --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="pinmux.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pwm.obj: ../pwm.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/inc" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common" --define=cc3200 --define=SL_PLATFORM_MULTI_THREADED --define=USE_FREERTOS --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="pwm.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

smartconfig.obj: ../smartconfig.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/inc" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common" --define=cc3200 --define=SL_PLATFORM_MULTI_THREADED --define=USE_FREERTOS --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="smartconfig.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

startup_ccs.obj: C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common/startup_ccs.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/inc" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common" --define=cc3200 --define=SL_PLATFORM_MULTI_THREADED --define=USE_FREERTOS --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="startup_ccs.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

timer_if.obj: C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common/timer_if.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/inc" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common" --define=cc3200 --define=SL_PLATFORM_MULTI_THREADED --define=USE_FREERTOS --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="timer_if.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

uart_if.obj: C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common/uart_if.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/inc" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common" --define=cc3200 --define=SL_PLATFORM_MULTI_THREADED --define=USE_FREERTOS --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="uart_if.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


