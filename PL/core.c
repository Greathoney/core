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


int GicConfigure(u16);
void ServiceRoutine(void *);

XScuGic InterruptController; 	     // Instance of the Interrupt Controller
static XScuGic_Config *GicConfig;    // The configuration parameters of the controller

#define INTC_DEVICE_ID		XPAR_SCUGIC_0_DEVICE_ID
#define INTC_DEVICE_INT_ID	31

/* data formats */
typedef struct rgb{
    int R; // 0 ~ 31
    int G; // 0 ~ 63
    int B; // 0 ~ 31
}rgb_t;

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
    rgb_t game_background_color;
} game_t;

/* Fixed Parameter */
#define DISPLAY_WIDTH 480
#define DISPLAY_HEIGHT 272

/* Customizable Parameter */
const int fps_delay = 33000;  // unit: micro second

const int ball_color[3] = { 31, 63, 31 };  // { R(0~31), G(0~63), B(0~31)}
const int stage_color[3] = { 31, 63, 31 };

const int background_color_mode_0[3] = { 31, 63, 31 };
const int background_color_mode_1[4][3] = { { 15,  0,  0 },  // game section 1 { R, G, B }
										   {  0, 31,  0 },  // game section 2 { R, G, B }
										   {  0,  0, 15 },	// ...
										   {  0,  0,  0 } };
const int background_color_mode_2[3] = { 0, 0, 0 };

const int stage_position[4][4][2] = { { { DISPLAY_WIDTH / 4, DISPLAY_HEIGHT / 4 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },   // when game_count 1
									  { {  0, DISPLAY_HEIGHT / 4 }, { DISPLAY_WIDTH / 2, DISPLAY_HEIGHT / 4 }, { -1,  -1 }, { -1, -1 } },   // when game_count 2
									  { {  0, 0 }, { DISPLAY_WIDTH / 2, DISPLAY_HEIGHT / 4 }, { 0, DISPLAY_HEIGHT / 2 }, { -1, -1 } },   // when game_count 3
									  { {  0, 0 }, { DISPLAY_WIDTH / 2, 0 }, { 0, DISPLAY_HEIGHT / 2 }, { DISPLAY_WIDTH / 2, DISPLAY_HEIGHT / 2 } } };  // when game_count 4
const int stage_size[2] = { 240, 136 };

const int stage_position[2] = { 40, 96 };
const int stage_size[2] = { 160, 20 };

const int ball_position[2] = { 50, 86 };
const int ball_size[2] = { 10, 10 };

const int spike_position[2] = { 190, 86 };
const int spike_size[2] = { 10, 10 };
const int spike_path_length = 150;

double jump_ball_speed = 2;
double ball_gravity = 0.1;

/* Global Variables */
int is_button_pushed[4] = { 0, 0, 0, 0 };

int playtime;
int game_mode = 0;  // 0: game ready, 1: game playing 2: game over
int game_count = 0;  // how many game

int is_background_paint = 0;  // flag variable

game_t games[4];

/* Functions */
void game_mode_0();
void game_mode_1();
void game_mode_2();
void draw_square(int, int, int, int, rgb_t);
void redraw_square(int, int, int, int, rgb_t, int, int, int, int, rgb_t);
int compile_rgb(rgb_t);
void game_check(game_t *);
void ball_jump_check(game_t *);
void is_spike_touched(game_t *);
void change_ball_position(game_t *);
void generate_spike(game_t *);
void remove_spike(game_t *);
void change_spike_position(game_t *);

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

    /* Game Loop */
    while (1) {
        if (game_mode == 0) {
			game_mode_0();
        }
        else if (game_mode == 1) {
			game_mode_1();
        }
        else {  // game_mode == 2
			game_mode_2();
        }
		for (int i = 0; i < 4; i++){
			is_button_pushed[i] = 0;
		}
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
        is_button_pushed[0] = 1;
	}
	else if ((pb & 2) == 2){
        is_button_pushed[1] = 1;
	}
	else if ((pb & 4) == 4){
        is_button_pushed[2] = 1;
	}
	else if ((pb & 8) == 8){
        is_button_pushed[3] = 1;
	}
}

