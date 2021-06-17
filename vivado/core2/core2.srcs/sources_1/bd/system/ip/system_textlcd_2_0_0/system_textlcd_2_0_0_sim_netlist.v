// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Jun 14 12:20:46 2021
// Host        : DESKTOP-8KJ0KRR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/work/2016114869/core2/core2.srcs/sources_1/bd/system/ip/system_textlcd_2_0_0/system_textlcd_2_0_0_sim_netlist.v
// Design      : system_textlcd_2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_textlcd_2_0_0,textlcd_2_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "textlcd_2_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module system_textlcd_2_0_0
   (resetn,
    clk,
    lcd_rs,
    lcd_rw,
    lcd_en,
    lcd_data,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_clk_0, INSERT_VIP 0" *) input clk;
  output lcd_rs;
  output lcd_rw;
  output lcd_en;
  output [7:0]lcd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire clk;
  wire [7:0]lcd_data;
  wire lcd_en;
  wire lcd_rs;
  wire resetn;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign lcd_rw = \<const0> ;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_textlcd_2_0_0_textlcd_2_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .clk(clk),
        .lcd_data(lcd_data),
        .lcd_en(lcd_en),
        .lcd_rs(lcd_rs),
        .resetn(resetn),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "clk_divider" *) 
module system_textlcd_2_0_0_clk_divider
   (resetn_0,
    D,
    \slv_reg0_reg[1] ,
    \slv_reg0_reg[1]_0 ,
    clk,
    resetn,
    Q,
    s00_axi_wdata,
    slv_reg_wren__0,
    \slv_reg1_reg[1] ,
    \slv_reg1_reg[1]_0 ,
    s00_axi_awvalid,
    s00_axi_wvalid);
  output resetn_0;
  output [13:0]D;
  output [8:0]\slv_reg0_reg[1] ;
  output [10:0]\slv_reg0_reg[1]_0 ;
  input clk;
  input resetn;
  input [2:0]Q;
  input [13:0]s00_axi_wdata;
  input slv_reg_wren__0;
  input \slv_reg1_reg[1] ;
  input \slv_reg1_reg[1]_0 ;
  input s00_axi_awvalid;
  input s00_axi_wvalid;

  wire [13:0]D;
  wire [2:0]Q;
  wire clk;
  wire clk_onesec;
  wire clk_onesec_i_10_n_0;
  wire clk_onesec_i_11_n_0;
  wire clk_onesec_i_12_n_0;
  wire clk_onesec_i_13_n_0;
  wire clk_onesec_i_1_n_0;
  wire clk_onesec_i_2_n_0;
  wire clk_onesec_i_3_n_0;
  wire clk_onesec_i_4_n_0;
  wire clk_onesec_i_5_n_0;
  wire clk_onesec_i_6_n_0;
  wire clk_onesec_i_7_n_0;
  wire clk_onesec_i_8_n_0;
  wire clk_onesec_i_9_n_0;
  wire [3:0]cnt_hour1;
  wire [1:0]cnt_hour10;
  wire cnt_hour102;
  wire \cnt_hour10[0]_i_1_n_0 ;
  wire \cnt_hour10[1]_C_i_1_n_0 ;
  wire \cnt_hour10[1]_P_i_1_n_0 ;
  wire \cnt_hour10_reg[1]_C_n_0 ;
  wire \cnt_hour10_reg[1]_LDC_n_0 ;
  wire \cnt_hour10_reg[1]_P_n_0 ;
  wire cnt_hour111_out__7;
  wire \cnt_hour1[0]_C_i_1_n_0 ;
  wire \cnt_hour1[0]_P_i_1_n_0 ;
  wire \cnt_hour1[1]_C_i_1_n_0 ;
  wire \cnt_hour1[1]_P_i_1_n_0 ;
  wire \cnt_hour1[2]_i_1_n_0 ;
  wire \cnt_hour1[3]_i_1_n_0 ;
  wire \cnt_hour1[3]_i_3_n_0 ;
  wire \cnt_hour1[3]_i_4_n_0 ;
  wire \cnt_hour1[3]_i_7_n_0 ;
  wire \cnt_hour1[3]_i_9_n_0 ;
  wire \cnt_hour1_reg[0]_C_n_0 ;
  wire \cnt_hour1_reg[0]_P_n_0 ;
  wire \cnt_hour1_reg[1]_C_n_0 ;
  wire \cnt_hour1_reg[1]_LDC_n_0 ;
  wire \cnt_hour1_reg[1]_P_n_0 ;
  wire cnt_min1;
  wire cnt_min100;
  wire cnt_min101__4;
  wire \cnt_min10[0]_C_i_1_n_0 ;
  wire \cnt_min10[0]_P_i_1_n_0 ;
  wire \cnt_min10[1]_i_1_n_0 ;
  wire \cnt_min10[2]_C_i_1_n_0 ;
  wire \cnt_min10[2]_P_i_1_n_0 ;
  wire \cnt_min10_reg[0]_C_n_0 ;
  wire \cnt_min10_reg[0]_P_n_0 ;
  wire \cnt_min10_reg[2]_C_n_0 ;
  wire \cnt_min10_reg[2]_P_n_0 ;
  wire \cnt_min1[0]_C_i_1_n_0 ;
  wire \cnt_min1[0]_P_i_1_n_0 ;
  wire \cnt_min1[1]_i_1_n_0 ;
  wire \cnt_min1[1]_i_2_n_0 ;
  wire \cnt_min1[2]_i_1_n_0 ;
  wire \cnt_min1[2]_i_5_n_0 ;
  wire \cnt_min1[3]_C_i_1_n_0 ;
  wire \cnt_min1[3]_P_i_1_n_0 ;
  wire \cnt_min1_reg[0]_C_n_0 ;
  wire \cnt_min1_reg[0]_P_n_0 ;
  wire \cnt_min1_reg[3]_C_n_0 ;
  wire \cnt_min1_reg[3]_P_n_0 ;
  wire \cnt_onesec[0]_i_10_n_0 ;
  wire \cnt_onesec[0]_i_2_n_0 ;
  wire \cnt_onesec[0]_i_3_n_0 ;
  wire \cnt_onesec[0]_i_4_n_0 ;
  wire \cnt_onesec[0]_i_5_n_0 ;
  wire \cnt_onesec[0]_i_6_n_0 ;
  wire \cnt_onesec[0]_i_7_n_0 ;
  wire \cnt_onesec[0]_i_8_n_0 ;
  wire \cnt_onesec[0]_i_9_n_0 ;
  wire \cnt_onesec[12]_i_2_n_0 ;
  wire \cnt_onesec[12]_i_3_n_0 ;
  wire \cnt_onesec[12]_i_4_n_0 ;
  wire \cnt_onesec[12]_i_5_n_0 ;
  wire \cnt_onesec[12]_i_6_n_0 ;
  wire \cnt_onesec[16]_i_2_n_0 ;
  wire \cnt_onesec[16]_i_3_n_0 ;
  wire \cnt_onesec[16]_i_4_n_0 ;
  wire \cnt_onesec[16]_i_5_n_0 ;
  wire \cnt_onesec[20]_i_2_n_0 ;
  wire \cnt_onesec[20]_i_3_n_0 ;
  wire \cnt_onesec[20]_i_4_n_0 ;
  wire \cnt_onesec[20]_i_5_n_0 ;
  wire \cnt_onesec[4]_i_2_n_0 ;
  wire \cnt_onesec[4]_i_3_n_0 ;
  wire \cnt_onesec[4]_i_4_n_0 ;
  wire \cnt_onesec[4]_i_5_n_0 ;
  wire \cnt_onesec[8]_i_2_n_0 ;
  wire \cnt_onesec[8]_i_3_n_0 ;
  wire \cnt_onesec[8]_i_4_n_0 ;
  wire \cnt_onesec[8]_i_5_n_0 ;
  wire [23:0]cnt_onesec_reg;
  wire \cnt_onesec_reg[0]_i_1_n_0 ;
  wire \cnt_onesec_reg[0]_i_1_n_1 ;
  wire \cnt_onesec_reg[0]_i_1_n_2 ;
  wire \cnt_onesec_reg[0]_i_1_n_3 ;
  wire \cnt_onesec_reg[0]_i_1_n_4 ;
  wire \cnt_onesec_reg[0]_i_1_n_5 ;
  wire \cnt_onesec_reg[0]_i_1_n_6 ;
  wire \cnt_onesec_reg[0]_i_1_n_7 ;
  wire \cnt_onesec_reg[12]_i_1_n_0 ;
  wire \cnt_onesec_reg[12]_i_1_n_1 ;
  wire \cnt_onesec_reg[12]_i_1_n_2 ;
  wire \cnt_onesec_reg[12]_i_1_n_3 ;
  wire \cnt_onesec_reg[12]_i_1_n_4 ;
  wire \cnt_onesec_reg[12]_i_1_n_5 ;
  wire \cnt_onesec_reg[12]_i_1_n_6 ;
  wire \cnt_onesec_reg[12]_i_1_n_7 ;
  wire \cnt_onesec_reg[16]_i_1_n_0 ;
  wire \cnt_onesec_reg[16]_i_1_n_1 ;
  wire \cnt_onesec_reg[16]_i_1_n_2 ;
  wire \cnt_onesec_reg[16]_i_1_n_3 ;
  wire \cnt_onesec_reg[16]_i_1_n_4 ;
  wire \cnt_onesec_reg[16]_i_1_n_5 ;
  wire \cnt_onesec_reg[16]_i_1_n_6 ;
  wire \cnt_onesec_reg[16]_i_1_n_7 ;
  wire \cnt_onesec_reg[20]_i_1_n_1 ;
  wire \cnt_onesec_reg[20]_i_1_n_2 ;
  wire \cnt_onesec_reg[20]_i_1_n_3 ;
  wire \cnt_onesec_reg[20]_i_1_n_4 ;
  wire \cnt_onesec_reg[20]_i_1_n_5 ;
  wire \cnt_onesec_reg[20]_i_1_n_6 ;
  wire \cnt_onesec_reg[20]_i_1_n_7 ;
  wire \cnt_onesec_reg[4]_i_1_n_0 ;
  wire \cnt_onesec_reg[4]_i_1_n_1 ;
  wire \cnt_onesec_reg[4]_i_1_n_2 ;
  wire \cnt_onesec_reg[4]_i_1_n_3 ;
  wire \cnt_onesec_reg[4]_i_1_n_4 ;
  wire \cnt_onesec_reg[4]_i_1_n_5 ;
  wire \cnt_onesec_reg[4]_i_1_n_6 ;
  wire \cnt_onesec_reg[4]_i_1_n_7 ;
  wire \cnt_onesec_reg[8]_i_1_n_0 ;
  wire \cnt_onesec_reg[8]_i_1_n_1 ;
  wire \cnt_onesec_reg[8]_i_1_n_2 ;
  wire \cnt_onesec_reg[8]_i_1_n_3 ;
  wire \cnt_onesec_reg[8]_i_1_n_4 ;
  wire \cnt_onesec_reg[8]_i_1_n_5 ;
  wire \cnt_onesec_reg[8]_i_1_n_6 ;
  wire \cnt_onesec_reg[8]_i_1_n_7 ;
  wire \cnt_sec10[0]_C_i_1_n_0 ;
  wire \cnt_sec10[0]_C_i_2_n_0 ;
  wire \cnt_sec10[0]_P_i_1_n_0 ;
  wire \cnt_sec10[1]_i_1_n_0 ;
  wire \cnt_sec10[1]_i_2_n_0 ;
  wire \cnt_sec10[1]_i_3_n_0 ;
  wire \cnt_sec10[2]_C_i_1_n_0 ;
  wire \cnt_sec10[2]_P_i_1_n_0 ;
  wire \cnt_sec10_reg[0]_C_n_0 ;
  wire \cnt_sec10_reg[0]_P_n_0 ;
  wire \cnt_sec10_reg[2]_C_n_0 ;
  wire \cnt_sec10_reg[2]_LDC_n_0 ;
  wire \cnt_sec10_reg[2]_P_n_0 ;
  wire \cnt_sec10_reg_n_0_[1] ;
  wire \cnt_sec1[0]_C_i_1_n_0 ;
  wire \cnt_sec1[1]_i_1_n_0 ;
  wire \cnt_sec1[2]_i_1_n_0 ;
  wire \cnt_sec1[3]_C_i_1_n_0 ;
  wire \cnt_sec1_reg[0]_C_n_0 ;
  wire \cnt_sec1_reg[0]_P_n_0 ;
  wire \cnt_sec1_reg[3]_C_n_0 ;
  wire \cnt_sec1_reg[3]_LDC_i_1_n_0 ;
  wire \cnt_sec1_reg[3]_LDC_n_0 ;
  wire \cnt_sec1_reg[3]_P_n_0 ;
  wire resetn;
  wire resetn_0;
  wire s00_axi_awvalid;
  wire [13:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire [8:0]\slv_reg0_reg[1] ;
  wire [10:0]\slv_reg0_reg[1]_0 ;
  wire \slv_reg1_reg[1] ;
  wire \slv_reg1_reg[1]_0 ;
  wire slv_reg_wren__0;
  wire [14:0]time_info;
  wire [3:3]\NLW_cnt_onesec_reg[20]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFBFFFFFF04000000)) 
    clk_onesec_i_1
       (.I0(clk_onesec_i_3_n_0),
        .I1(clk_onesec_i_4_n_0),
        .I2(clk_onesec_i_5_n_0),
        .I3(clk_onesec_i_6_n_0),
        .I4(clk_onesec_i_7_n_0),
        .I5(clk_onesec),
        .O(clk_onesec_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    clk_onesec_i_10
       (.I0(cnt_onesec_reg[16]),
        .I1(cnt_onesec_reg[17]),
        .O(clk_onesec_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    clk_onesec_i_11
       (.I0(cnt_onesec_reg[11]),
        .I1(cnt_onesec_reg[10]),
        .I2(cnt_onesec_reg[9]),
        .O(clk_onesec_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    clk_onesec_i_12
       (.I0(cnt_onesec_reg[0]),
        .I1(cnt_onesec_reg[2]),
        .I2(cnt_onesec_reg[1]),
        .I3(cnt_onesec_reg[3]),
        .I4(cnt_onesec_reg[4]),
        .I5(cnt_onesec_reg[5]),
        .O(clk_onesec_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    clk_onesec_i_13
       (.I0(cnt_onesec_reg[10]),
        .I1(cnt_onesec_reg[11]),
        .O(clk_onesec_i_13_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    clk_onesec_i_2
       (.I0(Q[2]),
        .I1(resetn),
        .O(clk_onesec_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    clk_onesec_i_3
       (.I0(cnt_onesec_reg[22]),
        .I1(cnt_onesec_reg[23]),
        .O(clk_onesec_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    clk_onesec_i_4
       (.I0(cnt_onesec_reg[23]),
        .I1(cnt_onesec_reg[21]),
        .I2(cnt_onesec_reg[22]),
        .O(clk_onesec_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    clk_onesec_i_5
       (.I0(cnt_onesec_reg[19]),
        .I1(cnt_onesec_reg[20]),
        .O(clk_onesec_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    clk_onesec_i_6
       (.I0(cnt_onesec_reg[20]),
        .I1(cnt_onesec_reg[19]),
        .I2(cnt_onesec_reg[18]),
        .O(clk_onesec_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    clk_onesec_i_7
       (.I0(clk_onesec_i_8_n_0),
        .I1(cnt_onesec_reg[12]),
        .I2(cnt_onesec_reg[13]),
        .I3(cnt_onesec_reg[14]),
        .I4(clk_onesec_i_9_n_0),
        .I5(clk_onesec_i_10_n_0),
        .O(clk_onesec_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    clk_onesec_i_8
       (.I0(clk_onesec_i_11_n_0),
        .I1(cnt_onesec_reg[6]),
        .I2(clk_onesec_i_12_n_0),
        .I3(cnt_onesec_reg[8]),
        .I4(cnt_onesec_reg[7]),
        .I5(clk_onesec_i_13_n_0),
        .O(clk_onesec_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    clk_onesec_i_9
       (.I0(cnt_onesec_reg[17]),
        .I1(cnt_onesec_reg[15]),
        .I2(cnt_onesec_reg[16]),
        .O(clk_onesec_i_9_n_0));
  FDPE clk_onesec_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_onesec_i_1_n_0),
        .PRE(clk_onesec_i_2_n_0),
        .Q(clk_onesec));
  LUT6 #(
    .INIT(64'h00FFFFFF1D000000)) 
    \cnt_hour10[0]_i_1 
       (.I0(\cnt_hour10_reg[1]_C_n_0 ),
        .I1(\cnt_hour10_reg[1]_LDC_n_0 ),
        .I2(\cnt_hour10_reg[1]_P_n_0 ),
        .I3(\cnt_hour1[3]_i_4_n_0 ),
        .I4(cnt_hour102),
        .I5(cnt_hour10[0]),
        .O(\cnt_hour10[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000002000000F000)) 
    \cnt_hour10[0]_i_2 
       (.I0(cnt_hour10[1]),
        .I1(cnt_hour10[0]),
        .I2(cnt_hour1[3]),
        .I3(cnt_hour1[0]),
        .I4(cnt_hour1[2]),
        .I5(cnt_hour1[1]),
        .O(cnt_hour102));
  LUT6 #(
    .INIT(64'h08FFFFFF2A000000)) 
    \cnt_hour10[1]_C_i_1 
       (.I0(cnt_hour10[0]),
        .I1(\cnt_hour10_reg[1]_LDC_n_0 ),
        .I2(\cnt_hour10_reg[1]_P_n_0 ),
        .I3(\cnt_hour1[3]_i_4_n_0 ),
        .I4(cnt_hour102),
        .I5(\cnt_hour10_reg[1]_C_n_0 ),
        .O(\cnt_hour10[1]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02FFFFFFA2000000)) 
    \cnt_hour10[1]_P_i_1 
       (.I0(cnt_hour10[0]),
        .I1(\cnt_hour10_reg[1]_C_n_0 ),
        .I2(\cnt_hour10_reg[1]_LDC_n_0 ),
        .I3(\cnt_hour1[3]_i_4_n_0 ),
        .I4(cnt_hour102),
        .I5(\cnt_hour10_reg[1]_P_n_0 ),
        .O(\cnt_hour10[1]_P_i_1_n_0 ));
  FDCE \cnt_hour10_reg[0] 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_hour10[0]_i_1_n_0 ),
        .Q(cnt_hour10[0]));
  FDCE \cnt_hour10_reg[1]_C 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(\cnt_sec1_reg[3]_LDC_i_1_n_0 ),
        .D(\cnt_hour10[1]_C_i_1_n_0 ),
        .Q(\cnt_hour10_reg[1]_C_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \cnt_hour10_reg[1]_LDC 
       (.CLR(\cnt_sec1_reg[3]_LDC_i_1_n_0 ),
        .D(1'b1),
        .G(resetn),
        .GE(1'b1),
        .Q(\cnt_hour10_reg[1]_LDC_n_0 ));
  FDPE \cnt_hour10_reg[1]_P 
       (.C(clk_onesec),
        .CE(1'b1),
        .D(\cnt_hour10[1]_P_i_1_n_0 ),
        .PRE(resetn_0),
        .Q(\cnt_hour10_reg[1]_P_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h08FF2A00)) 
    \cnt_hour1[0]_C_i_1 
       (.I0(cnt_hour111_out__7),
        .I1(\cnt_hour1_reg[1]_LDC_n_0 ),
        .I2(\cnt_hour1_reg[0]_P_n_0 ),
        .I3(\cnt_hour1[3]_i_4_n_0 ),
        .I4(\cnt_hour1_reg[0]_C_n_0 ),
        .O(\cnt_hour1[0]_C_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02FFA200)) 
    \cnt_hour1[0]_P_i_1 
       (.I0(cnt_hour111_out__7),
        .I1(\cnt_hour1_reg[0]_C_n_0 ),
        .I2(\cnt_hour1_reg[1]_LDC_n_0 ),
        .I3(\cnt_hour1[3]_i_4_n_0 ),
        .I4(\cnt_hour1_reg[0]_P_n_0 ),
        .O(\cnt_hour1[0]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h208AFFFF2A800000)) 
    \cnt_hour1[1]_C_i_1 
       (.I0(cnt_hour111_out__7),
        .I1(\cnt_hour1_reg[1]_P_n_0 ),
        .I2(\cnt_hour1_reg[1]_LDC_n_0 ),
        .I3(cnt_hour1[0]),
        .I4(\cnt_hour1[3]_i_4_n_0 ),
        .I5(\cnt_hour1_reg[1]_C_n_0 ),
        .O(\cnt_hour1[1]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_hour1[1]_C_i_2 
       (.I0(\cnt_hour1_reg[0]_P_n_0 ),
        .I1(\cnt_hour1_reg[1]_LDC_n_0 ),
        .I2(\cnt_hour1_reg[0]_C_n_0 ),
        .O(cnt_hour1[0]));
  LUT6 #(
    .INIT(64'h02A8FFFF8A200000)) 
    \cnt_hour1[1]_P_i_1 
       (.I0(cnt_hour111_out__7),
        .I1(\cnt_hour1_reg[1]_LDC_n_0 ),
        .I2(\cnt_hour1_reg[1]_C_n_0 ),
        .I3(cnt_hour1[0]),
        .I4(\cnt_hour1[3]_i_4_n_0 ),
        .I5(\cnt_hour1_reg[1]_P_n_0 ),
        .O(\cnt_hour1[1]_P_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2F80)) 
    \cnt_hour1[2]_i_1 
       (.I0(cnt_hour111_out__7),
        .I1(\cnt_hour1[3]_i_3_n_0 ),
        .I2(\cnt_hour1[3]_i_4_n_0 ),
        .I3(cnt_hour1[2]),
        .O(\cnt_hour1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \cnt_hour1[3]_i_1 
       (.I0(cnt_hour111_out__7),
        .I1(cnt_hour1[2]),
        .I2(\cnt_hour1[3]_i_3_n_0 ),
        .I3(\cnt_hour1[3]_i_4_n_0 ),
        .I4(cnt_hour1[3]),
        .O(\cnt_hour1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_hour1[3]_i_10 
       (.I0(\cnt_sec1_reg[3]_P_n_0 ),
        .I1(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I2(\cnt_sec1_reg[3]_C_n_0 ),
        .O(time_info[3]));
  LUT6 #(
    .INIT(64'h0F0B0F0F0F0F0FFF)) 
    \cnt_hour1[3]_i_2 
       (.I0(cnt_hour10[0]),
        .I1(cnt_hour10[1]),
        .I2(cnt_hour1[3]),
        .I3(cnt_hour1[2]),
        .I4(cnt_hour1[1]),
        .I5(cnt_hour1[0]),
        .O(cnt_hour111_out__7));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \cnt_hour1[3]_i_3 
       (.I0(\cnt_hour1_reg[1]_C_n_0 ),
        .I1(\cnt_hour1_reg[1]_P_n_0 ),
        .I2(\cnt_hour1_reg[0]_C_n_0 ),
        .I3(\cnt_hour1_reg[1]_LDC_n_0 ),
        .I4(\cnt_hour1_reg[0]_P_n_0 ),
        .O(\cnt_hour1[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \cnt_hour1[3]_i_4 
       (.I0(\cnt_hour1[3]_i_7_n_0 ),
        .I1(time_info[10]),
        .I2(time_info[9]),
        .I3(time_info[13]),
        .I4(cnt_min101__4),
        .O(\cnt_hour1[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_hour1[3]_i_5 
       (.I0(\cnt_hour10_reg[1]_P_n_0 ),
        .I1(\cnt_hour10_reg[1]_LDC_n_0 ),
        .I2(\cnt_hour10_reg[1]_C_n_0 ),
        .O(cnt_hour10[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_hour1[3]_i_6 
       (.I0(\cnt_hour1_reg[1]_P_n_0 ),
        .I1(\cnt_hour1_reg[1]_LDC_n_0 ),
        .I2(\cnt_hour1_reg[1]_C_n_0 ),
        .O(cnt_hour1[1]));
  LUT6 #(
    .INIT(64'h757FFFFFFFFFFFFF)) 
    \cnt_hour1[3]_i_7 
       (.I0(time_info[11]),
        .I1(\cnt_min10_reg[2]_P_n_0 ),
        .I2(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I3(\cnt_min10_reg[2]_C_n_0 ),
        .I4(time_info[8]),
        .I5(time_info[12]),
        .O(\cnt_hour1[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \cnt_hour1[3]_i_8 
       (.I0(\cnt_hour1[3]_i_9_n_0 ),
        .I1(\cnt_sec10_reg_n_0_[1] ),
        .I2(\cnt_sec10[1]_i_2_n_0 ),
        .I3(\cnt_sec10[0]_C_i_2_n_0 ),
        .I4(time_info[0]),
        .I5(time_info[3]),
        .O(cnt_min101__4));
  LUT2 #(
    .INIT(4'hE)) 
    \cnt_hour1[3]_i_9 
       (.I0(time_info[1]),
        .I1(time_info[2]),
        .O(\cnt_hour1[3]_i_9_n_0 ));
  FDCE \cnt_hour1_reg[0]_C 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(\cnt_sec1_reg[3]_LDC_i_1_n_0 ),
        .D(\cnt_hour1[0]_C_i_1_n_0 ),
        .Q(\cnt_hour1_reg[0]_C_n_0 ));
  FDPE \cnt_hour1_reg[0]_P 
       (.C(clk_onesec),
        .CE(1'b1),
        .D(\cnt_hour1[0]_P_i_1_n_0 ),
        .PRE(resetn_0),
        .Q(\cnt_hour1_reg[0]_P_n_0 ));
  FDCE \cnt_hour1_reg[1]_C 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(\cnt_sec1_reg[3]_LDC_i_1_n_0 ),
        .D(\cnt_hour1[1]_C_i_1_n_0 ),
        .Q(\cnt_hour1_reg[1]_C_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \cnt_hour1_reg[1]_LDC 
       (.CLR(\cnt_sec1_reg[3]_LDC_i_1_n_0 ),
        .D(1'b1),
        .G(resetn),
        .GE(1'b1),
        .Q(\cnt_hour1_reg[1]_LDC_n_0 ));
  FDPE \cnt_hour1_reg[1]_P 
       (.C(clk_onesec),
        .CE(1'b1),
        .D(\cnt_hour1[1]_P_i_1_n_0 ),
        .PRE(resetn_0),
        .Q(\cnt_hour1_reg[1]_P_n_0 ));
  FDCE \cnt_hour1_reg[2] 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_hour1[2]_i_1_n_0 ),
        .Q(cnt_hour1[2]));
  FDCE \cnt_hour1_reg[3] 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_hour1[3]_i_1_n_0 ),
        .Q(cnt_hour1[3]));
  LUT6 #(
    .INIT(64'h0070FFFF07770000)) 
    \cnt_min10[0]_C_i_1 
       (.I0(time_info[14]),
        .I1(time_info[13]),
        .I2(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I3(\cnt_min10_reg[0]_P_n_0 ),
        .I4(cnt_min100),
        .I5(\cnt_min10_reg[0]_C_n_0 ),
        .O(\cnt_min10[0]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_min10[0]_C_i_2 
       (.I0(\cnt_min10_reg[2]_P_n_0 ),
        .I1(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I2(\cnt_min10_reg[2]_C_n_0 ),
        .O(time_info[14]));
  LUT6 #(
    .INIT(64'h0007FFFF77070000)) 
    \cnt_min10[0]_P_i_1 
       (.I0(time_info[14]),
        .I1(time_info[13]),
        .I2(\cnt_min10_reg[0]_C_n_0 ),
        .I3(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I4(cnt_min100),
        .I5(\cnt_min10_reg[0]_P_n_0 ),
        .O(\cnt_min10[0]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0047FFFF47000000)) 
    \cnt_min10[1]_i_1 
       (.I0(\cnt_min10_reg[2]_P_n_0 ),
        .I1(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I2(\cnt_min10_reg[2]_C_n_0 ),
        .I3(time_info[12]),
        .I4(cnt_min100),
        .I5(time_info[13]),
        .O(\cnt_min10[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_min10[1]_i_2 
       (.I0(\cnt_min10_reg[0]_P_n_0 ),
        .I1(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I2(\cnt_min10_reg[0]_C_n_0 ),
        .O(time_info[12]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \cnt_min10[1]_i_3 
       (.I0(time_info[11]),
        .I1(time_info[8]),
        .I2(time_info[10]),
        .I3(time_info[9]),
        .I4(cnt_min101__4),
        .O(cnt_min100));
  LUT6 #(
    .INIT(64'h400BFFFF70080000)) 
    \cnt_min10[2]_C_i_1 
       (.I0(\cnt_min10_reg[2]_P_n_0 ),
        .I1(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I2(time_info[13]),
        .I3(time_info[12]),
        .I4(cnt_min100),
        .I5(\cnt_min10_reg[2]_C_n_0 ),
        .O(\cnt_min10[2]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h100EFFFFB0040000)) 
    \cnt_min10[2]_P_i_1 
       (.I0(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I1(\cnt_min10_reg[2]_C_n_0 ),
        .I2(time_info[13]),
        .I3(time_info[12]),
        .I4(cnt_min100),
        .I5(\cnt_min10_reg[2]_P_n_0 ),
        .O(\cnt_min10[2]_P_i_1_n_0 ));
  FDCE \cnt_min10_reg[0]_C 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(\cnt_sec1_reg[3]_LDC_i_1_n_0 ),
        .D(\cnt_min10[0]_C_i_1_n_0 ),
        .Q(\cnt_min10_reg[0]_C_n_0 ));
  FDPE \cnt_min10_reg[0]_P 
       (.C(clk_onesec),
        .CE(1'b1),
        .D(\cnt_min10[0]_P_i_1_n_0 ),
        .PRE(resetn_0),
        .Q(\cnt_min10_reg[0]_P_n_0 ));
  FDCE \cnt_min10_reg[1] 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_min10[1]_i_1_n_0 ),
        .Q(time_info[13]));
  FDCE \cnt_min10_reg[2]_C 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(\cnt_sec1_reg[3]_LDC_i_1_n_0 ),
        .D(\cnt_min10[2]_C_i_1_n_0 ),
        .Q(\cnt_min10_reg[2]_C_n_0 ));
  FDPE \cnt_min10_reg[2]_P 
       (.C(clk_onesec),
        .CE(1'b1),
        .D(\cnt_min10[2]_P_i_1_n_0 ),
        .PRE(resetn_0),
        .Q(\cnt_min10_reg[2]_P_n_0 ));
  LUT5 #(
    .INIT(32'h08FF2A00)) 
    \cnt_min1[0]_C_i_1 
       (.I0(\cnt_min1[1]_i_2_n_0 ),
        .I1(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I2(\cnt_min1_reg[0]_P_n_0 ),
        .I3(cnt_min1),
        .I4(\cnt_min1_reg[0]_C_n_0 ),
        .O(\cnt_min1[0]_C_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02FFA200)) 
    \cnt_min1[0]_P_i_1 
       (.I0(\cnt_min1[1]_i_2_n_0 ),
        .I1(\cnt_min1_reg[0]_C_n_0 ),
        .I2(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I3(cnt_min1),
        .I4(\cnt_min1_reg[0]_P_n_0 ),
        .O(\cnt_min1[0]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h202AFFFF8A800000)) 
    \cnt_min1[1]_i_1 
       (.I0(\cnt_min1[1]_i_2_n_0 ),
        .I1(\cnt_min1_reg[0]_P_n_0 ),
        .I2(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I3(\cnt_min1_reg[0]_C_n_0 ),
        .I4(cnt_min1),
        .I5(time_info[9]),
        .O(\cnt_min1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h010101FFFFFF01FF)) 
    \cnt_min1[1]_i_2 
       (.I0(time_info[8]),
        .I1(time_info[9]),
        .I2(time_info[10]),
        .I3(\cnt_min1_reg[3]_C_n_0 ),
        .I4(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I5(\cnt_min1_reg[3]_P_n_0 ),
        .O(\cnt_min1[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h15FF4000)) 
    \cnt_min1[2]_i_1 
       (.I0(time_info[11]),
        .I1(time_info[9]),
        .I2(time_info[8]),
        .I3(cnt_min1),
        .I4(time_info[10]),
        .O(\cnt_min1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_min1[2]_i_2 
       (.I0(\cnt_min1_reg[3]_P_n_0 ),
        .I1(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I2(\cnt_min1_reg[3]_C_n_0 ),
        .O(time_info[11]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_min1[2]_i_3 
       (.I0(\cnt_min1_reg[0]_P_n_0 ),
        .I1(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I2(\cnt_min1_reg[0]_C_n_0 ),
        .O(time_info[8]));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \cnt_min1[2]_i_4 
       (.I0(\cnt_sec10_reg_n_0_[1] ),
        .I1(time_info[1]),
        .I2(time_info[2]),
        .I3(\cnt_sec10[1]_i_2_n_0 ),
        .I4(time_info[0]),
        .I5(\cnt_min1[2]_i_5_n_0 ),
        .O(cnt_min1));
  LUT6 #(
    .INIT(64'h1D1D1DFFFFFF1DFF)) 
    \cnt_min1[2]_i_5 
       (.I0(\cnt_sec10_reg[2]_C_n_0 ),
        .I1(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I2(\cnt_sec10_reg[2]_P_n_0 ),
        .I3(\cnt_sec1_reg[3]_C_n_0 ),
        .I4(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I5(\cnt_sec1_reg[3]_P_n_0 ),
        .O(\cnt_min1[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4002FFFF40020000)) 
    \cnt_min1[3]_C_i_1 
       (.I0(time_info[11]),
        .I1(time_info[10]),
        .I2(time_info[8]),
        .I3(time_info[9]),
        .I4(cnt_min1),
        .I5(\cnt_min1_reg[3]_C_n_0 ),
        .O(\cnt_min1[3]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4002FFFF40020000)) 
    \cnt_min1[3]_P_i_1 
       (.I0(time_info[11]),
        .I1(time_info[10]),
        .I2(time_info[8]),
        .I3(time_info[9]),
        .I4(cnt_min1),
        .I5(\cnt_min1_reg[3]_P_n_0 ),
        .O(\cnt_min1[3]_P_i_1_n_0 ));
  FDCE \cnt_min1_reg[0]_C 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(\cnt_sec1_reg[3]_LDC_i_1_n_0 ),
        .D(\cnt_min1[0]_C_i_1_n_0 ),
        .Q(\cnt_min1_reg[0]_C_n_0 ));
  FDPE \cnt_min1_reg[0]_P 
       (.C(clk_onesec),
        .CE(1'b1),
        .D(\cnt_min1[0]_P_i_1_n_0 ),
        .PRE(resetn_0),
        .Q(\cnt_min1_reg[0]_P_n_0 ));
  FDCE \cnt_min1_reg[1] 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_min1[1]_i_1_n_0 ),
        .Q(time_info[9]));
  FDCE \cnt_min1_reg[2] 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_min1[2]_i_1_n_0 ),
        .Q(time_info[10]));
  FDCE \cnt_min1_reg[3]_C 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(\cnt_sec1_reg[3]_LDC_i_1_n_0 ),
        .D(\cnt_min1[3]_C_i_1_n_0 ),
        .Q(\cnt_min1_reg[3]_C_n_0 ));
  FDPE \cnt_min1_reg[3]_P 
       (.C(clk_onesec),
        .CE(1'b1),
        .D(\cnt_min1[3]_P_i_1_n_0 ),
        .PRE(resetn_0),
        .Q(\cnt_min1_reg[3]_P_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt_onesec[0]_i_10 
       (.I0(cnt_onesec_reg[5]),
        .I1(cnt_onesec_reg[8]),
        .I2(cnt_onesec_reg[9]),
        .I3(cnt_onesec_reg[6]),
        .I4(cnt_onesec_reg[7]),
        .O(\cnt_onesec[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[0]_i_2 
       (.I0(cnt_onesec_reg[0]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[0]_i_3 
       (.I0(cnt_onesec_reg[3]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[0]_i_4 
       (.I0(cnt_onesec_reg[2]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[0]_i_5 
       (.I0(cnt_onesec_reg[1]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000115155555555)) 
    \cnt_onesec[0]_i_6 
       (.I0(cnt_onesec_reg[0]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt_onesec[0]_i_7 
       (.I0(cnt_onesec_reg[17]),
        .I1(cnt_onesec_reg[20]),
        .I2(cnt_onesec_reg[21]),
        .I3(cnt_onesec_reg[18]),
        .I4(cnt_onesec_reg[19]),
        .O(\cnt_onesec[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h54555555FFFFFFFF)) 
    \cnt_onesec[0]_i_8 
       (.I0(cnt_onesec_reg[14]),
        .I1(\cnt_onesec[0]_i_9_n_0 ),
        .I2(clk_onesec_i_13_n_0),
        .I3(cnt_onesec_reg[12]),
        .I4(cnt_onesec_reg[13]),
        .I5(cnt_onesec_reg[15]),
        .O(\cnt_onesec[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \cnt_onesec[0]_i_9 
       (.I0(cnt_onesec_reg[0]),
        .I1(cnt_onesec_reg[4]),
        .I2(cnt_onesec_reg[3]),
        .I3(cnt_onesec_reg[2]),
        .I4(cnt_onesec_reg[1]),
        .I5(\cnt_onesec[0]_i_10_n_0 ),
        .O(\cnt_onesec[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000044C4CCCCCCCC)) 
    \cnt_onesec[12]_i_2 
       (.I0(\cnt_onesec[0]_i_7_n_0 ),
        .I1(cnt_onesec_reg[15]),
        .I2(\cnt_onesec[12]_i_6_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[12]_i_3 
       (.I0(cnt_onesec_reg[14]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[12]_i_4 
       (.I0(cnt_onesec_reg[13]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[12]_i_5 
       (.I0(cnt_onesec_reg[12]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF7FFF)) 
    \cnt_onesec[12]_i_6 
       (.I0(cnt_onesec_reg[13]),
        .I1(cnt_onesec_reg[12]),
        .I2(cnt_onesec_reg[11]),
        .I3(cnt_onesec_reg[10]),
        .I4(\cnt_onesec[0]_i_9_n_0 ),
        .I5(cnt_onesec_reg[14]),
        .O(\cnt_onesec[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[16]_i_2 
       (.I0(cnt_onesec_reg[19]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[16]_i_3 
       (.I0(cnt_onesec_reg[18]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[16]_i_4 
       (.I0(cnt_onesec_reg[17]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h04CC)) 
    \cnt_onesec[16]_i_5 
       (.I0(\cnt_onesec[0]_i_7_n_0 ),
        .I1(cnt_onesec_reg[16]),
        .I2(cnt_onesec_reg[22]),
        .I3(cnt_onesec_reg[23]),
        .O(\cnt_onesec[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000055F700000000)) 
    \cnt_onesec[20]_i_2 
       (.I0(\cnt_onesec[0]_i_7_n_0 ),
        .I1(cnt_onesec_reg[15]),
        .I2(\cnt_onesec[12]_i_6_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_onesec[20]_i_3 
       (.I0(cnt_onesec_reg[22]),
        .I1(cnt_onesec_reg[23]),
        .O(\cnt_onesec[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[20]_i_4 
       (.I0(cnt_onesec_reg[21]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[20]_i_5 
       (.I0(cnt_onesec_reg[20]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[4]_i_2 
       (.I0(cnt_onesec_reg[7]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[4]_i_3 
       (.I0(cnt_onesec_reg[6]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[4]_i_4 
       (.I0(cnt_onesec_reg[5]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[4]_i_5 
       (.I0(cnt_onesec_reg[4]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[8]_i_2 
       (.I0(cnt_onesec_reg[11]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[8]_i_3 
       (.I0(cnt_onesec_reg[10]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[8]_i_4 
       (.I0(cnt_onesec_reg[9]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \cnt_onesec[8]_i_5 
       (.I0(cnt_onesec_reg[8]),
        .I1(\cnt_onesec[0]_i_7_n_0 ),
        .I2(\cnt_onesec[0]_i_8_n_0 ),
        .I3(cnt_onesec_reg[16]),
        .I4(cnt_onesec_reg[22]),
        .I5(cnt_onesec_reg[23]),
        .O(\cnt_onesec[8]_i_5_n_0 ));
  FDCE \cnt_onesec_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[0]_i_1_n_7 ),
        .Q(cnt_onesec_reg[0]));
  CARRY4 \cnt_onesec_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_onesec_reg[0]_i_1_n_0 ,\cnt_onesec_reg[0]_i_1_n_1 ,\cnt_onesec_reg[0]_i_1_n_2 ,\cnt_onesec_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\cnt_onesec[0]_i_2_n_0 }),
        .O({\cnt_onesec_reg[0]_i_1_n_4 ,\cnt_onesec_reg[0]_i_1_n_5 ,\cnt_onesec_reg[0]_i_1_n_6 ,\cnt_onesec_reg[0]_i_1_n_7 }),
        .S({\cnt_onesec[0]_i_3_n_0 ,\cnt_onesec[0]_i_4_n_0 ,\cnt_onesec[0]_i_5_n_0 ,\cnt_onesec[0]_i_6_n_0 }));
  FDCE \cnt_onesec_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[8]_i_1_n_5 ),
        .Q(cnt_onesec_reg[10]));
  FDCE \cnt_onesec_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[8]_i_1_n_4 ),
        .Q(cnt_onesec_reg[11]));
  FDCE \cnt_onesec_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[12]_i_1_n_7 ),
        .Q(cnt_onesec_reg[12]));
  CARRY4 \cnt_onesec_reg[12]_i_1 
       (.CI(\cnt_onesec_reg[8]_i_1_n_0 ),
        .CO({\cnt_onesec_reg[12]_i_1_n_0 ,\cnt_onesec_reg[12]_i_1_n_1 ,\cnt_onesec_reg[12]_i_1_n_2 ,\cnt_onesec_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_onesec_reg[12]_i_1_n_4 ,\cnt_onesec_reg[12]_i_1_n_5 ,\cnt_onesec_reg[12]_i_1_n_6 ,\cnt_onesec_reg[12]_i_1_n_7 }),
        .S({\cnt_onesec[12]_i_2_n_0 ,\cnt_onesec[12]_i_3_n_0 ,\cnt_onesec[12]_i_4_n_0 ,\cnt_onesec[12]_i_5_n_0 }));
  FDCE \cnt_onesec_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[12]_i_1_n_6 ),
        .Q(cnt_onesec_reg[13]));
  FDCE \cnt_onesec_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[12]_i_1_n_5 ),
        .Q(cnt_onesec_reg[14]));
  FDCE \cnt_onesec_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[12]_i_1_n_4 ),
        .Q(cnt_onesec_reg[15]));
  FDCE \cnt_onesec_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[16]_i_1_n_7 ),
        .Q(cnt_onesec_reg[16]));
  CARRY4 \cnt_onesec_reg[16]_i_1 
       (.CI(\cnt_onesec_reg[12]_i_1_n_0 ),
        .CO({\cnt_onesec_reg[16]_i_1_n_0 ,\cnt_onesec_reg[16]_i_1_n_1 ,\cnt_onesec_reg[16]_i_1_n_2 ,\cnt_onesec_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_onesec_reg[16]_i_1_n_4 ,\cnt_onesec_reg[16]_i_1_n_5 ,\cnt_onesec_reg[16]_i_1_n_6 ,\cnt_onesec_reg[16]_i_1_n_7 }),
        .S({\cnt_onesec[16]_i_2_n_0 ,\cnt_onesec[16]_i_3_n_0 ,\cnt_onesec[16]_i_4_n_0 ,\cnt_onesec[16]_i_5_n_0 }));
  FDCE \cnt_onesec_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[16]_i_1_n_6 ),
        .Q(cnt_onesec_reg[17]));
  FDCE \cnt_onesec_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[16]_i_1_n_5 ),
        .Q(cnt_onesec_reg[18]));
  FDCE \cnt_onesec_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[16]_i_1_n_4 ),
        .Q(cnt_onesec_reg[19]));
  FDCE \cnt_onesec_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[0]_i_1_n_6 ),
        .Q(cnt_onesec_reg[1]));
  FDCE \cnt_onesec_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[20]_i_1_n_7 ),
        .Q(cnt_onesec_reg[20]));
  CARRY4 \cnt_onesec_reg[20]_i_1 
       (.CI(\cnt_onesec_reg[16]_i_1_n_0 ),
        .CO({\NLW_cnt_onesec_reg[20]_i_1_CO_UNCONNECTED [3],\cnt_onesec_reg[20]_i_1_n_1 ,\cnt_onesec_reg[20]_i_1_n_2 ,\cnt_onesec_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_onesec_reg[20]_i_1_n_4 ,\cnt_onesec_reg[20]_i_1_n_5 ,\cnt_onesec_reg[20]_i_1_n_6 ,\cnt_onesec_reg[20]_i_1_n_7 }),
        .S({\cnt_onesec[20]_i_2_n_0 ,\cnt_onesec[20]_i_3_n_0 ,\cnt_onesec[20]_i_4_n_0 ,\cnt_onesec[20]_i_5_n_0 }));
  FDCE \cnt_onesec_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[20]_i_1_n_6 ),
        .Q(cnt_onesec_reg[21]));
  FDCE \cnt_onesec_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[20]_i_1_n_5 ),
        .Q(cnt_onesec_reg[22]));
  FDCE \cnt_onesec_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[20]_i_1_n_4 ),
        .Q(cnt_onesec_reg[23]));
  FDCE \cnt_onesec_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[0]_i_1_n_5 ),
        .Q(cnt_onesec_reg[2]));
  FDCE \cnt_onesec_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[0]_i_1_n_4 ),
        .Q(cnt_onesec_reg[3]));
  FDCE \cnt_onesec_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[4]_i_1_n_7 ),
        .Q(cnt_onesec_reg[4]));
  CARRY4 \cnt_onesec_reg[4]_i_1 
       (.CI(\cnt_onesec_reg[0]_i_1_n_0 ),
        .CO({\cnt_onesec_reg[4]_i_1_n_0 ,\cnt_onesec_reg[4]_i_1_n_1 ,\cnt_onesec_reg[4]_i_1_n_2 ,\cnt_onesec_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_onesec_reg[4]_i_1_n_4 ,\cnt_onesec_reg[4]_i_1_n_5 ,\cnt_onesec_reg[4]_i_1_n_6 ,\cnt_onesec_reg[4]_i_1_n_7 }),
        .S({\cnt_onesec[4]_i_2_n_0 ,\cnt_onesec[4]_i_3_n_0 ,\cnt_onesec[4]_i_4_n_0 ,\cnt_onesec[4]_i_5_n_0 }));
  FDCE \cnt_onesec_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[4]_i_1_n_6 ),
        .Q(cnt_onesec_reg[5]));
  FDCE \cnt_onesec_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[4]_i_1_n_5 ),
        .Q(cnt_onesec_reg[6]));
  FDCE \cnt_onesec_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[4]_i_1_n_4 ),
        .Q(cnt_onesec_reg[7]));
  FDCE \cnt_onesec_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[8]_i_1_n_7 ),
        .Q(cnt_onesec_reg[8]));
  CARRY4 \cnt_onesec_reg[8]_i_1 
       (.CI(\cnt_onesec_reg[4]_i_1_n_0 ),
        .CO({\cnt_onesec_reg[8]_i_1_n_0 ,\cnt_onesec_reg[8]_i_1_n_1 ,\cnt_onesec_reg[8]_i_1_n_2 ,\cnt_onesec_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_onesec_reg[8]_i_1_n_4 ,\cnt_onesec_reg[8]_i_1_n_5 ,\cnt_onesec_reg[8]_i_1_n_6 ,\cnt_onesec_reg[8]_i_1_n_7 }),
        .S({\cnt_onesec[8]_i_2_n_0 ,\cnt_onesec[8]_i_3_n_0 ,\cnt_onesec[8]_i_4_n_0 ,\cnt_onesec[8]_i_5_n_0 }));
  FDCE \cnt_onesec_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_onesec_reg[8]_i_1_n_6 ),
        .Q(cnt_onesec_reg[9]));
  LUT6 #(
    .INIT(64'h0070FFFF07770000)) 
    \cnt_sec10[0]_C_i_1 
       (.I0(\cnt_sec10[0]_C_i_2_n_0 ),
        .I1(\cnt_sec10_reg_n_0_[1] ),
        .I2(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I3(\cnt_sec10_reg[0]_P_n_0 ),
        .I4(\cnt_sec10[1]_i_3_n_0 ),
        .I5(\cnt_sec10_reg[0]_C_n_0 ),
        .O(\cnt_sec10[0]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_sec10[0]_C_i_2 
       (.I0(\cnt_sec10_reg[2]_P_n_0 ),
        .I1(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I2(\cnt_sec10_reg[2]_C_n_0 ),
        .O(\cnt_sec10[0]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0007FFFF77070000)) 
    \cnt_sec10[0]_P_i_1 
       (.I0(\cnt_sec10[0]_C_i_2_n_0 ),
        .I1(\cnt_sec10_reg_n_0_[1] ),
        .I2(\cnt_sec10_reg[0]_C_n_0 ),
        .I3(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I4(\cnt_sec10[1]_i_3_n_0 ),
        .I5(\cnt_sec10_reg[0]_P_n_0 ),
        .O(\cnt_sec10[0]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0047FFFF47000000)) 
    \cnt_sec10[1]_i_1 
       (.I0(\cnt_sec10_reg[2]_P_n_0 ),
        .I1(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I2(\cnt_sec10_reg[2]_C_n_0 ),
        .I3(\cnt_sec10[1]_i_2_n_0 ),
        .I4(\cnt_sec10[1]_i_3_n_0 ),
        .I5(\cnt_sec10_reg_n_0_[1] ),
        .O(\cnt_sec10[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_sec10[1]_i_2 
       (.I0(\cnt_sec10_reg[0]_P_n_0 ),
        .I1(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I2(\cnt_sec10_reg[0]_C_n_0 ),
        .O(\cnt_sec10[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000101010000000)) 
    \cnt_sec10[1]_i_3 
       (.I0(time_info[1]),
        .I1(time_info[2]),
        .I2(time_info[0]),
        .I3(\cnt_sec1_reg[3]_P_n_0 ),
        .I4(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I5(\cnt_sec1_reg[3]_C_n_0 ),
        .O(\cnt_sec10[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h400BFFFF70080000)) 
    \cnt_sec10[2]_C_i_1 
       (.I0(\cnt_sec10_reg[2]_P_n_0 ),
        .I1(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I2(\cnt_sec10_reg_n_0_[1] ),
        .I3(\cnt_sec10[1]_i_2_n_0 ),
        .I4(\cnt_sec10[1]_i_3_n_0 ),
        .I5(\cnt_sec10_reg[2]_C_n_0 ),
        .O(\cnt_sec10[2]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h100EFFFFB0040000)) 
    \cnt_sec10[2]_P_i_1 
       (.I0(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I1(\cnt_sec10_reg[2]_C_n_0 ),
        .I2(\cnt_sec10_reg_n_0_[1] ),
        .I3(\cnt_sec10[1]_i_2_n_0 ),
        .I4(\cnt_sec10[1]_i_3_n_0 ),
        .I5(\cnt_sec10_reg[2]_P_n_0 ),
        .O(\cnt_sec10[2]_P_i_1_n_0 ));
  FDCE \cnt_sec10_reg[0]_C 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(\cnt_sec1_reg[3]_LDC_i_1_n_0 ),
        .D(\cnt_sec10[0]_C_i_1_n_0 ),
        .Q(\cnt_sec10_reg[0]_C_n_0 ));
  FDPE \cnt_sec10_reg[0]_P 
       (.C(clk_onesec),
        .CE(1'b1),
        .D(\cnt_sec10[0]_P_i_1_n_0 ),
        .PRE(resetn_0),
        .Q(\cnt_sec10_reg[0]_P_n_0 ));
  FDCE \cnt_sec10_reg[1] 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_sec10[1]_i_1_n_0 ),
        .Q(\cnt_sec10_reg_n_0_[1] ));
  FDCE \cnt_sec10_reg[2]_C 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(\cnt_sec1_reg[3]_LDC_i_1_n_0 ),
        .D(\cnt_sec10[2]_C_i_1_n_0 ),
        .Q(\cnt_sec10_reg[2]_C_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \cnt_sec10_reg[2]_LDC 
       (.CLR(\cnt_sec1_reg[3]_LDC_i_1_n_0 ),
        .D(1'b1),
        .G(resetn),
        .GE(1'b1),
        .Q(\cnt_sec10_reg[2]_LDC_n_0 ));
  FDPE \cnt_sec10_reg[2]_P 
       (.C(clk_onesec),
        .CE(1'b1),
        .D(\cnt_sec10[2]_P_i_1_n_0 ),
        .PRE(resetn_0),
        .Q(\cnt_sec10_reg[2]_P_n_0 ));
  LUT6 #(
    .INIT(64'h00000000474747FF)) 
    \cnt_sec1[0]_C_i_1 
       (.I0(\cnt_sec1_reg[3]_P_n_0 ),
        .I1(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I2(\cnt_sec1_reg[3]_C_n_0 ),
        .I3(time_info[2]),
        .I4(time_info[1]),
        .I5(time_info[0]),
        .O(\cnt_sec1[0]_C_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00474700)) 
    \cnt_sec1[1]_i_1 
       (.I0(\cnt_sec1_reg[3]_P_n_0 ),
        .I1(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I2(\cnt_sec1_reg[3]_C_n_0 ),
        .I3(time_info[1]),
        .I4(time_info[0]),
        .O(\cnt_sec1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0047470047004700)) 
    \cnt_sec1[2]_i_1 
       (.I0(\cnt_sec1_reg[3]_P_n_0 ),
        .I1(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I2(\cnt_sec1_reg[3]_C_n_0 ),
        .I3(time_info[2]),
        .I4(time_info[1]),
        .I5(time_info[0]),
        .O(\cnt_sec1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_sec1[2]_i_2 
       (.I0(\cnt_sec1_reg[0]_P_n_0 ),
        .I1(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I2(\cnt_sec1_reg[0]_C_n_0 ),
        .O(time_info[0]));
  LUT6 #(
    .INIT(64'h47000000000000B8)) 
    \cnt_sec1[3]_C_i_1 
       (.I0(\cnt_sec1_reg[3]_P_n_0 ),
        .I1(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I2(\cnt_sec1_reg[3]_C_n_0 ),
        .I3(time_info[2]),
        .I4(time_info[0]),
        .I5(time_info[1]),
        .O(\cnt_sec1[3]_C_i_1_n_0 ));
  FDCE \cnt_sec1_reg[0]_C 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(\cnt_sec1_reg[3]_LDC_i_1_n_0 ),
        .D(\cnt_sec1[0]_C_i_1_n_0 ),
        .Q(\cnt_sec1_reg[0]_C_n_0 ));
  FDPE \cnt_sec1_reg[0]_P 
       (.C(clk_onesec),
        .CE(1'b1),
        .D(\cnt_sec1[0]_C_i_1_n_0 ),
        .PRE(resetn_0),
        .Q(\cnt_sec1_reg[0]_P_n_0 ));
  FDCE \cnt_sec1_reg[1] 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_sec1[1]_i_1_n_0 ),
        .Q(time_info[1]));
  FDCE \cnt_sec1_reg[2] 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(clk_onesec_i_2_n_0),
        .D(\cnt_sec1[2]_i_1_n_0 ),
        .Q(time_info[2]));
  FDCE \cnt_sec1_reg[3]_C 
       (.C(clk_onesec),
        .CE(1'b1),
        .CLR(\cnt_sec1_reg[3]_LDC_i_1_n_0 ),
        .D(\cnt_sec1[3]_C_i_1_n_0 ),
        .Q(\cnt_sec1_reg[3]_C_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \cnt_sec1_reg[3]_LDC 
       (.CLR(\cnt_sec1_reg[3]_LDC_i_1_n_0 ),
        .D(1'b1),
        .G(resetn),
        .GE(1'b1),
        .Q(\cnt_sec1_reg[3]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sec1_reg[3]_LDC_i_1 
       (.I0(resetn),
        .I1(Q[2]),
        .O(\cnt_sec1_reg[3]_LDC_i_1_n_0 ));
  FDPE \cnt_sec1_reg[3]_P 
       (.C(clk_onesec),
        .CE(1'b1),
        .D(\cnt_sec1[3]_C_i_1_n_0 ),
        .PRE(resetn_0),
        .Q(\cnt_sec1_reg[3]_P_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    lcd_en_i_2
       (.I0(resetn),
        .O(resetn_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \slv_reg1[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(slv_reg_wren__0),
        .I2(\cnt_sec1_reg[0]_P_n_0 ),
        .I3(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I4(\cnt_sec1_reg[0]_C_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \slv_reg1[10]_i_1 
       (.I0(s00_axi_wdata[9]),
        .I1(\slv_reg1_reg[1] ),
        .I2(\slv_reg1_reg[1]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(time_info[10]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \slv_reg1[11]_i_1 
       (.I0(s00_axi_wdata[10]),
        .I1(slv_reg_wren__0),
        .I2(\cnt_min1_reg[3]_P_n_0 ),
        .I3(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I4(\cnt_min1_reg[3]_C_n_0 ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \slv_reg1[12]_i_1 
       (.I0(s00_axi_wdata[11]),
        .I1(slv_reg_wren__0),
        .I2(\cnt_min10_reg[0]_P_n_0 ),
        .I3(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I4(\cnt_min10_reg[0]_C_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \slv_reg1[13]_i_1 
       (.I0(s00_axi_wdata[12]),
        .I1(\slv_reg1_reg[1] ),
        .I2(\slv_reg1_reg[1]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(time_info[13]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \slv_reg1[14]_i_1 
       (.I0(s00_axi_wdata[13]),
        .I1(slv_reg_wren__0),
        .I2(\cnt_min10_reg[2]_P_n_0 ),
        .I3(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I4(\cnt_min10_reg[2]_C_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \slv_reg1[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg1_reg[1] ),
        .I2(\slv_reg1_reg[1]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(time_info[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \slv_reg1[2]_i_1 
       (.I0(s00_axi_wdata[2]),
        .I1(\slv_reg1_reg[1] ),
        .I2(\slv_reg1_reg[1]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(time_info[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \slv_reg1[3]_i_1 
       (.I0(s00_axi_wdata[3]),
        .I1(slv_reg_wren__0),
        .I2(\cnt_sec1_reg[3]_P_n_0 ),
        .I3(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I4(\cnt_sec1_reg[3]_C_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \slv_reg1[4]_i_1 
       (.I0(s00_axi_wdata[4]),
        .I1(slv_reg_wren__0),
        .I2(\cnt_sec10_reg[0]_P_n_0 ),
        .I3(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I4(\cnt_sec10_reg[0]_C_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \slv_reg1[5]_i_1 
       (.I0(s00_axi_wdata[5]),
        .I1(\slv_reg1_reg[1] ),
        .I2(\slv_reg1_reg[1]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(\cnt_sec10_reg_n_0_[1] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \slv_reg1[6]_i_1 
       (.I0(s00_axi_wdata[6]),
        .I1(slv_reg_wren__0),
        .I2(\cnt_sec10_reg[2]_P_n_0 ),
        .I3(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I4(\cnt_sec10_reg[2]_C_n_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \slv_reg1[8]_i_1 
       (.I0(s00_axi_wdata[7]),
        .I1(slv_reg_wren__0),
        .I2(\cnt_min1_reg[0]_P_n_0 ),
        .I3(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I4(\cnt_min1_reg[0]_C_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \slv_reg1[9]_i_1 
       (.I0(s00_axi_wdata[8]),
        .I1(\slv_reg1_reg[1] ),
        .I2(\slv_reg1_reg[1]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(time_info[9]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h40444000)) 
    \textdata_g[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_min10_reg[0]_P_n_0 ),
        .I3(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I4(\cnt_min10_reg[0]_C_n_0 ),
        .O(\slv_reg0_reg[1] [0]));
  LUT5 #(
    .INIT(32'h40444000)) 
    \textdata_g[16]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_hour1_reg[0]_P_n_0 ),
        .I3(\cnt_hour1_reg[1]_LDC_n_0 ),
        .I4(\cnt_hour1_reg[0]_C_n_0 ),
        .O(\slv_reg0_reg[1] [3]));
  LUT5 #(
    .INIT(32'h40444000)) 
    \textdata_g[17]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_hour1_reg[1]_P_n_0 ),
        .I3(\cnt_hour1_reg[1]_LDC_n_0 ),
        .I4(\cnt_hour1_reg[1]_C_n_0 ),
        .O(\slv_reg0_reg[1] [4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \textdata_g[18]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(cnt_hour1[2]),
        .O(\slv_reg0_reg[1] [5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \textdata_g[19]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(cnt_hour1[3]),
        .O(\slv_reg0_reg[1] [6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \textdata_g[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(time_info[13]),
        .O(\slv_reg0_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \textdata_g[24]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(cnt_hour10[0]),
        .O(\slv_reg0_reg[1] [7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h40444000)) 
    \textdata_g[25]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_hour10_reg[1]_P_n_0 ),
        .I3(\cnt_hour10_reg[1]_LDC_n_0 ),
        .I4(\cnt_hour10_reg[1]_C_n_0 ),
        .O(\slv_reg0_reg[1] [8]));
  LUT5 #(
    .INIT(32'h40444000)) 
    \textdata_g[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_min10_reg[2]_P_n_0 ),
        .I3(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I4(\cnt_min10_reg[2]_C_n_0 ),
        .O(\slv_reg0_reg[1] [2]));
  LUT5 #(
    .INIT(32'h40444000)) 
    \textdata_h[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_sec1_reg[0]_P_n_0 ),
        .I3(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I4(\cnt_sec1_reg[0]_C_n_0 ),
        .O(\slv_reg0_reg[1]_0 [0]));
  LUT5 #(
    .INIT(32'h40444000)) 
    \textdata_h[10]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_sec10_reg[2]_P_n_0 ),
        .I3(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I4(\cnt_sec10_reg[2]_C_n_0 ),
        .O(\slv_reg0_reg[1]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \textdata_h[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(time_info[1]),
        .O(\slv_reg0_reg[1]_0 [1]));
  LUT5 #(
    .INIT(32'h40444000)) 
    \textdata_h[24]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_min1_reg[0]_P_n_0 ),
        .I3(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I4(\cnt_min1_reg[0]_C_n_0 ),
        .O(\slv_reg0_reg[1]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \textdata_h[25]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(time_info[9]),
        .O(\slv_reg0_reg[1]_0 [8]));
  LUT3 #(
    .INIT(8'h40)) 
    \textdata_h[26]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(time_info[10]),
        .O(\slv_reg0_reg[1]_0 [9]));
  LUT5 #(
    .INIT(32'h40444000)) 
    \textdata_h[27]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_min1_reg[3]_P_n_0 ),
        .I3(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I4(\cnt_min1_reg[3]_C_n_0 ),
        .O(\slv_reg0_reg[1]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \textdata_h[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(time_info[2]),
        .O(\slv_reg0_reg[1]_0 [2]));
  LUT5 #(
    .INIT(32'h40444000)) 
    \textdata_h[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_sec1_reg[3]_P_n_0 ),
        .I3(\cnt_sec1_reg[3]_LDC_n_0 ),
        .I4(\cnt_sec1_reg[3]_C_n_0 ),
        .O(\slv_reg0_reg[1]_0 [3]));
  LUT5 #(
    .INIT(32'h40444000)) 
    \textdata_h[8]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_sec10_reg[0]_P_n_0 ),
        .I3(\cnt_sec10_reg[2]_LDC_n_0 ),
        .I4(\cnt_sec10_reg[0]_C_n_0 ),
        .O(\slv_reg0_reg[1]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \textdata_h[9]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_sec10_reg_n_0_[1] ),
        .O(\slv_reg0_reg[1]_0 [5]));
endmodule

(* ORIG_REF_NAME = "digital_clock" *) 
module system_textlcd_2_0_0_digital_clock
   (resetn_0,
    data9,
    data6,
    \textdata_b_reg[22]_0 ,
    data15,
    \textdata_e_reg[30]_0 ,
    data4,
    \textdata_b_reg[11]_0 ,
    D,
    \textdata_b_reg[12]_0 ,
    \textdata_c_reg[22]_0 ,
    \textdata_b_reg[2]_0 ,
    \textdata_b_reg[30]_0 ,
    \textdata_b_reg[2]_1 ,
    \textdata_h_reg[0]_0 ,
    \textdata_h_reg[1]_0 ,
    \textdata_h_reg[4]_0 ,
    \textdata_g_reg[2]_0 ,
    clk,
    \lcd_data[1]_INST_0_i_1 ,
    \lcd_data[1]_INST_0_i_1_0 ,
    Q,
    resetn,
    s00_axi_wdata,
    slv_reg_wren__0,
    \slv_reg1_reg[1] ,
    \slv_reg1_reg[1]_0 ,
    s00_axi_awvalid,
    s00_axi_wvalid,
    \lcd_data[2]_INST_0_i_1 ,
    \lcd_data[1]_INST_0_i_2 ,
    \lcd_data[2]_INST_0_i_2 );
  output resetn_0;
  output [1:0]data9;
  output [1:0]data6;
  output [1:0]\textdata_b_reg[22]_0 ;
  output [4:0]data15;
  output \textdata_e_reg[30]_0 ;
  output [0:0]data4;
  output \textdata_b_reg[11]_0 ;
  output [13:0]D;
  output \textdata_b_reg[12]_0 ;
  output \textdata_c_reg[22]_0 ;
  output \textdata_b_reg[2]_0 ;
  output \textdata_b_reg[30]_0 ;
  output \textdata_b_reg[2]_1 ;
  output \textdata_h_reg[0]_0 ;
  output \textdata_h_reg[1]_0 ;
  output \textdata_h_reg[4]_0 ;
  output \textdata_g_reg[2]_0 ;
  input clk;
  input \lcd_data[1]_INST_0_i_1 ;
  input \lcd_data[1]_INST_0_i_1_0 ;
  input [2:0]Q;
  input resetn;
  input [13:0]s00_axi_wdata;
  input slv_reg_wren__0;
  input \slv_reg1_reg[1] ;
  input \slv_reg1_reg[1]_0 ;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input \lcd_data[2]_INST_0_i_1 ;
  input [4:0]\lcd_data[1]_INST_0_i_2 ;
  input \lcd_data[2]_INST_0_i_2 ;

  wire [13:0]D;
  wire [2:0]Q;
  wire clk;
  wire [4:0]data15;
  wire [0:0]data4;
  wire [4:1]data5;
  wire [1:0]data6;
  wire [2:2]data7;
  wire [1:0]data9;
  wire \lcd_data[0]_INST_0_i_7_n_0 ;
  wire \lcd_data[0]_INST_0_i_8_n_0 ;
  wire \lcd_data[1]_INST_0_i_1 ;
  wire \lcd_data[1]_INST_0_i_10_n_0 ;
  wire \lcd_data[1]_INST_0_i_11_n_0 ;
  wire \lcd_data[1]_INST_0_i_1_0 ;
  wire [4:0]\lcd_data[1]_INST_0_i_2 ;
  wire \lcd_data[2]_INST_0_i_1 ;
  wire \lcd_data[2]_INST_0_i_2 ;
  wire \lcd_data[2]_INST_0_i_7_n_0 ;
  wire \lcd_data[3]_INST_0_i_9_n_0 ;
  wire resetn;
  wire resetn_0;
  wire s00_axi_awvalid;
  wire [13:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire \slv_reg1_reg[1] ;
  wire \slv_reg1_reg[1]_0 ;
  wire slv_reg_wren__0;
  wire \textdata_b[12]_i_1_n_0 ;
  wire \textdata_b[17]_i_1_n_0 ;
  wire \textdata_b[20]_i_1_n_0 ;
  wire \textdata_b[22]_i_1_n_0 ;
  wire \textdata_b[30]_i_1_n_0 ;
  wire \textdata_b_reg[11]_0 ;
  wire \textdata_b_reg[12]_0 ;
  wire [1:0]\textdata_b_reg[22]_0 ;
  wire \textdata_b_reg[2]_0 ;
  wire \textdata_b_reg[2]_1 ;
  wire \textdata_b_reg[30]_0 ;
  wire [20:20]textdata_c;
  wire \textdata_c[22]_i_1_n_0 ;
  wire \textdata_c_reg[22]_0 ;
  wire \textdata_e[30]_i_1_n_0 ;
  wire \textdata_e_reg[30]_0 ;
  wire [25:0]textdata_g;
  wire \textdata_g[25]_i_1_n_0 ;
  wire \textdata_g_reg[2]_0 ;
  wire \textdata_g_reg_n_0_[0] ;
  wire \textdata_g_reg_n_0_[16] ;
  wire \textdata_g_reg_n_0_[17] ;
  wire \textdata_g_reg_n_0_[18] ;
  wire \textdata_g_reg_n_0_[19] ;
  wire \textdata_g_reg_n_0_[1] ;
  wire \textdata_g_reg_n_0_[24] ;
  wire \textdata_g_reg_n_0_[25] ;
  wire \textdata_g_reg_n_0_[2] ;
  wire [27:0]textdata_h;
  wire \textdata_h_reg[0]_0 ;
  wire \textdata_h_reg[1]_0 ;
  wire \textdata_h_reg[4]_0 ;
  wire \textdata_h_reg_n_0_[10] ;
  wire \textdata_h_reg_n_0_[24] ;
  wire \textdata_h_reg_n_0_[25] ;
  wire \textdata_h_reg_n_0_[26] ;
  wire \textdata_h_reg_n_0_[27] ;
  wire \textdata_h_reg_n_0_[8] ;
  wire \textdata_h_reg_n_0_[9] ;

  system_textlcd_2_0_0_clk_divider clk_divider_u0
       (.D(D),
        .Q(Q),
        .clk(clk),
        .resetn(resetn),
        .resetn_0(resetn_0),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg0_reg[1] ({textdata_g[25:24],textdata_g[19:16],textdata_g[2:0]}),
        .\slv_reg0_reg[1]_0 ({textdata_h[27:24],textdata_h[10:8],textdata_h[3:0]}),
        .\slv_reg1_reg[1] (\slv_reg1_reg[1] ),
        .\slv_reg1_reg[1]_0 (\slv_reg1_reg[1]_0 ),
        .slv_reg_wren__0(slv_reg_wren__0));
  LUT6 #(
    .INIT(64'hFFCFFFC0AF0FA00F)) 
    \lcd_data[0]_INST_0_i_4 
       (.I0(data9[1]),
        .I1(data6[1]),
        .I2(\lcd_data[2]_INST_0_i_1 ),
        .I3(\lcd_data[1]_INST_0_i_1_0 ),
        .I4(\textdata_b_reg[22]_0 [1]),
        .I5(\lcd_data[1]_INST_0_i_1 ),
        .O(\textdata_c_reg[22]_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \lcd_data[0]_INST_0_i_6 
       (.I0(data15[0]),
        .I1(\lcd_data[1]_INST_0_i_2 [3]),
        .I2(\lcd_data[1]_INST_0_i_2 [4]),
        .I3(\lcd_data[0]_INST_0_i_7_n_0 ),
        .I4(\lcd_data[1]_INST_0_i_2 [2]),
        .I5(\lcd_data[0]_INST_0_i_8_n_0 ),
        .O(\textdata_h_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \lcd_data[0]_INST_0_i_7 
       (.I0(data15[0]),
        .I1(\textdata_h_reg_n_0_[8] ),
        .I2(\lcd_data[1]_INST_0_i_2 [1]),
        .I3(\textdata_h_reg_n_0_[24] ),
        .I4(\lcd_data[1]_INST_0_i_2 [0]),
        .O(\lcd_data[0]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \lcd_data[0]_INST_0_i_8 
       (.I0(\textdata_g_reg_n_0_[0] ),
        .I1(\lcd_data[1]_INST_0_i_2 [1]),
        .I2(\textdata_g_reg_n_0_[16] ),
        .I3(\lcd_data[1]_INST_0_i_2 [0]),
        .I4(\textdata_g_reg_n_0_[24] ),
        .O(\lcd_data[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \lcd_data[1]_INST_0_i_10 
       (.I0(data15[1]),
        .I1(\textdata_h_reg_n_0_[9] ),
        .I2(\lcd_data[1]_INST_0_i_2 [1]),
        .I3(data15[4]),
        .I4(\lcd_data[1]_INST_0_i_2 [0]),
        .I5(\textdata_h_reg_n_0_[25] ),
        .O(\lcd_data[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \lcd_data[1]_INST_0_i_11 
       (.I0(\textdata_g_reg_n_0_[1] ),
        .I1(data15[4]),
        .I2(\lcd_data[1]_INST_0_i_2 [1]),
        .I3(\textdata_g_reg_n_0_[17] ),
        .I4(\lcd_data[1]_INST_0_i_2 [0]),
        .I5(\textdata_g_reg_n_0_[25] ),
        .O(\lcd_data[1]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \lcd_data[1]_INST_0_i_4 
       (.I0(data7),
        .I1(\lcd_data[1]_INST_0_i_1_0 ),
        .I2(data5[1]),
        .I3(\lcd_data[1]_INST_0_i_1 ),
        .I4(data4),
        .O(\textdata_b_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \lcd_data[1]_INST_0_i_7 
       (.I0(data15[1]),
        .I1(\lcd_data[1]_INST_0_i_2 [3]),
        .I2(\lcd_data[1]_INST_0_i_2 [4]),
        .I3(\lcd_data[1]_INST_0_i_10_n_0 ),
        .I4(\lcd_data[1]_INST_0_i_2 [2]),
        .I5(\lcd_data[1]_INST_0_i_11_n_0 ),
        .O(\textdata_h_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFAFC0C0FF000F0F)) 
    \lcd_data[2]_INST_0_i_4 
       (.I0(data7),
        .I1(data6[1]),
        .I2(\lcd_data[2]_INST_0_i_1 ),
        .I3(\textdata_b_reg[22]_0 [1]),
        .I4(\lcd_data[1]_INST_0_i_1_0 ),
        .I5(\lcd_data[1]_INST_0_i_1 ),
        .O(\textdata_b_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hB8BB8888B8888888)) 
    \lcd_data[2]_INST_0_i_5 
       (.I0(\lcd_data[2]_INST_0_i_7_n_0 ),
        .I1(\lcd_data[2]_INST_0_i_2 ),
        .I2(\textdata_g_reg_n_0_[2] ),
        .I3(\lcd_data[1]_INST_0_i_2 [1]),
        .I4(\lcd_data[1]_INST_0_i_2 [0]),
        .I5(\textdata_g_reg_n_0_[18] ),
        .O(\textdata_g_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \lcd_data[2]_INST_0_i_7 
       (.I0(data15[2]),
        .I1(\textdata_h_reg_n_0_[10] ),
        .I2(\lcd_data[1]_INST_0_i_2 [1]),
        .I3(\textdata_h_reg_n_0_[26] ),
        .I4(\lcd_data[1]_INST_0_i_2 [0]),
        .O(\lcd_data[2]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \lcd_data[3]_INST_0_i_5 
       (.I0(data4),
        .I1(data6[0]),
        .I2(\lcd_data[1]_INST_0_i_1_0 ),
        .I3(\lcd_data[1]_INST_0_i_1 ),
        .I4(data6[1]),
        .O(\textdata_b_reg[30]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \lcd_data[3]_INST_0_i_6 
       (.I0(data6[0]),
        .I1(\lcd_data[1]_INST_0_i_1 ),
        .I2(data9[0]),
        .I3(\lcd_data[1]_INST_0_i_1_0 ),
        .O(\textdata_b_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \lcd_data[3]_INST_0_i_7 
       (.I0(\lcd_data[3]_INST_0_i_9_n_0 ),
        .I1(\lcd_data[2]_INST_0_i_2 ),
        .I2(data15[4]),
        .I3(\lcd_data[1]_INST_0_i_2 [1]),
        .I4(\lcd_data[1]_INST_0_i_2 [0]),
        .I5(\textdata_g_reg_n_0_[19] ),
        .O(\textdata_h_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \lcd_data[3]_INST_0_i_9 
       (.I0(data15[3]),
        .I1(\lcd_data[1]_INST_0_i_2 [1]),
        .I2(data15[4]),
        .I3(\lcd_data[1]_INST_0_i_2 [0]),
        .I4(\textdata_h_reg_n_0_[27] ),
        .O(\lcd_data[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00CFAFF000C0A000)) 
    \lcd_data[4]_INST_0_i_4 
       (.I0(data6[1]),
        .I1(data5[4]),
        .I2(\lcd_data[2]_INST_0_i_1 ),
        .I3(\lcd_data[1]_INST_0_i_1_0 ),
        .I4(\lcd_data[1]_INST_0_i_1 ),
        .I5(data4),
        .O(\textdata_b_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \textdata_b[11]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(textdata_h[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \textdata_b[12]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\textdata_b[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \textdata_b[17]_i_1 
       (.I0(Q[0]),
        .O(\textdata_b[17]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \textdata_b[20]_i_1 
       (.I0(Q[1]),
        .O(\textdata_b[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \textdata_b[22]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\textdata_b[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \textdata_b[30]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\textdata_b[30]_i_1_n_0 ));
  FDCE \textdata_b_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(textdata_h[4]),
        .Q(data6[0]));
  FDCE \textdata_b_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\textdata_b[12]_i_1_n_0 ),
        .Q(data6[1]));
  FDPE \textdata_b_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\textdata_b[17]_i_1_n_0 ),
        .PRE(resetn_0),
        .Q(data5[1]));
  FDPE \textdata_b_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\textdata_b[20]_i_1_n_0 ),
        .PRE(resetn_0),
        .Q(data5[4]));
  FDCE \textdata_b_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(Q[0]),
        .Q(\textdata_b_reg[22]_0 [0]));
  FDPE \textdata_b_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\textdata_b[22]_i_1_n_0 ),
        .PRE(resetn_0),
        .Q(\textdata_b_reg[22]_0 [1]));
  FDCE \textdata_b_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(Q[1]),
        .Q(data7));
  FDCE \textdata_b_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\textdata_b[30]_i_1_n_0 ),
        .Q(data4));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \textdata_c[20]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(textdata_c));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \textdata_c[22]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\textdata_c[22]_i_1_n_0 ));
  FDPE \textdata_c_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(textdata_c),
        .PRE(resetn_0),
        .Q(data9[0]));
  FDPE \textdata_c_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\textdata_c[22]_i_1_n_0 ),
        .PRE(resetn_0),
        .Q(data9[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \textdata_e[30]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\textdata_e[30]_i_1_n_0 ));
  FDCE \textdata_e_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\textdata_e[30]_i_1_n_0 ),
        .Q(\textdata_e_reg[30]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \textdata_g[25]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\textdata_g[25]_i_1_n_0 ));
  FDCE \textdata_g_reg[0] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_g[0]),
        .Q(\textdata_g_reg_n_0_[0] ));
  FDCE \textdata_g_reg[16] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_g[16]),
        .Q(\textdata_g_reg_n_0_[16] ));
  FDCE \textdata_g_reg[17] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_g[17]),
        .Q(\textdata_g_reg_n_0_[17] ));
  FDCE \textdata_g_reg[18] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_g[18]),
        .Q(\textdata_g_reg_n_0_[18] ));
  FDCE \textdata_g_reg[19] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_g[19]),
        .Q(\textdata_g_reg_n_0_[19] ));
  FDCE \textdata_g_reg[1] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_g[1]),
        .Q(\textdata_g_reg_n_0_[1] ));
  FDCE \textdata_g_reg[24] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_g[24]),
        .Q(\textdata_g_reg_n_0_[24] ));
  FDCE \textdata_g_reg[25] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_g[25]),
        .Q(\textdata_g_reg_n_0_[25] ));
  FDCE \textdata_g_reg[2] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_g[2]),
        .Q(\textdata_g_reg_n_0_[2] ));
  FDCE \textdata_h_reg[0] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_h[0]),
        .Q(data15[0]));
  FDCE \textdata_h_reg[10] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_h[10]),
        .Q(\textdata_h_reg_n_0_[10] ));
  FDCE \textdata_h_reg[1] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_h[1]),
        .Q(data15[1]));
  FDCE \textdata_h_reg[24] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_h[24]),
        .Q(\textdata_h_reg_n_0_[24] ));
  FDCE \textdata_h_reg[25] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_h[25]),
        .Q(\textdata_h_reg_n_0_[25] ));
  FDCE \textdata_h_reg[26] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_h[26]),
        .Q(\textdata_h_reg_n_0_[26] ));
  FDCE \textdata_h_reg[27] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_h[27]),
        .Q(\textdata_h_reg_n_0_[27] ));
  FDCE \textdata_h_reg[2] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_h[2]),
        .Q(data15[2]));
  FDCE \textdata_h_reg[3] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_h[3]),
        .Q(data15[3]));
  FDCE \textdata_h_reg[4] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_h[4]),
        .Q(data15[4]));
  FDCE \textdata_h_reg[8] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_h[8]),
        .Q(\textdata_h_reg_n_0_[8] ));
  FDCE \textdata_h_reg[9] 
       (.C(clk),
        .CE(\textdata_g[25]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(textdata_h[9]),
        .Q(\textdata_h_reg_n_0_[9] ));
endmodule

(* ORIG_REF_NAME = "textlcd" *) 
module system_textlcd_2_0_0_textlcd
   (lcd_en,
    Q,
    \count_mode_reg[3]_0 ,
    \count_mode_reg[0]_0 ,
    \count_mode_reg[0]_1 ,
    lcd_data,
    \count_mode_reg[4]_0 ,
    lcd_rs,
    clk,
    \lcd_mode_reg[3]_0 ,
    data9,
    lcd_data_4_sp_1,
    lcd_data_1_sp_1,
    lcd_data_0_sp_1,
    data6,
    data4,
    lcd_data_2_sp_1,
    lcd_data_3_sp_1,
    \lcd_data[3]_0 ,
    \lcd_data[3]_INST_0_i_1_0 ,
    lcd_data_6_sp_1,
    data15,
    \lcd_data[0]_0 ,
    \lcd_data[3]_1 ,
    \lcd_data[2]_0 ,
    \lcd_data[1]_0 );
  output lcd_en;
  output [4:0]Q;
  output \count_mode_reg[3]_0 ;
  output \count_mode_reg[0]_0 ;
  output \count_mode_reg[0]_1 ;
  output [7:0]lcd_data;
  output \count_mode_reg[4]_0 ;
  output lcd_rs;
  input clk;
  input \lcd_mode_reg[3]_0 ;
  input [1:0]data9;
  input lcd_data_4_sp_1;
  input lcd_data_1_sp_1;
  input lcd_data_0_sp_1;
  input [1:0]data6;
  input [0:0]data4;
  input lcd_data_2_sp_1;
  input lcd_data_3_sp_1;
  input \lcd_data[3]_0 ;
  input [1:0]\lcd_data[3]_INST_0_i_1_0 ;
  input lcd_data_6_sp_1;
  input [4:0]data15;
  input \lcd_data[0]_0 ;
  input \lcd_data[3]_1 ;
  input \lcd_data[2]_0 ;
  input \lcd_data[1]_0 ;

  wire [4:0]Q;
  wire clk;
  wire \count_clk[0]_i_1_n_0 ;
  wire \count_clk[10]_i_1_n_0 ;
  wire \count_clk[10]_i_2_n_0 ;
  wire \count_clk[10]_i_4_n_0 ;
  wire \count_clk[1]_i_1_n_0 ;
  wire \count_clk[2]_i_1_n_0 ;
  wire \count_clk[3]_i_1_n_0 ;
  wire \count_clk[4]_i_1_n_0 ;
  wire \count_clk[5]_i_1_n_0 ;
  wire \count_clk[5]_i_2_n_0 ;
  wire \count_clk[6]_i_1_n_0 ;
  wire \count_clk[7]_i_1_n_0 ;
  wire \count_clk[8]_i_1_n_0 ;
  wire \count_clk[9]_i_1_n_0 ;
  wire \count_clk[9]_i_2_n_0 ;
  wire [10:0]count_clk_reg;
  wire count_mode;
  wire \count_mode[0]_i_1_n_0 ;
  wire \count_mode[3]_i_1_n_0 ;
  wire \count_mode[4]_i_1_n_0 ;
  wire \count_mode[5]_i_2_n_0 ;
  wire \count_mode[5]_i_3_n_0 ;
  wire [5:5]count_mode_reg;
  wire \count_mode_reg[0]_0 ;
  wire \count_mode_reg[0]_1 ;
  wire \count_mode_reg[3]_0 ;
  wire \count_mode_reg[4]_0 ;
  wire [4:0]data15;
  wire [0:0]data4;
  wire [1:0]data6;
  wire [1:0]data9;
  wire [7:0]lcd_data;
  wire \lcd_data[0]_0 ;
  wire \lcd_data[0]_INST_0_i_1_n_0 ;
  wire \lcd_data[0]_INST_0_i_3_n_0 ;
  wire \lcd_data[0]_INST_0_i_5_n_0 ;
  wire \lcd_data[1]_0 ;
  wire \lcd_data[1]_INST_0_i_1_n_0 ;
  wire \lcd_data[1]_INST_0_i_3_n_0 ;
  wire \lcd_data[1]_INST_0_i_5_n_0 ;
  wire \lcd_data[1]_INST_0_i_6_n_0 ;
  wire \lcd_data[1]_INST_0_i_8_n_0 ;
  wire \lcd_data[1]_INST_0_i_9_n_0 ;
  wire \lcd_data[2]_0 ;
  wire \lcd_data[2]_INST_0_i_1_n_0 ;
  wire \lcd_data[2]_INST_0_i_3_n_0 ;
  wire \lcd_data[2]_INST_0_i_6_n_0 ;
  wire \lcd_data[3]_0 ;
  wire \lcd_data[3]_1 ;
  wire [1:0]\lcd_data[3]_INST_0_i_1_0 ;
  wire \lcd_data[3]_INST_0_i_1_n_0 ;
  wire \lcd_data[3]_INST_0_i_3_n_0 ;
  wire \lcd_data[3]_INST_0_i_8_n_0 ;
  wire \lcd_data[4]_INST_0_i_1_n_0 ;
  wire \lcd_data[4]_INST_0_i_2_n_0 ;
  wire \lcd_data[4]_INST_0_i_3_n_0 ;
  wire \lcd_data[4]_INST_0_i_5_n_0 ;
  wire \lcd_data[5]_INST_0_i_1_n_0 ;
  wire \lcd_data[5]_INST_0_i_2_n_0 ;
  wire \lcd_data[5]_INST_0_i_3_n_0 ;
  wire \lcd_data[6]_INST_0_i_1_n_0 ;
  wire \lcd_data[6]_INST_0_i_2_n_0 ;
  wire \lcd_data[6]_INST_0_i_3_n_0 ;
  wire \lcd_data[6]_INST_0_i_4_n_0 ;
  wire \lcd_data[6]_INST_0_i_5_n_0 ;
  wire lcd_data_0_sn_1;
  wire lcd_data_1_sn_1;
  wire lcd_data_2_sn_1;
  wire lcd_data_3_sn_1;
  wire lcd_data_4_sn_1;
  wire lcd_data_6_sn_1;
  wire lcd_en;
  wire lcd_en0;
  wire lcd_en_i_1_n_0;
  wire lcd_en_i_3_n_0;
  wire lcd_en_i_5_n_0;
  wire lcd_en_i_6_n_0;
  wire [3:0]lcd_mode;
  wire \lcd_mode[3]_i_1_n_0 ;
  wire [3:0]lcd_mode_0;
  wire \lcd_mode_reg[3]_0 ;
  wire lcd_rs;
  wire load;
  wire [2:1]p_0_in;
  wire [3:0]set_data__61;

  assign lcd_data_0_sn_1 = lcd_data_0_sp_1;
  assign lcd_data_1_sn_1 = lcd_data_1_sp_1;
  assign lcd_data_2_sn_1 = lcd_data_2_sp_1;
  assign lcd_data_3_sn_1 = lcd_data_3_sp_1;
  assign lcd_data_4_sn_1 = lcd_data_4_sp_1;
  assign lcd_data_6_sn_1 = lcd_data_6_sp_1;
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count_clk[0]_i_1 
       (.I0(count_clk_reg[0]),
        .I1(load),
        .O(\count_clk[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \count_clk[10]_i_1 
       (.I0(count_clk_reg[10]),
        .I1(count_clk_reg[9]),
        .I2(count_clk_reg[7]),
        .I3(\count_clk[10]_i_2_n_0 ),
        .I4(count_clk_reg[8]),
        .I5(load),
        .O(\count_clk[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \count_clk[10]_i_2 
       (.I0(count_clk_reg[6]),
        .I1(count_clk_reg[4]),
        .I2(count_clk_reg[2]),
        .I3(\count_clk[5]_i_2_n_0 ),
        .I4(count_clk_reg[3]),
        .I5(count_clk_reg[5]),
        .O(\count_clk[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \count_clk[10]_i_3 
       (.I0(count_clk_reg[10]),
        .I1(count_clk_reg[9]),
        .I2(count_clk_reg[8]),
        .I3(count_clk_reg[7]),
        .I4(count_clk_reg[6]),
        .I5(\count_clk[10]_i_4_n_0 ),
        .O(load));
  LUT6 #(
    .INIT(64'h0000000000007FFF)) 
    \count_clk[10]_i_4 
       (.I0(count_clk_reg[0]),
        .I1(count_clk_reg[1]),
        .I2(count_clk_reg[3]),
        .I3(count_clk_reg[2]),
        .I4(count_clk_reg[5]),
        .I5(count_clk_reg[4]),
        .O(\count_clk[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \count_clk[1]_i_1 
       (.I0(count_clk_reg[1]),
        .I1(count_clk_reg[0]),
        .I2(load),
        .O(\count_clk[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \count_clk[2]_i_1 
       (.I0(count_clk_reg[2]),
        .I1(count_clk_reg[0]),
        .I2(count_clk_reg[1]),
        .I3(load),
        .O(\count_clk[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \count_clk[3]_i_1 
       (.I0(count_clk_reg[3]),
        .I1(count_clk_reg[2]),
        .I2(count_clk_reg[1]),
        .I3(count_clk_reg[0]),
        .I4(load),
        .O(\count_clk[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \count_clk[4]_i_1 
       (.I0(count_clk_reg[4]),
        .I1(count_clk_reg[3]),
        .I2(count_clk_reg[0]),
        .I3(count_clk_reg[1]),
        .I4(count_clk_reg[2]),
        .I5(load),
        .O(\count_clk[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA6AAAAA)) 
    \count_clk[5]_i_1 
       (.I0(count_clk_reg[5]),
        .I1(count_clk_reg[4]),
        .I2(count_clk_reg[2]),
        .I3(\count_clk[5]_i_2_n_0 ),
        .I4(count_clk_reg[3]),
        .I5(load),
        .O(\count_clk[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count_clk[5]_i_2 
       (.I0(count_clk_reg[0]),
        .I1(count_clk_reg[1]),
        .O(\count_clk[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \count_clk[6]_i_1 
       (.I0(count_clk_reg[6]),
        .I1(\count_clk[9]_i_2_n_0 ),
        .I2(load),
        .O(\count_clk[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \count_clk[7]_i_1 
       (.I0(count_clk_reg[7]),
        .I1(count_clk_reg[6]),
        .I2(\count_clk[9]_i_2_n_0 ),
        .I3(load),
        .O(\count_clk[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \count_clk[8]_i_1 
       (.I0(count_clk_reg[8]),
        .I1(count_clk_reg[7]),
        .I2(\count_clk[9]_i_2_n_0 ),
        .I3(count_clk_reg[6]),
        .I4(load),
        .O(\count_clk[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \count_clk[9]_i_1 
       (.I0(count_clk_reg[9]),
        .I1(count_clk_reg[8]),
        .I2(count_clk_reg[6]),
        .I3(\count_clk[9]_i_2_n_0 ),
        .I4(count_clk_reg[7]),
        .I5(load),
        .O(\count_clk[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_clk[9]_i_2 
       (.I0(count_clk_reg[5]),
        .I1(count_clk_reg[3]),
        .I2(count_clk_reg[0]),
        .I3(count_clk_reg[1]),
        .I4(count_clk_reg[2]),
        .I5(count_clk_reg[4]),
        .O(\count_clk[9]_i_2_n_0 ));
  FDCE \count_clk_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(\count_clk[0]_i_1_n_0 ),
        .Q(count_clk_reg[0]));
  FDCE \count_clk_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(\count_clk[10]_i_1_n_0 ),
        .Q(count_clk_reg[10]));
  FDCE \count_clk_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(\count_clk[1]_i_1_n_0 ),
        .Q(count_clk_reg[1]));
  FDCE \count_clk_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(\count_clk[2]_i_1_n_0 ),
        .Q(count_clk_reg[2]));
  FDCE \count_clk_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(\count_clk[3]_i_1_n_0 ),
        .Q(count_clk_reg[3]));
  FDCE \count_clk_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(\count_clk[4]_i_1_n_0 ),
        .Q(count_clk_reg[4]));
  FDCE \count_clk_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(\count_clk[5]_i_1_n_0 ),
        .Q(count_clk_reg[5]));
  FDCE \count_clk_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(\count_clk[6]_i_1_n_0 ),
        .Q(count_clk_reg[6]));
  FDCE \count_clk_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(\count_clk[7]_i_1_n_0 ),
        .Q(count_clk_reg[7]));
  FDCE \count_clk_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(\count_clk[8]_i_1_n_0 ),
        .Q(count_clk_reg[8]));
  FDCE \count_clk_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(\count_clk[9]_i_1_n_0 ),
        .Q(count_clk_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hE0FF)) 
    \count_mode[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(count_mode_reg),
        .I3(Q[0]),
        .O(\count_mode[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hE0FFFFE0)) 
    \count_mode[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(count_mode_reg),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hE0FFFFE0FFE0FFE0)) 
    \count_mode[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(count_mode_reg),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h000000807F807F80)) 
    \count_mode[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(count_mode_reg),
        .O(\count_mode[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \count_mode[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(count_mode_reg),
        .O(\count_mode[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_mode[5]_i_1 
       (.I0(count_clk_reg[10]),
        .I1(\count_mode[5]_i_3_n_0 ),
        .I2(count_clk_reg[6]),
        .I3(count_clk_reg[8]),
        .I4(count_clk_reg[7]),
        .I5(count_clk_reg[9]),
        .O(count_mode));
  LUT6 #(
    .INIT(64'h000000FF80000000)) 
    \count_mode[5]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(count_mode_reg),
        .O(\count_mode[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \count_mode[5]_i_3 
       (.I0(count_clk_reg[0]),
        .I1(count_clk_reg[2]),
        .I2(count_clk_reg[1]),
        .I3(count_clk_reg[3]),
        .I4(count_clk_reg[5]),
        .I5(count_clk_reg[4]),
        .O(\count_mode[5]_i_3_n_0 ));
  FDCE \count_mode_reg[0] 
       (.C(clk),
        .CE(count_mode),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(\count_mode[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \count_mode_reg[1] 
       (.C(clk),
        .CE(count_mode),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(p_0_in[1]),
        .Q(Q[1]));
  FDCE \count_mode_reg[2] 
       (.C(clk),
        .CE(count_mode),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(p_0_in[2]),
        .Q(Q[2]));
  FDCE \count_mode_reg[3] 
       (.C(clk),
        .CE(count_mode),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(\count_mode[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \count_mode_reg[4] 
       (.C(clk),
        .CE(count_mode),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(\count_mode[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE \count_mode_reg[5] 
       (.C(clk),
        .CE(count_mode),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(\count_mode[5]_i_2_n_0 ),
        .Q(count_mode_reg));
  LUT6 #(
    .INIT(64'h00000FC000A000A0)) 
    \lcd_data[0]_INST_0 
       (.I0(\lcd_data[0]_INST_0_i_1_n_0 ),
        .I1(set_data__61[0]),
        .I2(lcd_mode[3]),
        .I3(lcd_mode[2]),
        .I4(lcd_mode[0]),
        .I5(lcd_mode[1]),
        .O(lcd_data[0]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \lcd_data[0]_INST_0_i_1 
       (.I0(count_mode_reg),
        .I1(\lcd_data[0]_INST_0_i_3_n_0 ),
        .I2(\lcd_data[6]_INST_0_i_4_n_0 ),
        .I3(lcd_data_0_sn_1),
        .I4(lcd_mode[0]),
        .O(\lcd_data[0]_INST_0_i_1_n_0 ));
  MUXF7 \lcd_data[0]_INST_0_i_2 
       (.I0(\lcd_data[0]_INST_0_i_5_n_0 ),
        .I1(\lcd_data[0]_0 ),
        .O(set_data__61[0]),
        .S(count_mode_reg));
  LUT5 #(
    .INIT(32'h0000FE0E)) 
    \lcd_data[0]_INST_0_i_3 
       (.I0(data6[0]),
        .I1(\count_mode_reg[0]_0 ),
        .I2(\count_mode_reg[0]_1 ),
        .I3(data4),
        .I4(\count_mode_reg[3]_0 ),
        .O(\lcd_data[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8B8B888)) 
    \lcd_data[0]_INST_0_i_5 
       (.I0(data15[0]),
        .I1(\lcd_data[1]_INST_0_i_8_n_0 ),
        .I2(lcd_data_6_sn_1),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\lcd_data[1]_INST_0_i_9_n_0 ),
        .O(\lcd_data[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0C0FF00FFAF)) 
    \lcd_data[1]_INST_0 
       (.I0(\lcd_data[1]_INST_0_i_1_n_0 ),
        .I1(set_data__61[1]),
        .I2(lcd_mode[3]),
        .I3(lcd_mode[2]),
        .I4(lcd_mode[0]),
        .I5(lcd_mode[1]),
        .O(lcd_data[1]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \lcd_data[1]_INST_0_i_1 
       (.I0(\lcd_data[1]_INST_0_i_3_n_0 ),
        .I1(\count_mode_reg[3]_0 ),
        .I2(lcd_data_1_sn_1),
        .I3(\lcd_data[6]_INST_0_i_4_n_0 ),
        .I4(\lcd_data[1]_INST_0_i_5_n_0 ),
        .I5(count_mode_reg),
        .O(\lcd_data[1]_INST_0_i_1_n_0 ));
  MUXF7 \lcd_data[1]_INST_0_i_2 
       (.I0(\lcd_data[1]_INST_0_i_6_n_0 ),
        .I1(\lcd_data[1]_0 ),
        .O(set_data__61[1]),
        .S(count_mode_reg));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \lcd_data[1]_INST_0_i_3 
       (.I0(\count_mode_reg[0]_1 ),
        .I1(data4),
        .I2(\count_mode_reg[0]_0 ),
        .I3(\lcd_data[3]_INST_0_i_1_0 [1]),
        .O(\lcd_data[1]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \lcd_data[1]_INST_0_i_5 
       (.I0(data6[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\lcd_data[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88B8888888888888)) 
    \lcd_data[1]_INST_0_i_6 
       (.I0(data15[1]),
        .I1(\lcd_data[1]_INST_0_i_8_n_0 ),
        .I2(\lcd_data[1]_INST_0_i_9_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(lcd_data_6_sn_1),
        .O(\lcd_data[1]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \lcd_data[1]_INST_0_i_8 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\lcd_data[1]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    \lcd_data[1]_INST_0_i_9 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\lcd_data[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000F00A000C00FA0)) 
    \lcd_data[2]_INST_0 
       (.I0(\lcd_data[2]_INST_0_i_1_n_0 ),
        .I1(set_data__61[2]),
        .I2(lcd_mode[3]),
        .I3(lcd_mode[2]),
        .I4(lcd_mode[1]),
        .I5(lcd_mode[0]),
        .O(lcd_data[2]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \lcd_data[2]_INST_0_i_1 
       (.I0(count_mode_reg),
        .I1(\lcd_data[2]_INST_0_i_3_n_0 ),
        .I2(\lcd_data[6]_INST_0_i_4_n_0 ),
        .I3(lcd_data_2_sn_1),
        .I4(lcd_mode[0]),
        .O(\lcd_data[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3F0F0B8C0F0F0B8)) 
    \lcd_data[2]_INST_0_i_2 
       (.I0(\lcd_data[2]_0 ),
        .I1(count_mode_reg),
        .I2(data15[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\lcd_data[2]_INST_0_i_6_n_0 ),
        .O(set_data__61[2]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \lcd_data[2]_INST_0_i_3 
       (.I0(\count_mode_reg[0]_1 ),
        .I1(data4),
        .I2(\count_mode_reg[0]_0 ),
        .I3(data9[1]),
        .I4(\count_mode_reg[3]_0 ),
        .O(\lcd_data[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00C4C4C400000000)) 
    \lcd_data[2]_INST_0_i_6 
       (.I0(Q[0]),
        .I1(lcd_data_6_sn_1),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\lcd_data[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000FCFFFA0)) 
    \lcd_data[3]_INST_0 
       (.I0(\lcd_data[3]_INST_0_i_1_n_0 ),
        .I1(set_data__61[3]),
        .I2(lcd_mode[3]),
        .I3(lcd_mode[0]),
        .I4(lcd_mode[1]),
        .I5(lcd_mode[2]),
        .O(lcd_data[3]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \lcd_data[3]_INST_0_i_1 
       (.I0(\lcd_data[3]_INST_0_i_3_n_0 ),
        .I1(\count_mode_reg[3]_0 ),
        .I2(lcd_data_3_sn_1),
        .I3(\lcd_data[6]_INST_0_i_4_n_0 ),
        .I4(\lcd_data[3]_0 ),
        .I5(count_mode_reg),
        .O(\lcd_data[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \lcd_data[3]_INST_0_i_10 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\count_mode_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hF3F0F0B8C0F0F0B8)) 
    \lcd_data[3]_INST_0_i_2 
       (.I0(\lcd_data[3]_1 ),
        .I1(count_mode_reg),
        .I2(data15[3]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\lcd_data[3]_INST_0_i_8_n_0 ),
        .O(set_data__61[3]));
  LUT4 #(
    .INIT(16'hA808)) 
    \lcd_data[3]_INST_0_i_3 
       (.I0(\count_mode_reg[0]_1 ),
        .I1(\lcd_data[3]_INST_0_i_1_0 [1]),
        .I2(\count_mode_reg[0]_0 ),
        .I3(data4),
        .O(\lcd_data[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hCFF9F9F9)) 
    \lcd_data[3]_INST_0_i_4 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_mode_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h00FF2A0000000000)) 
    \lcd_data[3]_INST_0_i_8 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(lcd_data_6_sn_1),
        .O(\lcd_data[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0CFAFA0)) 
    \lcd_data[4]_INST_0 
       (.I0(\lcd_data[4]_INST_0_i_1_n_0 ),
        .I1(\lcd_data[4]_INST_0_i_2_n_0 ),
        .I2(lcd_mode[3]),
        .I3(lcd_mode[0]),
        .I4(lcd_mode[1]),
        .I5(lcd_mode[2]),
        .O(lcd_data[4]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \lcd_data[4]_INST_0_i_1 
       (.I0(count_mode_reg),
        .I1(\lcd_data[4]_INST_0_i_3_n_0 ),
        .I2(\lcd_data[6]_INST_0_i_4_n_0 ),
        .I3(lcd_data_4_sn_1),
        .I4(lcd_mode[0]),
        .O(\lcd_data[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00BF80)) 
    \lcd_data[4]_INST_0_i_2 
       (.I0(\lcd_data[4]_INST_0_i_5_n_0 ),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(data15[4]),
        .I4(count_mode_reg),
        .I5(lcd_mode[0]),
        .O(\lcd_data[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \lcd_data[4]_INST_0_i_3 
       (.I0(\count_mode_reg[0]_1 ),
        .I1(data9[0]),
        .I2(\count_mode_reg[0]_0 ),
        .I3(lcd_data_6_sn_1),
        .I4(\count_mode_reg[3]_0 ),
        .O(\lcd_data[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D52A0000)) 
    \lcd_data[4]_INST_0_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(lcd_data_6_sn_1),
        .I5(Q[1]),
        .O(\lcd_data[4]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \lcd_data[5]_INST_0 
       (.I0(\lcd_data[5]_INST_0_i_1_n_0 ),
        .I1(lcd_mode[3]),
        .I2(lcd_mode[0]),
        .I3(lcd_mode[1]),
        .I4(lcd_mode[2]),
        .O(lcd_data[5]));
  LUT6 #(
    .INIT(64'h000000000FFE0AFE)) 
    \lcd_data[5]_INST_0_i_1 
       (.I0(count_mode_reg),
        .I1(\lcd_data[5]_INST_0_i_2_n_0 ),
        .I2(lcd_mode[0]),
        .I3(lcd_mode[1]),
        .I4(\lcd_data[5]_INST_0_i_3_n_0 ),
        .I5(lcd_mode[2]),
        .O(\lcd_data[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFBFEEFFEEBFE)) 
    \lcd_data[5]_INST_0_i_2 
       (.I0(\lcd_data[6]_INST_0_i_4_n_0 ),
        .I1(\count_mode_reg[0]_0 ),
        .I2(\count_mode_reg[0]_1 ),
        .I3(\count_mode_reg[3]_0 ),
        .I4(\lcd_data[3]_INST_0_i_1_0 [0]),
        .I5(\lcd_data[3]_INST_0_i_1_0 [1]),
        .O(\lcd_data[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \lcd_data[5]_INST_0_i_3 
       (.I0(Q[1]),
        .I1(data9[1]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\lcd_data[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h20222000)) 
    \lcd_data[6]_INST_0 
       (.I0(lcd_mode[3]),
        .I1(lcd_mode[2]),
        .I2(\lcd_data[6]_INST_0_i_1_n_0 ),
        .I3(lcd_mode[1]),
        .I4(\lcd_data[6]_INST_0_i_2_n_0 ),
        .O(lcd_data[6]));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \lcd_data[6]_INST_0_i_1 
       (.I0(count_mode_reg),
        .I1(Q[2]),
        .I2(lcd_data_6_sn_1),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(lcd_mode[0]),
        .O(\lcd_data[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \lcd_data[6]_INST_0_i_2 
       (.I0(count_mode_reg),
        .I1(\lcd_data[6]_INST_0_i_3_n_0 ),
        .I2(\lcd_data[6]_INST_0_i_4_n_0 ),
        .I3(\lcd_data[6]_INST_0_i_5_n_0 ),
        .I4(lcd_mode[0]),
        .O(\lcd_data[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0020002C000)) 
    \lcd_data[6]_INST_0_i_3 
       (.I0(data9[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\lcd_data[6]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hEBBBBBBB)) 
    \lcd_data[6]_INST_0_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\lcd_data[6]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFFB8FFFF)) 
    \lcd_data[6]_INST_0_i_5 
       (.I0(\lcd_data[3]_INST_0_i_1_0 [1]),
        .I1(\count_mode_reg[0]_0 ),
        .I2(data4),
        .I3(\count_mode_reg[0]_1 ),
        .I4(\count_mode_reg[3]_0 ),
        .O(\lcd_data[6]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hDDD7D7D7)) 
    \lcd_data[6]_INST_0_i_6 
       (.I0(Q[0]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\count_mode_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hF5D7EBEB)) 
    \lcd_data[6]_INST_0_i_7 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\count_mode_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h4020)) 
    \lcd_data[7]_INST_0 
       (.I0(lcd_mode[3]),
        .I1(lcd_mode[2]),
        .I2(lcd_mode[0]),
        .I3(lcd_mode[1]),
        .O(lcd_data[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    lcd_en_i_1
       (.I0(lcd_en_i_3_n_0),
        .I1(lcd_en0),
        .I2(lcd_en),
        .O(lcd_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    lcd_en_i_3
       (.I0(count_clk_reg[9]),
        .I1(lcd_en_i_5_n_0),
        .I2(count_clk_reg[6]),
        .I3(count_clk_reg[7]),
        .I4(count_clk_reg[8]),
        .I5(count_clk_reg[10]),
        .O(lcd_en_i_3_n_0));
  LUT6 #(
    .INIT(64'h0002000000008000)) 
    lcd_en_i_4
       (.I0(lcd_en_i_6_n_0),
        .I1(count_clk_reg[8]),
        .I2(count_clk_reg[9]),
        .I3(count_clk_reg[10]),
        .I4(count_clk_reg[6]),
        .I5(count_clk_reg[7]),
        .O(lcd_en0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    lcd_en_i_5
       (.I0(count_clk_reg[0]),
        .I1(count_clk_reg[1]),
        .I2(count_clk_reg[2]),
        .I3(count_clk_reg[3]),
        .I4(count_clk_reg[5]),
        .I5(count_clk_reg[4]),
        .O(lcd_en_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    lcd_en_i_6
       (.I0(count_clk_reg[4]),
        .I1(count_clk_reg[5]),
        .I2(count_clk_reg[1]),
        .I3(count_clk_reg[3]),
        .I4(count_clk_reg[0]),
        .I5(count_clk_reg[2]),
        .O(lcd_en_i_6_n_0));
  FDCE lcd_en_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(lcd_en_i_1_n_0),
        .Q(lcd_en));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hB8BB)) 
    \lcd_mode[0]_i_1 
       (.I0(count_mode_reg),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[0]),
        .O(lcd_mode_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    \lcd_mode[1]_i_1 
       (.I0(Q[0]),
        .I1(count_mode_reg),
        .I2(Q[1]),
        .I3(Q[4]),
        .O(lcd_mode_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \lcd_mode[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(lcd_mode_0[2]));
  LUT6 #(
    .INIT(64'h1000000211111119)) 
    \lcd_mode[3]_i_1 
       (.I0(Q[3]),
        .I1(count_mode_reg),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\lcd_mode[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h8F8F8F80)) 
    \lcd_mode[3]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(count_mode_reg),
        .O(lcd_mode_0[3]));
  FDPE \lcd_mode_reg[0] 
       (.C(clk),
        .CE(\lcd_mode[3]_i_1_n_0 ),
        .D(lcd_mode_0[0]),
        .PRE(\lcd_mode_reg[3]_0 ),
        .Q(lcd_mode[0]));
  FDCE \lcd_mode_reg[1] 
       (.C(clk),
        .CE(\lcd_mode[3]_i_1_n_0 ),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(lcd_mode_0[1]),
        .Q(lcd_mode[1]));
  FDCE \lcd_mode_reg[2] 
       (.C(clk),
        .CE(\lcd_mode[3]_i_1_n_0 ),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(lcd_mode_0[2]),
        .Q(lcd_mode[2]));
  FDCE \lcd_mode_reg[3] 
       (.C(clk),
        .CE(\lcd_mode[3]_i_1_n_0 ),
        .CLR(\lcd_mode_reg[3]_0 ),
        .D(lcd_mode_0[3]),
        .Q(lcd_mode[3]));
  LUT3 #(
    .INIT(8'h02)) 
    lcd_rs_INST_0
       (.I0(lcd_mode[3]),
        .I1(lcd_mode[0]),
        .I2(lcd_mode[2]),
        .O(lcd_rs));
endmodule

(* ORIG_REF_NAME = "textlcd_2_v1_0" *) 
module system_textlcd_2_0_0_textlcd_2_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    lcd_data,
    lcd_rs,
    s00_axi_rvalid,
    lcd_en,
    s00_axi_bvalid,
    resetn,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    clk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output [7:0]lcd_data;
  output lcd_rs;
  output s00_axi_rvalid;
  output lcd_en;
  output s00_axi_bvalid;
  input resetn;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input clk;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire clk;
  wire [7:0]lcd_data;
  wire lcd_en;
  wire lcd_rs;
  wire resetn;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  system_textlcd_2_0_0_textlcd_2_v1_0_S00_AXI textlcd_2_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .clk(clk),
        .lcd_data(lcd_data),
        .lcd_en(lcd_en),
        .lcd_rs(lcd_rs),
        .resetn(resetn),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "textlcd_2_v1_0_S00_AXI" *) 
module system_textlcd_2_0_0_textlcd_2_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    lcd_data,
    lcd_rs,
    s00_axi_rvalid,
    lcd_en,
    s00_axi_bvalid,
    resetn,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    clk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output [7:0]lcd_data;
  output lcd_rs;
  output s00_axi_rvalid;
  output lcd_en;
  output s00_axi_bvalid;
  input resetn;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input clk;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire clk;
  wire [7:0]lcd_data;
  wire lcd_en;
  wire lcd_rs;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire resetn;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [1:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:31]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[15]_i_2_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_2_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1[7]_i_2_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire top_u0_n_1;
  wire top_u0_n_10;
  wire top_u0_n_11;
  wire top_u0_n_12;
  wire top_u0_n_13;
  wire top_u0_n_14;
  wire top_u0_n_2;
  wire top_u0_n_3;
  wire top_u0_n_4;
  wire top_u0_n_5;
  wire top_u0_n_6;
  wire top_u0_n_7;
  wire top_u0_n_8;
  wire top_u0_n_9;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(\slv_reg1_reg_n_0_[0] ),
        .I1(slv_reg0[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(\slv_reg1_reg_n_0_[10] ),
        .I1(\slv_reg0_reg_n_0_[10] ),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(\slv_reg1_reg_n_0_[11] ),
        .I1(\slv_reg0_reg_n_0_[11] ),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(\slv_reg1_reg_n_0_[12] ),
        .I1(\slv_reg0_reg_n_0_[12] ),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(\slv_reg1_reg_n_0_[13] ),
        .I1(\slv_reg0_reg_n_0_[13] ),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(\slv_reg1_reg_n_0_[14] ),
        .I1(\slv_reg0_reg_n_0_[14] ),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(\slv_reg1_reg_n_0_[15] ),
        .I1(\slv_reg0_reg_n_0_[15] ),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(\slv_reg1_reg_n_0_[16] ),
        .I1(\slv_reg0_reg_n_0_[16] ),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(\slv_reg1_reg_n_0_[17] ),
        .I1(\slv_reg0_reg_n_0_[17] ),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(\slv_reg1_reg_n_0_[18] ),
        .I1(\slv_reg0_reg_n_0_[18] ),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(\slv_reg1_reg_n_0_[19] ),
        .I1(\slv_reg0_reg_n_0_[19] ),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(\slv_reg1_reg_n_0_[1] ),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg1_reg_n_0_[20] ),
        .I1(\slv_reg0_reg_n_0_[20] ),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg1_reg_n_0_[21] ),
        .I1(\slv_reg0_reg_n_0_[21] ),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg1_reg_n_0_[22] ),
        .I1(\slv_reg0_reg_n_0_[22] ),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(\slv_reg1_reg_n_0_[23] ),
        .I1(\slv_reg0_reg_n_0_[23] ),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg1_reg_n_0_[24] ),
        .I1(\slv_reg0_reg_n_0_[24] ),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg1_reg_n_0_[25] ),
        .I1(\slv_reg0_reg_n_0_[25] ),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg1_reg_n_0_[26] ),
        .I1(\slv_reg0_reg_n_0_[26] ),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(\slv_reg1_reg_n_0_[27] ),
        .I1(\slv_reg0_reg_n_0_[27] ),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg1_reg_n_0_[28] ),
        .I1(\slv_reg0_reg_n_0_[28] ),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg1_reg_n_0_[29] ),
        .I1(\slv_reg0_reg_n_0_[29] ),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(\slv_reg1_reg_n_0_[2] ),
        .I1(\slv_reg0_reg_n_0_[2] ),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg1_reg_n_0_[30] ),
        .I1(\slv_reg0_reg_n_0_[30] ),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_1 
       (.I0(\slv_reg1_reg_n_0_[31] ),
        .I1(\slv_reg0_reg_n_0_[31] ),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(\slv_reg1_reg_n_0_[3] ),
        .I1(\slv_reg0_reg_n_0_[3] ),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(\slv_reg1_reg_n_0_[4] ),
        .I1(\slv_reg0_reg_n_0_[4] ),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(\slv_reg1_reg_n_0_[5] ),
        .I1(\slv_reg0_reg_n_0_[5] ),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(\slv_reg1_reg_n_0_[6] ),
        .I1(\slv_reg0_reg_n_0_[6] ),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(\slv_reg1_reg_n_0_[7] ),
        .I1(\slv_reg0_reg_n_0_[7] ),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(\slv_reg1_reg_n_0_[8] ),
        .I1(\slv_reg0_reg_n_0_[8] ),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(\slv_reg1_reg_n_0_[9] ),
        .I1(\slv_reg0_reg_n_0_[9] ),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h40FF)) 
    \slv_reg1[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(slv_reg_wren__0),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg1[15]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_wdata[15]),
        .O(\slv_reg1[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h40FF)) 
    \slv_reg1[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(slv_reg_wren__0),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \slv_reg1[31]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_WREADY),
        .O(slv_reg1));
  LUT4 #(
    .INIT(16'h40FF)) 
    \slv_reg1[31]_i_2 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(slv_reg_wren__0),
        .O(\slv_reg1[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h40FF)) 
    \slv_reg1[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(slv_reg_wren__0),
        .O(\slv_reg1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg1[7]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_wdata[7]),
        .O(\slv_reg1[7]_i_2_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(top_u0_n_14),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(top_u0_n_5),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(top_u0_n_4),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(top_u0_n_3),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(top_u0_n_2),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(top_u0_n_1),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg1[15]_i_2_n_0 ),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(top_u0_n_13),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_2_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_2_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_2_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_2_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_2_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_2_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(top_u0_n_12),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_2_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_2_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(top_u0_n_11),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(top_u0_n_10),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(top_u0_n_9),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(top_u0_n_8),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg1[7]_i_2_n_0 ),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(top_u0_n_7),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(top_u0_n_6),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
  system_textlcd_2_0_0_top top_u0
       (.D({top_u0_n_1,top_u0_n_2,top_u0_n_3,top_u0_n_4,top_u0_n_5,top_u0_n_6,top_u0_n_7,top_u0_n_8,top_u0_n_9,top_u0_n_10,top_u0_n_11,top_u0_n_12,top_u0_n_13,top_u0_n_14}),
        .Q({\slv_reg0_reg_n_0_[2] ,slv_reg0}),
        .clk(clk),
        .lcd_data(lcd_data),
        .lcd_en(lcd_en),
        .lcd_rs(lcd_rs),
        .resetn(resetn),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_wdata({s00_axi_wdata[14:8],s00_axi_wdata[6:0]}),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg1_reg[1] (S_AXI_WREADY),
        .\slv_reg1_reg[1]_0 (S_AXI_AWREADY),
        .slv_reg_wren__0(slv_reg_wren__0));
endmodule

(* ORIG_REF_NAME = "top" *) 
module system_textlcd_2_0_0_top
   (lcd_en,
    D,
    lcd_data,
    lcd_rs,
    clk,
    Q,
    resetn,
    s00_axi_wdata,
    slv_reg_wren__0,
    \slv_reg1_reg[1] ,
    \slv_reg1_reg[1]_0 ,
    s00_axi_awvalid,
    s00_axi_wvalid);
  output lcd_en;
  output [13:0]D;
  output [7:0]lcd_data;
  output lcd_rs;
  input clk;
  input [2:0]Q;
  input resetn;
  input [13:0]s00_axi_wdata;
  input slv_reg_wren__0;
  input \slv_reg1_reg[1] ;
  input \slv_reg1_reg[1]_0 ;
  input s00_axi_awvalid;
  input s00_axi_wvalid;

  wire [13:0]D;
  wire [2:0]Q;
  wire clk;
  wire [4:0]count_mode_reg;
  wire [4:0]data15;
  wire [6:6]data4;
  wire [6:5]data5;
  wire [4:3]data6;
  wire [6:4]data9;
  wire digital_clock_u0_n_0;
  wire digital_clock_u0_n_12;
  wire digital_clock_u0_n_14;
  wire digital_clock_u0_n_29;
  wire digital_clock_u0_n_30;
  wire digital_clock_u0_n_31;
  wire digital_clock_u0_n_32;
  wire digital_clock_u0_n_33;
  wire digital_clock_u0_n_34;
  wire digital_clock_u0_n_35;
  wire digital_clock_u0_n_36;
  wire digital_clock_u0_n_37;
  wire [7:0]lcd_data;
  wire lcd_en;
  wire lcd_rs;
  wire resetn;
  wire s00_axi_awvalid;
  wire [13:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire \slv_reg1_reg[1] ;
  wire \slv_reg1_reg[1]_0 ;
  wire slv_reg_wren__0;
  wire textlcd_u0_n_17;
  wire textlcd_u0_n_6;
  wire textlcd_u0_n_7;
  wire textlcd_u0_n_8;

  system_textlcd_2_0_0_digital_clock digital_clock_u0
       (.D(D),
        .Q(Q),
        .clk(clk),
        .data15(data15),
        .data4(data4),
        .data6(data6),
        .data9({data9[6],data9[4]}),
        .\lcd_data[1]_INST_0_i_1 (textlcd_u0_n_7),
        .\lcd_data[1]_INST_0_i_1_0 (textlcd_u0_n_8),
        .\lcd_data[1]_INST_0_i_2 (count_mode_reg),
        .\lcd_data[2]_INST_0_i_1 (textlcd_u0_n_6),
        .\lcd_data[2]_INST_0_i_2 (textlcd_u0_n_17),
        .resetn(resetn),
        .resetn_0(digital_clock_u0_n_0),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg1_reg[1] (\slv_reg1_reg[1] ),
        .\slv_reg1_reg[1]_0 (\slv_reg1_reg[1]_0 ),
        .slv_reg_wren__0(slv_reg_wren__0),
        .\textdata_b_reg[11]_0 (digital_clock_u0_n_14),
        .\textdata_b_reg[12]_0 (digital_clock_u0_n_29),
        .\textdata_b_reg[22]_0 (data5),
        .\textdata_b_reg[2]_0 (digital_clock_u0_n_31),
        .\textdata_b_reg[2]_1 (digital_clock_u0_n_33),
        .\textdata_b_reg[30]_0 (digital_clock_u0_n_32),
        .\textdata_c_reg[22]_0 (digital_clock_u0_n_30),
        .\textdata_e_reg[30]_0 (digital_clock_u0_n_12),
        .\textdata_g_reg[2]_0 (digital_clock_u0_n_37),
        .\textdata_h_reg[0]_0 (digital_clock_u0_n_34),
        .\textdata_h_reg[1]_0 (digital_clock_u0_n_35),
        .\textdata_h_reg[4]_0 (digital_clock_u0_n_36));
  system_textlcd_2_0_0_textlcd textlcd_u0
       (.Q(count_mode_reg),
        .clk(clk),
        .\count_mode_reg[0]_0 (textlcd_u0_n_7),
        .\count_mode_reg[0]_1 (textlcd_u0_n_8),
        .\count_mode_reg[3]_0 (textlcd_u0_n_6),
        .\count_mode_reg[4]_0 (textlcd_u0_n_17),
        .data15(data15),
        .data4(data4),
        .data6(data6),
        .data9({data9[6],data9[4]}),
        .lcd_data(lcd_data),
        .\lcd_data[0]_0 (digital_clock_u0_n_34),
        .\lcd_data[1]_0 (digital_clock_u0_n_35),
        .\lcd_data[2]_0 (digital_clock_u0_n_37),
        .\lcd_data[3]_0 (digital_clock_u0_n_14),
        .\lcd_data[3]_1 (digital_clock_u0_n_36),
        .\lcd_data[3]_INST_0_i_1_0 (data5),
        .lcd_data_0_sp_1(digital_clock_u0_n_30),
        .lcd_data_1_sp_1(digital_clock_u0_n_33),
        .lcd_data_2_sp_1(digital_clock_u0_n_31),
        .lcd_data_3_sp_1(digital_clock_u0_n_32),
        .lcd_data_4_sp_1(digital_clock_u0_n_29),
        .lcd_data_6_sp_1(digital_clock_u0_n_12),
        .lcd_en(lcd_en),
        .\lcd_mode_reg[3]_0 (digital_clock_u0_n_0),
        .lcd_rs(lcd_rs));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
