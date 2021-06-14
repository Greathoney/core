#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "xil_printf.h"
#include "xil_exception.h"
#include "xil_io.h"
#include "xparameters.h"
#include "xscugic.h"

#include "pushbutton.h"
#include "textlcd_2.h"

#include "sleep.h"
//////////////////////////////////////////////////////////
////////////////인터럽트를 위한 함수와 변수 ///////////////////////
int GicConfigure(u16);
void ServiceRoutine(void *);
XScuGic InterruptController;
static XScuGic_Config *GicConfig;

#define INTC_DEVICE_ID		XPAR_SCUGIC_0_DEVICE_ID
#define INTC_DEVICE_INT_ID	31
//////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////

/* data formats */
typedef struct rgb{
    int R; // 0 ~ 31
    int G; // 0 ~ 63
    int B; // 0 ~ 31
}rgb_t;


typedef struct game{
    int is_game_exist;

    double ball_y_position;  // 시작 좌표는 항상 0
    double ball_y_speed;
    int is_ball_jumping;

    int is_spike_exist;
    double spike_x_position;  // 시작 좌표는 항상 0, 감소
    double spike_x_speed;  // 항상 음수

    int game_number;
    rgb_t game_background_color;
} game_t;

/* Fixed Parameter */
#define DISPLAY_WIDTH 480
#define DISPLAY_HEIGHT 272

// 프레임간의 딜레이 시간
const int fps_delay = 33000;  // unit: micro second

const rgb_t ball_color = { 31, 63, 0 };
const rgb_t platform_color = { 31, 63, 31 };
const rgb_t spike_color = {31, 63, 31 };
const rgb_t background_color_mode_0 = { 31, 63, 31 };
const rgb_t background_color_mode_1[4] = { { 31, 0, 0 }, { 0, 63, 0 }, { 0, 0, 31 }, { 0, 0, 0 } };
const rgb_t background_color_mode_2 = { 0, 0, 0 };

// 배경 범위
const int background_position[4][4][2][2] = { { { { 0, 0 }, { DISPLAY_WIDTH, DISPLAY_HEIGHT } },
												  { { -1, -1 }, { -1, -1 } },
												  { { -1, -1 }, { -1, -1 } },
												  { { -1, -1 }, { -1, -1 } } },

										      { { { 0, 0 }, { DISPLAY_WIDTH/2, DISPLAY_HEIGHT } },
											    { { DISPLAY_WIDTH/2, 0 }, { DISPLAY_WIDTH/2, DISPLAY_HEIGHT } },
											    { { -1, -1 }, { -1, -1 } },
											    { { -1, -1 }, { -1, -1 } } },

											  { { { 0, 0 }, { DISPLAY_WIDTH/2, DISPLAY_HEIGHT/2 } },
											    { { DISPLAY_WIDTH/2, 0 }, { DISPLAY_WIDTH/2, DISPLAY_HEIGHT } },
												{ { 0, DISPLAY_HEIGHT/2 }, { DISPLAY_WIDTH/2, DISPLAY_HEIGHT/2 } },
												{ { -1, -1 }, { -1, -1 } } },

											  { { { 0, 0 }, { DISPLAY_WIDTH/2, DISPLAY_HEIGHT/2 } },
											    { { DISPLAY_WIDTH/2, 0 }, { DISPLAY_WIDTH/2, DISPLAY_HEIGHT/2 } },
												{ { 0, DISPLAY_HEIGHT/2 }, { DISPLAY_WIDTH/2, DISPLAY_HEIGHT/2 } },
												{ { DISPLAY_WIDTH/2, DISPLAY_HEIGHT/2 }, { DISPLAY_WIDTH/2, DISPLAY_HEIGHT/2 } } }


											};
// game count, game number, (position, length), (x, y)

