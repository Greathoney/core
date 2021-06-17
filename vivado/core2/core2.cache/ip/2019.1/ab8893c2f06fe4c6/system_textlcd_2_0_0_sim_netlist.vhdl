-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Jun 14 12:20:45 2021
-- Host        : DESKTOP-8KJ0KRR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_textlcd_2_0_0_sim_netlist.vhdl
-- Design      : system_textlcd_2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_divider is
  port (
    resetn_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \slv_reg0_reg[1]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \slv_reg0_reg[1]_0\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \slv_reg_wren__0\ : in STD_LOGIC;
    \slv_reg1_reg[1]\ : in STD_LOGIC;
    \slv_reg1_reg[1]_0\ : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_divider;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_divider is
  signal clk_onesec : STD_LOGIC;
  signal clk_onesec_i_10_n_0 : STD_LOGIC;
  signal clk_onesec_i_11_n_0 : STD_LOGIC;
  signal clk_onesec_i_12_n_0 : STD_LOGIC;
  signal clk_onesec_i_13_n_0 : STD_LOGIC;
  signal clk_onesec_i_1_n_0 : STD_LOGIC;
  signal clk_onesec_i_2_n_0 : STD_LOGIC;
  signal clk_onesec_i_3_n_0 : STD_LOGIC;
  signal clk_onesec_i_4_n_0 : STD_LOGIC;
  signal clk_onesec_i_5_n_0 : STD_LOGIC;
  signal clk_onesec_i_6_n_0 : STD_LOGIC;
  signal clk_onesec_i_7_n_0 : STD_LOGIC;
  signal clk_onesec_i_8_n_0 : STD_LOGIC;
  signal clk_onesec_i_9_n_0 : STD_LOGIC;
  signal cnt_hour1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cnt_hour10 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cnt_hour102 : STD_LOGIC;
  signal \cnt_hour10[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_hour10[1]_C_i_1_n_0\ : STD_LOGIC;
  signal \cnt_hour10[1]_P_i_1_n_0\ : STD_LOGIC;
  signal \cnt_hour10_reg[1]_C_n_0\ : STD_LOGIC;
  signal \cnt_hour10_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \cnt_hour10_reg[1]_P_n_0\ : STD_LOGIC;
  signal \cnt_hour111_out__7\ : STD_LOGIC;
  signal \cnt_hour1[0]_C_i_1_n_0\ : STD_LOGIC;
  signal \cnt_hour1[0]_P_i_1_n_0\ : STD_LOGIC;
  signal \cnt_hour1[1]_C_i_1_n_0\ : STD_LOGIC;
  signal \cnt_hour1[1]_P_i_1_n_0\ : STD_LOGIC;
  signal \cnt_hour1[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_hour1[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_hour1[3]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_hour1[3]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_hour1[3]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_hour1[3]_i_9_n_0\ : STD_LOGIC;
  signal \cnt_hour1_reg[0]_C_n_0\ : STD_LOGIC;
  signal \cnt_hour1_reg[0]_P_n_0\ : STD_LOGIC;
  signal \cnt_hour1_reg[1]_C_n_0\ : STD_LOGIC;
  signal \cnt_hour1_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \cnt_hour1_reg[1]_P_n_0\ : STD_LOGIC;
  signal cnt_min1 : STD_LOGIC;
  signal cnt_min100 : STD_LOGIC;
  signal \cnt_min101__4\ : STD_LOGIC;
  signal \cnt_min10[0]_C_i_1_n_0\ : STD_LOGIC;
  signal \cnt_min10[0]_P_i_1_n_0\ : STD_LOGIC;
  signal \cnt_min10[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_min10[2]_C_i_1_n_0\ : STD_LOGIC;
  signal \cnt_min10[2]_P_i_1_n_0\ : STD_LOGIC;
  signal \cnt_min10_reg[0]_C_n_0\ : STD_LOGIC;
  signal \cnt_min10_reg[0]_P_n_0\ : STD_LOGIC;
  signal \cnt_min10_reg[2]_C_n_0\ : STD_LOGIC;
  signal \cnt_min10_reg[2]_P_n_0\ : STD_LOGIC;
  signal \cnt_min1[0]_C_i_1_n_0\ : STD_LOGIC;
  signal \cnt_min1[0]_P_i_1_n_0\ : STD_LOGIC;
  signal \cnt_min1[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_min1[1]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_min1[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_min1[2]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_min1[3]_C_i_1_n_0\ : STD_LOGIC;
  signal \cnt_min1[3]_P_i_1_n_0\ : STD_LOGIC;
  signal \cnt_min1_reg[0]_C_n_0\ : STD_LOGIC;
  signal \cnt_min1_reg[0]_P_n_0\ : STD_LOGIC;
  signal \cnt_min1_reg[3]_C_n_0\ : STD_LOGIC;
  signal \cnt_min1_reg[3]_P_n_0\ : STD_LOGIC;
  signal \cnt_onesec[0]_i_10_n_0\ : STD_LOGIC;
  signal \cnt_onesec[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_onesec[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_onesec[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_onesec[0]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_onesec[0]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_onesec[0]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_onesec[0]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_onesec[0]_i_9_n_0\ : STD_LOGIC;
  signal \cnt_onesec[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_onesec[12]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_onesec[12]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_onesec[12]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_onesec[12]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_onesec[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_onesec[16]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_onesec[16]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_onesec[16]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_onesec[20]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_onesec[20]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_onesec[20]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_onesec[20]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_onesec[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_onesec[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_onesec[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_onesec[4]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_onesec[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_onesec[8]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_onesec[8]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_onesec[8]_i_5_n_0\ : STD_LOGIC;
  signal cnt_onesec_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \cnt_onesec_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_onesec_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_onesec_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_onesec_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_onesec_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_onesec_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_onesec_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_onesec_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_onesec_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_onesec_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_onesec_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_onesec_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_onesec_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_onesec_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_onesec_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_onesec_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_onesec_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_onesec_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_onesec_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_onesec_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_onesec_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_onesec_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_onesec_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_onesec_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_onesec_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_onesec_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_onesec_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_onesec_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_onesec_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_onesec_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_onesec_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_onesec_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_onesec_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_onesec_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_onesec_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_onesec_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_onesec_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_onesec_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_onesec_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_onesec_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_onesec_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_onesec_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_onesec_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_onesec_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_onesec_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_onesec_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_onesec_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_sec10[0]_C_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sec10[0]_C_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sec10[0]_P_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sec10[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sec10[1]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sec10[1]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sec10[2]_C_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sec10[2]_P_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sec10_reg[0]_C_n_0\ : STD_LOGIC;
  signal \cnt_sec10_reg[0]_P_n_0\ : STD_LOGIC;
  signal \cnt_sec10_reg[2]_C_n_0\ : STD_LOGIC;
  signal \cnt_sec10_reg[2]_LDC_n_0\ : STD_LOGIC;
  signal \cnt_sec10_reg[2]_P_n_0\ : STD_LOGIC;
  signal \cnt_sec10_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_sec1[0]_C_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sec1[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sec1[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sec1[3]_C_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sec1_reg[0]_C_n_0\ : STD_LOGIC;
  signal \cnt_sec1_reg[0]_P_n_0\ : STD_LOGIC;
  signal \cnt_sec1_reg[3]_C_n_0\ : STD_LOGIC;
  signal \cnt_sec1_reg[3]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sec1_reg[3]_LDC_n_0\ : STD_LOGIC;
  signal \cnt_sec1_reg[3]_P_n_0\ : STD_LOGIC;
  signal \^resetn_0\ : STD_LOGIC;
  signal time_info : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \NLW_cnt_onesec_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk_onesec_i_10 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of clk_onesec_i_11 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of clk_onesec_i_13 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of clk_onesec_i_3 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of clk_onesec_i_4 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of clk_onesec_i_6 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of clk_onesec_i_9 : label is "soft_lutpair14";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \cnt_hour10_reg[1]_LDC\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \cnt_hour10_reg[1]_LDC\ : label is "LDC";
  attribute SOFT_HLUTNM of \cnt_hour1[0]_C_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_hour1[1]_C_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_hour1[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_hour1[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_hour1[3]_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_hour1[3]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_hour1[3]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt_hour1[3]_i_6\ : label is "soft_lutpair9";
  attribute OPT_MODIFIED of \cnt_hour1_reg[1]_LDC\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \cnt_hour1_reg[1]_LDC\ : label is "LDC";
  attribute SOFT_HLUTNM of \cnt_min10[0]_C_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_min10[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_min1[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_min1[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_onesec[0]_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_sec10[0]_C_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_sec10[1]_i_2\ : label is "soft_lutpair7";
  attribute OPT_MODIFIED of \cnt_sec10_reg[2]_LDC\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \cnt_sec10_reg[2]_LDC\ : label is "LDC";
  attribute SOFT_HLUTNM of \cnt_sec1[2]_i_2\ : label is "soft_lutpair3";
  attribute OPT_MODIFIED of \cnt_sec1_reg[3]_LDC\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \cnt_sec1_reg[3]_LDC\ : label is "LDC";
  attribute SOFT_HLUTNM of \slv_reg1[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_reg1[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \slv_reg1[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \slv_reg1[14]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg1[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg1[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg1[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_reg1[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \textdata_g[18]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \textdata_g[19]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \textdata_g[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \textdata_g[24]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \textdata_g[25]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \textdata_h[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \textdata_h[25]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \textdata_h[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \textdata_h[9]_i_1\ : label is "soft_lutpair19";
begin
  resetn_0 <= \^resetn_0\;
clk_onesec_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF04000000"
    )
        port map (
      I0 => clk_onesec_i_3_n_0,
      I1 => clk_onesec_i_4_n_0,
      I2 => clk_onesec_i_5_n_0,
      I3 => clk_onesec_i_6_n_0,
      I4 => clk_onesec_i_7_n_0,
      I5 => clk_onesec,
      O => clk_onesec_i_1_n_0
    );
clk_onesec_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cnt_onesec_reg(16),
      I1 => cnt_onesec_reg(17),
      O => clk_onesec_i_10_n_0
    );
clk_onesec_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => cnt_onesec_reg(11),
      I1 => cnt_onesec_reg(10),
      I2 => cnt_onesec_reg(9),
      O => clk_onesec_i_11_n_0
    );
clk_onesec_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => cnt_onesec_reg(0),
      I1 => cnt_onesec_reg(2),
      I2 => cnt_onesec_reg(1),
      I3 => cnt_onesec_reg(3),
      I4 => cnt_onesec_reg(4),
      I5 => cnt_onesec_reg(5),
      O => clk_onesec_i_12_n_0
    );
clk_onesec_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cnt_onesec_reg(10),
      I1 => cnt_onesec_reg(11),
      O => clk_onesec_i_13_n_0
    );
clk_onesec_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(2),
      I1 => resetn,
      O => clk_onesec_i_2_n_0
    );
clk_onesec_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cnt_onesec_reg(22),
      I1 => cnt_onesec_reg(23),
      O => clk_onesec_i_3_n_0
    );
clk_onesec_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => cnt_onesec_reg(23),
      I1 => cnt_onesec_reg(21),
      I2 => cnt_onesec_reg(22),
      O => clk_onesec_i_4_n_0
    );
clk_onesec_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cnt_onesec_reg(19),
      I1 => cnt_onesec_reg(20),
      O => clk_onesec_i_5_n_0
    );
clk_onesec_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => cnt_onesec_reg(20),
      I1 => cnt_onesec_reg(19),
      I2 => cnt_onesec_reg(18),
      O => clk_onesec_i_6_n_0
    );
clk_onesec_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => clk_onesec_i_8_n_0,
      I1 => cnt_onesec_reg(12),
      I2 => cnt_onesec_reg(13),
      I3 => cnt_onesec_reg(14),
      I4 => clk_onesec_i_9_n_0,
      I5 => clk_onesec_i_10_n_0,
      O => clk_onesec_i_7_n_0
    );
clk_onesec_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => clk_onesec_i_11_n_0,
      I1 => cnt_onesec_reg(6),
      I2 => clk_onesec_i_12_n_0,
      I3 => cnt_onesec_reg(8),
      I4 => cnt_onesec_reg(7),
      I5 => clk_onesec_i_13_n_0,
      O => clk_onesec_i_8_n_0
    );
clk_onesec_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => cnt_onesec_reg(17),
      I1 => cnt_onesec_reg(15),
      I2 => cnt_onesec_reg(16),
      O => clk_onesec_i_9_n_0
    );
clk_onesec_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => clk_onesec_i_1_n_0,
      PRE => clk_onesec_i_2_n_0,
      Q => clk_onesec
    );
\cnt_hour10[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF1D000000"
    )
        port map (
      I0 => \cnt_hour10_reg[1]_C_n_0\,
      I1 => \cnt_hour10_reg[1]_LDC_n_0\,
      I2 => \cnt_hour10_reg[1]_P_n_0\,
      I3 => \cnt_hour1[3]_i_4_n_0\,
      I4 => cnt_hour102,
      I5 => cnt_hour10(0),
      O => \cnt_hour10[0]_i_1_n_0\
    );
\cnt_hour10[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002000000F000"
    )
        port map (
      I0 => cnt_hour10(1),
      I1 => cnt_hour10(0),
      I2 => cnt_hour1(3),
      I3 => cnt_hour1(0),
      I4 => cnt_hour1(2),
      I5 => cnt_hour1(1),
      O => cnt_hour102
    );
\cnt_hour10[1]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FFFFFF2A000000"
    )
        port map (
      I0 => cnt_hour10(0),
      I1 => \cnt_hour10_reg[1]_LDC_n_0\,
      I2 => \cnt_hour10_reg[1]_P_n_0\,
      I3 => \cnt_hour1[3]_i_4_n_0\,
      I4 => cnt_hour102,
      I5 => \cnt_hour10_reg[1]_C_n_0\,
      O => \cnt_hour10[1]_C_i_1_n_0\
    );
\cnt_hour10[1]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FFFFFFA2000000"
    )
        port map (
      I0 => cnt_hour10(0),
      I1 => \cnt_hour10_reg[1]_C_n_0\,
      I2 => \cnt_hour10_reg[1]_LDC_n_0\,
      I3 => \cnt_hour1[3]_i_4_n_0\,
      I4 => cnt_hour102,
      I5 => \cnt_hour10_reg[1]_P_n_0\,
      O => \cnt_hour10[1]_P_i_1_n_0\
    );
\cnt_hour10_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_hour10[0]_i_1_n_0\,
      Q => cnt_hour10(0)
    );
\cnt_hour10_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => \cnt_sec1_reg[3]_LDC_i_1_n_0\,
      D => \cnt_hour10[1]_C_i_1_n_0\,
      Q => \cnt_hour10_reg[1]_C_n_0\
    );
\cnt_hour10_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => \cnt_sec1_reg[3]_LDC_i_1_n_0\,
      D => '1',
      G => resetn,
      GE => '1',
      Q => \cnt_hour10_reg[1]_LDC_n_0\
    );
\cnt_hour10_reg[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => clk_onesec,
      CE => '1',
      D => \cnt_hour10[1]_P_i_1_n_0\,
      PRE => \^resetn_0\,
      Q => \cnt_hour10_reg[1]_P_n_0\
    );
\cnt_hour1[0]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF2A00"
    )
        port map (
      I0 => \cnt_hour111_out__7\,
      I1 => \cnt_hour1_reg[1]_LDC_n_0\,
      I2 => \cnt_hour1_reg[0]_P_n_0\,
      I3 => \cnt_hour1[3]_i_4_n_0\,
      I4 => \cnt_hour1_reg[0]_C_n_0\,
      O => \cnt_hour1[0]_C_i_1_n_0\
    );
\cnt_hour1[0]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFA200"
    )
        port map (
      I0 => \cnt_hour111_out__7\,
      I1 => \cnt_hour1_reg[0]_C_n_0\,
      I2 => \cnt_hour1_reg[1]_LDC_n_0\,
      I3 => \cnt_hour1[3]_i_4_n_0\,
      I4 => \cnt_hour1_reg[0]_P_n_0\,
      O => \cnt_hour1[0]_P_i_1_n_0\
    );
\cnt_hour1[1]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"208AFFFF2A800000"
    )
        port map (
      I0 => \cnt_hour111_out__7\,
      I1 => \cnt_hour1_reg[1]_P_n_0\,
      I2 => \cnt_hour1_reg[1]_LDC_n_0\,
      I3 => cnt_hour1(0),
      I4 => \cnt_hour1[3]_i_4_n_0\,
      I5 => \cnt_hour1_reg[1]_C_n_0\,
      O => \cnt_hour1[1]_C_i_1_n_0\
    );
\cnt_hour1[1]_C_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_hour1_reg[0]_P_n_0\,
      I1 => \cnt_hour1_reg[1]_LDC_n_0\,
      I2 => \cnt_hour1_reg[0]_C_n_0\,
      O => cnt_hour1(0)
    );
\cnt_hour1[1]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02A8FFFF8A200000"
    )
        port map (
      I0 => \cnt_hour111_out__7\,
      I1 => \cnt_hour1_reg[1]_LDC_n_0\,
      I2 => \cnt_hour1_reg[1]_C_n_0\,
      I3 => cnt_hour1(0),
      I4 => \cnt_hour1[3]_i_4_n_0\,
      I5 => \cnt_hour1_reg[1]_P_n_0\,
      O => \cnt_hour1[1]_P_i_1_n_0\
    );
\cnt_hour1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F80"
    )
        port map (
      I0 => \cnt_hour111_out__7\,
      I1 => \cnt_hour1[3]_i_3_n_0\,
      I2 => \cnt_hour1[3]_i_4_n_0\,
      I3 => cnt_hour1(2),
      O => \cnt_hour1[2]_i_1_n_0\
    );
\cnt_hour1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF8000"
    )
        port map (
      I0 => \cnt_hour111_out__7\,
      I1 => cnt_hour1(2),
      I2 => \cnt_hour1[3]_i_3_n_0\,
      I3 => \cnt_hour1[3]_i_4_n_0\,
      I4 => cnt_hour1(3),
      O => \cnt_hour1[3]_i_1_n_0\
    );
\cnt_hour1[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_sec1_reg[3]_P_n_0\,
      I1 => \cnt_sec1_reg[3]_LDC_n_0\,
      I2 => \cnt_sec1_reg[3]_C_n_0\,
      O => time_info(3)
    );
\cnt_hour1[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0B0F0F0F0F0FFF"
    )
        port map (
      I0 => cnt_hour10(0),
      I1 => cnt_hour10(1),
      I2 => cnt_hour1(3),
      I3 => cnt_hour1(2),
      I4 => cnt_hour1(1),
      I5 => cnt_hour1(0),
      O => \cnt_hour111_out__7\
    );
\cnt_hour1[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => \cnt_hour1_reg[1]_C_n_0\,
      I1 => \cnt_hour1_reg[1]_P_n_0\,
      I2 => \cnt_hour1_reg[0]_C_n_0\,
      I3 => \cnt_hour1_reg[1]_LDC_n_0\,
      I4 => \cnt_hour1_reg[0]_P_n_0\,
      O => \cnt_hour1[3]_i_3_n_0\
    );
\cnt_hour1[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \cnt_hour1[3]_i_7_n_0\,
      I1 => time_info(10),
      I2 => time_info(9),
      I3 => time_info(13),
      I4 => \cnt_min101__4\,
      O => \cnt_hour1[3]_i_4_n_0\
    );
\cnt_hour1[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_hour10_reg[1]_P_n_0\,
      I1 => \cnt_hour10_reg[1]_LDC_n_0\,
      I2 => \cnt_hour10_reg[1]_C_n_0\,
      O => cnt_hour10(1)
    );
\cnt_hour1[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_hour1_reg[1]_P_n_0\,
      I1 => \cnt_hour1_reg[1]_LDC_n_0\,
      I2 => \cnt_hour1_reg[1]_C_n_0\,
      O => cnt_hour1(1)
    );
\cnt_hour1[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"757FFFFFFFFFFFFF"
    )
        port map (
      I0 => time_info(11),
      I1 => \cnt_min10_reg[2]_P_n_0\,
      I2 => \cnt_sec10_reg[2]_LDC_n_0\,
      I3 => \cnt_min10_reg[2]_C_n_0\,
      I4 => time_info(8),
      I5 => time_info(12),
      O => \cnt_hour1[3]_i_7_n_0\
    );
\cnt_hour1[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \cnt_hour1[3]_i_9_n_0\,
      I1 => \cnt_sec10_reg_n_0_[1]\,
      I2 => \cnt_sec10[1]_i_2_n_0\,
      I3 => \cnt_sec10[0]_C_i_2_n_0\,
      I4 => time_info(0),
      I5 => time_info(3),
      O => \cnt_min101__4\
    );
\cnt_hour1[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_info(1),
      I1 => time_info(2),
      O => \cnt_hour1[3]_i_9_n_0\
    );
\cnt_hour1_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => \cnt_sec1_reg[3]_LDC_i_1_n_0\,
      D => \cnt_hour1[0]_C_i_1_n_0\,
      Q => \cnt_hour1_reg[0]_C_n_0\
    );
\cnt_hour1_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => clk_onesec,
      CE => '1',
      D => \cnt_hour1[0]_P_i_1_n_0\,
      PRE => \^resetn_0\,
      Q => \cnt_hour1_reg[0]_P_n_0\
    );
\cnt_hour1_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => \cnt_sec1_reg[3]_LDC_i_1_n_0\,
      D => \cnt_hour1[1]_C_i_1_n_0\,
      Q => \cnt_hour1_reg[1]_C_n_0\
    );
\cnt_hour1_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => \cnt_sec1_reg[3]_LDC_i_1_n_0\,
      D => '1',
      G => resetn,
      GE => '1',
      Q => \cnt_hour1_reg[1]_LDC_n_0\
    );
\cnt_hour1_reg[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => clk_onesec,
      CE => '1',
      D => \cnt_hour1[1]_P_i_1_n_0\,
      PRE => \^resetn_0\,
      Q => \cnt_hour1_reg[1]_P_n_0\
    );
\cnt_hour1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_hour1[2]_i_1_n_0\,
      Q => cnt_hour1(2)
    );
\cnt_hour1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_hour1[3]_i_1_n_0\,
      Q => cnt_hour1(3)
    );
\cnt_min10[0]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0070FFFF07770000"
    )
        port map (
      I0 => time_info(14),
      I1 => time_info(13),
      I2 => \cnt_sec10_reg[2]_LDC_n_0\,
      I3 => \cnt_min10_reg[0]_P_n_0\,
      I4 => cnt_min100,
      I5 => \cnt_min10_reg[0]_C_n_0\,
      O => \cnt_min10[0]_C_i_1_n_0\
    );
\cnt_min10[0]_C_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_min10_reg[2]_P_n_0\,
      I1 => \cnt_sec10_reg[2]_LDC_n_0\,
      I2 => \cnt_min10_reg[2]_C_n_0\,
      O => time_info(14)
    );
