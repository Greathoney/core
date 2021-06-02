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

/* Customizable Parameter */
const fps_delay = 330000;  // unit: micro second

struct rgb{
    int R;
    int G;
    int B;
}rgb_t;

short short int complie_rgb(rgb_t rgb_data){
    return (B < 11 | G | R);
}

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

game_t games[4];

/* game functions */
void game_check(game_t *game){
// 가시 닿았냐(game_t *game)
// 공 위치 변화하기(game_t *game)
}


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


    /* Customizable Local Parameter */
    rgb_t ball_color;
    ball_color.R = 0;
    ball_color.G = 0;
    ball_color.B = 0;

    rgb_t stage_color;
    stage_color.R = 0;
    stage_color.G = 0;
    stage_color.B = 0;

    rgb_t background_color[4];
    for (int i = 0; i < 4; i++){
        background_color[i].R = 63;
        background_color[i].G = 127;
        background_color[i].B = 63;
    }



    /* Game Loop */
	int Data;
	int paint_background = 0;

    while (1) {
        if (game_mode == 0) {
        /* Game Logic */
			if (is_button1_pushed == 1){
                /* Variable init */

                
                for (int i=0; i < 4; i++){
                    games[i].is_game_exist = 0;

                    games[i].ball_y_position = 0;
                    games[i].ball_y_speed = 0;
                    games[i].is_ball_jumping = 0;

                    games[i].is_spike_exist = 0;
                    games[i].spike_x_position = 0;
                    games[i].spike_x_speed = 0;

                    games[i].game_number = i;
                    games[i].game_background_color = background_color[i];
                }


				game_mode = 1;
			}

        /* text lcd Display */

        /* tft lcd Display */
			if(paint_background == 0){
				rgb_t main_background_color;
				main_background_color.R = 0;
				main_background_color.G = 0;
				main_background_color.B = 0;
				for (i = 0; i < 272; i++){
					for (j = 0; j < 480; j++){ // make default background white
						Xil_Out32(XPAR_TFTLCD_0_S00_AXI_BASEADDR + (j + 480*i)*4, complie_rgb(main_background_color));
					}
				}
				paint_background = 1;
			}
        }
        else if (game_mode == 1) {
            /* Game Logic */
            game_score++;
            
            for (int i = 0; i < 4; i++){
                /* functions */
                game_check(games[i])
            }
            

            /* text lcd Display */

            /* tft lcd Display */
        }
        else {  // game_mode == 2
            /* Game Logic */

            /* text lcd Display */

            /* tft lcd Display */
        }
		
		is_button1_pushed = 0;
		is_button2_pushed = 0;
		is_button3_pushed = 0;
		is_button4_pushed = 0;

        usleep(fps_delay);
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