// 각 stage의 set point
const int stage_position[4][4][2] = { { { DISPLAY_WIDTH/4, DISPLAY_HEIGHT/4 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
									  { { 0, DISPLAY_HEIGHT/4 }, { DISPLAY_WIDTH/2, DISPLAY_HEIGHT/4 }, { -1,  -1 }, { -1, -1 } },
									  { { 0, 0 }, { DISPLAY_WIDTH/2, DISPLAY_HEIGHT/4 }, { 0, DISPLAY_HEIGHT/2 }, { -1, -1 } },
									  { { 0, 0 }, { DISPLAY_WIDTH/2, 0 }, { 0, DISPLAY_HEIGHT/2 }, { DISPLAY_WIDTH/2, DISPLAY_HEIGHT/2 } } };
// game count, game number, (x, y)

const int stage_size[2] = { DISPLAY_WIDTH/2, DISPLAY_HEIGHT/2 };

const int platform_position[2] = { 40, 96 };
const int platform_size[2] = { 160, 20 };

const int ball_position[2] = { 50, 86 };
const int ball_size[2] = { 10, 10 };

const int spike_position[2] = { 190, 86 };
const int spike_size[2] = { 10, 10 };
const int spike_path_length = 150;  // 가시가 걸어다닐 총 길이
const double spike_speed = 1;  // function of generation spike
const int spike_probability = 300;  // use function of generate_spike

const double jump_ball_speed = 2;  // needs casting to integer
const double ball_gravity = 0.1;   // nees casting to integer

/* Global Variables */
int is_button_pushed[4] = { 0, 0, 0, 0 };

int playtime; // how much time play ( sec unit)
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
void draw_triangle(int, int, int, int, rgb_t);
void redraw_triangle(int, int, int, int, rgb_t, int, int, int, int, rgb_t);
void draw_circle(int, int, int, int, rgb_t);
void redraw_circle(int, int, int, int, rgb_t, int, int, int, int, rgb_t);
int compile_rgb(rgb_t);
void game_check(game_t *);
void change_ball_position(game_t *);
void ball_jump_check(game_t *);
void generate_spike(game_t *);
void change_spike_position(game_t *);
void is_spike_touched(game_t *);

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
		TEXTLCD_2_mWriteReg(XPAR_TEXTLCD_2_0_S00_AXI_BASEADDR, 0, 0x00000005);
		usleep(1000);
		TEXTLCD_2_mWriteReg(XPAR_TEXTLCD_2_0_S00_AXI_BASEADDR, 0, 0x00000001);
		//Text lcd game play
		xil_printf("\r\nS1 Switch is pushed\r\n");
		//playtime을 0인 상태로 유지


		for (int i=0; i < 4; i++){
			games[i].is_game_exist = 0;

			games[i].ball_y_position = 0;
			games[i].ball_y_speed = 0;
			games[i].is_ball_jumping = 0;

			games[i].is_spike_exist = 0;
			games[i].spike_x_position = 0;
			games[i].spike_x_speed = 0;

			games[i].game_number = i;
			games[i].game_background_color = background_color_mode_1[i];
		}
		game_mode = 1;
		is_background_paint = 0;
		games[0].is_game_exist = 1;
		game_count = 1;
		return;
	}

	/* text lcd Display */

	/* tft lcd Display */
	if(is_background_paint == 0){
		draw_square(0, 0, DISPLAY_WIDTH, DISPLAY_HEIGHT, background_color_mode_0);

		is_background_paint = 1;
	}
}

