`timescale 1ns / 1ns

module tb_textlcd_2_v1_0();

// top module 입력
reg				resetn;		// FPGA reset
reg				clk;		// clock
reg     [31:0]  state;      // mode를 나타내는 레지스터
// top module 출력

wire			lcd_rs;		// Text LCD register select
wire			lcd_rw;		// Text LCD read/write
wire			lcd_en;		// Text LCD enable
wire	[7:0]	lcd_data;	// Text LCD data

// top module
textlcd_2_v1_0	textlcd_2_v1_0_u0(	.resetn(resetn),
                                    .clk(clk),
                                    .state(state),
                        
                                    .lcd_rs(lcd_rs),
                                    .lcd_rw(lcd_rw),
                                    .lcd_en(lcd_en),
                                    .lcd_data(lcd_data)	);

// 25Mhz clock
parameter	PERIOD_25MHZ	=	40;
always begin
	#(PERIOD_25MHZ/2);
	clk <= ~clk;
end

// testbench
initial begin
	clk		=	1'b0;
	resetn	=	1'b1;
	state   =   32'h00_00_00_00;
	#(PERIOD_25MHZ*5);
	resetn	=	1'b0;
	#(PERIOD_25MHZ*5);
	resetn	=	1'b1;
	#(PERIOD_25MHZ*50000000);
	state      =   32'h00_00_00_05;
	#(PERIOD_25MHZ*5000000);
	state      =   32'h00_00_00_01;
	#(PERIOD_25MHZ*50000000);
	state      =   32'h00_00_00_02;
	#(PERIOD_25MHZ*50000000);
	
	$stop;
end

endmodule