\cnt_min10[0]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0007FFFF77070000"
    )
        port map (
      I0 => time_info(14),
      I1 => time_info(13),
      I2 => \cnt_min10_reg[0]_C_n_0\,
      I3 => \cnt_sec10_reg[2]_LDC_n_0\,
      I4 => cnt_min100,
      I5 => \cnt_min10_reg[0]_P_n_0\,
      O => \cnt_min10[0]_P_i_1_n_0\
    );
\cnt_min10[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FFFF47000000"
    )
        port map (
      I0 => \cnt_min10_reg[2]_P_n_0\,
      I1 => \cnt_sec10_reg[2]_LDC_n_0\,
      I2 => \cnt_min10_reg[2]_C_n_0\,
      I3 => time_info(12),
      I4 => cnt_min100,
      I5 => time_info(13),
      O => \cnt_min10[1]_i_1_n_0\
    );
\cnt_min10[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_min10_reg[0]_P_n_0\,
      I1 => \cnt_sec10_reg[2]_LDC_n_0\,
      I2 => \cnt_min10_reg[0]_C_n_0\,
      O => time_info(12)
    );
\cnt_min10[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => time_info(11),
      I1 => time_info(8),
      I2 => time_info(10),
      I3 => time_info(9),
      I4 => \cnt_min101__4\,
      O => cnt_min100
    );
\cnt_min10[2]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"400BFFFF70080000"
    )
        port map (
      I0 => \cnt_min10_reg[2]_P_n_0\,
      I1 => \cnt_sec10_reg[2]_LDC_n_0\,
      I2 => time_info(13),
      I3 => time_info(12),
      I4 => cnt_min100,
      I5 => \cnt_min10_reg[2]_C_n_0\,
      O => \cnt_min10[2]_C_i_1_n_0\
    );
\cnt_min10[2]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"100EFFFFB0040000"
    )
        port map (
      I0 => \cnt_sec10_reg[2]_LDC_n_0\,
      I1 => \cnt_min10_reg[2]_C_n_0\,
      I2 => time_info(13),
      I3 => time_info(12),
      I4 => cnt_min100,
      I5 => \cnt_min10_reg[2]_P_n_0\,
      O => \cnt_min10[2]_P_i_1_n_0\
    );
\cnt_min10_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => \cnt_sec1_reg[3]_LDC_i_1_n_0\,
      D => \cnt_min10[0]_C_i_1_n_0\,
      Q => \cnt_min10_reg[0]_C_n_0\
    );
\cnt_min10_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => clk_onesec,
      CE => '1',
      D => \cnt_min10[0]_P_i_1_n_0\,
      PRE => \^resetn_0\,
      Q => \cnt_min10_reg[0]_P_n_0\
    );
\cnt_min10_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_min10[1]_i_1_n_0\,
      Q => time_info(13)
    );
\cnt_min10_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => \cnt_sec1_reg[3]_LDC_i_1_n_0\,
      D => \cnt_min10[2]_C_i_1_n_0\,
      Q => \cnt_min10_reg[2]_C_n_0\
    );
\cnt_min10_reg[2]_P\: unisim.vcomponents.FDPE
     port map (
      C => clk_onesec,
      CE => '1',
      D => \cnt_min10[2]_P_i_1_n_0\,
      PRE => \^resetn_0\,
      Q => \cnt_min10_reg[2]_P_n_0\
    );
\cnt_min1[0]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF2A00"
    )
        port map (
      I0 => \cnt_min1[1]_i_2_n_0\,
      I1 => \cnt_sec1_reg[3]_LDC_n_0\,
      I2 => \cnt_min1_reg[0]_P_n_0\,
      I3 => cnt_min1,
      I4 => \cnt_min1_reg[0]_C_n_0\,
      O => \cnt_min1[0]_C_i_1_n_0\
    );
\cnt_min1[0]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFA200"
    )
        port map (
      I0 => \cnt_min1[1]_i_2_n_0\,
      I1 => \cnt_min1_reg[0]_C_n_0\,
      I2 => \cnt_sec1_reg[3]_LDC_n_0\,
      I3 => cnt_min1,
      I4 => \cnt_min1_reg[0]_P_n_0\,
      O => \cnt_min1[0]_P_i_1_n_0\
    );
\cnt_min1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202AFFFF8A800000"
    )
        port map (
      I0 => \cnt_min1[1]_i_2_n_0\,
      I1 => \cnt_min1_reg[0]_P_n_0\,
      I2 => \cnt_sec1_reg[3]_LDC_n_0\,
      I3 => \cnt_min1_reg[0]_C_n_0\,
      I4 => cnt_min1,
      I5 => time_info(9),
      O => \cnt_min1[1]_i_1_n_0\
    );
\cnt_min1[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010101FFFFFF01FF"
    )
        port map (
      I0 => time_info(8),
      I1 => time_info(9),
      I2 => time_info(10),
      I3 => \cnt_min1_reg[3]_C_n_0\,
      I4 => \cnt_sec1_reg[3]_LDC_n_0\,
      I5 => \cnt_min1_reg[3]_P_n_0\,
      O => \cnt_min1[1]_i_2_n_0\
    );
\cnt_min1[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15FF4000"
    )
        port map (
      I0 => time_info(11),
      I1 => time_info(9),
      I2 => time_info(8),
      I3 => cnt_min1,
      I4 => time_info(10),
      O => \cnt_min1[2]_i_1_n_0\
    );
\cnt_min1[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_min1_reg[3]_P_n_0\,
      I1 => \cnt_sec1_reg[3]_LDC_n_0\,
      I2 => \cnt_min1_reg[3]_C_n_0\,
      O => time_info(11)
    );
\cnt_min1[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_min1_reg[0]_P_n_0\,
      I1 => \cnt_sec1_reg[3]_LDC_n_0\,
      I2 => \cnt_min1_reg[0]_C_n_0\,
      O => time_info(8)
    );
\cnt_min1[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \cnt_sec10_reg_n_0_[1]\,
      I1 => time_info(1),
      I2 => time_info(2),
      I3 => \cnt_sec10[1]_i_2_n_0\,
      I4 => time_info(0),
      I5 => \cnt_min1[2]_i_5_n_0\,
      O => cnt_min1
    );
\cnt_min1[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D1D1DFFFFFF1DFF"
    )
        port map (
      I0 => \cnt_sec10_reg[2]_C_n_0\,
      I1 => \cnt_sec10_reg[2]_LDC_n_0\,
      I2 => \cnt_sec10_reg[2]_P_n_0\,
      I3 => \cnt_sec1_reg[3]_C_n_0\,
      I4 => \cnt_sec1_reg[3]_LDC_n_0\,
      I5 => \cnt_sec1_reg[3]_P_n_0\,
      O => \cnt_min1[2]_i_5_n_0\
    );
