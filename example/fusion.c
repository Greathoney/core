#include <stdio.h>
#include <stdlib.h>
#include "xil_exception.h"
#include "xparameters.h"
#include "xscugic.h"
#include "pushbutton.h"
#include "sleep.h"
#include "textlcd_2.h"

#include "xil_printf.h"
#include "xil_io.h"
#include "ff.h"


#define INTC_DEVICE_ID		XPAR_SCUGIC_0_DEVICE_ID
#define INTC_DEVICE_INT_ID	31

int GicConfigure(u16 DeviceId);
void ServiceRoutine(void *CallbackRef); //

XScuGic InterruptController; 	     // Instance of the Interrupt Controller
static XScuGic_Config *GicConfig;    // The configuration parameters of the controller

int main(void)
{
	int Status;

    int Data;
    int R;
    int G;
    int flag = 0;
    int B;

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
	while(1){
		xil_printf("main loop\r\n");
        for (int i = 0; i < 272; i++){
			for (int j = 0; j < 240; j++){
				// 1
	//			Data = (int)buffer[j + 240*i] & 0x0000ffff;
	//    		Data = 0;
				//xil_printf("1. Data:%08x\n", Data);
	//			R = (Data >> 11) & 0x0000001f;
	//			G = Data & 0x000007E0;
	//			B = Data & 0x0000001f;
				if (flag == 0){
					R = 0x0000001f;
					G = 0x000007E0;
					B = 0x0000001f;
				}
				else{
					R = 0;
					G = 0;
					B = 0;
				}

				Data = (B<<11)| G | R;
				//xil_printf("2. R:%08x, G:%08x, B:%08x, Data:%08x\n", R, G, B, Data);
				Xil_Out32(XPAR_TFTLCD_0_S00_AXI_BASEADDR + (2*j + 480*i)*4, Data);

				// 2
	//			Data = (int)buffer[j + 240*i] >> 16;
				Data = 0;

				//xil_printf("3. Data:%08x\n", Data);

	//			R = (Data >> 11) & 0x0000001f;
	//			G = Data & 0x000007E0;
	//			B = Data & 0x0000001f;
				if (flag == 0){
					R = 0x0000001f;
					G = 0x000007E0;
					B = 0x0000001f;
				}
				else{
					R = 0;
					G = 0;
					B = 0;
				}

				Data = (B<<11)| G | R;
				//xil_printf("4. R:%08x, G:%08x, B:%08x, Data:%08x\n", R, G, B, Data);
				Xil_Out32(XPAR_TFTLCD_0_S00_AXI_BASEADDR + (1 + 2*j + 480*i)*4, Data);
			}
		}
		
		if (flag == 1){
			flag = 0;
		}
		else {
			flag = 1;
		}

		
		sleep(1);
	}

	return XST_SUCCESS;
}

// ���ͷ�Ʈ ����� ���� Gic�� �ʱ�ȭ�ϴ� �Լ�
// ���� �ǵ��ʿ� ����
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
// ���ͷ�Ʈ�� �߻��ϸ� �����Լ��κ��� ȣ�� �Ǿ� ����Ǵ� ���� ��ƾ
void ServiceRoutine(void *CallbackRef)
{
	char pb; //Ǫ����ư

	pb = PUSHBUTTON_mReadReg(XPAR_PUSHBUTTON_0_S00_AXI_BASEADDR, 0); //Ǫ����ư �������� �� �б�

	PUSHBUTTON_mWriteReg(XPAR_PUSHBUTTON_0_S00_AXI_BASEADDR, 0, 0); //Ǫ����ư �������� �� 0���� �ʱ�ȭ (�����Լ��� ���ư��� ����)

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