void game_mode_0(){
	/* Game Logic */
	if (is_button_pushed[0] == 1){
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
		is_background_paint = 0;
	}

	/* text lcd Display */

	/* tft lcd Display */
	if(is_background_paint == 0){
		rgb_t background_color;
		background_color.R = background_color_mode_0[0];
		background_color.G = background_color_mode_0[1];
		background_color.B = background_color_mode_0[2];

		draw_square(0, 0, DISPLAY_WIDTH, DISPLAY_HEIGHT, background_color);

		is_background_paint = 1;
	}
}

void game_mode_1(){
	/* Game Logic */
	playtime = TEXTLCD_2_mReadReg(XPAR_TEXTLCD_2_0_S00_AXI_BASEADDR, 4);
	playtime = ( (playtime & 0x00000F00) >> 8 )*60 +( (playtime & 0x000000F0) >> 4 )*10 +(playtime & 0x0000000F);
	xil_printf("playtime : (16 radix)%xsec (10 radix)%dsec \r\n",playtime);

	// switch (game_count){	// stage position for total game number
	// 	case 1:
	// 		games[0].stage_x_position = (DISPLAY_WIDTH - STAGE_WIDTH) / 2;
	// 		games[0].stage_y_position = (DISPLAY_HEIGHT - STAGE_HEIGHT) / 2;
	// 		break;
	// 	case 2:
	// 		games[0].stage_x_position = ((DISPLAY_WIDTH / 2) - STAGE_WIDTH)) / 2;
	// 		games[1].stage_x_position = (DISPLAY_WIDTH - (DISPLAY_WIDTH / 4)) - (STAGE_WIDTH / 2);
	// 		games[1].stage_y_position = (DISPLAY_HEIGHT - STAGE_HEIGHT) / 2;
	// 		break;
	// 	case 3:
	// 		games[0].stage_y_position = (DISPLAY_HEIGHT / 4) - (STAGE_HEIGHT / 2);
	// 		games[2].stage_x_position = (DISPLAY_WIDTH - STAGE_WIDTH) / 2;
	// 		games[2].stage_y_position = (DISPLAY_HEIGHT - (DISPLAY_HEIGHT / 4)) - (STAGE_HEIGHT / 2);
	// 		break;
	// 	case 4:
	// 		games[1].stage_y_position = (DISPLAY_HEIGHT / 4) - (STAGE_HEIGHT / 2);
	// 		games[3].stage_x_position = (DISPLAY_WIDTH - (DISPLAY_WIDTH / 4)) - (STAGE_WIDTH / 2);
	// 		games[3].stage_y_position = (DISPLAY_HEIGHT - (DISPLAY_HEIGHT / 4)) - (STAGE_HEIGHT / 2);
	// 		break;
	// 	default:
	// 		break;
	// }

	// TODO: 시간이 다 되어 game_count가 변해야 하는지 체크, is_background_paint = 0으로 만들어주는 구문 작성

	for (int i = 0; i < 4; i++){
		if (games[i].is_game_exist) {
			game_check(&games[i]);
		}
	}

	/* text lcd Display */

	/* tft lcd Display */
	if (is_background_paint == 0){
		// game_mode 또는 game_count 가 바뀌어 완전히 새로 그리게 될 때 여기서 한번 전체적으로 그려주게 된다.
		// TODO: 현재 선언된 변수와 함수로 그리기

		is_background_paint = 1;
	}
}

void game_mode_2(){
	// TODO: mode 2 구현하기
	// 게임 화면은 그대로 멈추게 되고, txtlcd를 통해서 점수나 현재 상황을 표시합니다.
	// 그리고 버튼을 누르면 game mode 0 로 돌아가게 됩니다.

	/* Game Logic */

	/* text lcd Display */

	/* tft lcd Display */

}