\cnt_min1[3]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4002FFFF40020000"
    )
        port map (
      I0 => time_info(11),
      I1 => time_info(10),
      I2 => time_info(8),
      I3 => time_info(9),
      I4 => cnt_min1,
      I5 => \cnt_min1_reg[3]_C_n_0\,
      O => \cnt_min1[3]_C_i_1_n_0\
    );
\cnt_min1[3]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4002FFFF40020000"
    )
        port map (
      I0 => time_info(11),
      I1 => time_info(10),
      I2 => time_info(8),
      I3 => time_info(9),
      I4 => cnt_min1,
      I5 => \cnt_min1_reg[3]_P_n_0\,
      O => \cnt_min1[3]_P_i_1_n_0\
    );
\cnt_min1_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => \cnt_sec1_reg[3]_LDC_i_1_n_0\,
      D => \cnt_min1[0]_C_i_1_n_0\,
      Q => \cnt_min1_reg[0]_C_n_0\
    );
\cnt_min1_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => clk_onesec,
      CE => '1',
      D => \cnt_min1[0]_P_i_1_n_0\,
      PRE => \^resetn_0\,
      Q => \cnt_min1_reg[0]_P_n_0\
    );
\cnt_min1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_min1[1]_i_1_n_0\,
      Q => time_info(9)
    );
\cnt_min1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_min1[2]_i_1_n_0\,
      Q => time_info(10)
    );
\cnt_min1_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => \cnt_sec1_reg[3]_LDC_i_1_n_0\,
      D => \cnt_min1[3]_C_i_1_n_0\,
      Q => \cnt_min1_reg[3]_C_n_0\
    );
\cnt_min1_reg[3]_P\: unisim.vcomponents.FDPE
     port map (
      C => clk_onesec,
      CE => '1',
      D => \cnt_min1[3]_P_i_1_n_0\,
      PRE => \^resetn_0\,
      Q => \cnt_min1_reg[3]_P_n_0\
    );
\cnt_onesec[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cnt_onesec_reg(5),
      I1 => cnt_onesec_reg(8),
      I2 => cnt_onesec_reg(9),
      I3 => cnt_onesec_reg(6),
      I4 => cnt_onesec_reg(7),
      O => \cnt_onesec[0]_i_10_n_0\
    );
\cnt_onesec[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(0),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[0]_i_2_n_0\
    );
\cnt_onesec[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(3),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[0]_i_3_n_0\
    );
\cnt_onesec[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(2),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[0]_i_4_n_0\
    );
\cnt_onesec[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(1),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[0]_i_5_n_0\
    );
\cnt_onesec[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000115155555555"
    )
        port map (
      I0 => cnt_onesec_reg(0),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[0]_i_6_n_0\
    );
\cnt_onesec[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => cnt_onesec_reg(17),
      I1 => cnt_onesec_reg(20),
      I2 => cnt_onesec_reg(21),
      I3 => cnt_onesec_reg(18),
      I4 => cnt_onesec_reg(19),
      O => \cnt_onesec[0]_i_7_n_0\
    );
\cnt_onesec[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54555555FFFFFFFF"
    )
        port map (
      I0 => cnt_onesec_reg(14),
      I1 => \cnt_onesec[0]_i_9_n_0\,
      I2 => clk_onesec_i_13_n_0,
      I3 => cnt_onesec_reg(12),
      I4 => cnt_onesec_reg(13),
      I5 => cnt_onesec_reg(15),
      O => \cnt_onesec[0]_i_8_n_0\
    );
\cnt_onesec[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => cnt_onesec_reg(0),
      I1 => cnt_onesec_reg(4),
      I2 => cnt_onesec_reg(3),
      I3 => cnt_onesec_reg(2),
      I4 => cnt_onesec_reg(1),
      I5 => \cnt_onesec[0]_i_10_n_0\,
      O => \cnt_onesec[0]_i_9_n_0\
    );
\cnt_onesec[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000044C4CCCCCCCC"
    )
        port map (
      I0 => \cnt_onesec[0]_i_7_n_0\,
      I1 => cnt_onesec_reg(15),
      I2 => \cnt_onesec[12]_i_6_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[12]_i_2_n_0\
    );
\cnt_onesec[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(14),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[12]_i_3_n_0\
    );
\cnt_onesec[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(13),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[12]_i_4_n_0\
    );
\cnt_onesec[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(12),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[12]_i_5_n_0\
    );
\cnt_onesec[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF7FFF"
    )
        port map (
      I0 => cnt_onesec_reg(13),
      I1 => cnt_onesec_reg(12),
      I2 => cnt_onesec_reg(11),
      I3 => cnt_onesec_reg(10),
      I4 => \cnt_onesec[0]_i_9_n_0\,
      I5 => cnt_onesec_reg(14),
      O => \cnt_onesec[12]_i_6_n_0\
    );
\cnt_onesec[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(19),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[16]_i_2_n_0\
    );
\cnt_onesec[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(18),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[16]_i_3_n_0\
    );
\cnt_onesec[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(17),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[16]_i_4_n_0\
    );
\cnt_onesec[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04CC"
    )
        port map (
      I0 => \cnt_onesec[0]_i_7_n_0\,
      I1 => cnt_onesec_reg(16),
      I2 => cnt_onesec_reg(22),
      I3 => cnt_onesec_reg(23),
      O => \cnt_onesec[16]_i_5_n_0\
    );
\cnt_onesec[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000055F700000000"
    )
        port map (
      I0 => \cnt_onesec[0]_i_7_n_0\,
      I1 => cnt_onesec_reg(15),
      I2 => \cnt_onesec[12]_i_6_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[20]_i_2_n_0\
    );
\cnt_onesec[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_onesec_reg(22),
      I1 => cnt_onesec_reg(23),
      O => \cnt_onesec[20]_i_3_n_0\
    );
\cnt_onesec[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(21),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[20]_i_4_n_0\
    );
\cnt_onesec[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(20),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[20]_i_5_n_0\
    );
\cnt_onesec[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(7),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[4]_i_2_n_0\
    );
\cnt_onesec[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(6),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[4]_i_3_n_0\
    );
\cnt_onesec[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(5),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[4]_i_4_n_0\
    );
\cnt_onesec[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(4),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[4]_i_5_n_0\
    );
\cnt_onesec[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(11),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[8]_i_2_n_0\
    );
\cnt_onesec[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(10),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[8]_i_3_n_0\
    );
\cnt_onesec[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(9),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[8]_i_4_n_0\
    );
\cnt_onesec[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => cnt_onesec_reg(8),
      I1 => \cnt_onesec[0]_i_7_n_0\,
      I2 => \cnt_onesec[0]_i_8_n_0\,
      I3 => cnt_onesec_reg(16),
      I4 => cnt_onesec_reg(22),
      I5 => cnt_onesec_reg(23),
      O => \cnt_onesec[8]_i_5_n_0\
    );
\cnt_onesec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[0]_i_1_n_7\,
      Q => cnt_onesec_reg(0)
    );
\cnt_onesec_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_onesec_reg[0]_i_1_n_0\,
      CO(2) => \cnt_onesec_reg[0]_i_1_n_1\,
      CO(1) => \cnt_onesec_reg[0]_i_1_n_2\,
      CO(0) => \cnt_onesec_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \cnt_onesec[0]_i_2_n_0\,
      O(3) => \cnt_onesec_reg[0]_i_1_n_4\,
      O(2) => \cnt_onesec_reg[0]_i_1_n_5\,
      O(1) => \cnt_onesec_reg[0]_i_1_n_6\,
      O(0) => \cnt_onesec_reg[0]_i_1_n_7\,
      S(3) => \cnt_onesec[0]_i_3_n_0\,
      S(2) => \cnt_onesec[0]_i_4_n_0\,
      S(1) => \cnt_onesec[0]_i_5_n_0\,
      S(0) => \cnt_onesec[0]_i_6_n_0\
    );
\cnt_onesec_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[8]_i_1_n_5\,
      Q => cnt_onesec_reg(10)
    );
\cnt_onesec_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[8]_i_1_n_4\,
      Q => cnt_onesec_reg(11)
    );
\cnt_onesec_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[12]_i_1_n_7\,
      Q => cnt_onesec_reg(12)
    );
\cnt_onesec_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_onesec_reg[8]_i_1_n_0\,
      CO(3) => \cnt_onesec_reg[12]_i_1_n_0\,
      CO(2) => \cnt_onesec_reg[12]_i_1_n_1\,
      CO(1) => \cnt_onesec_reg[12]_i_1_n_2\,
      CO(0) => \cnt_onesec_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_onesec_reg[12]_i_1_n_4\,
      O(2) => \cnt_onesec_reg[12]_i_1_n_5\,
      O(1) => \cnt_onesec_reg[12]_i_1_n_6\,
      O(0) => \cnt_onesec_reg[12]_i_1_n_7\,
      S(3) => \cnt_onesec[12]_i_2_n_0\,
      S(2) => \cnt_onesec[12]_i_3_n_0\,
      S(1) => \cnt_onesec[12]_i_4_n_0\,
      S(0) => \cnt_onesec[12]_i_5_n_0\
    );
\cnt_onesec_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[12]_i_1_n_6\,
      Q => cnt_onesec_reg(13)
    );
\cnt_onesec_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[12]_i_1_n_5\,
      Q => cnt_onesec_reg(14)
    );
\cnt_onesec_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[12]_i_1_n_4\,
      Q => cnt_onesec_reg(15)
    );
\cnt_onesec_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[16]_i_1_n_7\,
      Q => cnt_onesec_reg(16)
    );
\cnt_onesec_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_onesec_reg[12]_i_1_n_0\,
      CO(3) => \cnt_onesec_reg[16]_i_1_n_0\,
      CO(2) => \cnt_onesec_reg[16]_i_1_n_1\,
      CO(1) => \cnt_onesec_reg[16]_i_1_n_2\,
      CO(0) => \cnt_onesec_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_onesec_reg[16]_i_1_n_4\,
      O(2) => \cnt_onesec_reg[16]_i_1_n_5\,
      O(1) => \cnt_onesec_reg[16]_i_1_n_6\,
      O(0) => \cnt_onesec_reg[16]_i_1_n_7\,
      S(3) => \cnt_onesec[16]_i_2_n_0\,
      S(2) => \cnt_onesec[16]_i_3_n_0\,
      S(1) => \cnt_onesec[16]_i_4_n_0\,
      S(0) => \cnt_onesec[16]_i_5_n_0\
    );
\cnt_onesec_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[16]_i_1_n_6\,
      Q => cnt_onesec_reg(17)
    );
\cnt_onesec_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[16]_i_1_n_5\,
      Q => cnt_onesec_reg(18)
    );
\cnt_onesec_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[16]_i_1_n_4\,
      Q => cnt_onesec_reg(19)
    );
\cnt_onesec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[0]_i_1_n_6\,
      Q => cnt_onesec_reg(1)
    );
\cnt_onesec_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[20]_i_1_n_7\,
      Q => cnt_onesec_reg(20)
    );
\cnt_onesec_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_onesec_reg[16]_i_1_n_0\,
      CO(3) => \NLW_cnt_onesec_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_onesec_reg[20]_i_1_n_1\,
      CO(1) => \cnt_onesec_reg[20]_i_1_n_2\,
      CO(0) => \cnt_onesec_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_onesec_reg[20]_i_1_n_4\,
      O(2) => \cnt_onesec_reg[20]_i_1_n_5\,
      O(1) => \cnt_onesec_reg[20]_i_1_n_6\,
      O(0) => \cnt_onesec_reg[20]_i_1_n_7\,
      S(3) => \cnt_onesec[20]_i_2_n_0\,
      S(2) => \cnt_onesec[20]_i_3_n_0\,
      S(1) => \cnt_onesec[20]_i_4_n_0\,
      S(0) => \cnt_onesec[20]_i_5_n_0\
    );
\cnt_onesec_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[20]_i_1_n_6\,
      Q => cnt_onesec_reg(21)
    );
\cnt_onesec_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[20]_i_1_n_5\,
      Q => cnt_onesec_reg(22)
    );
\cnt_onesec_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[20]_i_1_n_4\,
      Q => cnt_onesec_reg(23)
    );
\cnt_onesec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[0]_i_1_n_5\,
      Q => cnt_onesec_reg(2)
    );
\cnt_onesec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[0]_i_1_n_4\,
      Q => cnt_onesec_reg(3)
    );
\cnt_onesec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[4]_i_1_n_7\,
      Q => cnt_onesec_reg(4)
    );
\cnt_onesec_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_onesec_reg[0]_i_1_n_0\,
      CO(3) => \cnt_onesec_reg[4]_i_1_n_0\,
      CO(2) => \cnt_onesec_reg[4]_i_1_n_1\,
      CO(1) => \cnt_onesec_reg[4]_i_1_n_2\,
      CO(0) => \cnt_onesec_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_onesec_reg[4]_i_1_n_4\,
      O(2) => \cnt_onesec_reg[4]_i_1_n_5\,
      O(1) => \cnt_onesec_reg[4]_i_1_n_6\,
      O(0) => \cnt_onesec_reg[4]_i_1_n_7\,
      S(3) => \cnt_onesec[4]_i_2_n_0\,
      S(2) => \cnt_onesec[4]_i_3_n_0\,
      S(1) => \cnt_onesec[4]_i_4_n_0\,
      S(0) => \cnt_onesec[4]_i_5_n_0\
    );
\cnt_onesec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[4]_i_1_n_6\,
      Q => cnt_onesec_reg(5)
    );
\cnt_onesec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[4]_i_1_n_5\,
      Q => cnt_onesec_reg(6)
    );
\cnt_onesec_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[4]_i_1_n_4\,
      Q => cnt_onesec_reg(7)
    );
\cnt_onesec_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[8]_i_1_n_7\,
      Q => cnt_onesec_reg(8)
    );
\cnt_onesec_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_onesec_reg[4]_i_1_n_0\,
      CO(3) => \cnt_onesec_reg[8]_i_1_n_0\,
      CO(2) => \cnt_onesec_reg[8]_i_1_n_1\,
      CO(1) => \cnt_onesec_reg[8]_i_1_n_2\,
      CO(0) => \cnt_onesec_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_onesec_reg[8]_i_1_n_4\,
      O(2) => \cnt_onesec_reg[8]_i_1_n_5\,
      O(1) => \cnt_onesec_reg[8]_i_1_n_6\,
      O(0) => \cnt_onesec_reg[8]_i_1_n_7\,
      S(3) => \cnt_onesec[8]_i_2_n_0\,
      S(2) => \cnt_onesec[8]_i_3_n_0\,
      S(1) => \cnt_onesec[8]_i_4_n_0\,
      S(0) => \cnt_onesec[8]_i_5_n_0\
    );
\cnt_onesec_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_onesec_reg[8]_i_1_n_6\,
      Q => cnt_onesec_reg(9)
    );
