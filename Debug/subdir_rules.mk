################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
gpio_if.obj: C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common/gpio_if.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/bin/armcl" -mv4 --code_state=32 --abi=ti_arm9_abi --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/inc" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/oslib" -g --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --define=ccs --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="gpio_if.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/bin/armcl" -mv4 --code_state=32 --abi=ti_arm9_abi --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/inc" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/oslib" -g --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --define=ccs --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="main.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pinmux.obj: ../pinmux.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/bin/armcl" -mv4 --code_state=32 --abi=ti_arm9_abi --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/inc" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/oslib" -g --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --define=ccs --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="pinmux.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

smartconfig.obj: ../smartconfig.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/bin/armcl" -mv4 --code_state=32 --abi=ti_arm9_abi --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/inc" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/oslib" -g --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --define=ccs --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="smartconfig.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

startup_ccs.obj: C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common/startup_ccs.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/bin/armcl" -mv4 --code_state=32 --abi=ti_arm9_abi --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/inc" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/oslib" -g --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --define=ccs --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="startup_ccs.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

uart_if.obj: C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common/uart_if.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/bin/armcl" -mv4 --code_state=32 --abi=ti_arm9_abi --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/inc" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="C:/TI/CC3200SDK_1.1.0/cc3200-sdk/oslib" -g --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --define=ccs --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="uart_if.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