void draw_square(int start_pos_X, int start_pos_Y, int length_X, int length_Y, rgb_t color){
	for (int i = start_pos_Y; i < length_Y; i++) {
		for (int j = start_pos_X; j < length_X; j++) {
			Xil_Out32(XPAR_TFTLCD_0_S00_AXI_BASEADDR + (j + 480*i)*4, compile_rgb(color));
		}
	}
}

void redraw_square(int draw_start_pos_X, int draw_draw_start_pos_Y, int draw_length_X, int draw_length_Y, rgb_t draw_color,  // 새롭게 그릴 사각형
				   int delete_start_pos_X, int delete_draw_start_pos_Y, int delete_length_X, int delete_length_Y, rgb_t background_color){  // 이미 그려져서 배경화면 색으로 덮을 사각형

	draw_square(delete_start_pos_X, delete_draw_start_pos_Y, delete_length_X, delete_length_Y, background_color);
	draw_square(draw_start_pos_X, draw_draw_start_pos_Y, draw_length_X, draw_length_Y, draw_color);


}

int compile_rgb(rgb_t rgb_data){
    return (rgb_data.B << 11 | rgb_data.G << 5 | rgb_data.R);
}

void game_check(game_t *game){
	is_spike_touched(game);
	ball_jump_check(game);
	change_ball_position(game);
	if (!game->is_game_exist){
		generate_spike(game);
	}
	else {
		remove_spike(game);
	}

	change_spike_position(game);
}

void ball_jump_check(game_t *game){
	if (is_button_pushed[game->game_number] = 1 && games[i]->is_ball_jumping == 0){
		games[i]->is_ball_jumping = 1;
		games[i]->ball_y_speed = jump_ball_speed;
	}
}

void is_spike_touched(game_t *game){
	// TODO: 현재 선언한 변수로 논의된 로직으로 코드 작성 부탁드립니다.
	// if( ((game->stage_x_position + BALL_OFFSET - BALL_SIZE) <= game->spike_x_position < (game->stage_x_position + BALL_OFFSET + BALL_SIZE))
	// 	&& (game->ball_y_position + BALL_SIZE) > (game->stage_y_position - SPIKE_SIZE)){
	// 	game_mode = 2;
}

void change_ball_position(game_t *game){
	if(game->is_ball_jumping){
		game->ball_y_position += game->ball_y_speed;
		// 만일 ball position이 한 픽셀 움직이게 될 경우 해당 구역만 지우고 다시 그린다.
		// TODO: 조건문과 입력 변수 채워 넣기
		game->ball_y_speed -= ball_gravity;
		if (0) {
			redraw_sqaure();
		}

		else if(game->ball_y_position >= game->stage_y_position){
			game->ball_y_position = game->stage_y_position;
			game->is_ball_jumping = 0;
		}
	}
}

void generate_spike(game_t *game){
	// TODO: 가시 생성 아래 주석을 참고하여 코드 작성 부탁드립니다.
	// 가시는 랜덤하게 생성함
	// 가시의 속도도 랜덤

	// 아래 조건문은 상위 함수에서 작성함
	// if(!game->is_spike_exist){
	// 	game->is_spike_exist = ((rand()%2) == 1));
	// 	game->spike_x_position = game->stage_x_position + STAGE_WIDTH - SPIKE_SIZE;
	// 	game->spike_x_speed = 0.7;
	// }
}

void remove_spike(game_t *game){
	// spike_x_position은 계속해서 작아져서 spike_path_length(현재 150) 만큼 가게 되고 이 이후로는 가시가 사라지게 됩니다.
	// TODO: 현재 선언된 변수를 이용하여 다시 작성부탁드립니다.
	// if(game->spike_x_position < game->stage_x_position){
	// 	game->is_spike_exist = 0;
	// }
}

void change_spike_position(game_t *game){
	// spike_x_position은 0에서 시작하여 계속해서 작아집니다.

	game->spike_x_position -= game->spike_x_speed;
	// 만일 spike position이 한 픽셀 움직이게 될 경우 해당 구역만 지우고 다시 그린다.
	// TODO: 조건문과 입력 변수 채워 넣기
	if (0) {
		redraw_sqaure();
	}
}