\cnt_sec10[0]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0070FFFF07770000"
    )
        port map (
      I0 => \cnt_sec10[0]_C_i_2_n_0\,
      I1 => \cnt_sec10_reg_n_0_[1]\,
      I2 => \cnt_sec10_reg[2]_LDC_n_0\,
      I3 => \cnt_sec10_reg[0]_P_n_0\,
      I4 => \cnt_sec10[1]_i_3_n_0\,
      I5 => \cnt_sec10_reg[0]_C_n_0\,
      O => \cnt_sec10[0]_C_i_1_n_0\
    );
\cnt_sec10[0]_C_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_sec10_reg[2]_P_n_0\,
      I1 => \cnt_sec10_reg[2]_LDC_n_0\,
      I2 => \cnt_sec10_reg[2]_C_n_0\,
      O => \cnt_sec10[0]_C_i_2_n_0\
    );
\cnt_sec10[0]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0007FFFF77070000"
    )
        port map (
      I0 => \cnt_sec10[0]_C_i_2_n_0\,
      I1 => \cnt_sec10_reg_n_0_[1]\,
      I2 => \cnt_sec10_reg[0]_C_n_0\,
      I3 => \cnt_sec10_reg[2]_LDC_n_0\,
      I4 => \cnt_sec10[1]_i_3_n_0\,
      I5 => \cnt_sec10_reg[0]_P_n_0\,
      O => \cnt_sec10[0]_P_i_1_n_0\
    );
\cnt_sec10[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FFFF47000000"
    )
        port map (
      I0 => \cnt_sec10_reg[2]_P_n_0\,
      I1 => \cnt_sec10_reg[2]_LDC_n_0\,
      I2 => \cnt_sec10_reg[2]_C_n_0\,
      I3 => \cnt_sec10[1]_i_2_n_0\,
      I4 => \cnt_sec10[1]_i_3_n_0\,
      I5 => \cnt_sec10_reg_n_0_[1]\,
      O => \cnt_sec10[1]_i_1_n_0\
    );
\cnt_sec10[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_sec10_reg[0]_P_n_0\,
      I1 => \cnt_sec10_reg[2]_LDC_n_0\,
      I2 => \cnt_sec10_reg[0]_C_n_0\,
      O => \cnt_sec10[1]_i_2_n_0\
    );
\cnt_sec10[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000101010000000"
    )
        port map (
      I0 => time_info(1),
      I1 => time_info(2),
      I2 => time_info(0),
      I3 => \cnt_sec1_reg[3]_P_n_0\,
      I4 => \cnt_sec1_reg[3]_LDC_n_0\,
      I5 => \cnt_sec1_reg[3]_C_n_0\,
      O => \cnt_sec10[1]_i_3_n_0\
    );
\cnt_sec10[2]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"400BFFFF70080000"
    )
        port map (
      I0 => \cnt_sec10_reg[2]_P_n_0\,
      I1 => \cnt_sec10_reg[2]_LDC_n_0\,
      I2 => \cnt_sec10_reg_n_0_[1]\,
      I3 => \cnt_sec10[1]_i_2_n_0\,
      I4 => \cnt_sec10[1]_i_3_n_0\,
      I5 => \cnt_sec10_reg[2]_C_n_0\,
      O => \cnt_sec10[2]_C_i_1_n_0\
    );
\cnt_sec10[2]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"100EFFFFB0040000"
    )
        port map (
      I0 => \cnt_sec10_reg[2]_LDC_n_0\,
      I1 => \cnt_sec10_reg[2]_C_n_0\,
      I2 => \cnt_sec10_reg_n_0_[1]\,
      I3 => \cnt_sec10[1]_i_2_n_0\,
      I4 => \cnt_sec10[1]_i_3_n_0\,
      I5 => \cnt_sec10_reg[2]_P_n_0\,
      O => \cnt_sec10[2]_P_i_1_n_0\
    );
\cnt_sec10_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => \cnt_sec1_reg[3]_LDC_i_1_n_0\,
      D => \cnt_sec10[0]_C_i_1_n_0\,
      Q => \cnt_sec10_reg[0]_C_n_0\
    );
\cnt_sec10_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => clk_onesec,
      CE => '1',
      D => \cnt_sec10[0]_P_i_1_n_0\,
      PRE => \^resetn_0\,
      Q => \cnt_sec10_reg[0]_P_n_0\
    );
\cnt_sec10_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_sec10[1]_i_1_n_0\,
      Q => \cnt_sec10_reg_n_0_[1]\
    );
\cnt_sec10_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => \cnt_sec1_reg[3]_LDC_i_1_n_0\,
      D => \cnt_sec10[2]_C_i_1_n_0\,
      Q => \cnt_sec10_reg[2]_C_n_0\
    );
\cnt_sec10_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => \cnt_sec1_reg[3]_LDC_i_1_n_0\,
      D => '1',
      G => resetn,
      GE => '1',
      Q => \cnt_sec10_reg[2]_LDC_n_0\
    );
\cnt_sec10_reg[2]_P\: unisim.vcomponents.FDPE
     port map (
      C => clk_onesec,
      CE => '1',
      D => \cnt_sec10[2]_P_i_1_n_0\,
      PRE => \^resetn_0\,
      Q => \cnt_sec10_reg[2]_P_n_0\
    );
\cnt_sec1[0]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000474747FF"
    )
        port map (
      I0 => \cnt_sec1_reg[3]_P_n_0\,
      I1 => \cnt_sec1_reg[3]_LDC_n_0\,
      I2 => \cnt_sec1_reg[3]_C_n_0\,
      I3 => time_info(2),
      I4 => time_info(1),
      I5 => time_info(0),
      O => \cnt_sec1[0]_C_i_1_n_0\
    );
\cnt_sec1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00474700"
    )
        port map (
      I0 => \cnt_sec1_reg[3]_P_n_0\,
      I1 => \cnt_sec1_reg[3]_LDC_n_0\,
      I2 => \cnt_sec1_reg[3]_C_n_0\,
      I3 => time_info(1),
      I4 => time_info(0),
      O => \cnt_sec1[1]_i_1_n_0\
    );
\cnt_sec1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047470047004700"
    )
        port map (
      I0 => \cnt_sec1_reg[3]_P_n_0\,
      I1 => \cnt_sec1_reg[3]_LDC_n_0\,
      I2 => \cnt_sec1_reg[3]_C_n_0\,
      I3 => time_info(2),
      I4 => time_info(1),
      I5 => time_info(0),
      O => \cnt_sec1[2]_i_1_n_0\
    );
\cnt_sec1[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_sec1_reg[0]_P_n_0\,
      I1 => \cnt_sec1_reg[3]_LDC_n_0\,
      I2 => \cnt_sec1_reg[0]_C_n_0\,
      O => time_info(0)
    );
\cnt_sec1[3]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47000000000000B8"
    )
        port map (
      I0 => \cnt_sec1_reg[3]_P_n_0\,
      I1 => \cnt_sec1_reg[3]_LDC_n_0\,
      I2 => \cnt_sec1_reg[3]_C_n_0\,
      I3 => time_info(2),
      I4 => time_info(0),
      I5 => time_info(1),
      O => \cnt_sec1[3]_C_i_1_n_0\
    );
\cnt_sec1_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => \cnt_sec1_reg[3]_LDC_i_1_n_0\,
      D => \cnt_sec1[0]_C_i_1_n_0\,
      Q => \cnt_sec1_reg[0]_C_n_0\
    );
\cnt_sec1_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => clk_onesec,
      CE => '1',
      D => \cnt_sec1[0]_C_i_1_n_0\,
      PRE => \^resetn_0\,
      Q => \cnt_sec1_reg[0]_P_n_0\
    );
\cnt_sec1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_sec1[1]_i_1_n_0\,
      Q => time_info(1)
    );
\cnt_sec1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => clk_onesec_i_2_n_0,
      D => \cnt_sec1[2]_i_1_n_0\,
      Q => time_info(2)
    );
\cnt_sec1_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk_onesec,
      CE => '1',
      CLR => \cnt_sec1_reg[3]_LDC_i_1_n_0\,
      D => \cnt_sec1[3]_C_i_1_n_0\,
      Q => \cnt_sec1_reg[3]_C_n_0\
    );
\cnt_sec1_reg[3]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => \cnt_sec1_reg[3]_LDC_i_1_n_0\,
      D => '1',
      G => resetn,
      GE => '1',
      Q => \cnt_sec1_reg[3]_LDC_n_0\
    );
\cnt_sec1_reg[3]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn,
      I1 => Q(2),
      O => \cnt_sec1_reg[3]_LDC_i_1_n_0\
    );
\cnt_sec1_reg[3]_P\: unisim.vcomponents.FDPE
     port map (
      C => clk_onesec,
      CE => '1',
      D => \cnt_sec1[3]_C_i_1_n_0\,
      PRE => \^resetn_0\,
      Q => \cnt_sec1_reg[3]_P_n_0\
    );
lcd_en_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \^resetn_0\
    );
\slv_reg1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg_wren__0\,
      I2 => \cnt_sec1_reg[0]_P_n_0\,
      I3 => \cnt_sec1_reg[3]_LDC_n_0\,
      I4 => \cnt_sec1_reg[0]_C_n_0\,
      O => D(0)
    );
\slv_reg1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(9),
      I1 => \slv_reg1_reg[1]\,
      I2 => \slv_reg1_reg[1]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => time_info(10),
      O => D(9)
    );
\slv_reg1[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => s00_axi_wdata(10),
      I1 => \slv_reg_wren__0\,
      I2 => \cnt_min1_reg[3]_P_n_0\,
      I3 => \cnt_sec1_reg[3]_LDC_n_0\,
      I4 => \cnt_min1_reg[3]_C_n_0\,
      O => D(10)
    );
\slv_reg1[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => s00_axi_wdata(11),
      I1 => \slv_reg_wren__0\,
      I2 => \cnt_min10_reg[0]_P_n_0\,
      I3 => \cnt_sec10_reg[2]_LDC_n_0\,
      I4 => \cnt_min10_reg[0]_C_n_0\,
      O => D(11)
    );
\slv_reg1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(12),
      I1 => \slv_reg1_reg[1]\,
      I2 => \slv_reg1_reg[1]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => time_info(13),
      O => D(12)
    );
\slv_reg1[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => s00_axi_wdata(13),
      I1 => \slv_reg_wren__0\,
      I2 => \cnt_min10_reg[2]_P_n_0\,
      I3 => \cnt_sec10_reg[2]_LDC_n_0\,
      I4 => \cnt_min10_reg[2]_C_n_0\,
      O => D(13)
    );
\slv_reg1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \slv_reg1_reg[1]\,
      I2 => \slv_reg1_reg[1]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => time_info(1),
      O => D(1)
    );
\slv_reg1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(2),
      I1 => \slv_reg1_reg[1]\,
      I2 => \slv_reg1_reg[1]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => time_info(2),
      O => D(2)
    );
\slv_reg1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => s00_axi_wdata(3),
      I1 => \slv_reg_wren__0\,
      I2 => \cnt_sec1_reg[3]_P_n_0\,
      I3 => \cnt_sec1_reg[3]_LDC_n_0\,
      I4 => \cnt_sec1_reg[3]_C_n_0\,
      O => D(3)
    );
\slv_reg1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => s00_axi_wdata(4),
      I1 => \slv_reg_wren__0\,
      I2 => \cnt_sec10_reg[0]_P_n_0\,
      I3 => \cnt_sec10_reg[2]_LDC_n_0\,
      I4 => \cnt_sec10_reg[0]_C_n_0\,
      O => D(4)
    );
\slv_reg1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(5),
      I1 => \slv_reg1_reg[1]\,
      I2 => \slv_reg1_reg[1]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => \cnt_sec10_reg_n_0_[1]\,
      O => D(5)
    );
\slv_reg1[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => s00_axi_wdata(6),
      I1 => \slv_reg_wren__0\,
      I2 => \cnt_sec10_reg[2]_P_n_0\,
      I3 => \cnt_sec10_reg[2]_LDC_n_0\,
      I4 => \cnt_sec10_reg[2]_C_n_0\,
      O => D(6)
    );
\slv_reg1[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => s00_axi_wdata(7),
      I1 => \slv_reg_wren__0\,
      I2 => \cnt_min1_reg[0]_P_n_0\,
      I3 => \cnt_sec1_reg[3]_LDC_n_0\,
      I4 => \cnt_min1_reg[0]_C_n_0\,
      O => D(7)
    );
\slv_reg1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(8),
      I1 => \slv_reg1_reg[1]\,
      I2 => \slv_reg1_reg[1]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => time_info(9),
      O => D(8)
    );
\textdata_g[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \cnt_min10_reg[0]_P_n_0\,
      I3 => \cnt_sec10_reg[2]_LDC_n_0\,
      I4 => \cnt_min10_reg[0]_C_n_0\,
      O => \slv_reg0_reg[1]\(0)
    );
\textdata_g[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \cnt_hour1_reg[0]_P_n_0\,
      I3 => \cnt_hour1_reg[1]_LDC_n_0\,
      I4 => \cnt_hour1_reg[0]_C_n_0\,
      O => \slv_reg0_reg[1]\(3)
    );
\textdata_g[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \cnt_hour1_reg[1]_P_n_0\,
      I3 => \cnt_hour1_reg[1]_LDC_n_0\,
      I4 => \cnt_hour1_reg[1]_C_n_0\,
      O => \slv_reg0_reg[1]\(4)
    );
\textdata_g[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => cnt_hour1(2),
      O => \slv_reg0_reg[1]\(5)
    );
\textdata_g[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => cnt_hour1(3),
      O => \slv_reg0_reg[1]\(6)
    );
\textdata_g[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => time_info(13),
      O => \slv_reg0_reg[1]\(1)
    );
\textdata_g[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => cnt_hour10(0),
      O => \slv_reg0_reg[1]\(7)
    );
\textdata_g[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \cnt_hour10_reg[1]_P_n_0\,
      I3 => \cnt_hour10_reg[1]_LDC_n_0\,
      I4 => \cnt_hour10_reg[1]_C_n_0\,
      O => \slv_reg0_reg[1]\(8)
    );
\textdata_g[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \cnt_min10_reg[2]_P_n_0\,
      I3 => \cnt_sec10_reg[2]_LDC_n_0\,
      I4 => \cnt_min10_reg[2]_C_n_0\,
      O => \slv_reg0_reg[1]\(2)
    );
\textdata_h[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \cnt_sec1_reg[0]_P_n_0\,
      I3 => \cnt_sec1_reg[3]_LDC_n_0\,
      I4 => \cnt_sec1_reg[0]_C_n_0\,
      O => \slv_reg0_reg[1]_0\(0)
    );
\textdata_h[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \cnt_sec10_reg[2]_P_n_0\,
      I3 => \cnt_sec10_reg[2]_LDC_n_0\,
      I4 => \cnt_sec10_reg[2]_C_n_0\,
      O => \slv_reg0_reg[1]_0\(6)
    );
