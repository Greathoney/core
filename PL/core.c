#include <stdio.h>
#include <stdlib.h>
#include "xil_printf.h"

#include "xil_exception.h"
#include "xil_io.h"
#include "xparameters.h"

#include "xscugic.h"


#include "pushbutton.h"
#include "textlcd_2.h"

#include "sleep.h"

#define INTC_DEVICE_ID		XPAR_SCUGIC_0_DEVICE_ID
#define INTC_DEVICE_INT_ID	31

/* Fixed Parameter */
#define DISPLAY_WIDTH = 480;
#define DISPLAY_HEIGHT = 272;
#define STAGE_WIDTH = 100;
#define STAGE_HEIGHT = 10;
#define BALL_SIZE = 10;
#define SPIKE_SIZE = 10;
#define BALL_OFFSET = 10;

int GicConfigure(u16 DeviceId);
void ServiceRoutine(void *CallbackRef); //

XScuGic InterruptController; 	     // Instance of the Interrupt Controller
static XScuGic_Config *GicConfig;    // The configuration parameters of the controller

/* Customizable Parameter */
const int fps_delay = 33000;  // unit: micro second

/* Global Variables */
int is_button1_pushed = 0;
int is_button2_pushed = 0;
int is_button3_pushed = 0;
int is_button4_pushed = 0;

int game_mode = 0;  // 0: game ready, 1: game playing 2: game over
int game_score = 0;  // unit: 1/30 second
int game_count = 0;  // how many game

typedef struct rgb{
    int R; // 0 ~ 31
    int G; // 0 ~ 63
    int B; // 0 ~ 31
}rgb_t;

short int compile_rgb(rgb_t rgb_data){
    return (rgb_data.B << 11 | rgb_data.G << 5 | rgb_data.R);
}

typedef struct game{
    int is_game_exist;

	int stage_x_position;
	int stage_y_position;

    double ball_y_position;
    double ball_y_speed;
    int is_ball_jumping;

    int is_spike_exist;
    double spike_x_position;
    double spike_x_speed;

    int game_number;
    rgb_t game_background_color; // TODO: change 16bit
} game_t;

game_t games[4];

/* game functions */
void game_check(game_t *game){

	if(game.is_game_exist){
		if( ((game.stage_x_position + BALL_OFFSET - BALL_SIZE) <= game.spike_x_position < (game.stage_x_position + BALL_OFFSET + BALL_SIZE))
			&& (game.ball_y_position + BALL_SIZE) > (game.stage_y_position - SPIKE_SIZE)){
			game_mode = 2;
		}
	}

	if(!game.is_spike_exist){
		game.is_spike_exist = ((rand()%2) == 1));
		game.spike_x_position = game.stage_x_position + STAGE_WIDTH - SPIKE_SIZE;
		game.spike_x_speed = 2; // �냼�닔 蹂��솚 �븘�슂
	}
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
				//Text lcd game play
				xil_printf("\r\nS1 Switch is pushed\r\n");
				TEXTLCD_2_mWriteReg(XPAR_TEXTLCD_2_0_S00_AXI_BASEADDR, 0, 0x00000005);
				TEXTLCD_2_mWriteReg(XPAR_TEXTLCD_2_0_S00_AXI_BASEADDR, 0, 0x00000001);

                for (int i=0; i < 4; i++){
                    games[i].is_game_exist = 0;

					games[i].stage_x_position = 0;
					games[i].stage_y_position = 0;

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
				main_background_color.R = 31;
				main_background_color.G = 0;
				main_background_color.B = 0;
				for (int i = 0; i < 272; i++){
					for (int j = 0; j < 480; j++){ // make default background white
						Xil_Out32(XPAR_TFTLCD_0_S00_AXI_BASEADDR + (j + 480*i)*4, compile_rgb(main_background_color));
					}
				}
				paint_background = 1;
			}
        }
        else if (game_mode == 1) {
            /* Game Logic */
            game_score++;

			switch (game_count){	// stage position for total game number
				case 1:
					games[0].stage_x_position = (DISPLAY_WIDTH - STAGE_WIDTH) / 2;
					games[0].stage_y_position = (DISPLAY_HEIGHT - STAGE_HEIGHT) / 2;
					break;
				case 2:
					games[0].stage_x_position = ((DISPLAY_WIDTH / 2) - STAGE_WIDTH)) / 2;
					games[1].stage_x_position = (DISPLAY_WIDTH - (DISPLAY_WIDTH / 4)) - (STAGE_WIDTH / 2);
					games[1].stage_y_position = (DISPLAY_HEIGHT - STAGE_HEIGHT) / 2;
					break;
				case 3:
					games[0].stage_y_position = (DISPLAY_HEIGHT / 4) - (STAGE_HEIGHT / 2);
					games[2].stage_x_position = (DISPLAY_WIDTH - STAGE_WIDTH) / 2;
					games[2].stage_y_position = (DISPLAY_HEIGHT - (DISPLAY_HEIGHT / 4)) - (STAGE_HEIGHT / 2);
					break;
				case 4:
					games[1].stage_y_position = (DISPLAY_HEIGHT / 4) - (STAGE_HEIGHT / 2);
					games[3].stage_x_position = (DISPLAY_WIDTH - (DISPLAY_WIDTH / 4)) - (STAGE_WIDTH / 2);
					games[3].stage_y_position = (DISPLAY_HEIGHT - (DISPLAY_HEIGHT / 4)) - (STAGE_HEIGHT / 2);
					break;
				default:
					break;
			}

			for (int i = 0; i < 4; i++){
                /* functions */
                game_check(&games[i]);
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

        usleep(fps_delay);     // 1/30 sec (=33msec)
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
	char pb;

	pb = PUSHBUTTON_mReadReg(XPAR_PUSHBUTTON_0_S00_AXI_BASEADDR, 0);

	PUSHBUTTON_mWriteReg(XPAR_PUSHBUTTON_0_S00_AXI_BASEADDR, 0, 0);

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