void game_mode_1(){
	/* Game Logic */
	playtime = TEXTLCD_2_mReadReg(XPAR_TEXTLCD_2_0_S00_AXI_BASEADDR, 4);
	playtime = ( (playtime & 0x00000F00) >> 8 )*60 +( (playtime & 0x000000F0) >> 4 )*10 +(playtime & 0x0000000F);
	//xil_printf("playtime : (16 radix)%xsec (10 radix)%dsec \r\n",playtime);

	if(playtime == 5 && game_count == 1) // playtime이 30초가 되고 game_count가 1개면 2개로 만들어준다.
	{
		game_count = 2;
		is_background_paint = 0;
		games[1].is_game_exist = 1;
	}
	else if(playtime == 10 && game_count == 2)// playtime이 60초가 되고 game_count가 2개면 3개로 만들어준다.
	{
		game_count = 3;
		is_background_paint = 0;
		games[2].is_game_exist = 1;
	}
	else if(playtime == 15 && game_count == 3)// playtime이 90초가 되고 game_count가 3개면 4개로 만들어준다.
	{
		game_count = 4;
		is_background_paint = 0;
		games[3].is_game_exist = 1;
	}


	for (int i = 0; i < 4; i++){
		if (games[i].is_game_exist) {
			game_check(&games[i]);
		}
	}

	/* text lcd Display */

	/* tft lcd Display */
	if (is_background_paint == 0){
		xil_printf("background paint \r\n");
		// game_mode 또는 game_count 가 바뀌어 완전히 새로 그리게 될 때 여기서 한번 전체적으로 그려주게 된다.
		for (int i = 0; i < game_count; i++){
			// Draw Background
			draw_square(
					background_position[game_count-1][i][0][0], background_position[game_count-1][i][0][1],
					background_position[game_count-1][i][1][0], background_position[game_count-1][i][1][1], games[i].game_background_color
					);
			// Draw Ball
			draw_circle(
					stage_position[game_count-1][i][0] + ball_position[0],
					stage_position[game_count-1][i][1] + ball_position[1] + (int)games[i].ball_y_position,
					ball_size[0], ball_size[1], ball_color
					);

			// Draw Spike
			if (games[i].is_spike_exist == 1)
				draw_triangle(
						stage_position[game_count-1][i][0] + spike_position[0] + (int)games[i].spike_x_position,
						stage_position[game_count-1][i][1] + spike_position[1],
						spike_size[0], spike_size[1], spike_color
						);

			// Draw Platform
			draw_square(
					stage_position[game_count-1][i][0] + platform_position[0],
					stage_position[game_count-1][i][1] + platform_position[1],
					platform_size[0], platform_size[1], platform_color
					);

		}

		is_background_paint = 1;
	}
}

void game_mode_2(){
	// TODO: mode 2 구현하기
	// 게임 화면은 그대로 멈추게 되고, txtlcd를 통해서 점수나 현재 상황을 표시합니다.
	// 그리고 버튼을 누르면 game mode 0 로 돌아가게 됩니다.
	is_background_paint = 0;
	if (is_background_paint == 0){
		TEXTLCD_2_mWriteReg(XPAR_TEXTLCD_2_0_S00_AXI_BASEADDR, 0, 0x00000002); // text lcd 화면에 gmae over 표시되며 동시에 시간이 멈춘다.

		is_background_paint = 1;
	}

	/* Game Logic */

	if(is_button_pushed[0] == 1) {
		TEXTLCD_2_mWriteReg(XPAR_TEXTLCD_2_0_S00_AXI_BASEADDR, 0, 0x00000000); // 첫번째 푸쉬버튼을 누르면 TEXT LCD 게임준비화면으로 돌아감
		game_mode = 0; // 첫번째 푸쉬버튼을 게임준비화면으로 넘어감
		is_background_paint = 0;
	}


	/* text lcd Display */

	/* tft lcd Display */
}
//TFT LCD가 원점 비대칭이므로 i,j 범위를 다르게 했음
//
void draw_square(int start_pos_X, int start_pos_Y, int length_X, int length_Y, rgb_t color){
	for (int i = DISPLAY_HEIGHT - start_pos_Y - 1; i >= DISPLAY_HEIGHT - start_pos_Y - length_Y; i--) {
		for (int j = DISPLAY_WIDTH - start_pos_X - 1; j >= DISPLAY_WIDTH - start_pos_X - length_X; j--) {
			Xil_Out32(XPAR_TFTLCD_0_S00_AXI_BASEADDR + (j + DISPLAY_WIDTH*i)*4, compile_rgb(color));
		}
	}
}

