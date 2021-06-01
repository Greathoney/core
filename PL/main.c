#include <stdio.h>
#include <stdlib.h>
#include "xil_printf.h"

#include "xil_exception.h"
#include "xil_io.h"
#include "xparameters.h"

#include "xscugic.h"
#include "ff.h"

#include "pushbutton.h"
#include "textlcd_2.h"

#include "sleep.h"

/* Global Variables */
int is_button1_pushed = 0;
int is_button2_pushed = 0;
int is_button3_pushed = 0;
int is_button4_pushed = 0;

int game_mode = 0;  // 0: game ready, 1: game playing 2: game over
int game_score = 0;  // unit: 1/30 second
int game_count = 0;  // how many game

int ball_color = 0x0000000000000000;
int stage_color = 0x0000000000000000;
game_t games[4];

struct game{
    int is_game_exist;

    double ball_y_position;
    double ball_y_speed;
    int is_ball_jumping;
    
    int is_spike_exist;
    double spike_x_position;
    double spike_x_speed;

    int game_number;
    int game_background_color; // TODO: change 16bit
} game_t;


int main(void)
{
    /* buttion initlization */
    int Status;

    Status = GicConfigure(INTC_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("GIC Configure Failed\r\n");
		return XST_FAILURE;
	}

    /* text lcd initlization */



    /* tft lcd initlization */

    /* Game initlization */

    for (int i=0; i < 4; i++){
        games[i].is_game_exist = 0;

        games[i].ball_y_position = 0;
        games[i].ball_y_speed = 0;
        games[i].is_ball_jumping = 0;

        games[i].is_spike_exist = 0;
        games[i].spike_x_position = 0;
        games[i].spike_x_speed = 0;
        
        games[i].game_number = i;
        games[i].game_background_color = 0x1111111111111111;
    }

    /* Game Loop */
    while (1) {
        /* Game Logic */

        /* text lcd Display */

        /* tft lcd Display */

    }

    return 0;
}

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

void ServiceRoutine(void *CallbackRef)
{
	char pb; //Ǫ����ư

	pb = PUSHBUTTON_mReadReg(XPAR_PUSHBUTTON_0_S00_AXI_BASEADDR, 0); //Ǫ����ư �������� �� �б�

	PUSHBUTTON_mWriteReg(XPAR_PUSHBUTTON_0_S00_AXI_BASEADDR, 0, 0); //Ǫ����ư �������� �� 0���� �ʱ�ȭ (�����Լ��� ���ư��� ����)

	if ((pb & 1) == 1){
        is_button1_pushed = 1;
	}
	else if ((pb & 2) == 2){
        is_button2_pushed = 1;
	}
	else if ((pb & 4) == 4){
        is_button3_pushed = 1;
	}
	else if ((pb & 8) == 8){
        is_button4_pushed = 1;
	}
}