\textdata_h[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => time_info(1),
      O => \slv_reg0_reg[1]_0\(1)
    );
\textdata_h[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \cnt_min1_reg[0]_P_n_0\,
      I3 => \cnt_sec1_reg[3]_LDC_n_0\,
      I4 => \cnt_min1_reg[0]_C_n_0\,
      O => \slv_reg0_reg[1]_0\(7)
    );
\textdata_h[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => time_info(9),
      O => \slv_reg0_reg[1]_0\(8)
    );
\textdata_h[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => time_info(10),
      O => \slv_reg0_reg[1]_0\(9)
    );
\textdata_h[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \cnt_min1_reg[3]_P_n_0\,
      I3 => \cnt_sec1_reg[3]_LDC_n_0\,
      I4 => \cnt_min1_reg[3]_C_n_0\,
      O => \slv_reg0_reg[1]_0\(10)
    );
\textdata_h[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => time_info(2),
      O => \slv_reg0_reg[1]_0\(2)
    );
\textdata_h[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \cnt_sec1_reg[3]_P_n_0\,
      I3 => \cnt_sec1_reg[3]_LDC_n_0\,
      I4 => \cnt_sec1_reg[3]_C_n_0\,
      O => \slv_reg0_reg[1]_0\(3)
    );
\textdata_h[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \cnt_sec10_reg[0]_P_n_0\,
      I3 => \cnt_sec10_reg[2]_LDC_n_0\,
      I4 => \cnt_sec10_reg[0]_C_n_0\,
      O => \slv_reg0_reg[1]_0\(4)
    );