void redraw_square(int draw_start_pos_X, int draw_draw_start_pos_Y, int draw_length_X, int draw_length_Y, rgb_t draw_color,  // 새롭게 그릴 사각형
				   int delete_start_pos_X, int delete_draw_start_pos_Y, int delete_length_X, int delete_length_Y, rgb_t background_color){  // 이미 그려져서 배경화면 색으로 덮을 사각형

	draw_square(delete_start_pos_X, delete_draw_start_pos_Y, delete_length_X, delete_length_Y, background_color);
	draw_square(draw_start_pos_X, draw_draw_start_pos_Y, draw_length_X, draw_length_Y, draw_color);


}

void draw_triangle(int start_pos_X, int start_pos_Y, int length_X, int length_Y, rgb_t color){
	int x ,y; // 원점 대칭인 i,j를 다시 원점대칭함
	for (int i = DISPLAY_HEIGHT - start_pos_Y - 1; i >= DISPLAY_HEIGHT - start_pos_Y - length_Y; i--) {
		for (int j = DISPLAY_WIDTH - start_pos_X - 1; j >= DISPLAY_WIDTH - start_pos_X - length_X; j--) {
			// if (0)  // 해당 픽셀에 색깔을 넣어야 하는지 판단, i, j, length_X, length_Y, start_pos_X, start_pos_Y, DISPLAY_HEIGHT, DISPLAY_WIDTH 을 이용하여 판별
			x = DISPLAY_WIDTH - start_pos_X - 1 - j;
			y = DISPLAY_HEIGHT - start_pos_Y - 1 - i;

			// if((y <= (length_Y/(length_X/2))*x) && (y <= 2*length_Y - (length_Y/(length_X/2))*x)){   // 뒤집혀진 삼각형입니다
			if((y >= length_Y - (length_Y/(length_X/2))*x) && (y >= - length_Y + (length_Y/(length_X/2))*x)){
				Xil_Out32(XPAR_TFTLCD_0_S00_AXI_BASEADDR + (j + DISPLAY_WIDTH*i)*4, compile_rgb(color));
			}
		}
	}
}

void redraw_triangle(int draw_start_pos_X, int draw_draw_start_pos_Y, int draw_length_X, int draw_length_Y, rgb_t draw_color,  // 새롭게 그릴 사각형
				   int delete_start_pos_X, int delete_draw_start_pos_Y, int delete_length_X, int delete_length_Y, rgb_t background_color){  // 이미 그려져서 배경화면 색으로 덮을 사각형

	draw_triangle(delete_start_pos_X, delete_draw_start_pos_Y, delete_length_X, delete_length_Y, background_color);
	draw_triangle(draw_start_pos_X, draw_draw_start_pos_Y, draw_length_X, draw_length_Y, draw_color);
}


void draw_circle(int start_pos_X, int start_pos_Y, int length_X, int length_Y, rgb_t color){
	int x ,y; // 원점 대칭인 i,j를 다시 원점대칭함
	for (int i = DISPLAY_HEIGHT - start_pos_Y - 1; i >= DISPLAY_HEIGHT - start_pos_Y - length_Y; i--) {
		for (int j = DISPLAY_WIDTH - start_pos_X - 1; j >= DISPLAY_WIDTH - start_pos_X - length_X; j--) {
			// if (0)  // 해당 픽셀에 색깔을 넣어야 하는지 판단, i, j, length_X, length_Y, start_pos_X, start_pos_Y, DISPLAY_HEIGHT, DISPLAY_WIDTH 을 이용하여 판별
			x = DISPLAY_WIDTH - start_pos_X - 1 - j;
			y = DISPLAY_HEIGHT - start_pos_Y - 1 - i;
			 if(((y - (length_Y/2))*(y - (length_Y/2)) + (x - (length_X/2))*(x - (length_X/2))) <= (length_X/2)*(length_X/2)){ // 원의 방정식
//			if(((y-(length_Y/2)) * (y-(length_Y/2)) * (length_X/2) * (length_X/2) +
//			    (x-(length_X/2)) * (x-(length_X/2) * (length_Y/2) * (length_Y/2))) <=
//				(length_X/2) * (length_X/2) * (length_Y/2) * (length_Y/2)){ // 타원의 방정식

				Xil_Out32(XPAR_TFTLCD_0_S00_AXI_BASEADDR + (j + DISPLAY_WIDTH*i)*4, compile_rgb(color));
			}
		}
	}
}

