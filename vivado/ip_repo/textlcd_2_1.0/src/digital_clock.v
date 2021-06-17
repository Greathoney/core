module digital_clock(
input	wire			resetn,
input	wire			clk,		// 25MHz
input  wire    [31:0]  state,      // state 레지스터

output	reg	    [31:0]	textdata_a,
output	reg  	[31:0]	textdata_b,
output	reg  	[31:0]	textdata_c,
output	reg  	[31:0]	textdata_d,
output	reg  	[31:0]	textdata_e,
output	reg  	[31:0]	textdata_f,
output	reg  	[31:0]	textdata_g,
output	reg  	[31:0]	textdata_h,
output  wire    [15:0]  time_info
);

wire	[3:0]	cnt_sec1;
wire	[3:0]	cnt_sec10;
wire	[3:0]	cnt_min1;
wire	[3:0]	cnt_min10;
wire	[3:0]	cnt_hour1;
wire	[3:0]	cnt_hour10;

wire     [1:0]   mode;

assign mode         =   state[1:0]; //state register로 부터 mode 값을 뽑아냄
assign  time_info   =   {cnt_min10, cnt_min1, cnt_sec10, cnt_sec1};

//assign textdata_a =  32'h44_69_67_69;				// Digi
//assign textdata_b =  32'h74_61_6C_20;				// tal 
//assign textdata_c =  32'h43_6C_6F_63;				// Cloc
//assign textdata_d =  32'h6B_20_20_20;				// k
//assign textdata_e =  {4'h3,  cnt_hour10,4'h3,   cnt_hour1,  8'h3A,  4'h3,   cnt_min10}; // hh:m
//assign textdata_f =  {4'h3,  cnt_min1,  8'h3A,  4'h3,       cnt_sec10,  4'h3,   cnt_sec1};// m:ss
//assign textdata_g =  32'h20_20_20_20;
//assign textdata_h =  32'h20_20_20_20;



always @(posedge clk or negedge resetn )
begin
    if(resetn == 1'b0)
    begin
         textdata_a <=  32'h47_61_6D_65;				// Game
         textdata_b <=  32'h20_52_65_61;				//  Rea
         textdata_c <=  32'h64_79_20_20;				// dy  
         textdata_d <=  32'h20_20_20_20;  
         textdata_e <=  32'h20_20_20_20;
         textdata_f <=  32'h20_20_20_20;
         textdata_g <=  32'h20_20_20_20;
         textdata_h <=  32'h20_20_20_20;
    end
    else begin
        case(mode)
        2'b00  :
        begin
            textdata_a <=  32'h47_61_6D_65;				// Game
            textdata_b <=  32'h20_52_65_61;				//  Rea
            textdata_c <=  32'h64_79_20_20;				// dy  
            textdata_d <=  32'h20_20_20_20;  
            textdata_e <=  32'h20_20_20_20;
            textdata_f <=  32'h20_20_20_20;
            textdata_g <=  32'h20_20_20_20;
            textdata_h <=  32'h20_20_20_20;
        end
        2'b01  :
        begin
            textdata_a <=  32'h47_61_6D_65;				// Game
            textdata_b <=  32'h20_70_6C_61;				//  pla
            textdata_c <=  32'h79_21_20_20;				// y!  
            textdata_d <=  32'h20_20_20_20;  
            textdata_e <=  32'h54_69_6D_65;               // Time
            textdata_f <=  32'h20_3A_20_20;               //  :  
            textdata_g <=  {4'h3,  cnt_hour10,4'h3,   cnt_hour1,  8'h3A,  4'h3,   cnt_min10};    // hh:m
            textdata_h <=  {4'h3,  cnt_min1,  8'h3A,  4'h3,       cnt_sec10,  4'h3,   cnt_sec1}; // m:ss
        end
        2'b10  :
        begin
            textdata_a <=  32'h47_61_6D_65;			   // Game
            textdata_b <=  32'h20_4F_76_65;			   //  Ove
            textdata_c <=  32'h72_21_20_20;			   // r!  
            textdata_d <=  32'h20_20_20_20;  
            textdata_e <=  32'h54_69_6D_65;              // Time
            textdata_f <=  32'h20_3A_20_20;              //  :  
            textdata_g <=  textdata_g;                     // time over 되었을 때 시간 기록
            textdata_h <=  textdata_h;                     //
        end
        default :
        begin
            textdata_a <=  32'h45_72_72_6F;				// Erro
            textdata_b <=  32'h72_20_43_6F;				// r Co
            textdata_c <=  32'h64_65_21_21;				// de!!  
            textdata_d <=  32'h20_20_20_20;  
            textdata_e <=  32'h20_20_20_20;               // 
            textdata_f <=  32'h20_20_20_20;               // 
            textdata_g <=  32'h20_20_20_20;               //
            textdata_h <=  32'h20_20_20_20;               //
        end
        endcase
    end
end



clk_divider	clk_divider_u0(	.resetn(resetn),
							.clk(clk),
							.state(state),

							.cnt_sec1(cnt_sec1),
							.cnt_sec10(cnt_sec10),
							.cnt_min1(cnt_min1),
							.cnt_min10(cnt_min10),
							.cnt_hour1(cnt_hour1),
							.cnt_hour10(cnt_hour10)	);

endmodule