\textdata_h[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \cnt_sec10_reg_n_0_[1]\,
      O => \slv_reg0_reg[1]_0\(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_textlcd is
  port (
    lcd_en : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_mode_reg[3]_0\ : out STD_LOGIC;
    \count_mode_reg[0]_0\ : out STD_LOGIC;
    \count_mode_reg[0]_1\ : out STD_LOGIC;
    lcd_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_mode_reg[4]_0\ : out STD_LOGIC;
    lcd_rs : out STD_LOGIC;
    clk : in STD_LOGIC;
    \lcd_mode_reg[3]_0\ : in STD_LOGIC;
    data9 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    lcd_data_4_sp_1 : in STD_LOGIC;
    lcd_data_1_sp_1 : in STD_LOGIC;
    lcd_data_0_sp_1 : in STD_LOGIC;
    data6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    lcd_data_2_sp_1 : in STD_LOGIC;
    lcd_data_3_sp_1 : in STD_LOGIC;
    \lcd_data[3]_0\ : in STD_LOGIC;
    \lcd_data[3]_INST_0_i_1_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    lcd_data_6_sp_1 : in STD_LOGIC;
    data15 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \lcd_data[0]_0\ : in STD_LOGIC;
    \lcd_data[3]_1\ : in STD_LOGIC;
    \lcd_data[2]_0\ : in STD_LOGIC;
    \lcd_data[1]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_textlcd;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_textlcd is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count_clk[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk[10]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk[10]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk[10]_i_4_n_0\ : STD_LOGIC;
  signal \count_clk[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk[5]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk[9]_i_2_n_0\ : STD_LOGIC;
  signal count_clk_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal count_mode : STD_LOGIC;
  signal \count_mode[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_mode[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_mode[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_mode[5]_i_2_n_0\ : STD_LOGIC;
  signal \count_mode[5]_i_3_n_0\ : STD_LOGIC;
  signal count_mode_reg : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \^count_mode_reg[0]_0\ : STD_LOGIC;
  signal \^count_mode_reg[0]_1\ : STD_LOGIC;
  signal \^count_mode_reg[3]_0\ : STD_LOGIC;
  signal \lcd_data[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \lcd_data[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \lcd_data[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \lcd_data[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \lcd_data[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \lcd_data[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \lcd_data[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \lcd_data[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \lcd_data[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \lcd_data[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \lcd_data[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \lcd_data[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \lcd_data[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \lcd_data[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \lcd_data[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \lcd_data[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \lcd_data[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \lcd_data[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \lcd_data[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \lcd_data[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \lcd_data[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \lcd_data[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \lcd_data[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \lcd_data[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \lcd_data[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \lcd_data[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \lcd_data[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal lcd_data_0_sn_1 : STD_LOGIC;
  signal lcd_data_1_sn_1 : STD_LOGIC;
  signal lcd_data_2_sn_1 : STD_LOGIC;
  signal lcd_data_3_sn_1 : STD_LOGIC;
  signal lcd_data_4_sn_1 : STD_LOGIC;
  signal lcd_data_6_sn_1 : STD_LOGIC;
  signal \^lcd_en\ : STD_LOGIC;
  signal lcd_en0 : STD_LOGIC;
  signal lcd_en_i_1_n_0 : STD_LOGIC;
  signal lcd_en_i_3_n_0 : STD_LOGIC;
  signal lcd_en_i_5_n_0 : STD_LOGIC;
  signal lcd_en_i_6_n_0 : STD_LOGIC;
  signal lcd_mode : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \lcd_mode[3]_i_1_n_0\ : STD_LOGIC;
  signal lcd_mode_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal load : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \set_data__61\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_clk[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \count_clk[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count_clk[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count_clk[3]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count_clk[5]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \count_clk[6]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count_clk[7]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count_clk[8]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count_mode[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count_mode[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \lcd_data[1]_INST_0_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \lcd_data[1]_INST_0_i_5\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \lcd_data[1]_INST_0_i_8\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \lcd_data[1]_INST_0_i_9\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \lcd_data[3]_INST_0_i_10\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \lcd_data[3]_INST_0_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \lcd_data[5]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \lcd_data[6]_INST_0_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \lcd_data[6]_INST_0_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \lcd_data[6]_INST_0_i_6\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \lcd_data[6]_INST_0_i_7\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \lcd_data[7]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \lcd_mode[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \lcd_mode[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \lcd_mode[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \lcd_mode[3]_i_2\ : label is "soft_lutpair25";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \count_mode_reg[0]_0\ <= \^count_mode_reg[0]_0\;
  \count_mode_reg[0]_1\ <= \^count_mode_reg[0]_1\;
  \count_mode_reg[3]_0\ <= \^count_mode_reg[3]_0\;
  lcd_data_0_sn_1 <= lcd_data_0_sp_1;
  lcd_data_1_sn_1 <= lcd_data_1_sp_1;
  lcd_data_2_sn_1 <= lcd_data_2_sp_1;
  lcd_data_3_sn_1 <= lcd_data_3_sp_1;
  lcd_data_4_sn_1 <= lcd_data_4_sp_1;
  lcd_data_6_sn_1 <= lcd_data_6_sp_1;
  lcd_en <= \^lcd_en\;
\count_clk[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_clk_reg(0),
      I1 => load,
      O => \count_clk[0]_i_1_n_0\
    );
\count_clk[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => count_clk_reg(10),
      I1 => count_clk_reg(9),
      I2 => count_clk_reg(7),
      I3 => \count_clk[10]_i_2_n_0\,
      I4 => count_clk_reg(8),
      I5 => load,
      O => \count_clk[10]_i_1_n_0\
    );
\count_clk[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => count_clk_reg(6),
      I1 => count_clk_reg(4),
      I2 => count_clk_reg(2),
      I3 => \count_clk[5]_i_2_n_0\,
      I4 => count_clk_reg(3),
      I5 => count_clk_reg(5),
      O => \count_clk[10]_i_2_n_0\
    );
\count_clk[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => count_clk_reg(10),
      I1 => count_clk_reg(9),
      I2 => count_clk_reg(8),
      I3 => count_clk_reg(7),
      I4 => count_clk_reg(6),
      I5 => \count_clk[10]_i_4_n_0\,
      O => load
    );
\count_clk[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007FFF"
    )
        port map (
      I0 => count_clk_reg(0),
      I1 => count_clk_reg(1),
      I2 => count_clk_reg(3),
      I3 => count_clk_reg(2),
      I4 => count_clk_reg(5),
      I5 => count_clk_reg(4),
      O => \count_clk[10]_i_4_n_0\
    );
\count_clk[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => count_clk_reg(1),
      I1 => count_clk_reg(0),
      I2 => load,
      O => \count_clk[1]_i_1_n_0\
    );
\count_clk[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => count_clk_reg(2),
      I1 => count_clk_reg(0),
      I2 => count_clk_reg(1),
      I3 => load,
      O => \count_clk[2]_i_1_n_0\
    );
\count_clk[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => count_clk_reg(3),
      I1 => count_clk_reg(2),
      I2 => count_clk_reg(1),
      I3 => count_clk_reg(0),
      I4 => load,
      O => \count_clk[3]_i_1_n_0\
    );
\count_clk[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => count_clk_reg(4),
      I1 => count_clk_reg(3),
      I2 => count_clk_reg(0),
      I3 => count_clk_reg(1),
      I4 => count_clk_reg(2),
      I5 => load,
      O => \count_clk[4]_i_1_n_0\
    );
\count_clk[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA6AAAAA"
    )
        port map (
      I0 => count_clk_reg(5),
      I1 => count_clk_reg(4),
      I2 => count_clk_reg(2),
      I3 => \count_clk[5]_i_2_n_0\,
      I4 => count_clk_reg(3),
      I5 => load,
      O => \count_clk[5]_i_1_n_0\
    );
\count_clk[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_clk_reg(0),
      I1 => count_clk_reg(1),
      O => \count_clk[5]_i_2_n_0\
    );
\count_clk[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => count_clk_reg(6),
      I1 => \count_clk[9]_i_2_n_0\,
      I2 => load,
      O => \count_clk[6]_i_1_n_0\
    );
\count_clk[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => count_clk_reg(7),
      I1 => count_clk_reg(6),
      I2 => \count_clk[9]_i_2_n_0\,
      I3 => load,
      O => \count_clk[7]_i_1_n_0\
    );
\count_clk[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => count_clk_reg(8),
      I1 => count_clk_reg(7),
      I2 => \count_clk[9]_i_2_n_0\,
      I3 => count_clk_reg(6),
      I4 => load,
      O => \count_clk[8]_i_1_n_0\
    );
\count_clk[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => count_clk_reg(9),
      I1 => count_clk_reg(8),
      I2 => count_clk_reg(6),
      I3 => \count_clk[9]_i_2_n_0\,
      I4 => count_clk_reg(7),
      I5 => load,
      O => \count_clk[9]_i_1_n_0\
    );
\count_clk[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => count_clk_reg(5),
      I1 => count_clk_reg(3),
      I2 => count_clk_reg(0),
      I3 => count_clk_reg(1),
      I4 => count_clk_reg(2),
      I5 => count_clk_reg(4),
      O => \count_clk[9]_i_2_n_0\
    );
\count_clk_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lcd_mode_reg[3]_0\,
      D => \count_clk[0]_i_1_n_0\,
      Q => count_clk_reg(0)
    );
\count_clk_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lcd_mode_reg[3]_0\,
      D => \count_clk[10]_i_1_n_0\,
      Q => count_clk_reg(10)
    );
\count_clk_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lcd_mode_reg[3]_0\,
      D => \count_clk[1]_i_1_n_0\,
      Q => count_clk_reg(1)
    );
\count_clk_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lcd_mode_reg[3]_0\,
      D => \count_clk[2]_i_1_n_0\,
      Q => count_clk_reg(2)
    );
\count_clk_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lcd_mode_reg[3]_0\,
      D => \count_clk[3]_i_1_n_0\,
      Q => count_clk_reg(3)
    );
\count_clk_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lcd_mode_reg[3]_0\,
      D => \count_clk[4]_i_1_n_0\,
      Q => count_clk_reg(4)
    );
\count_clk_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lcd_mode_reg[3]_0\,
      D => \count_clk[5]_i_1_n_0\,
      Q => count_clk_reg(5)
    );
\count_clk_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lcd_mode_reg[3]_0\,
      D => \count_clk[6]_i_1_n_0\,
      Q => count_clk_reg(6)
    );
\count_clk_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lcd_mode_reg[3]_0\,
      D => \count_clk[7]_i_1_n_0\,
      Q => count_clk_reg(7)
    );
\count_clk_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lcd_mode_reg[3]_0\,
      D => \count_clk[8]_i_1_n_0\,
      Q => count_clk_reg(8)
    );
\count_clk_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lcd_mode_reg[3]_0\,
      D => \count_clk[9]_i_1_n_0\,
      Q => count_clk_reg(9)
    );
\count_mode[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0FF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => count_mode_reg(5),
      I3 => \^q\(0),
      O => \count_mode[0]_i_1_n_0\
    );
\count_mode[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFFFE0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => count_mode_reg(5),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => p_0_in(1)
    );
\count_mode[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0FFFFE0FFE0FFE0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => count_mode_reg(5),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_in(2)
    );
\count_mode[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000807F807F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => count_mode_reg(5),
      O => \count_mode[3]_i_1_n_0\
    );
\count_mode[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => count_mode_reg(5),
      O => \count_mode[4]_i_1_n_0\
    );
\count_mode[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => count_clk_reg(10),
      I1 => \count_mode[5]_i_3_n_0\,
      I2 => count_clk_reg(6),
      I3 => count_clk_reg(8),
      I4 => count_clk_reg(7),
      I5 => count_clk_reg(9),
      O => count_mode
    );
\count_mode[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF80000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => count_mode_reg(5),
      O => \count_mode[5]_i_2_n_0\
    );
\count_mode[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => count_clk_reg(0),
      I1 => count_clk_reg(2),
      I2 => count_clk_reg(1),
      I3 => count_clk_reg(3),
      I4 => count_clk_reg(5),
      I5 => count_clk_reg(4),
      O => \count_mode[5]_i_3_n_0\
    );
\count_mode_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count_mode,
      CLR => \lcd_mode_reg[3]_0\,
      D => \count_mode[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\count_mode_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count_mode,
      CLR => \lcd_mode_reg[3]_0\,
      D => p_0_in(1),
      Q => \^q\(1)
    );
\count_mode_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count_mode,
      CLR => \lcd_mode_reg[3]_0\,
      D => p_0_in(2),
      Q => \^q\(2)
    );
\count_mode_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count_mode,
      CLR => \lcd_mode_reg[3]_0\,
      D => \count_mode[3]_i_1_n_0\,
      Q => \^q\(3)
    );
\count_mode_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count_mode,
      CLR => \lcd_mode_reg[3]_0\,
      D => \count_mode[4]_i_1_n_0\,
      Q => \^q\(4)
    );
\count_mode_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count_mode,
      CLR => \lcd_mode_reg[3]_0\,
      D => \count_mode[5]_i_2_n_0\,
      Q => count_mode_reg(5)
    );
\lcd_data[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000FC000A000A0"
    )
        port map (
      I0 => \lcd_data[0]_INST_0_i_1_n_0\,
      I1 => \set_data__61\(0),
      I2 => lcd_mode(3),
      I3 => lcd_mode(2),
      I4 => lcd_mode(0),
      I5 => lcd_mode(1),
      O => lcd_data(0)
    );
\lcd_data[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => count_mode_reg(5),
      I1 => \lcd_data[0]_INST_0_i_3_n_0\,
      I2 => \lcd_data[6]_INST_0_i_4_n_0\,
      I3 => lcd_data_0_sn_1,
      I4 => lcd_mode(0),
      O => \lcd_data[0]_INST_0_i_1_n_0\
    );
\lcd_data[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lcd_data[0]_INST_0_i_5_n_0\,
      I1 => \lcd_data[0]_0\,
      O => \set_data__61\(0),
      S => count_mode_reg(5)
    );
\lcd_data[0]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE0E"
    )
        port map (
      I0 => data6(0),
      I1 => \^count_mode_reg[0]_0\,
      I2 => \^count_mode_reg[0]_1\,
      I3 => data4(0),
      I4 => \^count_mode_reg[3]_0\,
      O => \lcd_data[0]_INST_0_i_3_n_0\
    );
\lcd_data[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8B8B888"
    )
        port map (
      I0 => data15(0),
      I1 => \lcd_data[1]_INST_0_i_8_n_0\,
      I2 => lcd_data_6_sn_1,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \lcd_data[1]_INST_0_i_9_n_0\,
      O => \lcd_data[0]_INST_0_i_5_n_0\
    );
\lcd_data[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0C0FF00FFAF"
    )
        port map (
      I0 => \lcd_data[1]_INST_0_i_1_n_0\,
      I1 => \set_data__61\(1),
      I2 => lcd_mode(3),
      I3 => lcd_mode(2),
      I4 => lcd_mode(0),
      I5 => lcd_mode(1),
      O => lcd_data(1)
    );
\lcd_data[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \lcd_data[1]_INST_0_i_3_n_0\,
      I1 => \^count_mode_reg[3]_0\,
      I2 => lcd_data_1_sn_1,
      I3 => \lcd_data[6]_INST_0_i_4_n_0\,
      I4 => \lcd_data[1]_INST_0_i_5_n_0\,
      I5 => count_mode_reg(5),
      O => \lcd_data[1]_INST_0_i_1_n_0\
    );
\lcd_data[1]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lcd_data[1]_INST_0_i_6_n_0\,
      I1 => \lcd_data[1]_0\,
      O => \set_data__61\(1),
      S => count_mode_reg(5)
    );
\lcd_data[1]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^count_mode_reg[0]_1\,
      I1 => data4(0),
      I2 => \^count_mode_reg[0]_0\,
      I3 => \lcd_data[3]_INST_0_i_1_0\(1),
      O => \lcd_data[1]_INST_0_i_3_n_0\
    );
\lcd_data[1]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => data6(1),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \lcd_data[1]_INST_0_i_5_n_0\
    );
\lcd_data[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8888888888888"
    )
        port map (
      I0 => data15(1),
      I1 => \lcd_data[1]_INST_0_i_8_n_0\,
      I2 => \lcd_data[1]_INST_0_i_9_n_0\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => lcd_data_6_sn_1,
      O => \lcd_data[1]_INST_0_i_6_n_0\
    );
\lcd_data[1]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \lcd_data[1]_INST_0_i_8_n_0\
    );
\lcd_data[1]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      O => \lcd_data[1]_INST_0_i_9_n_0\
    );
\lcd_data[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F00A000C00FA0"
    )
        port map (
      I0 => \lcd_data[2]_INST_0_i_1_n_0\,
      I1 => \set_data__61\(2),
      I2 => lcd_mode(3),
      I3 => lcd_mode(2),
      I4 => lcd_mode(1),
      I5 => lcd_mode(0),
      O => lcd_data(2)
    );
\lcd_data[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => count_mode_reg(5),
      I1 => \lcd_data[2]_INST_0_i_3_n_0\,
      I2 => \lcd_data[6]_INST_0_i_4_n_0\,
      I3 => lcd_data_2_sn_1,
      I4 => lcd_mode(0),
      O => \lcd_data[2]_INST_0_i_1_n_0\
    );
\lcd_data[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F0F0B8C0F0F0B8"
    )
        port map (
      I0 => \lcd_data[2]_0\,
      I1 => count_mode_reg(5),
      I2 => data15(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \lcd_data[2]_INST_0_i_6_n_0\,
      O => \set_data__61\(2)
    );
\lcd_data[2]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \^count_mode_reg[0]_1\,
      I1 => data4(0),
      I2 => \^count_mode_reg[0]_0\,
      I3 => data9(1),
      I4 => \^count_mode_reg[3]_0\,
      O => \lcd_data[2]_INST_0_i_3_n_0\
    );
\lcd_data[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C4C4C400000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => lcd_data_6_sn_1,
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \lcd_data[2]_INST_0_i_6_n_0\
    );
\lcd_data[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000FCFFFA0"
    )
        port map (
      I0 => \lcd_data[3]_INST_0_i_1_n_0\,
      I1 => \set_data__61\(3),
      I2 => lcd_mode(3),
      I3 => lcd_mode(0),
      I4 => lcd_mode(1),
      I5 => lcd_mode(2),
      O => lcd_data(3)
    );
\lcd_data[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \lcd_data[3]_INST_0_i_3_n_0\,
      I1 => \^count_mode_reg[3]_0\,
      I2 => lcd_data_3_sn_1,
      I3 => \lcd_data[6]_INST_0_i_4_n_0\,
      I4 => \lcd_data[3]_0\,
      I5 => count_mode_reg(5),
      O => \lcd_data[3]_INST_0_i_1_n_0\
    );
\lcd_data[3]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      O => \count_mode_reg[4]_0\
    );
\lcd_data[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F0F0B8C0F0F0B8"
    )
        port map (
      I0 => \lcd_data[3]_1\,
      I1 => count_mode_reg(5),
      I2 => data15(3),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \lcd_data[3]_INST_0_i_8_n_0\,
      O => \set_data__61\(3)
    );
\lcd_data[3]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^count_mode_reg[0]_1\,
      I1 => \lcd_data[3]_INST_0_i_1_0\(1),
      I2 => \^count_mode_reg[0]_0\,
      I3 => data4(0),
      O => \lcd_data[3]_INST_0_i_3_n_0\
    );
\lcd_data[3]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFF9F9F9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \^count_mode_reg[3]_0\
    );
\lcd_data[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF2A0000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => lcd_data_6_sn_1,
      O => \lcd_data[3]_INST_0_i_8_n_0\
    );
\lcd_data[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0CFAFA0"
    )
        port map (
      I0 => \lcd_data[4]_INST_0_i_1_n_0\,
      I1 => \lcd_data[4]_INST_0_i_2_n_0\,
      I2 => lcd_mode(3),
      I3 => lcd_mode(0),
      I4 => lcd_mode(1),
      I5 => lcd_mode(2),
      O => lcd_data(4)
    );
\lcd_data[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => count_mode_reg(5),
      I1 => \lcd_data[4]_INST_0_i_3_n_0\,
      I2 => \lcd_data[6]_INST_0_i_4_n_0\,
      I3 => lcd_data_4_sn_1,
      I4 => lcd_mode(0),
      O => \lcd_data[4]_INST_0_i_1_n_0\
    );
\lcd_data[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF00BF80"
    )
        port map (
      I0 => \lcd_data[4]_INST_0_i_5_n_0\,
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => data15(4),
      I4 => count_mode_reg(5),
      I5 => lcd_mode(0),
      O => \lcd_data[4]_INST_0_i_2_n_0\
    );
\lcd_data[4]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \^count_mode_reg[0]_1\,
      I1 => data9(0),
      I2 => \^count_mode_reg[0]_0\,
      I3 => lcd_data_6_sn_1,
      I4 => \^count_mode_reg[3]_0\,
      O => \lcd_data[4]_INST_0_i_3_n_0\
    );
\lcd_data[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D52A0000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => lcd_data_6_sn_1,
      I5 => \^q\(1),
      O => \lcd_data[4]_INST_0_i_5_n_0\
    );
\lcd_data[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \lcd_data[5]_INST_0_i_1_n_0\,
      I1 => lcd_mode(3),
      I2 => lcd_mode(0),
      I3 => lcd_mode(1),
      I4 => lcd_mode(2),
      O => lcd_data(5)
    );
\lcd_data[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000FFE0AFE"
    )
        port map (
      I0 => count_mode_reg(5),
      I1 => \lcd_data[5]_INST_0_i_2_n_0\,
      I2 => lcd_mode(0),
      I3 => lcd_mode(1),
      I4 => \lcd_data[5]_INST_0_i_3_n_0\,
      I5 => lcd_mode(2),
      O => \lcd_data[5]_INST_0_i_1_n_0\
    );
\lcd_data[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFBFEEFFEEBFE"
    )
        port map (
      I0 => \lcd_data[6]_INST_0_i_4_n_0\,
      I1 => \^count_mode_reg[0]_0\,
      I2 => \^count_mode_reg[0]_1\,
      I3 => \^count_mode_reg[3]_0\,
      I4 => \lcd_data[3]_INST_0_i_1_0\(0),
      I5 => \lcd_data[3]_INST_0_i_1_0\(1),
      O => \lcd_data[5]_INST_0_i_2_n_0\
    );
\lcd_data[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => data9(1),
      I2 => \^q\(0),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \^q\(2),
      O => \lcd_data[5]_INST_0_i_3_n_0\
    );
\lcd_data[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20222000"
    )
        port map (
      I0 => lcd_mode(3),
      I1 => lcd_mode(2),
      I2 => \lcd_data[6]_INST_0_i_1_n_0\,
      I3 => lcd_mode(1),
      I4 => \lcd_data[6]_INST_0_i_2_n_0\,
      O => lcd_data(6)
    );
\lcd_data[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => count_mode_reg(5),
      I1 => \^q\(2),
      I2 => lcd_data_6_sn_1,
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => lcd_mode(0),
      O => \lcd_data[6]_INST_0_i_1_n_0\
    );
\lcd_data[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => count_mode_reg(5),
      I1 => \lcd_data[6]_INST_0_i_3_n_0\,
      I2 => \lcd_data[6]_INST_0_i_4_n_0\,
      I3 => \lcd_data[6]_INST_0_i_5_n_0\,
      I4 => lcd_mode(0),
      O => \lcd_data[6]_INST_0_i_2_n_0\
    );
\lcd_data[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C0020002C000"
    )
        port map (
      I0 => data9(1),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(3),
      O => \lcd_data[6]_INST_0_i_3_n_0\
    );
\lcd_data[6]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBBBBBBB"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \lcd_data[6]_INST_0_i_4_n_0\
    );
\lcd_data[6]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8FFFF"
    )
        port map (
      I0 => \lcd_data[3]_INST_0_i_1_0\(1),
      I1 => \^count_mode_reg[0]_0\,
      I2 => data4(0),
      I3 => \^count_mode_reg[0]_1\,
      I4 => \^count_mode_reg[3]_0\,
      O => \lcd_data[6]_INST_0_i_5_n_0\
    );
\lcd_data[6]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD7D7D7"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(1),
      O => \^count_mode_reg[0]_0\
    );
\lcd_data[6]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5D7EBEB"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(1),
      O => \^count_mode_reg[0]_1\
    );
\lcd_data[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4020"
    )
        port map (
      I0 => lcd_mode(3),
      I1 => lcd_mode(2),
      I2 => lcd_mode(0),
      I3 => lcd_mode(1),
      O => lcd_data(7)
    );
lcd_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => lcd_en_i_3_n_0,
      I1 => lcd_en0,
      I2 => \^lcd_en\,
      O => lcd_en_i_1_n_0
    );
lcd_en_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => count_clk_reg(9),
      I1 => lcd_en_i_5_n_0,
      I2 => count_clk_reg(6),
      I3 => count_clk_reg(7),
      I4 => count_clk_reg(8),
      I5 => count_clk_reg(10),
      O => lcd_en_i_3_n_0
    );
lcd_en_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000008000"
    )
        port map (
      I0 => lcd_en_i_6_n_0,
      I1 => count_clk_reg(8),
      I2 => count_clk_reg(9),
      I3 => count_clk_reg(10),
      I4 => count_clk_reg(6),
      I5 => count_clk_reg(7),
      O => lcd_en0
    );
lcd_en_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => count_clk_reg(0),
      I1 => count_clk_reg(1),
      I2 => count_clk_reg(2),
      I3 => count_clk_reg(3),
      I4 => count_clk_reg(5),
      I5 => count_clk_reg(4),
      O => lcd_en_i_5_n_0
    );
lcd_en_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => count_clk_reg(4),
      I1 => count_clk_reg(5),
      I2 => count_clk_reg(1),
      I3 => count_clk_reg(3),
      I4 => count_clk_reg(0),
      I5 => count_clk_reg(2),
      O => lcd_en_i_6_n_0
    );
lcd_en_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \lcd_mode_reg[3]_0\,
      D => lcd_en_i_1_n_0,
      Q => \^lcd_en\
    );
\lcd_mode[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => count_mode_reg(5),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(0),
      O => lcd_mode_0(0)
    );
\lcd_mode[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => \^q\(0),
      I1 => count_mode_reg(5),
      I2 => \^q\(1),
      I3 => \^q\(4),
      O => lcd_mode_0(1)
    );
\lcd_mode[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => lcd_mode_0(2)
    );
\lcd_mode[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000211111119"
    )
        port map (
      I0 => \^q\(3),
      I1 => count_mode_reg(5),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \lcd_mode[3]_i_1_n_0\
    );
\lcd_mode[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F8F8F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(4),
      I4 => count_mode_reg(5),
      O => lcd_mode_0(3)
    );
\lcd_mode_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => \lcd_mode[3]_i_1_n_0\,
      D => lcd_mode_0(0),
      PRE => \lcd_mode_reg[3]_0\,
      Q => lcd_mode(0)
    );
\lcd_mode_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \lcd_mode[3]_i_1_n_0\,
      CLR => \lcd_mode_reg[3]_0\,
      D => lcd_mode_0(1),
      Q => lcd_mode(1)
    );
\lcd_mode_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \lcd_mode[3]_i_1_n_0\,
      CLR => \lcd_mode_reg[3]_0\,
      D => lcd_mode_0(2),
      Q => lcd_mode(2)
    );
\lcd_mode_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \lcd_mode[3]_i_1_n_0\,
      CLR => \lcd_mode_reg[3]_0\,
      D => lcd_mode_0(3),
      Q => lcd_mode(3)
    );
lcd_rs_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => lcd_mode(3),
      I1 => lcd_mode(0),
      I2 => lcd_mode(2),
      O => lcd_rs
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digital_clock is
  port (
    resetn_0 : out STD_LOGIC;
    data9 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \textdata_b_reg[22]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data15 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \textdata_e_reg[30]_0\ : out STD_LOGIC;
    data4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \textdata_b_reg[11]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \textdata_b_reg[12]_0\ : out STD_LOGIC;
    \textdata_c_reg[22]_0\ : out STD_LOGIC;
    \textdata_b_reg[2]_0\ : out STD_LOGIC;
    \textdata_b_reg[30]_0\ : out STD_LOGIC;
    \textdata_b_reg[2]_1\ : out STD_LOGIC;
    \textdata_h_reg[0]_0\ : out STD_LOGIC;
    \textdata_h_reg[1]_0\ : out STD_LOGIC;
    \textdata_h_reg[4]_0\ : out STD_LOGIC;
    \textdata_g_reg[2]_0\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    \lcd_data[1]_INST_0_i_1\ : in STD_LOGIC;
    \lcd_data[1]_INST_0_i_1_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    resetn : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \slv_reg_wren__0\ : in STD_LOGIC;
    \slv_reg1_reg[1]\ : in STD_LOGIC;
    \slv_reg1_reg[1]_0\ : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    \lcd_data[2]_INST_0_i_1\ : in STD_LOGIC;
    \lcd_data[1]_INST_0_i_2\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \lcd_data[2]_INST_0_i_2\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digital_clock;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digital_clock is
  signal \^data15\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^data4\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data5 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^data6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data7 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^data9\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \lcd_data[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \lcd_data[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \lcd_data[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \lcd_data[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \lcd_data[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \lcd_data[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \^resetn_0\ : STD_LOGIC;
  signal \textdata_b[12]_i_1_n_0\ : STD_LOGIC;
  signal \textdata_b[17]_i_1_n_0\ : STD_LOGIC;
  signal \textdata_b[20]_i_1_n_0\ : STD_LOGIC;
  signal \textdata_b[22]_i_1_n_0\ : STD_LOGIC;
  signal \textdata_b[30]_i_1_n_0\ : STD_LOGIC;
  signal \^textdata_b_reg[22]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal textdata_c : STD_LOGIC_VECTOR ( 20 to 20 );
  signal \textdata_c[22]_i_1_n_0\ : STD_LOGIC;
  signal \textdata_e[30]_i_1_n_0\ : STD_LOGIC;
  signal textdata_g : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \textdata_g[25]_i_1_n_0\ : STD_LOGIC;
  signal \textdata_g_reg_n_0_[0]\ : STD_LOGIC;
  signal \textdata_g_reg_n_0_[16]\ : STD_LOGIC;
  signal \textdata_g_reg_n_0_[17]\ : STD_LOGIC;
  signal \textdata_g_reg_n_0_[18]\ : STD_LOGIC;
  signal \textdata_g_reg_n_0_[19]\ : STD_LOGIC;
  signal \textdata_g_reg_n_0_[1]\ : STD_LOGIC;
  signal \textdata_g_reg_n_0_[24]\ : STD_LOGIC;
  signal \textdata_g_reg_n_0_[25]\ : STD_LOGIC;
  signal \textdata_g_reg_n_0_[2]\ : STD_LOGIC;
  signal textdata_h : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \textdata_h_reg_n_0_[10]\ : STD_LOGIC;
  signal \textdata_h_reg_n_0_[24]\ : STD_LOGIC;
  signal \textdata_h_reg_n_0_[25]\ : STD_LOGIC;
  signal \textdata_h_reg_n_0_[26]\ : STD_LOGIC;
  signal \textdata_h_reg_n_0_[27]\ : STD_LOGIC;
  signal \textdata_h_reg_n_0_[8]\ : STD_LOGIC;
  signal \textdata_h_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \textdata_b[11]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \textdata_b[12]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \textdata_b[17]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \textdata_b[22]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \textdata_b[30]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \textdata_c[20]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \textdata_c[22]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \textdata_e[30]_i_1\ : label is "soft_lutpair22";
begin
  data15(4 downto 0) <= \^data15\(4 downto 0);
  data4(0) <= \^data4\(0);
  data6(1 downto 0) <= \^data6\(1 downto 0);
  data9(1 downto 0) <= \^data9\(1 downto 0);
  resetn_0 <= \^resetn_0\;
  \textdata_b_reg[22]_0\(1 downto 0) <= \^textdata_b_reg[22]_0\(1 downto 0);
clk_divider_u0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_divider
     port map (
      D(13 downto 0) => D(13 downto 0),
      Q(2 downto 0) => Q(2 downto 0),
      clk => clk,
      resetn => resetn,
      resetn_0 => \^resetn_0\,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_wdata(13 downto 0) => s00_axi_wdata(13 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg0_reg[1]\(8 downto 7) => textdata_g(25 downto 24),
      \slv_reg0_reg[1]\(6 downto 3) => textdata_g(19 downto 16),
      \slv_reg0_reg[1]\(2 downto 0) => textdata_g(2 downto 0),
      \slv_reg0_reg[1]_0\(10 downto 7) => textdata_h(27 downto 24),
      \slv_reg0_reg[1]_0\(6 downto 4) => textdata_h(10 downto 8),
      \slv_reg0_reg[1]_0\(3 downto 0) => textdata_h(3 downto 0),
      \slv_reg1_reg[1]\ => \slv_reg1_reg[1]\,
      \slv_reg1_reg[1]_0\ => \slv_reg1_reg[1]_0\,
      \slv_reg_wren__0\ => \slv_reg_wren__0\
    );
\lcd_data[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFFFC0AF0FA00F"
    )
        port map (
      I0 => \^data9\(1),
      I1 => \^data6\(1),
      I2 => \lcd_data[2]_INST_0_i_1\,
      I3 => \lcd_data[1]_INST_0_i_1_0\,
      I4 => \^textdata_b_reg[22]_0\(1),
      I5 => \lcd_data[1]_INST_0_i_1\,
      O => \textdata_c_reg[22]_0\
    );
\lcd_data[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => \^data15\(0),
      I1 => \lcd_data[1]_INST_0_i_2\(3),
      I2 => \lcd_data[1]_INST_0_i_2\(4),
      I3 => \lcd_data[0]_INST_0_i_7_n_0\,
      I4 => \lcd_data[1]_INST_0_i_2\(2),
      I5 => \lcd_data[0]_INST_0_i_8_n_0\,
      O => \textdata_h_reg[0]_0\
    );
\lcd_data[0]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^data15\(0),
      I1 => \textdata_h_reg_n_0_[8]\,
      I2 => \lcd_data[1]_INST_0_i_2\(1),
      I3 => \textdata_h_reg_n_0_[24]\,
      I4 => \lcd_data[1]_INST_0_i_2\(0),
      O => \lcd_data[0]_INST_0_i_7_n_0\
    );
\lcd_data[0]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \textdata_g_reg_n_0_[0]\,
      I1 => \lcd_data[1]_INST_0_i_2\(1),
      I2 => \textdata_g_reg_n_0_[16]\,
      I3 => \lcd_data[1]_INST_0_i_2\(0),
      I4 => \textdata_g_reg_n_0_[24]\,
      O => \lcd_data[0]_INST_0_i_8_n_0\
    );
\lcd_data[1]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data15\(1),
      I1 => \textdata_h_reg_n_0_[9]\,
      I2 => \lcd_data[1]_INST_0_i_2\(1),
      I3 => \^data15\(4),
      I4 => \lcd_data[1]_INST_0_i_2\(0),
      I5 => \textdata_h_reg_n_0_[25]\,
      O => \lcd_data[1]_INST_0_i_10_n_0\
    );
\lcd_data[1]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \textdata_g_reg_n_0_[1]\,
      I1 => \^data15\(4),
      I2 => \lcd_data[1]_INST_0_i_2\(1),
      I3 => \textdata_g_reg_n_0_[17]\,
      I4 => \lcd_data[1]_INST_0_i_2\(0),
      I5 => \textdata_g_reg_n_0_[25]\,
      O => \lcd_data[1]_INST_0_i_11_n_0\
    );
\lcd_data[1]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data7(2),
      I1 => \lcd_data[1]_INST_0_i_1_0\,
      I2 => data5(1),
      I3 => \lcd_data[1]_INST_0_i_1\,
      I4 => \^data4\(0),
      O => \textdata_b_reg[2]_1\
    );
\lcd_data[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => \^data15\(1),
      I1 => \lcd_data[1]_INST_0_i_2\(3),
      I2 => \lcd_data[1]_INST_0_i_2\(4),
      I3 => \lcd_data[1]_INST_0_i_10_n_0\,
      I4 => \lcd_data[1]_INST_0_i_2\(2),
      I5 => \lcd_data[1]_INST_0_i_11_n_0\,
      O => \textdata_h_reg[1]_0\
    );
\lcd_data[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFC0C0FF000F0F"
    )
        port map (
      I0 => data7(2),
      I1 => \^data6\(1),
      I2 => \lcd_data[2]_INST_0_i_1\,
      I3 => \^textdata_b_reg[22]_0\(1),
      I4 => \lcd_data[1]_INST_0_i_1_0\,
      I5 => \lcd_data[1]_INST_0_i_1\,
      O => \textdata_b_reg[2]_0\
    );
\lcd_data[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BB8888B8888888"
    )
        port map (
      I0 => \lcd_data[2]_INST_0_i_7_n_0\,
      I1 => \lcd_data[2]_INST_0_i_2\,
      I2 => \textdata_g_reg_n_0_[2]\,
      I3 => \lcd_data[1]_INST_0_i_2\(1),
      I4 => \lcd_data[1]_INST_0_i_2\(0),
      I5 => \textdata_g_reg_n_0_[18]\,
      O => \textdata_g_reg[2]_0\
    );
\lcd_data[2]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^data15\(2),
      I1 => \textdata_h_reg_n_0_[10]\,
      I2 => \lcd_data[1]_INST_0_i_2\(1),
      I3 => \textdata_h_reg_n_0_[26]\,
      I4 => \lcd_data[1]_INST_0_i_2\(0),
      O => \lcd_data[2]_INST_0_i_7_n_0\
    );
\lcd_data[3]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \^data4\(0),
      I1 => \^data6\(0),
      I2 => \lcd_data[1]_INST_0_i_1_0\,
      I3 => \lcd_data[1]_INST_0_i_1\,
      I4 => \^data6\(1),
      O => \textdata_b_reg[30]_0\
    );
\lcd_data[3]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^data6\(0),
      I1 => \lcd_data[1]_INST_0_i_1\,
      I2 => \^data9\(0),
      I3 => \lcd_data[1]_INST_0_i_1_0\,
      O => \textdata_b_reg[11]_0\
    );
\lcd_data[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \lcd_data[3]_INST_0_i_9_n_0\,
      I1 => \lcd_data[2]_INST_0_i_2\,
      I2 => \^data15\(4),
      I3 => \lcd_data[1]_INST_0_i_2\(1),
      I4 => \lcd_data[1]_INST_0_i_2\(0),
      I5 => \textdata_g_reg_n_0_[19]\,
      O => \textdata_h_reg[4]_0\
    );
\lcd_data[3]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \^data15\(3),
      I1 => \lcd_data[1]_INST_0_i_2\(1),
      I2 => \^data15\(4),
      I3 => \lcd_data[1]_INST_0_i_2\(0),
      I4 => \textdata_h_reg_n_0_[27]\,
      O => \lcd_data[3]_INST_0_i_9_n_0\
    );
\lcd_data[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CFAFF000C0A000"
    )
        port map (
      I0 => \^data6\(1),
      I1 => data5(4),
      I2 => \lcd_data[2]_INST_0_i_1\,
      I3 => \lcd_data[1]_INST_0_i_1_0\,
      I4 => \lcd_data[1]_INST_0_i_1\,
      I5 => \^data4\(0),
      O => \textdata_b_reg[12]_0\
    );
\textdata_b[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => textdata_h(4)
    );
\textdata_b[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \textdata_b[12]_i_1_n_0\
    );
\textdata_b[17]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      O => \textdata_b[17]_i_1_n_0\
    );
\textdata_b[20]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      O => \textdata_b[20]_i_1_n_0\
    );
\textdata_b[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \textdata_b[22]_i_1_n_0\
    );
\textdata_b[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \textdata_b[30]_i_1_n_0\
    );
\textdata_b_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^resetn_0\,
      D => textdata_h(4),
      Q => \^data6\(0)
    );
\textdata_b_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^resetn_0\,
      D => \textdata_b[12]_i_1_n_0\,
      Q => \^data6\(1)
    );