void redraw_circle(int draw_start_pos_X, int draw_draw_start_pos_Y, int draw_length_X, int draw_length_Y, rgb_t draw_color,  // 새롭게 그릴 사각형
				   int delete_start_pos_X, int delete_draw_start_pos_Y, int delete_length_X, int delete_length_Y, rgb_t background_color){  // 이미 그려져서 배경화면 색으로 덮을 사각형

	draw_circle(delete_start_pos_X, delete_draw_start_pos_Y, delete_length_X, delete_length_Y, background_color);
	draw_circle(draw_start_pos_X, draw_draw_start_pos_Y, draw_length_X, draw_length_Y, draw_color);
}


int compile_rgb(rgb_t rgb_data){
    return (rgb_data.B << 11 | rgb_data.G << 5 | rgb_data.R);
}

void game_check(game_t *game){

	if(game->is_ball_jumping) change_ball_position(game); //입력이 들어오면 공을 점프시킨다.
	else ball_jump_check(game);

	if (!game->is_spike_exist)	generate_spike(game); // 스파이크가 없으면 랜덤 확률로 스파이크를 생성한다.
	else {
		is_spike_touched(game);
		change_spike_position(game); // 스파이크가 있으면 왼쪽으로 이동한다.
	}
}

/////////////////////////////////////////////////////////////////////////////////////////////////////
//												테스트해봐야할 코드									  //
////////////////////////////////////////////////////////////////////////////////////////////////////
void change_ball_position(game_t *game){
	double tmp = game->ball_y_position; // redraw 함수를 통해 예전 이미지를 지우기 위해 예전 위치를 임시저장
	game->ball_y_position -= game->ball_y_speed;
	if( abs( (int)tmp - (int)(game->ball_y_position) ) >= 1 ) // 예전 ball y 좌표와 현재 ball y 좌표를 비교해서 차이가 1만큼 나면 픽셀을 움직인다.
	{
		// redraw_square("새로 그릴 네모", "바탕화면색으로 덮일 네모")
		// redraw_circle로 변경
		redraw_circle(
				stage_position[game_count-1][game->game_number][0]+ball_position[0],
				stage_position[game_count-1][game->game_number][1]+ball_position[1]+ (int)(game->ball_y_position),
				ball_size[0], ball_size[1], ball_color,

				stage_position[game_count-1][game->game_number][0]+ball_position[0],
				stage_position[game_count-1][game->game_number][1]+ball_position[1]+ (int)tmp,
				ball_size[0], ball_size[1], game->game_background_color
				);
	}

	// 주의! 절대 좌표
	//  stage_position[game_count][game->game_number][x,y] + ball_position[x,y] + game->ball_x_postion
	// TODO: 조건문과 입력 변수 채워 넣기
	game->ball_y_speed -= ball_gravity;
	if(game->ball_y_position >= 0)
	{
		game->ball_y_position = 0;
		// game->ball_y_speed = jump_ball_speed;
		// "떨어지는 공이 바닥에 닿았을 때"의 조건문이므로 바닥에 닿으면 스피드를 0으로 초기화해주어야 합니다.
		game->ball_y_speed = 0;
		game->is_ball_jumping = 0;
	}

	// 바닿에 닿았을 때 버튼 누르면 점프하는 코드
	if (is_button_pushed[game->game_number] == 1 && game->is_ball_jumping == 0){
		game->ball_y_speed = jump_ball_speed;

	}
}
////////////////////////////////////////////////////////////////////////////////////////////////////////

void ball_jump_check(game_t *game){
	if ( (is_button_pushed[game->game_number] == 1) ){
		game->is_ball_jumping = 1;
		game->ball_y_speed = jump_ball_speed;
	}
}

