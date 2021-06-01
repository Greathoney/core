#include <stdio.h>
#include <stdlib.h>
#include "xil_exception.h"
#include "xparameters.h"
#include "xscugic.h"
#include "pushbutton.h"
#include "sleep.h"
#include "textlcd_2.h"

#define INTC_DEVICE_ID		XPAR_SCUGIC_0_DEVICE_ID
#define INTC_DEVICE_INT_ID	31

int GicConfigure(u16 DeviceId);
void ServiceRoutine(void *CallbackRef); //

XScuGic InterruptController; 	     // Instance of the Interrupt Controller
static XScuGic_Config *GicConfig;    // The configuration parameters of the controller

int main(void)
{
	int Status;

	xil_printf("Interrupt Test\r\n");

	/*
	 *  Run the Gic configure, specify the Device ID generated in xparameters.h
	 */
	Status = GicConfigure(INTC_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("GIC Configure Failed\r\n");
		return XST_FAILURE;
	}
	// Main loop
	while(TRUE){

		sleep(1);
		xil_printf("main loop\r\n");
	}

	return XST_SUCCESS;
}

// 인터럽트 사용을 위해 Gic를 초기화하는 함수
// 따로 건들필요 없음
int GicConfigure(u16 DeviceId)
{
	int Status;

	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	GicConfig = XScuGic_LookupConfig(DeviceId);
	if (NULL == GicConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(&InterruptController, GicConfig,
					GicConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the ARM processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler) XScuGic_InterruptHandler,
			&InterruptController);

	/*
	 * Enable interrupts in the ARM
	 */
	Xil_ExceptionEnable();

	/*
	 * Connect a device driver handler that will be called when an
	 * interrupt for the device occurs, the device driver handler performs
	 * the specific interrupt processing for the device
	 */
	Status = XScuGic_Connect(&InterruptController, INTC_DEVICE_INT_ID,
			   (Xil_ExceptionHandler)ServiceRoutine,
			   (void *)&InterruptController);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Enable the interrupt for the device and then cause (simulate) an
	 * interrupt so the handlers will be called
	 */
	XScuGic_Enable(&InterruptController, INTC_DEVICE_INT_ID);

	return XST_SUCCESS;
}
// 인터럽트가 발생하면 메인함수로부터 호출 되어 실행되는 서비스 루틴
void ServiceRoutine(void *CallbackRef)
{
	char pb; //푸쉬버튼

	pb = PUSHBUTTON_mReadReg(XPAR_PUSHBUTTON_0_S00_AXI_BASEADDR, 0); //푸쉬버튼 레지스터 값 읽기

	PUSHBUTTON_mWriteReg(XPAR_PUSHBUTTON_0_S00_AXI_BASEADDR, 0, 0); //푸쉬버튼 레지스터 값 0으로 초기화 (메인함수로 돌아가기 위해)

	if ((pb & 1) == 1){
		xil_printf("S1 Switch is pushed\r\n");
		TEXTLCD_2_mWriteReg(XPAR_TEXTLCD_2_0_S00_AXI_BASEADDR, 0, 0x00000000);
	}
	else if ((pb & 2) == 2){
		xil_printf("S2 Switch is pushed\r\n");
		TEXTLCD_2_mWriteReg(XPAR_TEXTLCD_2_0_S00_AXI_BASEADDR, 0, 0x00000005);
		TEXTLCD_2_mWriteReg(XPAR_TEXTLCD_2_0_S00_AXI_BASEADDR, 0, 0x00000001);
	}
	else if ((pb & 4) == 4){
		xil_printf("S3 Switch is pushed\r\n");
		TEXTLCD_2_mWriteReg(XPAR_TEXTLCD_2_0_S00_AXI_BASEADDR, 0, 0x00000001);
	}
	else if ((pb & 8) == 8){
		xil_printf("S4 Switch is pushed\r\n");
		TEXTLCD_2_mWriteReg(XPAR_TEXTLCD_2_0_S00_AXI_BASEADDR, 0, 0x00000002);
	}
}