\textdata_b_reg[17]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \textdata_b[17]_i_1_n_0\,
      PRE => \^resetn_0\,
      Q => data5(1)
    );
\textdata_b_reg[20]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \textdata_b[20]_i_1_n_0\,
      PRE => \^resetn_0\,
      Q => data5(4)
    );
\textdata_b_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^resetn_0\,
      D => Q(0),
      Q => \^textdata_b_reg[22]_0\(0)
    );
\textdata_b_reg[22]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \textdata_b[22]_i_1_n_0\,
      PRE => \^resetn_0\,
      Q => \^textdata_b_reg[22]_0\(1)
    );
\textdata_b_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^resetn_0\,
      D => Q(1),
      Q => data7(2)
    );
\textdata_b_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^resetn_0\,
      D => \textdata_b[30]_i_1_n_0\,
      Q => \^data4\(0)
    );
\textdata_c[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => textdata_c(20)
    );
\textdata_c[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \textdata_c[22]_i_1_n_0\
    );
\textdata_c_reg[20]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => textdata_c(20),
      PRE => \^resetn_0\,
      Q => \^data9\(0)
    );
\textdata_c_reg[22]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \textdata_c[22]_i_1_n_0\,
      PRE => \^resetn_0\,
      Q => \^data9\(1)
    );
\textdata_e[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \textdata_e[30]_i_1_n_0\
    );
\textdata_e_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^resetn_0\,
      D => \textdata_e[30]_i_1_n_0\,
      Q => \textdata_e_reg[30]_0\
    );
\textdata_g[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \textdata_g[25]_i_1_n_0\
    );
\textdata_g_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_g(0),
      Q => \textdata_g_reg_n_0_[0]\
    );
\textdata_g_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_g(16),
      Q => \textdata_g_reg_n_0_[16]\
    );
\textdata_g_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_g(17),
      Q => \textdata_g_reg_n_0_[17]\
    );
\textdata_g_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_g(18),
      Q => \textdata_g_reg_n_0_[18]\
    );
\textdata_g_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_g(19),
      Q => \textdata_g_reg_n_0_[19]\
    );
\textdata_g_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_g(1),
      Q => \textdata_g_reg_n_0_[1]\
    );
\textdata_g_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_g(24),
      Q => \textdata_g_reg_n_0_[24]\
    );
\textdata_g_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_g(25),
      Q => \textdata_g_reg_n_0_[25]\
    );