/////////////////////////////////////////////////////////////////////////////////////////////////////
//												테스트해봐야할 코드									  //
////////////////////////////////////////////////////////////////////////////////////////////////////
void generate_spike(game_t *game){
	// 가시는 랜덤하게 생성함
	// 가시의 속도도 랜덤
	if(rand()%spike_probability <= 10) // spike_probability = 300 , L109
	{
		game->is_spike_exist = 1;
		game->spike_x_position = 0;
		game->spike_x_speed = spike_speed +0.1*(double)( rand()%9 ); // 0.5~ 1.5
	}
}
////////////////////////////////////////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////////////////////////////////////
//												테스트해봐야할 코드									  //
////////////////////////////////////////////////////////////////////////////////////////////////////
void is_spike_touched(game_t *game){
	// TODO: 현재 선언한 변수로 논의된 로직으로 코드 작성 부탁드립니다.

	int ball_x, ball_y;   // ball의 x,y 좌표 저장
	int spike_x, spike_y; // spike의 x,y 좌표 저장
	int spike_centre;

//	 ball_x = stage_position[game_count-1][game->game_number][0] + ball_position[0];
//	 ball_y = stage_position[game_count-1][game->game_number][1] + ball_position[1] + (int)game->ball_y_position;
//	 spike_x = stage_position[game_count-1][game->game_number][0] + spike_position[0] + (int)game->spike_x_position;
//	 spike_y = stage_position[game_count-1][game->game_number][1] + spike_position[1];

	// 상대 좌표만 이용하셔도 됩니다^^
	ball_x = ball_position[0];
	ball_y = ball_position[1] + (int)game->ball_y_position;
	spike_x = spike_position[0] + (int)game->spike_x_position ;
	spike_y = spike_position[1];
	
	spike_centre = spike_x + spike_size[0];
	
	if( (spike_centre >= ball_x) && ((spike_centre - ball_x) <= ball_size[0])){
		if(ball_y + ball_size[1] >= spike_y){
			game_mode = 2;
			is_background_paint = 0;
		}
	}

	// if( abs(ball_x - spike_x) <= ball_size[0] )
	// {
	//  	if( abs(ball_y - spike_y) <= ball_size[1] )
	//  	{
	//  		game_mode = 2; //게임오버했으므로 game mode를 2로 바꾼다.
	//  		is_background_paint = 0;
	//  	}
	// }
}



//////////////////////////////////////////////////////////////////////////////////////////////////////
//												테스트해봐야할 코드									    //
/////////////////////////////////////////////////////////////////////////////////////////////////////
void change_spike_position(game_t *game){
	// spike_x_position은 0에서 시작하여 계속해서 작아집니다.

	double tmp = game->spike_x_position; // redraw함수를 통해 예전 이미지를 지우기 위해 예전 위치를 임시저장
	game->spike_x_position -= game->spike_x_speed;
	if( abs( (int)tmp - (int)(game->spike_x_position) ) >= 1 ) // 예전 spike x좌표와 현재 x좌표의 차이가 1 나면 이미지를 다시 그린다. redraw함수 사용
	{
		redraw_triangle(
				stage_position[game_count-1][game->game_number][0] + spike_position[0] + (int)(game->spike_x_position),
				stage_position[game_count-1][game->game_number][1] + spike_position[1],
				spike_size[0], spike_size[1], spike_color,
				stage_position[game_count-1][game->game_number][0] + spike_position[0] + (int)(tmp),
				stage_position[game_count-1][game->game_number][1] + spike_position[1],
				spike_size[0], spike_size[1], game->game_background_color
		);
	}

	if( game->spike_x_position <= -1 * spike_path_length) // 만약 spike x좌표가 -150 이하로 떨어지게 되면 spike를 지운다.
	{

		draw_triangle(
			stage_position[game_count-1][game->game_number][0] + spike_position[0] + (int)game->spike_x_position,
			stage_position[game_count-1][game->game_number][1] + spike_position[1],
			spike_size[0], spike_size[1], game->game_background_color
			);
		// 없어도 될 것 같아요!
		// game->spike_x_position = 0;
		// game->spike_x_speed = spike_speed;
		game->is_spike_exist = 0;
	}

}
////////////////////////////////////////////////////////////////////////////////////////////////////////