\textdata_g_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_g(2),
      Q => \textdata_g_reg_n_0_[2]\
    );
\textdata_h_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_h(0),
      Q => \^data15\(0)
    );
\textdata_h_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_h(10),
      Q => \textdata_h_reg_n_0_[10]\
    );
\textdata_h_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_h(1),
      Q => \^data15\(1)
    );
\textdata_h_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_h(24),
      Q => \textdata_h_reg_n_0_[24]\
    );
\textdata_h_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_h(25),
      Q => \textdata_h_reg_n_0_[25]\
    );
\textdata_h_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_h(26),
      Q => \textdata_h_reg_n_0_[26]\
    );
\textdata_h_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_h(27),
      Q => \textdata_h_reg_n_0_[27]\
    );
\textdata_h_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_h(2),
      Q => \^data15\(2)
    );
\textdata_h_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_h(3),
      Q => \^data15\(3)
    );
\textdata_h_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_h(4),
      Q => \^data15\(4)
    );
\textdata_h_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_h(8),
      Q => \textdata_h_reg_n_0_[8]\
    );
\textdata_h_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \textdata_g[25]_i_1_n_0\,
      CLR => \^resetn_0\,
      D => textdata_h(9),
      Q => \textdata_h_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  port (
    lcd_en : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 13 downto 0 );
    lcd_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    lcd_rs : out STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    resetn : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \slv_reg_wren__0\ : in STD_LOGIC;
    \slv_reg1_reg[1]\ : in STD_LOGIC;
    \slv_reg1_reg[1]_0\ : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  signal count_mode_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal data15 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal data5 : STD_LOGIC_VECTOR ( 6 downto 5 );
  signal data6 : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal data9 : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal digital_clock_u0_n_0 : STD_LOGIC;
  signal digital_clock_u0_n_12 : STD_LOGIC;
  signal digital_clock_u0_n_14 : STD_LOGIC;
  signal digital_clock_u0_n_29 : STD_LOGIC;
  signal digital_clock_u0_n_30 : STD_LOGIC;
  signal digital_clock_u0_n_31 : STD_LOGIC;
  signal digital_clock_u0_n_32 : STD_LOGIC;
  signal digital_clock_u0_n_33 : STD_LOGIC;
  signal digital_clock_u0_n_34 : STD_LOGIC;
  signal digital_clock_u0_n_35 : STD_LOGIC;
  signal digital_clock_u0_n_36 : STD_LOGIC;
  signal digital_clock_u0_n_37 : STD_LOGIC;
  signal textlcd_u0_n_17 : STD_LOGIC;
  signal textlcd_u0_n_6 : STD_LOGIC;
  signal textlcd_u0_n_7 : STD_LOGIC;
  signal textlcd_u0_n_8 : STD_LOGIC;
begin
digital_clock_u0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digital_clock
     port map (
      D(13 downto 0) => D(13 downto 0),
      Q(2 downto 0) => Q(2 downto 0),
      clk => clk,
      data15(4 downto 0) => data15(4 downto 0),
      data4(0) => data4(6),
      data6(1 downto 0) => data6(4 downto 3),
      data9(1) => data9(6),
      data9(0) => data9(4),
      \lcd_data[1]_INST_0_i_1\ => textlcd_u0_n_7,
      \lcd_data[1]_INST_0_i_1_0\ => textlcd_u0_n_8,
      \lcd_data[1]_INST_0_i_2\(4 downto 0) => count_mode_reg(4 downto 0),
      \lcd_data[2]_INST_0_i_1\ => textlcd_u0_n_6,
      \lcd_data[2]_INST_0_i_2\ => textlcd_u0_n_17,
      resetn => resetn,
      resetn_0 => digital_clock_u0_n_0,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_wdata(13 downto 0) => s00_axi_wdata(13 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg1_reg[1]\ => \slv_reg1_reg[1]\,
      \slv_reg1_reg[1]_0\ => \slv_reg1_reg[1]_0\,
      \slv_reg_wren__0\ => \slv_reg_wren__0\,
      \textdata_b_reg[11]_0\ => digital_clock_u0_n_14,
      \textdata_b_reg[12]_0\ => digital_clock_u0_n_29,
      \textdata_b_reg[22]_0\(1 downto 0) => data5(6 downto 5),
      \textdata_b_reg[2]_0\ => digital_clock_u0_n_31,
      \textdata_b_reg[2]_1\ => digital_clock_u0_n_33,
      \textdata_b_reg[30]_0\ => digital_clock_u0_n_32,
      \textdata_c_reg[22]_0\ => digital_clock_u0_n_30,
      \textdata_e_reg[30]_0\ => digital_clock_u0_n_12,
      \textdata_g_reg[2]_0\ => digital_clock_u0_n_37,
      \textdata_h_reg[0]_0\ => digital_clock_u0_n_34,
      \textdata_h_reg[1]_0\ => digital_clock_u0_n_35,
      \textdata_h_reg[4]_0\ => digital_clock_u0_n_36
    );
textlcd_u0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_textlcd
     port map (
      Q(4 downto 0) => count_mode_reg(4 downto 0),
      clk => clk,
      \count_mode_reg[0]_0\ => textlcd_u0_n_7,
      \count_mode_reg[0]_1\ => textlcd_u0_n_8,
      \count_mode_reg[3]_0\ => textlcd_u0_n_6,
      \count_mode_reg[4]_0\ => textlcd_u0_n_17,
      data15(4 downto 0) => data15(4 downto 0),
      data4(0) => data4(6),
      data6(1 downto 0) => data6(4 downto 3),
      data9(1) => data9(6),
      data9(0) => data9(4),
      lcd_data(7 downto 0) => lcd_data(7 downto 0),
      \lcd_data[0]_0\ => digital_clock_u0_n_34,
      \lcd_data[1]_0\ => digital_clock_u0_n_35,
      \lcd_data[2]_0\ => digital_clock_u0_n_37,
      \lcd_data[3]_0\ => digital_clock_u0_n_14,
      \lcd_data[3]_1\ => digital_clock_u0_n_36,
      \lcd_data[3]_INST_0_i_1_0\(1 downto 0) => data5(6 downto 5),
      lcd_data_0_sp_1 => digital_clock_u0_n_30,
      lcd_data_1_sp_1 => digital_clock_u0_n_33,
      lcd_data_2_sp_1 => digital_clock_u0_n_31,
      lcd_data_3_sp_1 => digital_clock_u0_n_32,
      lcd_data_4_sp_1 => digital_clock_u0_n_29,
      lcd_data_6_sp_1 => digital_clock_u0_n_12,
      lcd_en => lcd_en,
      \lcd_mode_reg[3]_0\ => digital_clock_u0_n_0,
      lcd_rs => lcd_rs
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_textlcd_2_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lcd_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    lcd_rs : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    lcd_en : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    resetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_textlcd_2_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_textlcd_2_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[15]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  signal top_u0_n_1 : STD_LOGIC;
  signal top_u0_n_10 : STD_LOGIC;
  signal top_u0_n_11 : STD_LOGIC;
  signal top_u0_n_12 : STD_LOGIC;
  signal top_u0_n_13 : STD_LOGIC;
  signal top_u0_n_14 : STD_LOGIC;
  signal top_u0_n_2 : STD_LOGIC;
  signal top_u0_n_3 : STD_LOGIC;
  signal top_u0_n_4 : STD_LOGIC;
  signal top_u0_n_5 : STD_LOGIC;
  signal top_u0_n_6 : STD_LOGIC;
  signal top_u0_n_7 : STD_LOGIC;
  signal top_u0_n_8 : STD_LOGIC;
  signal top_u0_n_9 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \slv_reg1[7]_i_2\ : label is "soft_lutpair37";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[0]\,
      I1 => slv_reg0(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[10]\,
      I1 => \slv_reg0_reg_n_0_[10]\,
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[11]\,
      I1 => \slv_reg0_reg_n_0_[11]\,
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[12]\,
      I1 => \slv_reg0_reg_n_0_[12]\,
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[13]\,
      I1 => \slv_reg0_reg_n_0_[13]\,
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[14]\,
      I1 => \slv_reg0_reg_n_0_[14]\,
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[15]\,
      I1 => \slv_reg0_reg_n_0_[15]\,
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[16]\,
      I1 => \slv_reg0_reg_n_0_[16]\,
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[17]\,
      I1 => \slv_reg0_reg_n_0_[17]\,
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[18]\,
      I1 => \slv_reg0_reg_n_0_[18]\,
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[19]\,
      I1 => \slv_reg0_reg_n_0_[19]\,
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[1]\,
      I1 => slv_reg0(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[20]\,
      I1 => \slv_reg0_reg_n_0_[20]\,
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[21]\,
      I1 => \slv_reg0_reg_n_0_[21]\,
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[22]\,
      I1 => \slv_reg0_reg_n_0_[22]\,
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[23]\,
      I1 => \slv_reg0_reg_n_0_[23]\,
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[24]\,
      I1 => \slv_reg0_reg_n_0_[24]\,
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[25]\,
      I1 => \slv_reg0_reg_n_0_[25]\,
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[26]\,
      I1 => \slv_reg0_reg_n_0_[26]\,
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[27]\,
      I1 => \slv_reg0_reg_n_0_[27]\,
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[28]\,
      I1 => \slv_reg0_reg_n_0_[28]\,
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[29]\,
      I1 => \slv_reg0_reg_n_0_[29]\,
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[2]\,
      I1 => \slv_reg0_reg_n_0_[2]\,
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[30]\,
      I1 => \slv_reg0_reg_n_0_[30]\,
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[31]\,
      I1 => \slv_reg0_reg_n_0_[31]\,
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[3]\,
      I1 => \slv_reg0_reg_n_0_[3]\,
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[4]\,
      I1 => \slv_reg0_reg_n_0_[4]\,
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[5]\,
      I1 => \slv_reg0_reg_n_0_[5]\,
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[6]\,
      I1 => \slv_reg0_reg_n_0_[6]\,
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[7]\,
      I1 => \slv_reg0_reg_n_0_[7]\,
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[8]\,
      I1 => \slv_reg0_reg_n_0_[8]\,
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[9]\,
      I1 => \slv_reg0_reg_n_0_[9]\,
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wstrb(1),
      I2 => axi_awaddr(2),
      I3 => \slv_reg_wren__0\,
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_wdata(15),
      O => \slv_reg1[15]_i_2_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wstrb(2),
      I2 => axi_awaddr(2),
      I3 => \slv_reg_wren__0\,
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => \^s_axi_wready\,
      O => slv_reg1(31)
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wstrb(3),
      I2 => axi_awaddr(2),
      I3 => \slv_reg_wren__0\,
      O => \slv_reg1[31]_i_2_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => \slv_reg_wren__0\,
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_wdata(7),
      O => \slv_reg1[7]_i_2_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => top_u0_n_14,
      Q => \slv_reg1_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => top_u0_n_5,
      Q => \slv_reg1_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => top_u0_n_4,
      Q => \slv_reg1_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => top_u0_n_3,
      Q => \slv_reg1_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => top_u0_n_2,
      Q => \slv_reg1_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => top_u0_n_1,
      Q => \slv_reg1_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => \slv_reg1[15]_i_2_n_0\,
      Q => \slv_reg1_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg1_reg_n_0_[16]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg1_reg_n_0_[17]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg1_reg_n_0_[18]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg1_reg_n_0_[19]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => top_u0_n_13,
      Q => \slv_reg1_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg1_reg_n_0_[20]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg1_reg_n_0_[21]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg1_reg_n_0_[22]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg1_reg_n_0_[23]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_2_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg1_reg_n_0_[24]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_2_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg1_reg_n_0_[25]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_2_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg1_reg_n_0_[26]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_2_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg1_reg_n_0_[27]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_2_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg1_reg_n_0_[28]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_2_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg1_reg_n_0_[29]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => top_u0_n_12,
      Q => \slv_reg1_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_2_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg1_reg_n_0_[30]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_2_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg1_reg_n_0_[31]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => top_u0_n_11,
      Q => \slv_reg1_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => top_u0_n_10,
      Q => \slv_reg1_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => top_u0_n_9,
      Q => \slv_reg1_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => top_u0_n_8,
      Q => \slv_reg1_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => \slv_reg1[7]_i_2_n_0\,
      Q => \slv_reg1_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => top_u0_n_7,
      Q => \slv_reg1_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => top_u0_n_6,
      Q => \slv_reg1_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(1),
      I3 => axi_awaddr(2),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(2),
      I3 => axi_awaddr(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(3),
      I3 => axi_awaddr(2),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(0),
      I3 => axi_awaddr(2),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_1_in(15)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_1_in(23)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_1_in(31)
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_1_in(7)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
top_u0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
     port map (
      D(13) => top_u0_n_1,
      D(12) => top_u0_n_2,
      D(11) => top_u0_n_3,
      D(10) => top_u0_n_4,
      D(9) => top_u0_n_5,
      D(8) => top_u0_n_6,
      D(7) => top_u0_n_7,
      D(6) => top_u0_n_8,
      D(5) => top_u0_n_9,
      D(4) => top_u0_n_10,
      D(3) => top_u0_n_11,
      D(2) => top_u0_n_12,
      D(1) => top_u0_n_13,
      D(0) => top_u0_n_14,
      Q(2) => \slv_reg0_reg_n_0_[2]\,
      Q(1 downto 0) => slv_reg0(1 downto 0),
      clk => clk,
      lcd_data(7 downto 0) => lcd_data(7 downto 0),
      lcd_en => lcd_en,
      lcd_rs => lcd_rs,
      resetn => resetn,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_wdata(13 downto 7) => s00_axi_wdata(14 downto 8),
      s00_axi_wdata(6 downto 0) => s00_axi_wdata(6 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg1_reg[1]\ => \^s_axi_wready\,
      \slv_reg1_reg[1]_0\ => \^s_axi_awready\,
      \slv_reg_wren__0\ => \slv_reg_wren__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_textlcd_2_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lcd_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    lcd_rs : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    lcd_en : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    resetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_textlcd_2_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_textlcd_2_v1_0 is
begin
textlcd_2_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_textlcd_2_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      clk => clk,
      lcd_data(7 downto 0) => lcd_data(7 downto 0),
      lcd_en => lcd_en,
      lcd_rs => lcd_rs,
      resetn => resetn,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    resetn : in STD_LOGIC;
    clk : in STD_LOGIC;
    lcd_rs : out STD_LOGIC;
    lcd_rw : out STD_LOGIC;
    lcd_en : out STD_LOGIC;
    lcd_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_textlcd_2_0_0,textlcd_2_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "textlcd_2_v1_0,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  lcd_rw <= \<const0>\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_textlcd_2_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      clk => clk,
      lcd_data(7 downto 0) => lcd_data(7 downto 0),
      lcd_en => lcd_en,
      lcd_rs => lcd_rs,
      resetn => resetn,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
