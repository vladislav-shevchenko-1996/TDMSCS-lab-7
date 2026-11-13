-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "11/13/2026 12:46:54"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab7_2 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	load_enable : IN std_logic;
	load_matrix : IN std_logic;
	load_addr : IN std_logic_vector(7 DOWNTO 0);
	load_data : IN std_logic_vector(7 DOWNTO 0);
	start_calc : IN std_logic;
	calc_done : BUFFER std_logic;
	result_addr : IN std_logic_vector(7 DOWNTO 0);
	result_data : BUFFER std_logic_vector(15 DOWNTO 0);
	result_valid : BUFFER std_logic;
	error : BUFFER std_logic
	);
END lab7_2;

-- Design Ports Information
-- calc_done	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_data[0]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_data[1]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_data[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_data[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_data[4]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_data[5]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_data[6]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_data[7]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_data[8]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_data[9]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_data[10]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_data[11]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_data[12]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_data[13]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_data[14]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_data[15]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_valid	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_addr[1]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_addr[0]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_addr[2]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_addr[3]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_addr[4]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_addr[5]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_addr[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_addr[7]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_enable	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[4]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[5]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[6]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[7]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_matrix	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[3]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[0]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[1]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_addr[2]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_calc	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[0]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[1]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[3]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[4]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[5]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[6]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[7]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab7_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_load_enable : std_logic;
SIGNAL ww_load_matrix : std_logic;
SIGNAL ww_load_addr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_load_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_start_calc : std_logic;
SIGNAL ww_calc_done : std_logic;
SIGNAL ww_result_addr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_result_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_result_valid : std_logic;
SIGNAL ww_error : std_logic;
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~8_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~8_BY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~32\ : std_logic;
SIGNAL \Mult0~33\ : std_logic;
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~35\ : std_logic;
SIGNAL \Mult0~36\ : std_logic;
SIGNAL \Mult0~37\ : std_logic;
SIGNAL \Mult0~38\ : std_logic;
SIGNAL \Mult0~39\ : std_logic;
SIGNAL \Mult0~40\ : std_logic;
SIGNAL \Mult0~41\ : std_logic;
SIGNAL \Mult0~42\ : std_logic;
SIGNAL \Mult0~43\ : std_logic;
SIGNAL \Mult0~44\ : std_logic;
SIGNAL \Mult0~45\ : std_logic;
SIGNAL \Mult0~46\ : std_logic;
SIGNAL \Mult0~47\ : std_logic;
SIGNAL \Mult0~48\ : std_logic;
SIGNAL \Mult0~49\ : std_logic;
SIGNAL \Mult0~50\ : std_logic;
SIGNAL \Mult0~51\ : std_logic;
SIGNAL \Mult0~52\ : std_logic;
SIGNAL \Mult0~53\ : std_logic;
SIGNAL \Mult0~54\ : std_logic;
SIGNAL \Mult0~55\ : std_logic;
SIGNAL \Mult0~56\ : std_logic;
SIGNAL \Mult0~57\ : std_logic;
SIGNAL \Mult0~58\ : std_logic;
SIGNAL \Mult0~59\ : std_logic;
SIGNAL \Mult0~60\ : std_logic;
SIGNAL \Mult0~61\ : std_logic;
SIGNAL \Mult0~62\ : std_logic;
SIGNAL \Mult0~63\ : std_logic;
SIGNAL \Mult0~64\ : std_logic;
SIGNAL \Mult0~65\ : std_logic;
SIGNAL \Mult0~66\ : std_logic;
SIGNAL \Mult0~67\ : std_logic;
SIGNAL \Mult0~68\ : std_logic;
SIGNAL \Mult0~69\ : std_logic;
SIGNAL \Mult0~70\ : std_logic;
SIGNAL \Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \start_calc~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \start_calc_prev~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector40~4_combout\ : std_logic;
SIGNAL \Selector40~3_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \col_counter[0]~1_combout\ : std_logic;
SIGNAL \col_counter[0]~2_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \row_counter[1]~0_combout\ : std_logic;
SIGNAL \row_counter[0]~3_combout\ : std_logic;
SIGNAL \row_counter[1]~1_combout\ : std_logic;
SIGNAL \row_counter[1]~2_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Selector40~1_combout\ : std_logic;
SIGNAL \state.CALCULATING~q\ : std_logic;
SIGNAL \Selector40~2_combout\ : std_logic;
SIGNAL \state.DONE_STATE~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \calc_done~reg0_q\ : std_logic;
SIGNAL \result_addr[0]~input_o\ : std_logic;
SIGNAL \result_addr[1]~input_o\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \load_data[0]~input_o\ : std_logic;
SIGNAL \load_matrix~input_o\ : std_logic;
SIGNAL \load_addr[2]~input_o\ : std_logic;
SIGNAL \load_addr[0]~input_o\ : std_logic;
SIGNAL \load_addr[3]~input_o\ : std_logic;
SIGNAL \load_addr[1]~input_o\ : std_logic;
SIGNAL \matrix_ram[0][4]~1_combout\ : std_logic;
SIGNAL \matrix_ram[6][3]~8_combout\ : std_logic;
SIGNAL \load_addr[6]~input_o\ : std_logic;
SIGNAL \load_enable~input_o\ : std_logic;
SIGNAL \load_addr[4]~input_o\ : std_logic;
SIGNAL \load_addr[5]~input_o\ : std_logic;
SIGNAL \load_addr[7]~input_o\ : std_logic;
SIGNAL \error_internal~0_combout\ : std_logic;
SIGNAL \result_addr[3]~input_o\ : std_logic;
SIGNAL \result_addr[2]~input_o\ : std_logic;
SIGNAL \result_addr[6]~input_o\ : std_logic;
SIGNAL \result_addr[5]~input_o\ : std_logic;
SIGNAL \result_addr[4]~input_o\ : std_logic;
SIGNAL \result_addr[7]~input_o\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \matrix_ram[0][4]~0_combout\ : std_logic;
SIGNAL \error_internal~1_combout\ : std_logic;
SIGNAL \error_internal~q\ : std_logic;
SIGNAL \matrix_ram[0][4]~4_combout\ : std_logic;
SIGNAL \matrix_ram[7][0]~10_combout\ : std_logic;
SIGNAL \matrix_ram[7][0]~q\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \matrix_ram[4][3]~5_combout\ : std_logic;
SIGNAL \matrix_ram[4][3]~6_combout\ : std_logic;
SIGNAL \matrix_ram[4][0]~q\ : std_logic;
SIGNAL \matrix_ram[6][3]~9_combout\ : std_logic;
SIGNAL \matrix_ram[6][0]~q\ : std_logic;
SIGNAL \matrix_ram[5][0]~feeder_combout\ : std_logic;
SIGNAL \matrix_ram[5][5]~7_combout\ : std_logic;
SIGNAL \matrix_ram[5][0]~q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \matrix_ram[8][3]~2_combout\ : std_logic;
SIGNAL \matrix_ram[8][3]~3_combout\ : std_logic;
SIGNAL \matrix_ram[8][0]~q\ : std_logic;
SIGNAL \matrix_ram[1][2]~11_combout\ : std_logic;
SIGNAL \matrix_ram[0][4]~12_combout\ : std_logic;
SIGNAL \matrix_ram[0][0]~q\ : std_logic;
SIGNAL \matrix_ram[2][0]~feeder_combout\ : std_logic;
SIGNAL \matrix_ram[2][5]~14_combout\ : std_logic;
SIGNAL \matrix_ram[2][5]~15_combout\ : std_logic;
SIGNAL \matrix_ram[2][0]~q\ : std_logic;
SIGNAL \matrix_ram[1][2]~13_combout\ : std_logic;
SIGNAL \matrix_ram[1][0]~q\ : std_logic;
SIGNAL \matrix_ram[3][5]~16_combout\ : std_logic;
SIGNAL \matrix_ram[3][0]~q\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \load_data[1]~input_o\ : std_logic;
SIGNAL \matrix_ram[8][1]~q\ : std_logic;
SIGNAL \matrix_ram[2][1]~q\ : std_logic;
SIGNAL \matrix_ram[3][1]~q\ : std_logic;
SIGNAL \matrix_ram[1][1]~feeder_combout\ : std_logic;
SIGNAL \matrix_ram[1][1]~q\ : std_logic;
SIGNAL \matrix_ram[0][1]~feeder_combout\ : std_logic;
SIGNAL \matrix_ram[0][1]~q\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \matrix_ram[7][1]~q\ : std_logic;
SIGNAL \matrix_ram[4][1]~q\ : std_logic;
SIGNAL \matrix_ram[6][1]~q\ : std_logic;
SIGNAL \matrix_ram[5][1]~feeder_combout\ : std_logic;
SIGNAL \matrix_ram[5][1]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \load_data[2]~input_o\ : std_logic;
SIGNAL \matrix_ram[8][2]~q\ : std_logic;
SIGNAL \matrix_ram[6][2]~q\ : std_logic;
SIGNAL \matrix_ram[4][2]~q\ : std_logic;
SIGNAL \matrix_ram[7][2]~q\ : std_logic;
SIGNAL \matrix_ram[5][2]~q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \matrix_ram[2][2]~feeder_combout\ : std_logic;
SIGNAL \matrix_ram[2][2]~q\ : std_logic;
SIGNAL \matrix_ram[1][2]~q\ : std_logic;
SIGNAL \matrix_ram[3][2]~q\ : std_logic;
SIGNAL \matrix_ram[0][2]~q\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \load_data[3]~input_o\ : std_logic;
SIGNAL \matrix_ram[3][3]~q\ : std_logic;
SIGNAL \matrix_ram[2][3]~q\ : std_logic;
SIGNAL \matrix_ram[1][3]~q\ : std_logic;
SIGNAL \matrix_ram[0][3]~q\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \matrix_ram[8][3]~q\ : std_logic;
SIGNAL \matrix_ram[6][3]~q\ : std_logic;
SIGNAL \matrix_ram[7][3]~q\ : std_logic;
SIGNAL \matrix_ram[4][3]~feeder_combout\ : std_logic;
SIGNAL \matrix_ram[4][3]~q\ : std_logic;
SIGNAL \matrix_ram[5][3]~feeder_combout\ : std_logic;
SIGNAL \matrix_ram[5][3]~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \load_data[4]~input_o\ : std_logic;
SIGNAL \matrix_ram[3][4]~q\ : std_logic;
SIGNAL \matrix_ram[2][4]~feeder_combout\ : std_logic;
SIGNAL \matrix_ram[2][4]~q\ : std_logic;
SIGNAL \matrix_ram[1][4]~feeder_combout\ : std_logic;
SIGNAL \matrix_ram[1][4]~q\ : std_logic;
SIGNAL \matrix_ram[0][4]~feeder_combout\ : std_logic;
SIGNAL \matrix_ram[0][4]~q\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \matrix_ram[8][4]~q\ : std_logic;
SIGNAL \matrix_ram[4][4]~q\ : std_logic;
SIGNAL \matrix_ram[7][4]~q\ : std_logic;
SIGNAL \matrix_ram[6][4]~q\ : std_logic;
SIGNAL \matrix_ram[5][4]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \load_data[5]~input_o\ : std_logic;
SIGNAL \matrix_ram[2][5]~q\ : std_logic;
SIGNAL \matrix_ram[3][5]~q\ : std_logic;
SIGNAL \matrix_ram[0][5]~feeder_combout\ : std_logic;
SIGNAL \matrix_ram[0][5]~q\ : std_logic;
SIGNAL \matrix_ram[1][5]~feeder_combout\ : std_logic;
SIGNAL \matrix_ram[1][5]~q\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \matrix_ram[8][5]~q\ : std_logic;
SIGNAL \matrix_ram[7][5]~q\ : std_logic;
SIGNAL \matrix_ram[6][5]~q\ : std_logic;
SIGNAL \matrix_ram[5][5]~q\ : std_logic;
SIGNAL \matrix_ram[4][5]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \load_data[6]~input_o\ : std_logic;
SIGNAL \matrix_ram[8][6]~q\ : std_logic;
SIGNAL \matrix_ram[0][6]~feeder_combout\ : std_logic;
SIGNAL \matrix_ram[0][6]~q\ : std_logic;
SIGNAL \matrix_ram[1][6]~q\ : std_logic;
SIGNAL \matrix_ram[2][6]~feeder_combout\ : std_logic;
SIGNAL \matrix_ram[2][6]~q\ : std_logic;
SIGNAL \matrix_ram[3][6]~q\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \matrix_ram[5][6]~feeder_combout\ : std_logic;
SIGNAL \matrix_ram[5][6]~q\ : std_logic;
SIGNAL \matrix_ram[7][6]~q\ : std_logic;
SIGNAL \matrix_ram[4][6]~q\ : std_logic;
SIGNAL \matrix_ram[6][6]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \load_data[7]~input_o\ : std_logic;
SIGNAL \matrix_ram[8][7]~q\ : std_logic;
SIGNAL \matrix_ram[2][7]~q\ : std_logic;
SIGNAL \matrix_ram[3][7]~q\ : std_logic;
SIGNAL \matrix_ram[1][7]~q\ : std_logic;
SIGNAL \matrix_ram[0][7]~q\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \matrix_ram[7][7]~q\ : std_logic;
SIGNAL \matrix_ram[4][7]~q\ : std_logic;
SIGNAL \matrix_ram[5][7]~q\ : std_logic;
SIGNAL \matrix_ram[6][7]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \vector_ram[2][0]~0_combout\ : std_logic;
SIGNAL \vector_ram[0][0]~4_combout\ : std_logic;
SIGNAL \vector_ram[0][0]~q\ : std_logic;
SIGNAL \vector_ram[1][7]~2_combout\ : std_logic;
SIGNAL \vector_ram[1][7]~3_combout\ : std_logic;
SIGNAL \vector_ram[1][0]~q\ : std_logic;
SIGNAL \vector_ram[2][0]~1_combout\ : std_logic;
SIGNAL \vector_ram[2][0]~q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \vector_ram[1][1]~q\ : std_logic;
SIGNAL \vector_ram[0][1]~q\ : std_logic;
SIGNAL \vector_ram[2][1]~q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \vector_ram[2][2]~q\ : std_logic;
SIGNAL \vector_ram[0][2]~q\ : std_logic;
SIGNAL \vector_ram[1][2]~q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \vector_ram[2][3]~q\ : std_logic;
SIGNAL \vector_ram[0][3]~q\ : std_logic;
SIGNAL \vector_ram[1][3]~q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \vector_ram[2][4]~q\ : std_logic;
SIGNAL \vector_ram[0][4]~q\ : std_logic;
SIGNAL \vector_ram[1][4]~q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \vector_ram[1][5]~feeder_combout\ : std_logic;
SIGNAL \vector_ram[1][5]~q\ : std_logic;
SIGNAL \vector_ram[0][5]~feeder_combout\ : std_logic;
SIGNAL \vector_ram[0][5]~q\ : std_logic;
SIGNAL \vector_ram[2][5]~feeder_combout\ : std_logic;
SIGNAL \vector_ram[2][5]~q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \vector_ram[2][6]~feeder_combout\ : std_logic;
SIGNAL \vector_ram[2][6]~q\ : std_logic;
SIGNAL \vector_ram[0][6]~feeder_combout\ : std_logic;
SIGNAL \vector_ram[0][6]~q\ : std_logic;
SIGNAL \vector_ram[1][6]~q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \vector_ram[2][7]~feeder_combout\ : std_logic;
SIGNAL \vector_ram[2][7]~q\ : std_logic;
SIGNAL \vector_ram[0][7]~feeder_combout\ : std_logic;
SIGNAL \vector_ram[0][7]~q\ : std_logic;
SIGNAL \vector_ram[1][7]~q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mult0~8_resulta\ : std_logic;
SIGNAL \mult_result[0]~feeder_combout\ : std_logic;
SIGNAL \mult_result[0]~0_combout\ : std_logic;
SIGNAL \mult_result[0]~1_combout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \col_counter[0]~0_combout\ : std_logic;
SIGNAL \accumulator[1]~0_combout\ : std_logic;
SIGNAL \result_ram[0][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder2~1_combout\ : std_logic;
SIGNAL \result_ram[0][0]~q\ : std_logic;
SIGNAL \Decoder2~0_combout\ : std_logic;
SIGNAL \result_ram[1][0]~q\ : std_logic;
SIGNAL \result_ram[2][0]~q\ : std_logic;
SIGNAL \result_data~0_combout\ : std_logic;
SIGNAL \result_data[8]~1_combout\ : std_logic;
SIGNAL \result_data[0]~reg0_q\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \mult_result[1]~feeder_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \result_ram[0][1]~feeder_combout\ : std_logic;
SIGNAL \result_ram[0][1]~q\ : std_logic;
SIGNAL \result_ram[1][1]~q\ : std_logic;
SIGNAL \result_ram[2][1]~q\ : std_logic;
SIGNAL \result_data~2_combout\ : std_logic;
SIGNAL \result_data[1]~reg0_q\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \mult_result[2]~feeder_combout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \result_ram[0][2]~feeder_combout\ : std_logic;
SIGNAL \result_ram[0][2]~q\ : std_logic;
SIGNAL \result_ram[1][2]~feeder_combout\ : std_logic;
SIGNAL \result_ram[1][2]~q\ : std_logic;
SIGNAL \result_ram[2][2]~q\ : std_logic;
SIGNAL \result_data~3_combout\ : std_logic;
SIGNAL \result_data[2]~reg0_q\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \mult_result[3]~feeder_combout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \result_ram[0][3]~feeder_combout\ : std_logic;
SIGNAL \result_ram[0][3]~q\ : std_logic;
SIGNAL \result_ram[2][3]~q\ : std_logic;
SIGNAL \result_ram[1][3]~q\ : std_logic;
SIGNAL \result_data~4_combout\ : std_logic;
SIGNAL \result_data[3]~reg0_q\ : std_logic;
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \mult_result[4]~feeder_combout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \result_ram[0][4]~q\ : std_logic;
SIGNAL \result_ram[1][4]~feeder_combout\ : std_logic;
SIGNAL \result_ram[1][4]~q\ : std_logic;
SIGNAL \result_ram[2][4]~feeder_combout\ : std_logic;
SIGNAL \result_ram[2][4]~q\ : std_logic;
SIGNAL \result_data~5_combout\ : std_logic;
SIGNAL \result_data[4]~reg0_q\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \mult_result[5]~feeder_combout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \result_ram[0][5]~q\ : std_logic;
SIGNAL \result_ram[1][5]~q\ : std_logic;
SIGNAL \result_ram[2][5]~q\ : std_logic;
SIGNAL \result_data~6_combout\ : std_logic;
SIGNAL \result_data[5]~reg0_q\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \mult_result[6]~feeder_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \result_ram[0][6]~feeder_combout\ : std_logic;
SIGNAL \result_ram[0][6]~q\ : std_logic;
SIGNAL \result_ram[2][6]~q\ : std_logic;
SIGNAL \result_ram[1][6]~q\ : std_logic;
SIGNAL \result_data~7_combout\ : std_logic;
SIGNAL \result_data[6]~reg0_q\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \mult_result[7]~feeder_combout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \result_ram[0][7]~feeder_combout\ : std_logic;
SIGNAL \result_ram[0][7]~q\ : std_logic;
SIGNAL \result_ram[1][7]~feeder_combout\ : std_logic;
SIGNAL \result_ram[1][7]~q\ : std_logic;
SIGNAL \result_ram[2][7]~feeder_combout\ : std_logic;
SIGNAL \result_ram[2][7]~q\ : std_logic;
SIGNAL \result_data~8_combout\ : std_logic;
SIGNAL \result_data[7]~reg0_q\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \mult_result[8]~feeder_combout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \result_ram[0][8]~q\ : std_logic;
SIGNAL \result_ram[1][8]~q\ : std_logic;
SIGNAL \result_ram[2][8]~feeder_combout\ : std_logic;
SIGNAL \result_ram[2][8]~q\ : std_logic;
SIGNAL \result_data~9_combout\ : std_logic;
SIGNAL \result_data[8]~reg0_q\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \result_ram[0][9]~q\ : std_logic;
SIGNAL \result_ram[1][9]~q\ : std_logic;
SIGNAL \result_ram[2][9]~q\ : std_logic;
SIGNAL \result_data~10_combout\ : std_logic;
SIGNAL \result_data[9]~reg0_q\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \mult_result[10]~feeder_combout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \result_ram[1][10]~feeder_combout\ : std_logic;
SIGNAL \result_ram[1][10]~q\ : std_logic;
SIGNAL \result_ram[0][10]~feeder_combout\ : std_logic;
SIGNAL \result_ram[0][10]~q\ : std_logic;
SIGNAL \result_ram[2][10]~q\ : std_logic;
SIGNAL \result_data~11_combout\ : std_logic;
SIGNAL \result_data[10]~reg0_q\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \mult_result[11]~feeder_combout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \result_ram[2][11]~q\ : std_logic;
SIGNAL \result_ram[0][11]~feeder_combout\ : std_logic;
SIGNAL \result_ram[0][11]~q\ : std_logic;
SIGNAL \result_ram[1][11]~feeder_combout\ : std_logic;
SIGNAL \result_ram[1][11]~q\ : std_logic;
SIGNAL \result_data~12_combout\ : std_logic;
SIGNAL \result_data[11]~reg0_q\ : std_logic;
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \mult_result[12]~feeder_combout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \result_ram[0][12]~feeder_combout\ : std_logic;
SIGNAL \result_ram[0][12]~q\ : std_logic;
SIGNAL \result_ram[2][12]~feeder_combout\ : std_logic;
SIGNAL \result_ram[2][12]~q\ : std_logic;
SIGNAL \result_ram[1][12]~feeder_combout\ : std_logic;
SIGNAL \result_ram[1][12]~q\ : std_logic;
SIGNAL \result_data~13_combout\ : std_logic;
SIGNAL \result_data[12]~reg0_q\ : std_logic;
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \mult_result[13]~feeder_combout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \result_ram[1][13]~feeder_combout\ : std_logic;
SIGNAL \result_ram[1][13]~q\ : std_logic;
SIGNAL \result_ram[0][13]~feeder_combout\ : std_logic;
SIGNAL \result_ram[0][13]~q\ : std_logic;
SIGNAL \result_ram[2][13]~q\ : std_logic;
SIGNAL \result_data~14_combout\ : std_logic;
SIGNAL \result_data[13]~reg0_q\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \mult_result[14]~feeder_combout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \result_ram[0][14]~q\ : std_logic;
SIGNAL \result_ram[1][14]~feeder_combout\ : std_logic;
SIGNAL \result_ram[1][14]~q\ : std_logic;
SIGNAL \result_ram[2][14]~feeder_combout\ : std_logic;
SIGNAL \result_ram[2][14]~q\ : std_logic;
SIGNAL \result_data~15_combout\ : std_logic;
SIGNAL \result_data[14]~reg0_q\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \mult_result[15]~feeder_combout\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \result_ram[0][15]~feeder_combout\ : std_logic;
SIGNAL \result_ram[0][15]~q\ : std_logic;
SIGNAL \result_ram[2][15]~feeder_combout\ : std_logic;
SIGNAL \result_ram[2][15]~q\ : std_logic;
SIGNAL \result_ram[1][15]~feeder_combout\ : std_logic;
SIGNAL \result_ram[1][15]~q\ : std_logic;
SIGNAL \result_data~16_combout\ : std_logic;
SIGNAL \result_data[15]~reg0_q\ : std_logic;
SIGNAL \result_valid~0_combout\ : std_logic;
SIGNAL \result_valid~reg0_q\ : std_logic;
SIGNAL accumulator : std_logic_vector(15 DOWNTO 0);
SIGNAL mult_result : std_logic_vector(15 DOWNTO 0);
SIGNAL calc_step : std_logic_vector(1 DOWNTO 0);
SIGNAL row_counter : std_logic_vector(1 DOWNTO 0);
SIGNAL col_counter : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_vector_ram[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[7][7]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[6][7]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[5][7]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[4][7]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[8][7]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[7][6]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[6][6]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[5][6]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[4][6]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[8][6]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[7][5]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[6][5]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[5][5]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[4][5]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[8][5]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[7][4]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[6][4]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[5][4]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[4][4]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[8][4]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[7][3]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[6][3]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[5][3]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[4][3]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[8][3]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[7][2]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[6][2]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[5][2]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[4][2]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[8][2]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[7][1]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[6][1]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[5][1]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[4][1]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[8][1]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[7][0]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[6][0]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[5][0]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[4][0]~q\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[8][0]~q\ : std_logic;
SIGNAL \ALT_INV_Mult0~23\ : std_logic;
SIGNAL \ALT_INV_Mult0~22\ : std_logic;
SIGNAL \ALT_INV_Mult0~21\ : std_logic;
SIGNAL \ALT_INV_Mult0~20\ : std_logic;
SIGNAL \ALT_INV_Mult0~19\ : std_logic;
SIGNAL \ALT_INV_Mult0~18\ : std_logic;
SIGNAL \ALT_INV_Mult0~16\ : std_logic;
SIGNAL \ALT_INV_Mult0~15\ : std_logic;
SIGNAL \ALT_INV_Mult0~14\ : std_logic;
SIGNAL \ALT_INV_Mult0~13\ : std_logic;
SIGNAL \ALT_INV_Mult0~12\ : std_logic;
SIGNAL \ALT_INV_Mult0~11\ : std_logic;
SIGNAL \ALT_INV_Mult0~10\ : std_logic;
SIGNAL \ALT_INV_Mult0~9\ : std_logic;
SIGNAL \ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL ALT_INV_mult_result : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_accumulator : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_error_internal~q\ : std_logic;
SIGNAL \ALT_INV_load_data[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_data[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_data[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_data[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_start_calc~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_matrix~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_addr[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_enable~input_o\ : std_logic;
SIGNAL \ALT_INV_result_addr[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_result_addr[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_result_addr[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_result_addr[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_result_addr[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_result_addr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_result_addr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_result_addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_vector_ram[1][7]~2_combout\ : std_logic;
SIGNAL \ALT_INV_vector_ram[2][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[2][5]~14_combout\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[1][2]~11_combout\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[6][3]~8_combout\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[4][3]~5_combout\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[0][4]~4_combout\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[8][3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[0][4]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \ALT_INV_col_counter[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_row_counter[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_row_counter[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL ALT_INV_col_counter : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL ALT_INV_calc_step : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Selector40~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector40~0_combout\ : std_logic;
SIGNAL ALT_INV_row_counter : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_start_calc_prev~q\ : std_logic;
SIGNAL \ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \ALT_INV_error_internal~0_combout\ : std_logic;
SIGNAL \ALT_INV_matrix_ram[0][4]~0_combout\ : std_logic;
SIGNAL \ALT_INV_result_ram[0][15]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[1][15]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[2][15]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[0][14]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[1][14]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[2][14]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[0][13]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[1][13]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[2][13]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[0][12]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[1][12]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[2][12]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[0][11]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[1][11]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[2][11]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[0][10]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[1][10]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[2][10]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[0][9]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[1][9]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[2][9]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[1][8]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_result_data[8]~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL \ALT_INV_result_ram[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_result_ram[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_state.DONE_STATE~q\ : std_logic;
SIGNAL \ALT_INV_state.CALCULATING~q\ : std_logic;
SIGNAL \ALT_INV_calc_done~reg0_q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_vector_ram[2][6]~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_load_enable <= load_enable;
ww_load_matrix <= load_matrix;
ww_load_addr <= load_addr;
ww_load_data <= load_data;
ww_start_calc <= start_calc;
calc_done <= ww_calc_done;
ww_result_addr <= result_addr;
result_data <= ww_result_data;
result_valid <= ww_result_valid;
error <= ww_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0~8_AX_bus\ <= (\Mux0~2_combout\ & \Mux0~2_combout\ & \Mux1~2_combout\ & \Mux2~2_combout\ & \Mux3~2_combout\ & \Mux4~2_combout\ & \Mux5~2_combout\ & \Mux6~2_combout\ & \Mux7~2_combout\);

\Mult0~8_AY_bus\ <= (\Mux8~0_combout\ & \Mux8~0_combout\ & \Mux9~0_combout\ & \Mux10~0_combout\ & \Mux11~0_combout\ & \Mux12~0_combout\ & \Mux13~0_combout\ & \Mux14~0_combout\ & \Mux15~0_combout\);

\Mult0~8_BX_bus\ <= (\Mux0~2_combout\ & \Mux0~2_combout\ & \Mux0~2_combout\ & \Mux0~2_combout\ & \Mux0~2_combout\ & \Mux0~2_combout\ & \Mux0~2_combout\ & \Mux0~2_combout\ & \Mux0~2_combout\);

\Mult0~8_BY_bus\ <= (\Mux8~0_combout\ & \Mux8~0_combout\ & \Mux8~0_combout\ & \Mux8~0_combout\ & \Mux8~0_combout\ & \Mux8~0_combout\ & \Mux8~0_combout\ & \Mux8~0_combout\ & \Mux8~0_combout\);

\Mult0~8_resulta\ <= \Mult0~8_RESULTA_bus\(0);
\Mult0~9\ <= \Mult0~8_RESULTA_bus\(1);
\Mult0~10\ <= \Mult0~8_RESULTA_bus\(2);
\Mult0~11\ <= \Mult0~8_RESULTA_bus\(3);
\Mult0~12\ <= \Mult0~8_RESULTA_bus\(4);
\Mult0~13\ <= \Mult0~8_RESULTA_bus\(5);
\Mult0~14\ <= \Mult0~8_RESULTA_bus\(6);
\Mult0~15\ <= \Mult0~8_RESULTA_bus\(7);
\Mult0~16\ <= \Mult0~8_RESULTA_bus\(8);
\Mult0~17\ <= \Mult0~8_RESULTA_bus\(9);
\Mult0~18\ <= \Mult0~8_RESULTA_bus\(10);
\Mult0~19\ <= \Mult0~8_RESULTA_bus\(11);
\Mult0~20\ <= \Mult0~8_RESULTA_bus\(12);
\Mult0~21\ <= \Mult0~8_RESULTA_bus\(13);
\Mult0~22\ <= \Mult0~8_RESULTA_bus\(14);
\Mult0~23\ <= \Mult0~8_RESULTA_bus\(15);
\Mult0~24\ <= \Mult0~8_RESULTA_bus\(16);
\Mult0~25\ <= \Mult0~8_RESULTA_bus\(17);
\Mult0~26\ <= \Mult0~8_RESULTA_bus\(18);
\Mult0~27\ <= \Mult0~8_RESULTA_bus\(19);
\Mult0~28\ <= \Mult0~8_RESULTA_bus\(20);
\Mult0~29\ <= \Mult0~8_RESULTA_bus\(21);
\Mult0~30\ <= \Mult0~8_RESULTA_bus\(22);
\Mult0~31\ <= \Mult0~8_RESULTA_bus\(23);
\Mult0~32\ <= \Mult0~8_RESULTA_bus\(24);
\Mult0~33\ <= \Mult0~8_RESULTA_bus\(25);
\Mult0~34\ <= \Mult0~8_RESULTA_bus\(26);
\Mult0~35\ <= \Mult0~8_RESULTA_bus\(27);
\Mult0~36\ <= \Mult0~8_RESULTA_bus\(28);
\Mult0~37\ <= \Mult0~8_RESULTA_bus\(29);
\Mult0~38\ <= \Mult0~8_RESULTA_bus\(30);
\Mult0~39\ <= \Mult0~8_RESULTA_bus\(31);
\Mult0~40\ <= \Mult0~8_RESULTA_bus\(32);
\Mult0~41\ <= \Mult0~8_RESULTA_bus\(33);
\Mult0~42\ <= \Mult0~8_RESULTA_bus\(34);
\Mult0~43\ <= \Mult0~8_RESULTA_bus\(35);
\Mult0~44\ <= \Mult0~8_RESULTA_bus\(36);
\Mult0~45\ <= \Mult0~8_RESULTA_bus\(37);
\Mult0~46\ <= \Mult0~8_RESULTA_bus\(38);
\Mult0~47\ <= \Mult0~8_RESULTA_bus\(39);
\Mult0~48\ <= \Mult0~8_RESULTA_bus\(40);
\Mult0~49\ <= \Mult0~8_RESULTA_bus\(41);
\Mult0~50\ <= \Mult0~8_RESULTA_bus\(42);
\Mult0~51\ <= \Mult0~8_RESULTA_bus\(43);
\Mult0~52\ <= \Mult0~8_RESULTA_bus\(44);
\Mult0~53\ <= \Mult0~8_RESULTA_bus\(45);
\Mult0~54\ <= \Mult0~8_RESULTA_bus\(46);
\Mult0~55\ <= \Mult0~8_RESULTA_bus\(47);
\Mult0~56\ <= \Mult0~8_RESULTA_bus\(48);
\Mult0~57\ <= \Mult0~8_RESULTA_bus\(49);
\Mult0~58\ <= \Mult0~8_RESULTA_bus\(50);
\Mult0~59\ <= \Mult0~8_RESULTA_bus\(51);
\Mult0~60\ <= \Mult0~8_RESULTA_bus\(52);
\Mult0~61\ <= \Mult0~8_RESULTA_bus\(53);
\Mult0~62\ <= \Mult0~8_RESULTA_bus\(54);
\Mult0~63\ <= \Mult0~8_RESULTA_bus\(55);
\Mult0~64\ <= \Mult0~8_RESULTA_bus\(56);
\Mult0~65\ <= \Mult0~8_RESULTA_bus\(57);
\Mult0~66\ <= \Mult0~8_RESULTA_bus\(58);
\Mult0~67\ <= \Mult0~8_RESULTA_bus\(59);
\Mult0~68\ <= \Mult0~8_RESULTA_bus\(60);
\Mult0~69\ <= \Mult0~8_RESULTA_bus\(61);
\Mult0~70\ <= \Mult0~8_RESULTA_bus\(62);
\Mult0~71\ <= \Mult0~8_RESULTA_bus\(63);
\ALT_INV_vector_ram[0][5]~q\ <= NOT \vector_ram[0][5]~q\;
\ALT_INV_vector_ram[1][5]~q\ <= NOT \vector_ram[1][5]~q\;
\ALT_INV_vector_ram[2][5]~q\ <= NOT \vector_ram[2][5]~q\;
\ALT_INV_vector_ram[0][4]~q\ <= NOT \vector_ram[0][4]~q\;
\ALT_INV_vector_ram[1][4]~q\ <= NOT \vector_ram[1][4]~q\;
\ALT_INV_vector_ram[2][4]~q\ <= NOT \vector_ram[2][4]~q\;
\ALT_INV_vector_ram[0][3]~q\ <= NOT \vector_ram[0][3]~q\;
\ALT_INV_vector_ram[1][3]~q\ <= NOT \vector_ram[1][3]~q\;
\ALT_INV_vector_ram[2][3]~q\ <= NOT \vector_ram[2][3]~q\;
\ALT_INV_vector_ram[0][2]~q\ <= NOT \vector_ram[0][2]~q\;
\ALT_INV_vector_ram[1][2]~q\ <= NOT \vector_ram[1][2]~q\;
\ALT_INV_vector_ram[2][2]~q\ <= NOT \vector_ram[2][2]~q\;
\ALT_INV_vector_ram[0][1]~q\ <= NOT \vector_ram[0][1]~q\;
\ALT_INV_vector_ram[1][1]~q\ <= NOT \vector_ram[1][1]~q\;
\ALT_INV_vector_ram[2][1]~q\ <= NOT \vector_ram[2][1]~q\;
\ALT_INV_vector_ram[0][0]~q\ <= NOT \vector_ram[0][0]~q\;
\ALT_INV_vector_ram[1][0]~q\ <= NOT \vector_ram[1][0]~q\;
\ALT_INV_vector_ram[2][0]~q\ <= NOT \vector_ram[2][0]~q\;
\ALT_INV_matrix_ram[3][7]~q\ <= NOT \matrix_ram[3][7]~q\;
\ALT_INV_matrix_ram[2][7]~q\ <= NOT \matrix_ram[2][7]~q\;
\ALT_INV_matrix_ram[1][7]~q\ <= NOT \matrix_ram[1][7]~q\;
\ALT_INV_matrix_ram[0][7]~q\ <= NOT \matrix_ram[0][7]~q\;
\ALT_INV_matrix_ram[7][7]~q\ <= NOT \matrix_ram[7][7]~q\;
\ALT_INV_matrix_ram[6][7]~q\ <= NOT \matrix_ram[6][7]~q\;
\ALT_INV_matrix_ram[5][7]~q\ <= NOT \matrix_ram[5][7]~q\;
\ALT_INV_matrix_ram[4][7]~q\ <= NOT \matrix_ram[4][7]~q\;
\ALT_INV_matrix_ram[8][7]~q\ <= NOT \matrix_ram[8][7]~q\;
\ALT_INV_matrix_ram[3][6]~q\ <= NOT \matrix_ram[3][6]~q\;
\ALT_INV_matrix_ram[2][6]~q\ <= NOT \matrix_ram[2][6]~q\;
\ALT_INV_matrix_ram[1][6]~q\ <= NOT \matrix_ram[1][6]~q\;
\ALT_INV_matrix_ram[0][6]~q\ <= NOT \matrix_ram[0][6]~q\;
\ALT_INV_matrix_ram[7][6]~q\ <= NOT \matrix_ram[7][6]~q\;
\ALT_INV_matrix_ram[6][6]~q\ <= NOT \matrix_ram[6][6]~q\;
\ALT_INV_matrix_ram[5][6]~q\ <= NOT \matrix_ram[5][6]~q\;
\ALT_INV_matrix_ram[4][6]~q\ <= NOT \matrix_ram[4][6]~q\;
\ALT_INV_matrix_ram[8][6]~q\ <= NOT \matrix_ram[8][6]~q\;
\ALT_INV_matrix_ram[3][5]~q\ <= NOT \matrix_ram[3][5]~q\;
\ALT_INV_matrix_ram[2][5]~q\ <= NOT \matrix_ram[2][5]~q\;
\ALT_INV_matrix_ram[1][5]~q\ <= NOT \matrix_ram[1][5]~q\;
\ALT_INV_matrix_ram[0][5]~q\ <= NOT \matrix_ram[0][5]~q\;
\ALT_INV_matrix_ram[7][5]~q\ <= NOT \matrix_ram[7][5]~q\;
\ALT_INV_matrix_ram[6][5]~q\ <= NOT \matrix_ram[6][5]~q\;
\ALT_INV_matrix_ram[5][5]~q\ <= NOT \matrix_ram[5][5]~q\;
\ALT_INV_matrix_ram[4][5]~q\ <= NOT \matrix_ram[4][5]~q\;
\ALT_INV_matrix_ram[8][5]~q\ <= NOT \matrix_ram[8][5]~q\;
\ALT_INV_matrix_ram[3][4]~q\ <= NOT \matrix_ram[3][4]~q\;
\ALT_INV_matrix_ram[2][4]~q\ <= NOT \matrix_ram[2][4]~q\;
\ALT_INV_matrix_ram[1][4]~q\ <= NOT \matrix_ram[1][4]~q\;
\ALT_INV_matrix_ram[0][4]~q\ <= NOT \matrix_ram[0][4]~q\;
\ALT_INV_matrix_ram[7][4]~q\ <= NOT \matrix_ram[7][4]~q\;
\ALT_INV_matrix_ram[6][4]~q\ <= NOT \matrix_ram[6][4]~q\;
\ALT_INV_matrix_ram[5][4]~q\ <= NOT \matrix_ram[5][4]~q\;
\ALT_INV_matrix_ram[4][4]~q\ <= NOT \matrix_ram[4][4]~q\;
\ALT_INV_matrix_ram[8][4]~q\ <= NOT \matrix_ram[8][4]~q\;
\ALT_INV_matrix_ram[3][3]~q\ <= NOT \matrix_ram[3][3]~q\;
\ALT_INV_matrix_ram[2][3]~q\ <= NOT \matrix_ram[2][3]~q\;
\ALT_INV_matrix_ram[1][3]~q\ <= NOT \matrix_ram[1][3]~q\;
\ALT_INV_matrix_ram[0][3]~q\ <= NOT \matrix_ram[0][3]~q\;
\ALT_INV_matrix_ram[7][3]~q\ <= NOT \matrix_ram[7][3]~q\;
\ALT_INV_matrix_ram[6][3]~q\ <= NOT \matrix_ram[6][3]~q\;
\ALT_INV_matrix_ram[5][3]~q\ <= NOT \matrix_ram[5][3]~q\;
\ALT_INV_matrix_ram[4][3]~q\ <= NOT \matrix_ram[4][3]~q\;
\ALT_INV_matrix_ram[8][3]~q\ <= NOT \matrix_ram[8][3]~q\;
\ALT_INV_matrix_ram[3][2]~q\ <= NOT \matrix_ram[3][2]~q\;
\ALT_INV_matrix_ram[2][2]~q\ <= NOT \matrix_ram[2][2]~q\;
\ALT_INV_matrix_ram[1][2]~q\ <= NOT \matrix_ram[1][2]~q\;
\ALT_INV_matrix_ram[0][2]~q\ <= NOT \matrix_ram[0][2]~q\;
\ALT_INV_matrix_ram[7][2]~q\ <= NOT \matrix_ram[7][2]~q\;
\ALT_INV_matrix_ram[6][2]~q\ <= NOT \matrix_ram[6][2]~q\;
\ALT_INV_matrix_ram[5][2]~q\ <= NOT \matrix_ram[5][2]~q\;
\ALT_INV_matrix_ram[4][2]~q\ <= NOT \matrix_ram[4][2]~q\;
\ALT_INV_matrix_ram[8][2]~q\ <= NOT \matrix_ram[8][2]~q\;
\ALT_INV_matrix_ram[3][1]~q\ <= NOT \matrix_ram[3][1]~q\;
\ALT_INV_matrix_ram[2][1]~q\ <= NOT \matrix_ram[2][1]~q\;
\ALT_INV_matrix_ram[1][1]~q\ <= NOT \matrix_ram[1][1]~q\;
\ALT_INV_matrix_ram[0][1]~q\ <= NOT \matrix_ram[0][1]~q\;
\ALT_INV_matrix_ram[7][1]~q\ <= NOT \matrix_ram[7][1]~q\;
\ALT_INV_matrix_ram[6][1]~q\ <= NOT \matrix_ram[6][1]~q\;
\ALT_INV_matrix_ram[5][1]~q\ <= NOT \matrix_ram[5][1]~q\;
\ALT_INV_matrix_ram[4][1]~q\ <= NOT \matrix_ram[4][1]~q\;
\ALT_INV_matrix_ram[8][1]~q\ <= NOT \matrix_ram[8][1]~q\;
\ALT_INV_matrix_ram[3][0]~q\ <= NOT \matrix_ram[3][0]~q\;
\ALT_INV_matrix_ram[2][0]~q\ <= NOT \matrix_ram[2][0]~q\;
\ALT_INV_matrix_ram[1][0]~q\ <= NOT \matrix_ram[1][0]~q\;
\ALT_INV_matrix_ram[0][0]~q\ <= NOT \matrix_ram[0][0]~q\;
\ALT_INV_matrix_ram[7][0]~q\ <= NOT \matrix_ram[7][0]~q\;
\ALT_INV_matrix_ram[6][0]~q\ <= NOT \matrix_ram[6][0]~q\;
\ALT_INV_matrix_ram[5][0]~q\ <= NOT \matrix_ram[5][0]~q\;
\ALT_INV_matrix_ram[4][0]~q\ <= NOT \matrix_ram[4][0]~q\;
\ALT_INV_matrix_ram[8][0]~q\ <= NOT \matrix_ram[8][0]~q\;
\ALT_INV_Mult0~23\ <= NOT \Mult0~23\;
\ALT_INV_Mult0~22\ <= NOT \Mult0~22\;
\ALT_INV_Mult0~21\ <= NOT \Mult0~21\;
\ALT_INV_Mult0~20\ <= NOT \Mult0~20\;
\ALT_INV_Mult0~19\ <= NOT \Mult0~19\;
\ALT_INV_Mult0~18\ <= NOT \Mult0~18\;
\ALT_INV_Mult0~16\ <= NOT \Mult0~16\;
\ALT_INV_Mult0~15\ <= NOT \Mult0~15\;
\ALT_INV_Mult0~14\ <= NOT \Mult0~14\;
\ALT_INV_Mult0~13\ <= NOT \Mult0~13\;
\ALT_INV_Mult0~12\ <= NOT \Mult0~12\;
\ALT_INV_Mult0~11\ <= NOT \Mult0~11\;
\ALT_INV_Mult0~10\ <= NOT \Mult0~10\;
\ALT_INV_Mult0~9\ <= NOT \Mult0~9\;
\ALT_INV_Mult0~8_resulta\ <= NOT \Mult0~8_resulta\;
ALT_INV_mult_result(15) <= NOT mult_result(15);
ALT_INV_mult_result(14) <= NOT mult_result(14);
ALT_INV_mult_result(13) <= NOT mult_result(13);
ALT_INV_mult_result(12) <= NOT mult_result(12);
ALT_INV_mult_result(11) <= NOT mult_result(11);
ALT_INV_mult_result(10) <= NOT mult_result(10);
ALT_INV_mult_result(9) <= NOT mult_result(9);
ALT_INV_mult_result(8) <= NOT mult_result(8);
ALT_INV_mult_result(7) <= NOT mult_result(7);
ALT_INV_mult_result(6) <= NOT mult_result(6);
ALT_INV_mult_result(5) <= NOT mult_result(5);
ALT_INV_mult_result(4) <= NOT mult_result(4);
ALT_INV_mult_result(3) <= NOT mult_result(3);
ALT_INV_mult_result(2) <= NOT mult_result(2);
ALT_INV_mult_result(1) <= NOT mult_result(1);
ALT_INV_mult_result(0) <= NOT mult_result(0);
ALT_INV_accumulator(15) <= NOT accumulator(15);
ALT_INV_accumulator(14) <= NOT accumulator(14);
ALT_INV_accumulator(13) <= NOT accumulator(13);
ALT_INV_accumulator(12) <= NOT accumulator(12);
ALT_INV_accumulator(11) <= NOT accumulator(11);
ALT_INV_accumulator(10) <= NOT accumulator(10);
ALT_INV_accumulator(9) <= NOT accumulator(9);
ALT_INV_accumulator(8) <= NOT accumulator(8);
ALT_INV_accumulator(7) <= NOT accumulator(7);
ALT_INV_accumulator(6) <= NOT accumulator(6);
ALT_INV_accumulator(5) <= NOT accumulator(5);
ALT_INV_accumulator(4) <= NOT accumulator(4);
ALT_INV_accumulator(3) <= NOT accumulator(3);
ALT_INV_accumulator(2) <= NOT accumulator(2);
ALT_INV_accumulator(1) <= NOT accumulator(1);
ALT_INV_accumulator(0) <= NOT accumulator(0);
\ALT_INV_error_internal~q\ <= NOT \error_internal~q\;
\ALT_INV_load_data[7]~input_o\ <= NOT \load_data[7]~input_o\;
\ALT_INV_load_data[6]~input_o\ <= NOT \load_data[6]~input_o\;
\ALT_INV_load_data[5]~input_o\ <= NOT \load_data[5]~input_o\;
\ALT_INV_load_data[4]~input_o\ <= NOT \load_data[4]~input_o\;
\ALT_INV_load_data[3]~input_o\ <= NOT \load_data[3]~input_o\;
\ALT_INV_load_data[2]~input_o\ <= NOT \load_data[2]~input_o\;
\ALT_INV_load_data[1]~input_o\ <= NOT \load_data[1]~input_o\;
\ALT_INV_load_data[0]~input_o\ <= NOT \load_data[0]~input_o\;
\ALT_INV_start_calc~input_o\ <= NOT \start_calc~input_o\;
\ALT_INV_load_addr[2]~input_o\ <= NOT \load_addr[2]~input_o\;
\ALT_INV_load_addr[1]~input_o\ <= NOT \load_addr[1]~input_o\;
\ALT_INV_load_addr[0]~input_o\ <= NOT \load_addr[0]~input_o\;
\ALT_INV_load_addr[3]~input_o\ <= NOT \load_addr[3]~input_o\;
\ALT_INV_load_matrix~input_o\ <= NOT \load_matrix~input_o\;
\ALT_INV_load_addr[7]~input_o\ <= NOT \load_addr[7]~input_o\;
\ALT_INV_load_addr[6]~input_o\ <= NOT \load_addr[6]~input_o\;
\ALT_INV_load_addr[5]~input_o\ <= NOT \load_addr[5]~input_o\;
\ALT_INV_load_addr[4]~input_o\ <= NOT \load_addr[4]~input_o\;
\ALT_INV_load_enable~input_o\ <= NOT \load_enable~input_o\;
\ALT_INV_result_addr[7]~input_o\ <= NOT \result_addr[7]~input_o\;
\ALT_INV_result_addr[6]~input_o\ <= NOT \result_addr[6]~input_o\;
\ALT_INV_result_addr[5]~input_o\ <= NOT \result_addr[5]~input_o\;
\ALT_INV_result_addr[4]~input_o\ <= NOT \result_addr[4]~input_o\;
\ALT_INV_result_addr[3]~input_o\ <= NOT \result_addr[3]~input_o\;
\ALT_INV_result_addr[2]~input_o\ <= NOT \result_addr[2]~input_o\;
\ALT_INV_result_addr[0]~input_o\ <= NOT \result_addr[0]~input_o\;
\ALT_INV_result_addr[1]~input_o\ <= NOT \result_addr[1]~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_vector_ram[1][7]~2_combout\ <= NOT \vector_ram[1][7]~2_combout\;
\ALT_INV_vector_ram[2][0]~0_combout\ <= NOT \vector_ram[2][0]~0_combout\;
\ALT_INV_matrix_ram[2][5]~14_combout\ <= NOT \matrix_ram[2][5]~14_combout\;
\ALT_INV_matrix_ram[1][2]~11_combout\ <= NOT \matrix_ram[1][2]~11_combout\;
\ALT_INV_matrix_ram[6][3]~8_combout\ <= NOT \matrix_ram[6][3]~8_combout\;
\ALT_INV_matrix_ram[4][3]~5_combout\ <= NOT \matrix_ram[4][3]~5_combout\;
\ALT_INV_matrix_ram[0][4]~4_combout\ <= NOT \matrix_ram[0][4]~4_combout\;
\ALT_INV_matrix_ram[8][3]~2_combout\ <= NOT \matrix_ram[8][3]~2_combout\;
\ALT_INV_matrix_ram[0][4]~1_combout\ <= NOT \matrix_ram[0][4]~1_combout\;
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_Add1~3_combout\ <= NOT \Add1~3_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Add1~2_combout\ <= NOT \Add1~2_combout\;
\ALT_INV_Add1~1_combout\ <= NOT \Add1~1_combout\;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
\ALT_INV_col_counter[0]~1_combout\ <= NOT \col_counter[0]~1_combout\;
\ALT_INV_row_counter[1]~1_combout\ <= NOT \row_counter[1]~1_combout\;
\ALT_INV_row_counter[1]~0_combout\ <= NOT \row_counter[1]~0_combout\;
\ALT_INV_Selector5~1_combout\ <= NOT \Selector5~1_combout\;
ALT_INV_col_counter(0) <= NOT col_counter(0);
ALT_INV_col_counter(1) <= NOT col_counter(1);
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
ALT_INV_calc_step(0) <= NOT calc_step(0);
\ALT_INV_Selector40~2_combout\ <= NOT \Selector40~2_combout\;
\ALT_INV_Selector40~0_combout\ <= NOT \Selector40~0_combout\;
ALT_INV_row_counter(0) <= NOT row_counter(0);
ALT_INV_row_counter(1) <= NOT row_counter(1);
ALT_INV_calc_step(1) <= NOT calc_step(1);
\ALT_INV_start_calc_prev~q\ <= NOT \start_calc_prev~q\;
\ALT_INV_state.IDLE~q\ <= NOT \state.IDLE~q\;
\ALT_INV_error_internal~0_combout\ <= NOT \error_internal~0_combout\;
\ALT_INV_matrix_ram[0][4]~0_combout\ <= NOT \matrix_ram[0][4]~0_combout\;
\ALT_INV_result_ram[0][15]~q\ <= NOT \result_ram[0][15]~q\;
\ALT_INV_result_ram[1][15]~q\ <= NOT \result_ram[1][15]~q\;
\ALT_INV_result_ram[2][15]~q\ <= NOT \result_ram[2][15]~q\;
\ALT_INV_result_ram[0][14]~q\ <= NOT \result_ram[0][14]~q\;
\ALT_INV_result_ram[1][14]~q\ <= NOT \result_ram[1][14]~q\;
\ALT_INV_result_ram[2][14]~q\ <= NOT \result_ram[2][14]~q\;
\ALT_INV_result_ram[0][13]~q\ <= NOT \result_ram[0][13]~q\;
\ALT_INV_result_ram[1][13]~q\ <= NOT \result_ram[1][13]~q\;
\ALT_INV_result_ram[2][13]~q\ <= NOT \result_ram[2][13]~q\;
\ALT_INV_result_ram[0][12]~q\ <= NOT \result_ram[0][12]~q\;
\ALT_INV_result_ram[1][12]~q\ <= NOT \result_ram[1][12]~q\;
\ALT_INV_result_ram[2][12]~q\ <= NOT \result_ram[2][12]~q\;
\ALT_INV_result_ram[0][11]~q\ <= NOT \result_ram[0][11]~q\;
\ALT_INV_result_ram[1][11]~q\ <= NOT \result_ram[1][11]~q\;
\ALT_INV_result_ram[2][11]~q\ <= NOT \result_ram[2][11]~q\;
\ALT_INV_result_ram[0][10]~q\ <= NOT \result_ram[0][10]~q\;
\ALT_INV_result_ram[1][10]~q\ <= NOT \result_ram[1][10]~q\;
\ALT_INV_result_ram[2][10]~q\ <= NOT \result_ram[2][10]~q\;
\ALT_INV_result_ram[0][9]~q\ <= NOT \result_ram[0][9]~q\;
\ALT_INV_result_ram[1][9]~q\ <= NOT \result_ram[1][9]~q\;
\ALT_INV_result_ram[2][9]~q\ <= NOT \result_ram[2][9]~q\;
\ALT_INV_result_ram[0][8]~q\ <= NOT \result_ram[0][8]~q\;
\ALT_INV_result_ram[1][8]~q\ <= NOT \result_ram[1][8]~q\;
\ALT_INV_result_ram[2][8]~q\ <= NOT \result_ram[2][8]~q\;
\ALT_INV_result_ram[0][7]~q\ <= NOT \result_ram[0][7]~q\;
\ALT_INV_result_ram[1][7]~q\ <= NOT \result_ram[1][7]~q\;
\ALT_INV_result_ram[2][7]~q\ <= NOT \result_ram[2][7]~q\;
\ALT_INV_result_ram[0][6]~q\ <= NOT \result_ram[0][6]~q\;
\ALT_INV_result_ram[1][6]~q\ <= NOT \result_ram[1][6]~q\;
\ALT_INV_result_ram[2][6]~q\ <= NOT \result_ram[2][6]~q\;
\ALT_INV_result_ram[0][5]~q\ <= NOT \result_ram[0][5]~q\;
\ALT_INV_result_ram[1][5]~q\ <= NOT \result_ram[1][5]~q\;
\ALT_INV_result_ram[2][5]~q\ <= NOT \result_ram[2][5]~q\;
\ALT_INV_result_ram[0][4]~q\ <= NOT \result_ram[0][4]~q\;
\ALT_INV_result_ram[1][4]~q\ <= NOT \result_ram[1][4]~q\;
\ALT_INV_result_ram[2][4]~q\ <= NOT \result_ram[2][4]~q\;
\ALT_INV_result_ram[0][3]~q\ <= NOT \result_ram[0][3]~q\;
\ALT_INV_result_ram[1][3]~q\ <= NOT \result_ram[1][3]~q\;
\ALT_INV_result_ram[2][3]~q\ <= NOT \result_ram[2][3]~q\;
\ALT_INV_result_ram[0][2]~q\ <= NOT \result_ram[0][2]~q\;
\ALT_INV_result_ram[1][2]~q\ <= NOT \result_ram[1][2]~q\;
\ALT_INV_result_ram[2][2]~q\ <= NOT \result_ram[2][2]~q\;
\ALT_INV_result_ram[0][1]~q\ <= NOT \result_ram[0][1]~q\;
\ALT_INV_result_ram[1][1]~q\ <= NOT \result_ram[1][1]~q\;
\ALT_INV_result_ram[2][1]~q\ <= NOT \result_ram[2][1]~q\;
\ALT_INV_result_data[8]~1_combout\ <= NOT \result_data[8]~1_combout\;
\ALT_INV_LessThan8~0_combout\ <= NOT \LessThan8~0_combout\;
\ALT_INV_result_ram[0][0]~q\ <= NOT \result_ram[0][0]~q\;
\ALT_INV_result_ram[1][0]~q\ <= NOT \result_ram[1][0]~q\;
\ALT_INV_result_ram[2][0]~q\ <= NOT \result_ram[2][0]~q\;
\ALT_INV_state.DONE_STATE~q\ <= NOT \state.DONE_STATE~q\;
\ALT_INV_state.CALCULATING~q\ <= NOT \state.CALCULATING~q\;
\ALT_INV_calc_done~reg0_q\ <= NOT \calc_done~reg0_q\;
\ALT_INV_vector_ram[0][7]~q\ <= NOT \vector_ram[0][7]~q\;
\ALT_INV_vector_ram[1][7]~q\ <= NOT \vector_ram[1][7]~q\;
\ALT_INV_vector_ram[2][7]~q\ <= NOT \vector_ram[2][7]~q\;
\ALT_INV_vector_ram[0][6]~q\ <= NOT \vector_ram[0][6]~q\;
\ALT_INV_vector_ram[1][6]~q\ <= NOT \vector_ram[1][6]~q\;
\ALT_INV_vector_ram[2][6]~q\ <= NOT \vector_ram[2][6]~q\;

-- Location: IOOBUF_X89_Y6_N5
\calc_done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \calc_done~reg0_q\,
	devoe => ww_devoe,
	o => ww_calc_done);

-- Location: IOOBUF_X89_Y4_N79
\result_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_data(0));

-- Location: IOOBUF_X89_Y6_N39
\result_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_data(1));

-- Location: IOOBUF_X80_Y0_N2
\result_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_data(2));

-- Location: IOOBUF_X89_Y9_N5
\result_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_data(3));

-- Location: IOOBUF_X89_Y4_N45
\result_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_data(4));

-- Location: IOOBUF_X89_Y9_N39
\result_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_data(5));

-- Location: IOOBUF_X80_Y0_N36
\result_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_data(6));

-- Location: IOOBUF_X80_Y0_N53
\result_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_data(7));

-- Location: IOOBUF_X89_Y9_N22
\result_data[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_data[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_data(8));

-- Location: IOOBUF_X89_Y25_N56
\result_data[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_data[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_data(9));

-- Location: IOOBUF_X89_Y6_N22
\result_data[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_data[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_data(10));

-- Location: IOOBUF_X89_Y6_N56
\result_data[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_data[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_data(11));

-- Location: IOOBUF_X78_Y0_N53
\result_data[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_data[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_data(12));

-- Location: IOOBUF_X80_Y0_N19
\result_data[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_data[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_data(13));

-- Location: IOOBUF_X89_Y21_N22
\result_data[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_data[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_data(14));

-- Location: IOOBUF_X89_Y9_N56
\result_data[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_data[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_data(15));

-- Location: IOOBUF_X89_Y8_N22
\result_valid~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_valid~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_valid);

-- Location: IOOBUF_X89_Y21_N39
\error~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \error_internal~q\,
	devoe => ww_devoe,
	o => ww_error);

-- Location: IOIBUF_X89_Y23_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G11
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y16_N55
\start_calc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_calc,
	o => \start_calc~input_o\);

-- Location: IOIBUF_X89_Y11_N44
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X81_Y14_N29
start_calc_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \start_calc~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_calc_prev~q\);

-- Location: MLABCELL_X82_Y14_N42
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( calc_step(0) & ( calc_step(1) & ( (!\state.CALCULATING~q\ & ((!\start_calc~input_o\) # (\start_calc_prev~q\))) ) ) ) # ( calc_step(0) & ( !calc_step(1) & ( (!\state.CALCULATING~q\ & ((!\start_calc~input_o\) # 
-- (\start_calc_prev~q\))) ) ) ) # ( !calc_step(0) & ( !calc_step(1) & ( \state.CALCULATING~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101100001011000000000000000000001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start_calc~input_o\,
	datab => \ALT_INV_start_calc_prev~q\,
	datac => \ALT_INV_state.CALCULATING~q\,
	datae => ALT_INV_calc_step(0),
	dataf => ALT_INV_calc_step(1),
	combout => \Selector6~0_combout\);

-- Location: FF_X82_Y14_N44
\calc_step[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \ALT_INV_state.DONE_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => calc_step(0));

-- Location: LABCELL_X83_Y14_N12
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.CALCULATING~q\ & (!calc_step(1) & !col_counter(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CALCULATING~q\,
	datab => ALT_INV_calc_step(1),
	datad => ALT_INV_col_counter(0),
	combout => \Selector4~0_combout\);

-- Location: MLABCELL_X82_Y14_N12
\Selector40~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector40~4_combout\ = ( \state.DONE_STATE~q\ & ( \start_calc~input_o\ ) ) # ( !\state.DONE_STATE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start_calc~input_o\,
	dataf => \ALT_INV_state.DONE_STATE~q\,
	combout => \Selector40~4_combout\);

-- Location: MLABCELL_X82_Y14_N15
\Selector40~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector40~3_combout\ = ( \start_calc_prev~q\ & ( !\Selector40~2_combout\ $ (((!\state.DONE_STATE~q\) # (\start_calc~input_o\))) ) ) # ( !\start_calc_prev~q\ & ( !\Selector40~2_combout\ $ (((!\start_calc~input_o\ & (!\state.DONE_STATE~q\)) # 
-- (\start_calc~input_o\ & ((\state.IDLE~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001010001101011100101000110100100010110111010010001011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start_calc~input_o\,
	datab => \ALT_INV_state.DONE_STATE~q\,
	datac => \ALT_INV_state.IDLE~q\,
	datad => \ALT_INV_Selector40~2_combout\,
	dataf => \ALT_INV_start_calc_prev~q\,
	combout => \Selector40~3_combout\);

-- Location: FF_X82_Y14_N14
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector40~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector40~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LABCELL_X83_Y14_N45
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( col_counter(1) & ( !calc_step(1) & ( (!col_counter(0) & \state.CALCULATING~q\) ) ) ) # ( !col_counter(1) & ( !calc_step(1) & ( (col_counter(0) & \state.CALCULATING~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_col_counter(0),
	datad => \ALT_INV_state.CALCULATING~q\,
	datae => ALT_INV_col_counter(1),
	dataf => ALT_INV_calc_step(1),
	combout => \Selector3~0_combout\);

-- Location: FF_X84_Y14_N38
\col_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector3~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \col_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => col_counter(1));

-- Location: LABCELL_X81_Y14_N51
\col_counter[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \col_counter[0]~1_combout\ = ( !calc_step(0) & ( col_counter(0) & ( !calc_step(1) ) ) ) # ( calc_step(0) & ( !col_counter(0) & ( (col_counter(1) & !calc_step(1)) ) ) ) # ( !calc_step(0) & ( !col_counter(0) & ( !calc_step(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100010001000100010011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_col_counter(1),
	datab => ALT_INV_calc_step(1),
	datae => ALT_INV_calc_step(0),
	dataf => ALT_INV_col_counter(0),
	combout => \col_counter[0]~1_combout\);

-- Location: LABCELL_X81_Y14_N45
\col_counter[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \col_counter[0]~2_combout\ = ( \start_calc~input_o\ & ( \col_counter[0]~1_combout\ & ( (!\state.IDLE~q\ & !\start_calc_prev~q\) ) ) ) # ( \start_calc~input_o\ & ( !\col_counter[0]~1_combout\ & ( ((!\state.IDLE~q\ & !\start_calc_prev~q\)) # 
-- (\state.CALCULATING~q\) ) ) ) # ( !\start_calc~input_o\ & ( !\col_counter[0]~1_combout\ & ( \state.CALCULATING~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111110011110000111100000000000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.IDLE~q\,
	datac => \ALT_INV_state.CALCULATING~q\,
	datad => \ALT_INV_start_calc_prev~q\,
	datae => \ALT_INV_start_calc~input_o\,
	dataf => \ALT_INV_col_counter[0]~1_combout\,
	combout => \col_counter[0]~2_combout\);

-- Location: FF_X84_Y14_N14
\col_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector4~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \col_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => col_counter(0));

-- Location: MLABCELL_X82_Y14_N36
\Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ( col_counter(1) & ( (\state.CALCULATING~q\ & (calc_step(0) & !col_counter(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CALCULATING~q\,
	datab => ALT_INV_calc_step(0),
	datac => ALT_INV_col_counter(0),
	dataf => ALT_INV_col_counter(1),
	combout => \Selector5~1_combout\);

-- Location: LABCELL_X83_Y14_N15
\row_counter[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \row_counter[1]~0_combout\ = (\state.CALCULATING~q\ & (calc_step(1) & ((!row_counter(1)) # (row_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000001000100010000000100010001000000010001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CALCULATING~q\,
	datab => ALT_INV_calc_step(1),
	datac => ALT_INV_row_counter(0),
	datad => ALT_INV_row_counter(1),
	combout => \row_counter[1]~0_combout\);

-- Location: MLABCELL_X84_Y14_N30
\row_counter[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \row_counter[0]~3_combout\ = ( row_counter(0) & ( \state.CALCULATING~q\ & ( (!\row_counter[1]~0_combout\ & (((!\start_calc~input_o\) # (\state.IDLE~q\)) # (\start_calc_prev~q\))) ) ) ) # ( !row_counter(0) & ( \state.CALCULATING~q\ & ( 
-- ((!\start_calc_prev~q\ & (\start_calc~input_o\ & !\state.IDLE~q\))) # (\row_counter[1]~0_combout\) ) ) ) # ( row_counter(0) & ( !\state.CALCULATING~q\ & ( (!\row_counter[1]~0_combout\ & (((!\start_calc~input_o\) # (\state.IDLE~q\)) # 
-- (\start_calc_prev~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111110000000000100000111111111101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start_calc_prev~q\,
	datab => \ALT_INV_start_calc~input_o\,
	datac => \ALT_INV_state.IDLE~q\,
	datad => \ALT_INV_row_counter[1]~0_combout\,
	datae => ALT_INV_row_counter(0),
	dataf => \ALT_INV_state.CALCULATING~q\,
	combout => \row_counter[0]~3_combout\);

-- Location: FF_X84_Y14_N32
\row_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \row_counter[0]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_counter(0));

-- Location: MLABCELL_X84_Y14_N27
\row_counter[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \row_counter[1]~1_combout\ = ( \state.CALCULATING~q\ & ( !row_counter(1) $ (!row_counter(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_row_counter(1),
	datab => ALT_INV_row_counter(0),
	dataf => \ALT_INV_state.CALCULATING~q\,
	combout => \row_counter[1]~1_combout\);

-- Location: MLABCELL_X84_Y14_N54
\row_counter[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \row_counter[1]~2_combout\ = ( row_counter(1) & ( \row_counter[1]~0_combout\ & ( \row_counter[1]~1_combout\ ) ) ) # ( !row_counter(1) & ( \row_counter[1]~0_combout\ & ( \row_counter[1]~1_combout\ ) ) ) # ( row_counter(1) & ( !\row_counter[1]~0_combout\ & 
-- ( ((!\start_calc~input_o\) # ((\row_counter[1]~1_combout\) # (\state.IDLE~q\))) # (\start_calc_prev~q\) ) ) ) # ( !row_counter(1) & ( !\row_counter[1]~0_combout\ & ( (!\start_calc_prev~q\ & (\start_calc~input_o\ & (!\state.IDLE~q\ & 
-- \row_counter[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000110111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start_calc_prev~q\,
	datab => \ALT_INV_start_calc~input_o\,
	datac => \ALT_INV_state.IDLE~q\,
	datad => \ALT_INV_row_counter[1]~1_combout\,
	datae => ALT_INV_row_counter(1),
	dataf => \ALT_INV_row_counter[1]~0_combout\,
	combout => \row_counter[1]~2_combout\);

-- Location: FF_X84_Y14_N56
\row_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \row_counter[1]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_counter(1));

-- Location: MLABCELL_X82_Y14_N39
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( !row_counter(0) & ( (\state.CALCULATING~q\ & (!calc_step(0) & row_counter(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CALCULATING~q\,
	datab => ALT_INV_calc_step(0),
	datac => ALT_INV_row_counter(1),
	dataf => ALT_INV_row_counter(0),
	combout => \Selector5~0_combout\);

-- Location: MLABCELL_X82_Y14_N18
\Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = ( calc_step(1) & ( \state.CALCULATING~q\ & ( (\Selector5~0_combout\) # (\Selector5~1_combout\) ) ) ) # ( !calc_step(1) & ( \state.CALCULATING~q\ & ( \Selector5~1_combout\ ) ) ) # ( calc_step(1) & ( !\state.CALCULATING~q\ & ( 
-- (((!\start_calc~input_o\) # (\Selector5~0_combout\)) # (\start_calc_prev~q\)) # (\Selector5~1_combout\) ) ) ) # ( !calc_step(1) & ( !\state.CALCULATING~q\ & ( \Selector5~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111101111111111101010101010101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector5~1_combout\,
	datab => \ALT_INV_start_calc_prev~q\,
	datac => \ALT_INV_start_calc~input_o\,
	datad => \ALT_INV_Selector5~0_combout\,
	datae => ALT_INV_calc_step(1),
	dataf => \ALT_INV_state.CALCULATING~q\,
	combout => \Selector5~2_combout\);

-- Location: FF_X82_Y14_N20
\calc_step[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \ALT_INV_state.DONE_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => calc_step(1));

-- Location: MLABCELL_X82_Y14_N48
\Selector40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = ( !row_counter(0) & ( (calc_step(1) & row_counter(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_calc_step(1),
	datab => ALT_INV_row_counter(1),
	dataf => ALT_INV_row_counter(0),
	combout => \Selector40~0_combout\);

-- Location: MLABCELL_X82_Y14_N54
\Selector40~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector40~1_combout\ = ( \state.CALCULATING~q\ & ( \state.IDLE~q\ & ( (!\Selector40~0_combout\ & ((!\state.DONE_STATE~q\) # (\start_calc~input_o\))) ) ) ) # ( \state.CALCULATING~q\ & ( !\state.IDLE~q\ & ( (!\Selector40~0_combout\ & 
-- ((!\state.DONE_STATE~q\) # (\start_calc~input_o\))) ) ) ) # ( !\state.CALCULATING~q\ & ( !\state.IDLE~q\ & ( (\start_calc~input_o\ & !\start_calc_prev~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100111100000101000000000000000000001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start_calc~input_o\,
	datab => \ALT_INV_start_calc_prev~q\,
	datac => \ALT_INV_Selector40~0_combout\,
	datad => \ALT_INV_state.DONE_STATE~q\,
	datae => \ALT_INV_state.CALCULATING~q\,
	dataf => \ALT_INV_state.IDLE~q\,
	combout => \Selector40~1_combout\);

-- Location: FF_X82_Y14_N56
\state.CALCULATING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector40~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.CALCULATING~q\);

-- Location: MLABCELL_X82_Y14_N6
\Selector40~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector40~2_combout\ = ( calc_step(1) & ( (\state.CALCULATING~q\ & (row_counter(1) & !row_counter(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CALCULATING~q\,
	datab => ALT_INV_row_counter(1),
	datac => ALT_INV_row_counter(0),
	dataf => ALT_INV_calc_step(1),
	combout => \Selector40~2_combout\);

-- Location: FF_X82_Y14_N17
\state.DONE_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector40~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector40~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.DONE_STATE~q\);

-- Location: MLABCELL_X82_Y14_N27
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \state.CALCULATING~q\ & ( (\calc_done~reg0_q\) # (\state.DONE_STATE~q\) ) ) # ( !\state.CALCULATING~q\ & ( \state.DONE_STATE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.DONE_STATE~q\,
	datad => \ALT_INV_calc_done~reg0_q\,
	dataf => \ALT_INV_state.CALCULATING~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X82_Y14_N28
\calc_done~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_done~reg0_q\);

-- Location: IOIBUF_X89_Y11_N95
\result_addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_addr(0),
	o => \result_addr[0]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\result_addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_addr(1),
	o => \result_addr[1]~input_o\);

-- Location: MLABCELL_X84_Y14_N51
\Add1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = ( row_counter(1) & ( (!row_counter(0) & ((!col_counter(1)))) # (row_counter(0) & (col_counter(0) & col_counter(1))) ) ) # ( !row_counter(1) & ( (row_counter(0) & ((col_counter(1)) # (col_counter(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001111001100000000111100110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_row_counter(0),
	datac => ALT_INV_col_counter(0),
	datad => ALT_INV_col_counter(1),
	dataf => ALT_INV_row_counter(1),
	combout => \Add1~3_combout\);

-- Location: MLABCELL_X84_Y14_N24
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (row_counter(1) & ((col_counter(1)) # (row_counter(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_row_counter(0),
	datac => ALT_INV_row_counter(1),
	datad => ALT_INV_col_counter(1),
	combout => \Add1~0_combout\);

-- Location: MLABCELL_X84_Y14_N48
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = ( col_counter(0) & ( !row_counter(0) ) ) # ( !col_counter(0) & ( row_counter(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_row_counter(0),
	dataf => ALT_INV_col_counter(0),
	combout => \Add1~1_combout\);

-- Location: IOIBUF_X89_Y13_N4
\load_data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(0),
	o => \load_data[0]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\load_matrix~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_matrix,
	o => \load_matrix~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\load_addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(2),
	o => \load_addr[2]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\load_addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(0),
	o => \load_addr[0]~input_o\);

-- Location: IOIBUF_X89_Y15_N55
\load_addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(3),
	o => \load_addr[3]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\load_addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(1),
	o => \load_addr[1]~input_o\);

-- Location: MLABCELL_X87_Y15_N33
\matrix_ram[0][4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[0][4]~1_combout\ = ( \load_addr[1]~input_o\ & ( (\load_matrix~input_o\ & !\load_addr[3]~input_o\) ) ) # ( !\load_addr[1]~input_o\ & ( (\load_matrix~input_o\ & ((!\load_addr[3]~input_o\) # ((!\load_addr[2]~input_o\ & !\load_addr[0]~input_o\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000000010101010100000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_matrix~input_o\,
	datab => \ALT_INV_load_addr[2]~input_o\,
	datac => \ALT_INV_load_addr[0]~input_o\,
	datad => \ALT_INV_load_addr[3]~input_o\,
	dataf => \ALT_INV_load_addr[1]~input_o\,
	combout => \matrix_ram[0][4]~1_combout\);

-- Location: MLABCELL_X87_Y15_N45
\matrix_ram[6][3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[6][3]~8_combout\ = (\load_addr[2]~input_o\ & \load_addr[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_load_addr[2]~input_o\,
	datac => \ALT_INV_load_addr[1]~input_o\,
	combout => \matrix_ram[6][3]~8_combout\);

-- Location: IOIBUF_X89_Y23_N55
\load_addr[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(6),
	o => \load_addr[6]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\load_enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_enable,
	o => \load_enable~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\load_addr[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(4),
	o => \load_addr[4]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\load_addr[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(5),
	o => \load_addr[5]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\load_addr[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_addr(7),
	o => \load_addr[7]~input_o\);

-- Location: MLABCELL_X87_Y15_N30
\error_internal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \error_internal~0_combout\ = ( \load_addr[1]~input_o\ & ( (!\load_addr[3]~input_o\ & (((!\load_addr[2]~input_o\ & !\load_addr[0]~input_o\)) # (\load_matrix~input_o\))) ) ) # ( !\load_addr[1]~input_o\ & ( (!\load_matrix~input_o\ & (!\load_addr[2]~input_o\ 
-- & ((!\load_addr[3]~input_o\)))) # (\load_matrix~input_o\ & ((!\load_addr[3]~input_o\) # ((!\load_addr[2]~input_o\ & !\load_addr[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110101000000110111010100000011010101000000001101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_matrix~input_o\,
	datab => \ALT_INV_load_addr[2]~input_o\,
	datac => \ALT_INV_load_addr[0]~input_o\,
	datad => \ALT_INV_load_addr[3]~input_o\,
	dataf => \ALT_INV_load_addr[1]~input_o\,
	combout => \error_internal~0_combout\);

-- Location: IOIBUF_X89_Y15_N21
\result_addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_addr(3),
	o => \result_addr[3]~input_o\);

-- Location: IOIBUF_X89_Y15_N38
\result_addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_addr(2),
	o => \result_addr[2]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\result_addr[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_addr(6),
	o => \result_addr[6]~input_o\);

-- Location: IOIBUF_X89_Y16_N21
\result_addr[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_addr(5),
	o => \result_addr[5]~input_o\);

-- Location: IOIBUF_X89_Y15_N4
\result_addr[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_addr(4),
	o => \result_addr[4]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\result_addr[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_addr(7),
	o => \result_addr[7]~input_o\);

-- Location: LABCELL_X88_Y15_N24
\LessThan8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = ( !\result_addr[4]~input_o\ & ( !\result_addr[7]~input_o\ & ( (!\result_addr[3]~input_o\ & (!\result_addr[2]~input_o\ & (!\result_addr[6]~input_o\ & !\result_addr[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_addr[3]~input_o\,
	datab => \ALT_INV_result_addr[2]~input_o\,
	datac => \ALT_INV_result_addr[6]~input_o\,
	datad => \ALT_INV_result_addr[5]~input_o\,
	datae => \ALT_INV_result_addr[4]~input_o\,
	dataf => \ALT_INV_result_addr[7]~input_o\,
	combout => \LessThan8~0_combout\);

-- Location: MLABCELL_X87_Y15_N18
\matrix_ram[0][4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[0][4]~0_combout\ = ( !\load_addr[4]~input_o\ & ( (!\load_addr[7]~input_o\ & (!\load_addr[5]~input_o\ & !\load_addr[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_addr[7]~input_o\,
	datac => \ALT_INV_load_addr[5]~input_o\,
	datad => \ALT_INV_load_addr[6]~input_o\,
	dataf => \ALT_INV_load_addr[4]~input_o\,
	combout => \matrix_ram[0][4]~0_combout\);

-- Location: MLABCELL_X87_Y15_N24
\error_internal~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \error_internal~1_combout\ = ( \LessThan8~0_combout\ & ( \matrix_ram[0][4]~0_combout\ & ( (!\result_addr[1]~input_o\ & (!\error_internal~0_combout\ & ((\load_enable~input_o\)))) # (\result_addr[1]~input_o\ & (((!\error_internal~0_combout\ & 
-- \load_enable~input_o\)) # (\result_addr[0]~input_o\))) ) ) ) # ( !\LessThan8~0_combout\ & ( \matrix_ram[0][4]~0_combout\ ) ) # ( \LessThan8~0_combout\ & ( !\matrix_ram[0][4]~0_combout\ & ( ((\result_addr[1]~input_o\ & \result_addr[0]~input_o\)) # 
-- (\load_enable~input_o\) ) ) ) # ( !\LessThan8~0_combout\ & ( !\matrix_ram[0][4]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001011111111111111111111111110000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_addr[1]~input_o\,
	datab => \ALT_INV_error_internal~0_combout\,
	datac => \ALT_INV_result_addr[0]~input_o\,
	datad => \ALT_INV_load_enable~input_o\,
	datae => \ALT_INV_LessThan8~0_combout\,
	dataf => \ALT_INV_matrix_ram[0][4]~0_combout\,
	combout => \error_internal~1_combout\);

-- Location: FF_X87_Y15_N26
error_internal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \error_internal~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_internal~q\);

-- Location: MLABCELL_X87_Y15_N6
\matrix_ram[0][4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[0][4]~4_combout\ = ( !\load_addr[7]~input_o\ & ( !\error_internal~q\ & ( (!\load_addr[6]~input_o\ & (\load_enable~input_o\ & (!\load_addr[4]~input_o\ & !\load_addr[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_addr[6]~input_o\,
	datab => \ALT_INV_load_enable~input_o\,
	datac => \ALT_INV_load_addr[4]~input_o\,
	datad => \ALT_INV_load_addr[5]~input_o\,
	datae => \ALT_INV_load_addr[7]~input_o\,
	dataf => \ALT_INV_error_internal~q\,
	combout => \matrix_ram[0][4]~4_combout\);

-- Location: LABCELL_X85_Y15_N54
\matrix_ram[7][0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[7][0]~10_combout\ = ( \load_addr[0]~input_o\ & ( \matrix_ram[0][4]~4_combout\ & ( ((\matrix_ram[0][4]~1_combout\ & (!\load_addr[3]~input_o\ & \matrix_ram[6][3]~8_combout\))) # (\rst~input_o\) ) ) ) # ( !\load_addr[0]~input_o\ & ( 
-- \matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) ) # ( \load_addr[0]~input_o\ & ( !\matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) ) # ( !\load_addr[0]~input_o\ & ( !\matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[0][4]~1_combout\,
	datab => \ALT_INV_load_addr[3]~input_o\,
	datac => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_matrix_ram[6][3]~8_combout\,
	datae => \ALT_INV_load_addr[0]~input_o\,
	dataf => \ALT_INV_matrix_ram[0][4]~4_combout\,
	combout => \matrix_ram[7][0]~10_combout\);

-- Location: FF_X84_Y14_N28
\matrix_ram[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[0]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[7][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[7][0]~q\);

-- Location: MLABCELL_X84_Y14_N15
\Add1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = ( col_counter(1) & ( row_counter(0) & ( !col_counter(0) $ (!row_counter(1)) ) ) ) # ( !col_counter(1) & ( row_counter(0) & ( !col_counter(0) $ (row_counter(1)) ) ) ) # ( col_counter(1) & ( !row_counter(0) & ( !row_counter(1) ) ) ) # ( 
-- !col_counter(1) & ( !row_counter(0) & ( row_counter(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011110000000011110000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_col_counter(0),
	datad => ALT_INV_row_counter(1),
	datae => ALT_INV_col_counter(1),
	dataf => ALT_INV_row_counter(0),
	combout => \Add1~2_combout\);

-- Location: MLABCELL_X87_Y15_N42
\matrix_ram[4][3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[4][3]~5_combout\ = ( !\load_addr[1]~input_o\ & ( \load_addr[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_load_addr[2]~input_o\,
	dataf => \ALT_INV_load_addr[1]~input_o\,
	combout => \matrix_ram[4][3]~5_combout\);

-- Location: LABCELL_X85_Y15_N27
\matrix_ram[4][3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[4][3]~6_combout\ = ( \matrix_ram[4][3]~5_combout\ & ( \matrix_ram[0][4]~4_combout\ & ( ((\matrix_ram[0][4]~1_combout\ & (!\load_addr[3]~input_o\ & !\load_addr[0]~input_o\))) # (\rst~input_o\) ) ) ) # ( !\matrix_ram[4][3]~5_combout\ & ( 
-- \matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) ) # ( \matrix_ram[4][3]~5_combout\ & ( !\matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) ) # ( !\matrix_ram[4][3]~5_combout\ & ( !\matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[0][4]~1_combout\,
	datab => \ALT_INV_rst~input_o\,
	datac => \ALT_INV_load_addr[3]~input_o\,
	datad => \ALT_INV_load_addr[0]~input_o\,
	datae => \ALT_INV_matrix_ram[4][3]~5_combout\,
	dataf => \ALT_INV_matrix_ram[0][4]~4_combout\,
	combout => \matrix_ram[4][3]~6_combout\);

-- Location: FF_X85_Y13_N47
\matrix_ram[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[0]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[4][3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[4][0]~q\);

-- Location: LABCELL_X85_Y15_N30
\matrix_ram[6][3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[6][3]~9_combout\ = ( \load_addr[0]~input_o\ & ( \matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) ) # ( !\load_addr[0]~input_o\ & ( \matrix_ram[0][4]~4_combout\ & ( ((\matrix_ram[0][4]~1_combout\ & (\matrix_ram[6][3]~8_combout\ & 
-- !\load_addr[3]~input_o\))) # (\rst~input_o\) ) ) ) # ( \load_addr[0]~input_o\ & ( !\matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) ) # ( !\load_addr[0]~input_o\ & ( !\matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100011111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[0][4]~1_combout\,
	datab => \ALT_INV_matrix_ram[6][3]~8_combout\,
	datac => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_load_addr[3]~input_o\,
	datae => \ALT_INV_load_addr[0]~input_o\,
	dataf => \ALT_INV_matrix_ram[0][4]~4_combout\,
	combout => \matrix_ram[6][3]~9_combout\);

-- Location: FF_X85_Y15_N44
\matrix_ram[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[0]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[6][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[6][0]~q\);

-- Location: LABCELL_X85_Y13_N51
\matrix_ram[5][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[5][0]~feeder_combout\ = ( \load_data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[0]~input_o\,
	combout => \matrix_ram[5][0]~feeder_combout\);

-- Location: MLABCELL_X87_Y15_N51
\matrix_ram[5][5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[5][5]~7_combout\ = ( \matrix_ram[4][3]~5_combout\ & ( \matrix_ram[0][4]~1_combout\ & ( ((!\load_addr[3]~input_o\ & (\matrix_ram[0][4]~4_combout\ & \load_addr[0]~input_o\))) # (\rst~input_o\) ) ) ) # ( !\matrix_ram[4][3]~5_combout\ & ( 
-- \matrix_ram[0][4]~1_combout\ & ( \rst~input_o\ ) ) ) # ( \matrix_ram[4][3]~5_combout\ & ( !\matrix_ram[0][4]~1_combout\ & ( \rst~input_o\ ) ) ) # ( !\matrix_ram[4][3]~5_combout\ & ( !\matrix_ram[0][4]~1_combout\ & ( \rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_addr[3]~input_o\,
	datab => \ALT_INV_matrix_ram[0][4]~4_combout\,
	datac => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_load_addr[0]~input_o\,
	datae => \ALT_INV_matrix_ram[4][3]~5_combout\,
	dataf => \ALT_INV_matrix_ram[0][4]~1_combout\,
	combout => \matrix_ram[5][5]~7_combout\);

-- Location: FF_X85_Y13_N53
\matrix_ram[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \matrix_ram[5][0]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \matrix_ram[5][5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[5][0]~q\);

-- Location: MLABCELL_X84_Y14_N21
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \matrix_ram[6][0]~q\ & ( \matrix_ram[5][0]~q\ & ( (!\Add1~1_combout\ & (((\matrix_ram[4][0]~q\) # (\Add1~2_combout\)))) # (\Add1~1_combout\ & (((!\Add1~2_combout\)) # (\matrix_ram[7][0]~q\))) ) ) ) # ( !\matrix_ram[6][0]~q\ & ( 
-- \matrix_ram[5][0]~q\ & ( (!\Add1~1_combout\ & (((!\Add1~2_combout\ & \matrix_ram[4][0]~q\)))) # (\Add1~1_combout\ & (((!\Add1~2_combout\)) # (\matrix_ram[7][0]~q\))) ) ) ) # ( \matrix_ram[6][0]~q\ & ( !\matrix_ram[5][0]~q\ & ( (!\Add1~1_combout\ & 
-- (((\matrix_ram[4][0]~q\) # (\Add1~2_combout\)))) # (\Add1~1_combout\ & (\matrix_ram[7][0]~q\ & (\Add1~2_combout\))) ) ) ) # ( !\matrix_ram[6][0]~q\ & ( !\matrix_ram[5][0]~q\ & ( (!\Add1~1_combout\ & (((!\Add1~2_combout\ & \matrix_ram[4][0]~q\)))) # 
-- (\Add1~1_combout\ & (\matrix_ram[7][0]~q\ & (\Add1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000010111010101101010001111100010101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_combout\,
	datab => \ALT_INV_matrix_ram[7][0]~q\,
	datac => \ALT_INV_Add1~2_combout\,
	datad => \ALT_INV_matrix_ram[4][0]~q\,
	datae => \ALT_INV_matrix_ram[6][0]~q\,
	dataf => \ALT_INV_matrix_ram[5][0]~q\,
	combout => \Mux7~0_combout\);

-- Location: MLABCELL_X87_Y15_N54
\matrix_ram[8][3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[8][3]~2_combout\ = (\load_addr[3]~input_o\ & (!\load_addr[1]~input_o\ & (!\load_addr[0]~input_o\ & !\load_addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_addr[3]~input_o\,
	datab => \ALT_INV_load_addr[1]~input_o\,
	datac => \ALT_INV_load_addr[0]~input_o\,
	datad => \ALT_INV_load_addr[2]~input_o\,
	combout => \matrix_ram[8][3]~2_combout\);

-- Location: MLABCELL_X87_Y15_N0
\matrix_ram[8][3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[8][3]~3_combout\ = ( \matrix_ram[8][3]~2_combout\ & ( \matrix_ram[0][4]~1_combout\ & ( ((\matrix_ram[0][4]~0_combout\ & (!\error_internal~q\ & \load_enable~input_o\))) # (\rst~input_o\) ) ) ) # ( !\matrix_ram[8][3]~2_combout\ & ( 
-- \matrix_ram[0][4]~1_combout\ & ( \rst~input_o\ ) ) ) # ( \matrix_ram[8][3]~2_combout\ & ( !\matrix_ram[0][4]~1_combout\ & ( \rst~input_o\ ) ) ) # ( !\matrix_ram[8][3]~2_combout\ & ( !\matrix_ram[0][4]~1_combout\ & ( \rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[0][4]~0_combout\,
	datab => \ALT_INV_rst~input_o\,
	datac => \ALT_INV_error_internal~q\,
	datad => \ALT_INV_load_enable~input_o\,
	datae => \ALT_INV_matrix_ram[8][3]~2_combout\,
	dataf => \ALT_INV_matrix_ram[0][4]~1_combout\,
	combout => \matrix_ram[8][3]~3_combout\);

-- Location: FF_X85_Y14_N11
\matrix_ram[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[0]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[8][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[8][0]~q\);

-- Location: MLABCELL_X87_Y15_N39
\matrix_ram[1][2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[1][2]~11_combout\ = (!\load_addr[2]~input_o\ & !\load_addr[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_load_addr[2]~input_o\,
	datac => \ALT_INV_load_addr[1]~input_o\,
	combout => \matrix_ram[1][2]~11_combout\);

-- Location: MLABCELL_X87_Y15_N12
\matrix_ram[0][4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[0][4]~12_combout\ = ( \matrix_ram[1][2]~11_combout\ & ( \matrix_ram[0][4]~4_combout\ & ( ((!\load_addr[3]~input_o\ & (!\load_addr[0]~input_o\ & \load_matrix~input_o\))) # (\rst~input_o\) ) ) ) # ( !\matrix_ram[1][2]~11_combout\ & ( 
-- \matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) ) # ( \matrix_ram[1][2]~11_combout\ & ( !\matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) ) # ( !\matrix_ram[1][2]~11_combout\ & ( !\matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_addr[3]~input_o\,
	datab => \ALT_INV_load_addr[0]~input_o\,
	datac => \ALT_INV_load_matrix~input_o\,
	datad => \ALT_INV_rst~input_o\,
	datae => \ALT_INV_matrix_ram[1][2]~11_combout\,
	dataf => \ALT_INV_matrix_ram[0][4]~4_combout\,
	combout => \matrix_ram[0][4]~12_combout\);

-- Location: FF_X84_Y15_N40
\matrix_ram[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[0]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[0][4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[0][0]~q\);

-- Location: LABCELL_X83_Y15_N24
\matrix_ram[2][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[2][0]~feeder_combout\ = ( \load_data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[0]~input_o\,
	combout => \matrix_ram[2][0]~feeder_combout\);

-- Location: MLABCELL_X87_Y15_N36
\matrix_ram[2][5]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[2][5]~14_combout\ = ( \load_addr[1]~input_o\ & ( !\load_addr[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_load_addr[2]~input_o\,
	dataf => \ALT_INV_load_addr[1]~input_o\,
	combout => \matrix_ram[2][5]~14_combout\);

-- Location: LABCELL_X85_Y15_N51
\matrix_ram[2][5]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[2][5]~15_combout\ = ( \load_addr[0]~input_o\ & ( \matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) ) # ( !\load_addr[0]~input_o\ & ( \matrix_ram[0][4]~4_combout\ & ( ((\matrix_ram[2][5]~14_combout\ & (!\load_addr[3]~input_o\ & 
-- \matrix_ram[0][4]~1_combout\))) # (\rst~input_o\) ) ) ) # ( \load_addr[0]~input_o\ & ( !\matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) ) # ( !\load_addr[0]~input_o\ & ( !\matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011011100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[2][5]~14_combout\,
	datab => \ALT_INV_rst~input_o\,
	datac => \ALT_INV_load_addr[3]~input_o\,
	datad => \ALT_INV_matrix_ram[0][4]~1_combout\,
	datae => \ALT_INV_load_addr[0]~input_o\,
	dataf => \ALT_INV_matrix_ram[0][4]~4_combout\,
	combout => \matrix_ram[2][5]~15_combout\);

-- Location: FF_X83_Y15_N25
\matrix_ram[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \matrix_ram[2][0]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \matrix_ram[2][5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[2][0]~q\);

-- Location: MLABCELL_X87_Y15_N48
\matrix_ram[1][2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[1][2]~13_combout\ = ( \matrix_ram[1][2]~11_combout\ & ( \load_matrix~input_o\ & ( ((!\load_addr[3]~input_o\ & (\matrix_ram[0][4]~4_combout\ & \load_addr[0]~input_o\))) # (\rst~input_o\) ) ) ) # ( !\matrix_ram[1][2]~11_combout\ & ( 
-- \load_matrix~input_o\ & ( \rst~input_o\ ) ) ) # ( \matrix_ram[1][2]~11_combout\ & ( !\load_matrix~input_o\ & ( \rst~input_o\ ) ) ) # ( !\matrix_ram[1][2]~11_combout\ & ( !\load_matrix~input_o\ & ( \rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_addr[3]~input_o\,
	datab => \ALT_INV_matrix_ram[0][4]~4_combout\,
	datac => \ALT_INV_load_addr[0]~input_o\,
	datad => \ALT_INV_rst~input_o\,
	datae => \ALT_INV_matrix_ram[1][2]~11_combout\,
	dataf => \ALT_INV_load_matrix~input_o\,
	combout => \matrix_ram[1][2]~13_combout\);

-- Location: FF_X84_Y15_N17
\matrix_ram[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[0]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[1][2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[1][0]~q\);

-- Location: LABCELL_X85_Y15_N3
\matrix_ram[3][5]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[3][5]~16_combout\ = ( \load_addr[0]~input_o\ & ( \matrix_ram[0][4]~4_combout\ & ( ((\matrix_ram[0][4]~1_combout\ & (!\load_addr[3]~input_o\ & \matrix_ram[2][5]~14_combout\))) # (\rst~input_o\) ) ) ) # ( !\load_addr[0]~input_o\ & ( 
-- \matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) ) # ( \load_addr[0]~input_o\ & ( !\matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) ) # ( !\load_addr[0]~input_o\ & ( !\matrix_ram[0][4]~4_combout\ & ( \rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[0][4]~1_combout\,
	datab => \ALT_INV_load_addr[3]~input_o\,
	datac => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_matrix_ram[2][5]~14_combout\,
	datae => \ALT_INV_load_addr[0]~input_o\,
	dataf => \ALT_INV_matrix_ram[0][4]~4_combout\,
	combout => \matrix_ram[3][5]~16_combout\);

-- Location: FF_X84_Y15_N7
\matrix_ram[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[0]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[3][5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[3][0]~q\);

-- Location: MLABCELL_X84_Y15_N9
\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \Add1~1_combout\ & ( \Add1~2_combout\ & ( \matrix_ram[3][0]~q\ ) ) ) # ( !\Add1~1_combout\ & ( \Add1~2_combout\ & ( \matrix_ram[2][0]~q\ ) ) ) # ( \Add1~1_combout\ & ( !\Add1~2_combout\ & ( \matrix_ram[1][0]~q\ ) ) ) # ( 
-- !\Add1~1_combout\ & ( !\Add1~2_combout\ & ( \matrix_ram[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[0][0]~q\,
	datab => \ALT_INV_matrix_ram[2][0]~q\,
	datac => \ALT_INV_matrix_ram[1][0]~q\,
	datad => \ALT_INV_matrix_ram[3][0]~q\,
	datae => \ALT_INV_Add1~1_combout\,
	dataf => \ALT_INV_Add1~2_combout\,
	combout => \Mux7~1_combout\);

-- Location: LABCELL_X85_Y14_N9
\Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( \matrix_ram[8][0]~q\ & ( \Mux7~1_combout\ & ( (!\Add1~3_combout\) # ((\Mux7~0_combout\) # (\Add1~0_combout\)) ) ) ) # ( !\matrix_ram[8][0]~q\ & ( \Mux7~1_combout\ & ( (!\Add1~0_combout\ & ((!\Add1~3_combout\) # (\Mux7~0_combout\))) ) 
-- ) ) # ( \matrix_ram[8][0]~q\ & ( !\Mux7~1_combout\ & ( ((\Add1~3_combout\ & \Mux7~0_combout\)) # (\Add1~0_combout\) ) ) ) # ( !\matrix_ram[8][0]~q\ & ( !\Mux7~1_combout\ & ( (\Add1~3_combout\ & (!\Add1~0_combout\ & \Mux7~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000011110101111110100000111100001010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~3_combout\,
	datac => \ALT_INV_Add1~0_combout\,
	datad => \ALT_INV_Mux7~0_combout\,
	datae => \ALT_INV_matrix_ram[8][0]~q\,
	dataf => \ALT_INV_Mux7~1_combout\,
	combout => \Mux7~2_combout\);

-- Location: IOIBUF_X89_Y13_N38
\load_data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(1),
	o => \load_data[1]~input_o\);

-- Location: FF_X85_Y14_N32
\matrix_ram[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[1]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[8][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[8][1]~q\);

-- Location: FF_X85_Y14_N38
\matrix_ram[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[1]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[2][5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[2][1]~q\);

-- Location: FF_X85_Y14_N55
\matrix_ram[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[1]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[3][5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[3][1]~q\);

-- Location: MLABCELL_X84_Y15_N12
\matrix_ram[1][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[1][1]~feeder_combout\ = ( \load_data[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[1]~input_o\,
	combout => \matrix_ram[1][1]~feeder_combout\);

-- Location: FF_X84_Y15_N13
\matrix_ram[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \matrix_ram[1][1]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \matrix_ram[1][2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[1][1]~q\);

-- Location: MLABCELL_X84_Y15_N48
\matrix_ram[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[0][1]~feeder_combout\ = ( \load_data[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[1]~input_o\,
	combout => \matrix_ram[0][1]~feeder_combout\);

-- Location: FF_X84_Y15_N49
\matrix_ram[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \matrix_ram[0][1]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \matrix_ram[0][4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[0][1]~q\);

-- Location: LABCELL_X85_Y14_N3
\Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \matrix_ram[0][1]~q\ & ( \Add1~1_combout\ & ( (!\Add1~2_combout\ & ((\matrix_ram[1][1]~q\))) # (\Add1~2_combout\ & (\matrix_ram[3][1]~q\)) ) ) ) # ( !\matrix_ram[0][1]~q\ & ( \Add1~1_combout\ & ( (!\Add1~2_combout\ & 
-- ((\matrix_ram[1][1]~q\))) # (\Add1~2_combout\ & (\matrix_ram[3][1]~q\)) ) ) ) # ( \matrix_ram[0][1]~q\ & ( !\Add1~1_combout\ & ( (!\Add1~2_combout\) # (\matrix_ram[2][1]~q\) ) ) ) # ( !\matrix_ram[0][1]~q\ & ( !\Add1~1_combout\ & ( (\matrix_ram[2][1]~q\ & 
-- \Add1~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[2][1]~q\,
	datab => \ALT_INV_matrix_ram[3][1]~q\,
	datac => \ALT_INV_Add1~2_combout\,
	datad => \ALT_INV_matrix_ram[1][1]~q\,
	datae => \ALT_INV_matrix_ram[0][1]~q\,
	dataf => \ALT_INV_Add1~1_combout\,
	combout => \Mux6~1_combout\);

-- Location: FF_X84_Y14_N2
\matrix_ram[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[1]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[7][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[7][1]~q\);

-- Location: FF_X85_Y13_N38
\matrix_ram[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[1]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[4][3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[4][1]~q\);

-- Location: FF_X85_Y15_N31
\matrix_ram[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[1]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[6][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[6][1]~q\);

-- Location: LABCELL_X85_Y13_N54
\matrix_ram[5][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[5][1]~feeder_combout\ = ( \load_data[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[1]~input_o\,
	combout => \matrix_ram[5][1]~feeder_combout\);

-- Location: FF_X85_Y13_N56
\matrix_ram[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \matrix_ram[5][1]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \matrix_ram[5][5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[5][1]~q\);

-- Location: MLABCELL_X84_Y14_N39
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \matrix_ram[5][1]~q\ & ( \Add1~1_combout\ & ( (!\Add1~2_combout\) # (\matrix_ram[7][1]~q\) ) ) ) # ( !\matrix_ram[5][1]~q\ & ( \Add1~1_combout\ & ( (\matrix_ram[7][1]~q\ & \Add1~2_combout\) ) ) ) # ( \matrix_ram[5][1]~q\ & ( 
-- !\Add1~1_combout\ & ( (!\Add1~2_combout\ & (\matrix_ram[4][1]~q\)) # (\Add1~2_combout\ & ((\matrix_ram[6][1]~q\))) ) ) ) # ( !\matrix_ram[5][1]~q\ & ( !\Add1~1_combout\ & ( (!\Add1~2_combout\ & (\matrix_ram[4][1]~q\)) # (\Add1~2_combout\ & 
-- ((\matrix_ram[6][1]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[7][1]~q\,
	datab => \ALT_INV_matrix_ram[4][1]~q\,
	datac => \ALT_INV_Add1~2_combout\,
	datad => \ALT_INV_matrix_ram[6][1]~q\,
	datae => \ALT_INV_matrix_ram[5][1]~q\,
	dataf => \ALT_INV_Add1~1_combout\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X85_Y14_N39
\Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \Mux6~0_combout\ & ( (!\Add1~0_combout\ & (((\Mux6~1_combout\)) # (\Add1~3_combout\))) # (\Add1~0_combout\ & (((\matrix_ram[8][1]~q\)))) ) ) # ( !\Mux6~0_combout\ & ( (!\Add1~0_combout\ & (!\Add1~3_combout\ & ((\Mux6~1_combout\)))) # 
-- (\Add1~0_combout\ & (((\matrix_ram[8][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~3_combout\,
	datab => \ALT_INV_Add1~0_combout\,
	datac => \ALT_INV_matrix_ram[8][1]~q\,
	datad => \ALT_INV_Mux6~1_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux6~2_combout\);

-- Location: IOIBUF_X89_Y16_N38
\load_data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(2),
	o => \load_data[2]~input_o\);

-- Location: FF_X85_Y15_N38
\matrix_ram[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[2]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[8][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[8][2]~q\);

-- Location: FF_X85_Y15_N26
\matrix_ram[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[2]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[6][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[6][2]~q\);

-- Location: FF_X87_Y15_N17
\matrix_ram[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[2]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[4][3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[4][2]~q\);

-- Location: FF_X85_Y15_N2
\matrix_ram[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[2]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[7][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[7][2]~q\);

-- Location: FF_X87_Y15_N11
\matrix_ram[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[2]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[5][5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[5][2]~q\);

-- Location: LABCELL_X85_Y15_N21
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \matrix_ram[5][2]~q\ & ( \Add1~1_combout\ & ( (!\Add1~2_combout\) # (\matrix_ram[7][2]~q\) ) ) ) # ( !\matrix_ram[5][2]~q\ & ( \Add1~1_combout\ & ( (\Add1~2_combout\ & \matrix_ram[7][2]~q\) ) ) ) # ( \matrix_ram[5][2]~q\ & ( 
-- !\Add1~1_combout\ & ( (!\Add1~2_combout\ & ((\matrix_ram[4][2]~q\))) # (\Add1~2_combout\ & (\matrix_ram[6][2]~q\)) ) ) ) # ( !\matrix_ram[5][2]~q\ & ( !\Add1~1_combout\ & ( (!\Add1~2_combout\ & ((\matrix_ram[4][2]~q\))) # (\Add1~2_combout\ & 
-- (\matrix_ram[6][2]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[6][2]~q\,
	datab => \ALT_INV_matrix_ram[4][2]~q\,
	datac => \ALT_INV_Add1~2_combout\,
	datad => \ALT_INV_matrix_ram[7][2]~q\,
	datae => \ALT_INV_matrix_ram[5][2]~q\,
	dataf => \ALT_INV_Add1~1_combout\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X83_Y15_N42
\matrix_ram[2][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[2][2]~feeder_combout\ = ( \load_data[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[2]~input_o\,
	combout => \matrix_ram[2][2]~feeder_combout\);

-- Location: FF_X83_Y15_N43
\matrix_ram[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \matrix_ram[2][2]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \matrix_ram[2][5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[2][2]~q\);

-- Location: FF_X84_Y15_N59
\matrix_ram[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[2]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[1][2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[1][2]~q\);

-- Location: FF_X84_Y15_N44
\matrix_ram[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[2]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[3][5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[3][2]~q\);

-- Location: FF_X84_Y15_N20
\matrix_ram[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[2]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[0][4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[0][2]~q\);

-- Location: MLABCELL_X84_Y15_N45
\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \Add1~2_combout\ & ( \Add1~1_combout\ & ( \matrix_ram[3][2]~q\ ) ) ) # ( !\Add1~2_combout\ & ( \Add1~1_combout\ & ( \matrix_ram[1][2]~q\ ) ) ) # ( \Add1~2_combout\ & ( !\Add1~1_combout\ & ( \matrix_ram[2][2]~q\ ) ) ) # ( 
-- !\Add1~2_combout\ & ( !\Add1~1_combout\ & ( \matrix_ram[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[2][2]~q\,
	datab => \ALT_INV_matrix_ram[1][2]~q\,
	datac => \ALT_INV_matrix_ram[3][2]~q\,
	datad => \ALT_INV_matrix_ram[0][2]~q\,
	datae => \ALT_INV_Add1~2_combout\,
	dataf => \ALT_INV_Add1~1_combout\,
	combout => \Mux5~1_combout\);

-- Location: LABCELL_X85_Y15_N39
\Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \Mux5~0_combout\ & ( \Mux5~1_combout\ & ( (!\Add1~0_combout\) # (\matrix_ram[8][2]~q\) ) ) ) # ( !\Mux5~0_combout\ & ( \Mux5~1_combout\ & ( (!\Add1~0_combout\ & ((!\Add1~3_combout\))) # (\Add1~0_combout\ & (\matrix_ram[8][2]~q\)) ) ) 
-- ) # ( \Mux5~0_combout\ & ( !\Mux5~1_combout\ & ( (!\Add1~0_combout\ & ((\Add1~3_combout\))) # (\Add1~0_combout\ & (\matrix_ram[8][2]~q\)) ) ) ) # ( !\Mux5~0_combout\ & ( !\Mux5~1_combout\ & ( (\matrix_ram[8][2]~q\ & \Add1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001011111010111110101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[8][2]~q\,
	datac => \ALT_INV_Add1~0_combout\,
	datad => \ALT_INV_Add1~3_combout\,
	datae => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_Mux5~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: IOIBUF_X89_Y13_N21
\load_data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(3),
	o => \load_data[3]~input_o\);

-- Location: FF_X85_Y14_N26
\matrix_ram[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[3]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[3][5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[3][3]~q\);

-- Location: FF_X85_Y14_N41
\matrix_ram[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[3]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[2][5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[2][3]~q\);

-- Location: FF_X84_Y15_N35
\matrix_ram[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[3]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[1][2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[1][3]~q\);

-- Location: FF_X84_Y15_N52
\matrix_ram[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[3]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[0][4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[0][3]~q\);

-- Location: LABCELL_X85_Y14_N15
\Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \Add1~1_combout\ & ( \matrix_ram[0][3]~q\ & ( (!\Add1~2_combout\ & ((\matrix_ram[1][3]~q\))) # (\Add1~2_combout\ & (\matrix_ram[3][3]~q\)) ) ) ) # ( !\Add1~1_combout\ & ( \matrix_ram[0][3]~q\ & ( (!\Add1~2_combout\) # 
-- (\matrix_ram[2][3]~q\) ) ) ) # ( \Add1~1_combout\ & ( !\matrix_ram[0][3]~q\ & ( (!\Add1~2_combout\ & ((\matrix_ram[1][3]~q\))) # (\Add1~2_combout\ & (\matrix_ram[3][3]~q\)) ) ) ) # ( !\Add1~1_combout\ & ( !\matrix_ram[0][3]~q\ & ( (\matrix_ram[2][3]~q\ & 
-- \Add1~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[3][3]~q\,
	datab => \ALT_INV_matrix_ram[2][3]~q\,
	datac => \ALT_INV_Add1~2_combout\,
	datad => \ALT_INV_matrix_ram[1][3]~q\,
	datae => \ALT_INV_Add1~1_combout\,
	dataf => \ALT_INV_matrix_ram[0][3]~q\,
	combout => \Mux4~1_combout\);

-- Location: FF_X85_Y14_N35
\matrix_ram[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[3]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[8][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[8][3]~q\);

-- Location: FF_X85_Y15_N20
\matrix_ram[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[3]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[6][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[6][3]~q\);

-- Location: FF_X84_Y14_N44
\matrix_ram[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[3]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[7][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[7][3]~q\);

-- Location: LABCELL_X85_Y13_N18
\matrix_ram[4][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[4][3]~feeder_combout\ = ( \load_data[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[3]~input_o\,
	combout => \matrix_ram[4][3]~feeder_combout\);

-- Location: FF_X85_Y13_N19
\matrix_ram[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \matrix_ram[4][3]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \matrix_ram[4][3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[4][3]~q\);

-- Location: LABCELL_X85_Y13_N24
\matrix_ram[5][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[5][3]~feeder_combout\ = ( \load_data[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[3]~input_o\,
	combout => \matrix_ram[5][3]~feeder_combout\);

-- Location: FF_X85_Y13_N26
\matrix_ram[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \matrix_ram[5][3]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \matrix_ram[5][5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[5][3]~q\);

-- Location: MLABCELL_X84_Y14_N45
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \matrix_ram[4][3]~q\ & ( \matrix_ram[5][3]~q\ & ( (!\Add1~2_combout\) # ((!\Add1~1_combout\ & (\matrix_ram[6][3]~q\)) # (\Add1~1_combout\ & ((\matrix_ram[7][3]~q\)))) ) ) ) # ( !\matrix_ram[4][3]~q\ & ( \matrix_ram[5][3]~q\ & ( 
-- (!\Add1~2_combout\ & (((\Add1~1_combout\)))) # (\Add1~2_combout\ & ((!\Add1~1_combout\ & (\matrix_ram[6][3]~q\)) # (\Add1~1_combout\ & ((\matrix_ram[7][3]~q\))))) ) ) ) # ( \matrix_ram[4][3]~q\ & ( !\matrix_ram[5][3]~q\ & ( (!\Add1~2_combout\ & 
-- (((!\Add1~1_combout\)))) # (\Add1~2_combout\ & ((!\Add1~1_combout\ & (\matrix_ram[6][3]~q\)) # (\Add1~1_combout\ & ((\matrix_ram[7][3]~q\))))) ) ) ) # ( !\matrix_ram[4][3]~q\ & ( !\matrix_ram[5][3]~q\ & ( (\Add1~2_combout\ & ((!\Add1~1_combout\ & 
-- (\matrix_ram[6][3]~q\)) # (\Add1~1_combout\ & ((\matrix_ram[7][3]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111101010000001100000101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[6][3]~q\,
	datab => \ALT_INV_matrix_ram[7][3]~q\,
	datac => \ALT_INV_Add1~2_combout\,
	datad => \ALT_INV_Add1~1_combout\,
	datae => \ALT_INV_matrix_ram[4][3]~q\,
	dataf => \ALT_INV_matrix_ram[5][3]~q\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X85_Y14_N33
\Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \matrix_ram[8][3]~q\ & ( \Mux4~0_combout\ & ( ((\Add1~3_combout\) # (\Mux4~1_combout\)) # (\Add1~0_combout\) ) ) ) # ( !\matrix_ram[8][3]~q\ & ( \Mux4~0_combout\ & ( (!\Add1~0_combout\ & ((\Add1~3_combout\) # (\Mux4~1_combout\))) ) ) 
-- ) # ( \matrix_ram[8][3]~q\ & ( !\Mux4~0_combout\ & ( ((\Mux4~1_combout\ & !\Add1~3_combout\)) # (\Add1~0_combout\) ) ) ) # ( !\matrix_ram[8][3]~q\ & ( !\Mux4~0_combout\ & ( (!\Add1~0_combout\ & (\Mux4~1_combout\ & !\Add1~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000001111110011001100001100110011000011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~0_combout\,
	datac => \ALT_INV_Mux4~1_combout\,
	datad => \ALT_INV_Add1~3_combout\,
	datae => \ALT_INV_matrix_ram[8][3]~q\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Mux4~2_combout\);

-- Location: IOIBUF_X89_Y16_N4
\load_data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(4),
	o => \load_data[4]~input_o\);

-- Location: FF_X85_Y14_N2
\matrix_ram[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[4]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[3][5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[3][4]~q\);

-- Location: LABCELL_X85_Y14_N36
\matrix_ram[2][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[2][4]~feeder_combout\ = \load_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_load_data[4]~input_o\,
	combout => \matrix_ram[2][4]~feeder_combout\);

-- Location: FF_X85_Y14_N37
\matrix_ram[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \matrix_ram[2][4]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \matrix_ram[2][5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[2][4]~q\);

-- Location: MLABCELL_X84_Y15_N0
\matrix_ram[1][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[1][4]~feeder_combout\ = ( \load_data[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[4]~input_o\,
	combout => \matrix_ram[1][4]~feeder_combout\);

-- Location: FF_X84_Y15_N2
\matrix_ram[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \matrix_ram[1][4]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \matrix_ram[1][2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[1][4]~q\);

-- Location: MLABCELL_X84_Y15_N39
\matrix_ram[0][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[0][4]~feeder_combout\ = ( \load_data[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[4]~input_o\,
	combout => \matrix_ram[0][4]~feeder_combout\);

-- Location: FF_X84_Y15_N41
\matrix_ram[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \matrix_ram[0][4]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \matrix_ram[0][4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[0][4]~q\);

-- Location: LABCELL_X85_Y14_N24
\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \Add1~1_combout\ & ( \matrix_ram[0][4]~q\ & ( (!\Add1~2_combout\ & ((\matrix_ram[1][4]~q\))) # (\Add1~2_combout\ & (\matrix_ram[3][4]~q\)) ) ) ) # ( !\Add1~1_combout\ & ( \matrix_ram[0][4]~q\ & ( (!\Add1~2_combout\) # 
-- (\matrix_ram[2][4]~q\) ) ) ) # ( \Add1~1_combout\ & ( !\matrix_ram[0][4]~q\ & ( (!\Add1~2_combout\ & ((\matrix_ram[1][4]~q\))) # (\Add1~2_combout\ & (\matrix_ram[3][4]~q\)) ) ) ) # ( !\Add1~1_combout\ & ( !\matrix_ram[0][4]~q\ & ( (\matrix_ram[2][4]~q\ & 
-- \Add1~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110101010111111111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[3][4]~q\,
	datab => \ALT_INV_matrix_ram[2][4]~q\,
	datac => \ALT_INV_matrix_ram[1][4]~q\,
	datad => \ALT_INV_Add1~2_combout\,
	datae => \ALT_INV_Add1~1_combout\,
	dataf => \ALT_INV_matrix_ram[0][4]~q\,
	combout => \Mux3~1_combout\);

-- Location: FF_X85_Y14_N20
\matrix_ram[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[4]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[8][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[8][4]~q\);

-- Location: FF_X87_Y15_N43
\matrix_ram[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[4]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[4][3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[4][4]~q\);

-- Location: FF_X85_Y15_N8
\matrix_ram[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[4]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[7][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[7][4]~q\);

-- Location: FF_X85_Y15_N53
\matrix_ram[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[4]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[6][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[6][4]~q\);

-- Location: FF_X87_Y15_N59
\matrix_ram[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[4]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[5][5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[5][4]~q\);

-- Location: LABCELL_X85_Y15_N9
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \matrix_ram[5][4]~q\ & ( \Add1~1_combout\ & ( (!\Add1~2_combout\) # (\matrix_ram[7][4]~q\) ) ) ) # ( !\matrix_ram[5][4]~q\ & ( \Add1~1_combout\ & ( (\matrix_ram[7][4]~q\ & \Add1~2_combout\) ) ) ) # ( \matrix_ram[5][4]~q\ & ( 
-- !\Add1~1_combout\ & ( (!\Add1~2_combout\ & (\matrix_ram[4][4]~q\)) # (\Add1~2_combout\ & ((\matrix_ram[6][4]~q\))) ) ) ) # ( !\matrix_ram[5][4]~q\ & ( !\Add1~1_combout\ & ( (!\Add1~2_combout\ & (\matrix_ram[4][4]~q\)) # (\Add1~2_combout\ & 
-- ((\matrix_ram[6][4]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[4][4]~q\,
	datab => \ALT_INV_matrix_ram[7][4]~q\,
	datac => \ALT_INV_Add1~2_combout\,
	datad => \ALT_INV_matrix_ram[6][4]~q\,
	datae => \ALT_INV_matrix_ram[5][4]~q\,
	dataf => \ALT_INV_Add1~1_combout\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X85_Y14_N18
\Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \Mux3~0_combout\ & ( (!\Add1~0_combout\ & (((\Mux3~1_combout\)) # (\Add1~3_combout\))) # (\Add1~0_combout\ & (((\matrix_ram[8][4]~q\)))) ) ) # ( !\Mux3~0_combout\ & ( (!\Add1~0_combout\ & (!\Add1~3_combout\ & (\Mux3~1_combout\))) # 
-- (\Add1~0_combout\ & (((\matrix_ram[8][4]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~3_combout\,
	datab => \ALT_INV_Add1~0_combout\,
	datac => \ALT_INV_Mux3~1_combout\,
	datad => \ALT_INV_matrix_ram[8][4]~q\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: IOIBUF_X89_Y11_N78
\load_data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(5),
	o => \load_data[5]~input_o\);

-- Location: FF_X85_Y14_N13
\matrix_ram[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[5]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[2][5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[2][5]~q\);

-- Location: FF_X85_Y14_N44
\matrix_ram[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[5]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[3][5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[3][5]~q\);

-- Location: MLABCELL_X84_Y15_N36
\matrix_ram[0][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[0][5]~feeder_combout\ = \load_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_load_data[5]~input_o\,
	combout => \matrix_ram[0][5]~feeder_combout\);

-- Location: FF_X84_Y15_N37
\matrix_ram[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \matrix_ram[0][5]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \matrix_ram[0][4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[0][5]~q\);

-- Location: MLABCELL_X84_Y15_N54
\matrix_ram[1][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[1][5]~feeder_combout\ = ( \load_data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[5]~input_o\,
	combout => \matrix_ram[1][5]~feeder_combout\);

-- Location: FF_X84_Y15_N55
\matrix_ram[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \matrix_ram[1][5]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \matrix_ram[1][2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[1][5]~q\);

-- Location: LABCELL_X85_Y14_N45
\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \Add1~1_combout\ & ( \matrix_ram[1][5]~q\ & ( (!\Add1~2_combout\) # (\matrix_ram[3][5]~q\) ) ) ) # ( !\Add1~1_combout\ & ( \matrix_ram[1][5]~q\ & ( (!\Add1~2_combout\ & ((\matrix_ram[0][5]~q\))) # (\Add1~2_combout\ & 
-- (\matrix_ram[2][5]~q\)) ) ) ) # ( \Add1~1_combout\ & ( !\matrix_ram[1][5]~q\ & ( (\matrix_ram[3][5]~q\ & \Add1~2_combout\) ) ) ) # ( !\Add1~1_combout\ & ( !\matrix_ram[1][5]~q\ & ( (!\Add1~2_combout\ & ((\matrix_ram[0][5]~q\))) # (\Add1~2_combout\ & 
-- (\matrix_ram[2][5]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000110000001100000101111101011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[2][5]~q\,
	datab => \ALT_INV_matrix_ram[3][5]~q\,
	datac => \ALT_INV_Add1~2_combout\,
	datad => \ALT_INV_matrix_ram[0][5]~q\,
	datae => \ALT_INV_Add1~1_combout\,
	dataf => \ALT_INV_matrix_ram[1][5]~q\,
	combout => \Mux2~1_combout\);

-- Location: FF_X85_Y14_N23
\matrix_ram[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[5]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[8][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[8][5]~q\);

-- Location: FF_X84_Y14_N20
\matrix_ram[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[5]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[7][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[7][5]~q\);

-- Location: FF_X85_Y15_N50
\matrix_ram[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[5]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[6][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[6][5]~q\);

-- Location: FF_X85_Y13_N49
\matrix_ram[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[5]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[5][5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[5][5]~q\);

-- Location: FF_X85_Y13_N13
\matrix_ram[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[5]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[4][3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[4][5]~q\);

-- Location: MLABCELL_X84_Y14_N9
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \matrix_ram[5][5]~q\ & ( \matrix_ram[4][5]~q\ & ( (!\Add1~2_combout\) # ((!\Add1~1_combout\ & ((\matrix_ram[6][5]~q\))) # (\Add1~1_combout\ & (\matrix_ram[7][5]~q\))) ) ) ) # ( !\matrix_ram[5][5]~q\ & ( \matrix_ram[4][5]~q\ & ( 
-- (!\Add1~2_combout\ & (((!\Add1~1_combout\)))) # (\Add1~2_combout\ & ((!\Add1~1_combout\ & ((\matrix_ram[6][5]~q\))) # (\Add1~1_combout\ & (\matrix_ram[7][5]~q\)))) ) ) ) # ( \matrix_ram[5][5]~q\ & ( !\matrix_ram[4][5]~q\ & ( (!\Add1~2_combout\ & 
-- (((\Add1~1_combout\)))) # (\Add1~2_combout\ & ((!\Add1~1_combout\ & ((\matrix_ram[6][5]~q\))) # (\Add1~1_combout\ & (\matrix_ram[7][5]~q\)))) ) ) ) # ( !\matrix_ram[5][5]~q\ & ( !\matrix_ram[4][5]~q\ & ( (\Add1~2_combout\ & ((!\Add1~1_combout\ & 
-- ((\matrix_ram[6][5]~q\))) # (\Add1~1_combout\ & (\matrix_ram[7][5]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000111111010111110011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[7][5]~q\,
	datab => \ALT_INV_matrix_ram[6][5]~q\,
	datac => \ALT_INV_Add1~2_combout\,
	datad => \ALT_INV_Add1~1_combout\,
	datae => \ALT_INV_matrix_ram[5][5]~q\,
	dataf => \ALT_INV_matrix_ram[4][5]~q\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X85_Y14_N21
\Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \Mux2~0_combout\ & ( (!\Add1~0_combout\ & (((\Mux2~1_combout\)) # (\Add1~3_combout\))) # (\Add1~0_combout\ & (((\matrix_ram[8][5]~q\)))) ) ) # ( !\Mux2~0_combout\ & ( (!\Add1~0_combout\ & (!\Add1~3_combout\ & (\Mux2~1_combout\))) # 
-- (\Add1~0_combout\ & (((\matrix_ram[8][5]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~3_combout\,
	datab => \ALT_INV_Add1~0_combout\,
	datac => \ALT_INV_Mux2~1_combout\,
	datad => \ALT_INV_matrix_ram[8][5]~q\,
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => \Mux2~2_combout\);

-- Location: IOIBUF_X89_Y11_N61
\load_data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(6),
	o => \load_data[6]~input_o\);

-- Location: FF_X85_Y15_N41
\matrix_ram[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[6]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[8][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[8][6]~q\);

-- Location: MLABCELL_X84_Y15_N21
\matrix_ram[0][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[0][6]~feeder_combout\ = ( \load_data[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[6]~input_o\,
	combout => \matrix_ram[0][6]~feeder_combout\);

-- Location: FF_X84_Y15_N23
\matrix_ram[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \matrix_ram[0][6]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \matrix_ram[0][4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[0][6]~q\);

-- Location: FF_X84_Y15_N32
\matrix_ram[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[6]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[1][2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[1][6]~q\);

-- Location: LABCELL_X83_Y15_N18
\matrix_ram[2][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[2][6]~feeder_combout\ = ( \load_data[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[6]~input_o\,
	combout => \matrix_ram[2][6]~feeder_combout\);

-- Location: FF_X83_Y15_N19
\matrix_ram[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \matrix_ram[2][6]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \matrix_ram[2][5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[2][6]~q\);

-- Location: FF_X84_Y15_N26
\matrix_ram[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[6]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[3][5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[3][6]~q\);

-- Location: MLABCELL_X84_Y15_N27
\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \Add1~2_combout\ & ( \Add1~1_combout\ & ( \matrix_ram[3][6]~q\ ) ) ) # ( !\Add1~2_combout\ & ( \Add1~1_combout\ & ( \matrix_ram[1][6]~q\ ) ) ) # ( \Add1~2_combout\ & ( !\Add1~1_combout\ & ( \matrix_ram[2][6]~q\ ) ) ) # ( 
-- !\Add1~2_combout\ & ( !\Add1~1_combout\ & ( \matrix_ram[0][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[0][6]~q\,
	datab => \ALT_INV_matrix_ram[1][6]~q\,
	datac => \ALT_INV_matrix_ram[2][6]~q\,
	datad => \ALT_INV_matrix_ram[3][6]~q\,
	datae => \ALT_INV_Add1~2_combout\,
	dataf => \ALT_INV_Add1~1_combout\,
	combout => \Mux1~1_combout\);

-- Location: LABCELL_X83_Y15_N51
\matrix_ram[5][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrix_ram[5][6]~feeder_combout\ = ( \load_data[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[6]~input_o\,
	combout => \matrix_ram[5][6]~feeder_combout\);

-- Location: FF_X83_Y15_N52
\matrix_ram[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \matrix_ram[5][6]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \matrix_ram[5][5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[5][6]~q\);

-- Location: FF_X85_Y15_N14
\matrix_ram[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[6]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[7][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[7][6]~q\);

-- Location: FF_X87_Y15_N37
\matrix_ram[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[6]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[4][3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[4][6]~q\);

-- Location: FF_X85_Y15_N59
\matrix_ram[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[6]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[6][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[6][6]~q\);

-- Location: LABCELL_X85_Y15_N15
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \matrix_ram[6][6]~q\ & ( \Add1~1_combout\ & ( (!\Add1~2_combout\ & (\matrix_ram[5][6]~q\)) # (\Add1~2_combout\ & ((\matrix_ram[7][6]~q\))) ) ) ) # ( !\matrix_ram[6][6]~q\ & ( \Add1~1_combout\ & ( (!\Add1~2_combout\ & 
-- (\matrix_ram[5][6]~q\)) # (\Add1~2_combout\ & ((\matrix_ram[7][6]~q\))) ) ) ) # ( \matrix_ram[6][6]~q\ & ( !\Add1~1_combout\ & ( (\matrix_ram[4][6]~q\) # (\Add1~2_combout\) ) ) ) # ( !\matrix_ram[6][6]~q\ & ( !\Add1~1_combout\ & ( (!\Add1~2_combout\ & 
-- \matrix_ram[4][6]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[5][6]~q\,
	datab => \ALT_INV_matrix_ram[7][6]~q\,
	datac => \ALT_INV_Add1~2_combout\,
	datad => \ALT_INV_matrix_ram[4][6]~q\,
	datae => \ALT_INV_matrix_ram[6][6]~q\,
	dataf => \ALT_INV_Add1~1_combout\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X85_Y15_N45
\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \Mux1~1_combout\ & ( \Mux1~0_combout\ & ( (!\Add1~0_combout\) # (\matrix_ram[8][6]~q\) ) ) ) # ( !\Mux1~1_combout\ & ( \Mux1~0_combout\ & ( (!\Add1~0_combout\ & ((\Add1~3_combout\))) # (\Add1~0_combout\ & (\matrix_ram[8][6]~q\)) ) ) ) 
-- # ( \Mux1~1_combout\ & ( !\Mux1~0_combout\ & ( (!\Add1~0_combout\ & ((!\Add1~3_combout\))) # (\Add1~0_combout\ & (\matrix_ram[8][6]~q\)) ) ) ) # ( !\Mux1~1_combout\ & ( !\Mux1~0_combout\ & ( (\Add1~0_combout\ & \matrix_ram[8][6]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011110000001100000011110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~0_combout\,
	datac => \ALT_INV_matrix_ram[8][6]~q\,
	datad => \ALT_INV_Add1~3_combout\,
	datae => \ALT_INV_Mux1~1_combout\,
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: IOIBUF_X89_Y13_N55
\load_data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(7),
	o => \load_data[7]~input_o\);

-- Location: FF_X85_Y14_N8
\matrix_ram[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[7]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[8][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[8][7]~q\);

-- Location: FF_X85_Y14_N50
\matrix_ram[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[7]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[2][5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[2][7]~q\);

-- Location: FF_X85_Y14_N28
\matrix_ram[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[7]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[3][5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[3][7]~q\);

-- Location: FF_X84_Y15_N4
\matrix_ram[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[7]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[1][2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[1][7]~q\);

-- Location: FF_X84_Y15_N22
\matrix_ram[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[7]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[0][4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[0][7]~q\);

-- Location: LABCELL_X85_Y14_N57
\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \Add1~1_combout\ & ( \Add1~2_combout\ & ( \matrix_ram[3][7]~q\ ) ) ) # ( !\Add1~1_combout\ & ( \Add1~2_combout\ & ( \matrix_ram[2][7]~q\ ) ) ) # ( \Add1~1_combout\ & ( !\Add1~2_combout\ & ( \matrix_ram[1][7]~q\ ) ) ) # ( 
-- !\Add1~1_combout\ & ( !\Add1~2_combout\ & ( \matrix_ram[0][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[2][7]~q\,
	datab => \ALT_INV_matrix_ram[3][7]~q\,
	datac => \ALT_INV_matrix_ram[1][7]~q\,
	datad => \ALT_INV_matrix_ram[0][7]~q\,
	datae => \ALT_INV_Add1~1_combout\,
	dataf => \ALT_INV_Add1~2_combout\,
	combout => \Mux0~1_combout\);

-- Location: FF_X84_Y14_N7
\matrix_ram[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[7]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[7][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[7][7]~q\);

-- Location: FF_X85_Y13_N7
\matrix_ram[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[7]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[4][3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[4][7]~q\);

-- Location: FF_X85_Y13_N1
\matrix_ram[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[7]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[5][5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[5][7]~q\);

-- Location: FF_X85_Y15_N35
\matrix_ram[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[7]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \matrix_ram[6][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_ram[6][7]~q\);

-- Location: MLABCELL_X84_Y14_N3
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \matrix_ram[5][7]~q\ & ( \matrix_ram[6][7]~q\ & ( (!\Add1~2_combout\ & (((\Add1~1_combout\) # (\matrix_ram[4][7]~q\)))) # (\Add1~2_combout\ & (((!\Add1~1_combout\)) # (\matrix_ram[7][7]~q\))) ) ) ) # ( !\matrix_ram[5][7]~q\ & ( 
-- \matrix_ram[6][7]~q\ & ( (!\Add1~2_combout\ & (((\matrix_ram[4][7]~q\ & !\Add1~1_combout\)))) # (\Add1~2_combout\ & (((!\Add1~1_combout\)) # (\matrix_ram[7][7]~q\))) ) ) ) # ( \matrix_ram[5][7]~q\ & ( !\matrix_ram[6][7]~q\ & ( (!\Add1~2_combout\ & 
-- (((\Add1~1_combout\) # (\matrix_ram[4][7]~q\)))) # (\Add1~2_combout\ & (\matrix_ram[7][7]~q\ & ((\Add1~1_combout\)))) ) ) ) # ( !\matrix_ram[5][7]~q\ & ( !\matrix_ram[6][7]~q\ & ( (!\Add1~2_combout\ & (((\matrix_ram[4][7]~q\ & !\Add1~1_combout\)))) # 
-- (\Add1~2_combout\ & (\matrix_ram[7][7]~q\ & ((\Add1~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[7][7]~q\,
	datab => \ALT_INV_Add1~2_combout\,
	datac => \ALT_INV_matrix_ram[4][7]~q\,
	datad => \ALT_INV_Add1~1_combout\,
	datae => \ALT_INV_matrix_ram[5][7]~q\,
	dataf => \ALT_INV_matrix_ram[6][7]~q\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X85_Y14_N51
\Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ( \Mux0~1_combout\ & ( \Mux0~0_combout\ & ( (!\Add1~0_combout\) # (\matrix_ram[8][7]~q\) ) ) ) # ( !\Mux0~1_combout\ & ( \Mux0~0_combout\ & ( (!\Add1~0_combout\ & ((\Add1~3_combout\))) # (\Add1~0_combout\ & (\matrix_ram[8][7]~q\)) ) ) ) 
-- # ( \Mux0~1_combout\ & ( !\Mux0~0_combout\ & ( (!\Add1~0_combout\ & ((!\Add1~3_combout\))) # (\Add1~0_combout\ & (\matrix_ram[8][7]~q\)) ) ) ) # ( !\Mux0~1_combout\ & ( !\Mux0~0_combout\ & ( (\matrix_ram[8][7]~q\ & \Add1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100110000001100000011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_matrix_ram[8][7]~q\,
	datac => \ALT_INV_Add1~0_combout\,
	datad => \ALT_INV_Add1~3_combout\,
	datae => \ALT_INV_Mux0~1_combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Mux0~2_combout\);

-- Location: MLABCELL_X87_Y15_N57
\vector_ram[2][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vector_ram[2][0]~0_combout\ = ( !\load_matrix~input_o\ & ( (!\load_addr[3]~input_o\ & (!\load_addr[2]~input_o\ & ((!\load_addr[1]~input_o\) # (!\load_addr[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000101010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_addr[3]~input_o\,
	datab => \ALT_INV_load_addr[1]~input_o\,
	datac => \ALT_INV_load_addr[0]~input_o\,
	datad => \ALT_INV_load_addr[2]~input_o\,
	dataf => \ALT_INV_load_matrix~input_o\,
	combout => \vector_ram[2][0]~0_combout\);

-- Location: LABCELL_X85_Y13_N39
\vector_ram[0][0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \vector_ram[0][0]~4_combout\ = ( \vector_ram[2][0]~0_combout\ & ( ((!\load_addr[1]~input_o\ & (!\load_addr[0]~input_o\ & \matrix_ram[0][4]~4_combout\))) # (\rst~input_o\) ) ) # ( !\vector_ram[2][0]~0_combout\ & ( \rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101011101010101010101010101010101010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	datab => \ALT_INV_load_addr[1]~input_o\,
	datac => \ALT_INV_load_addr[0]~input_o\,
	datad => \ALT_INV_matrix_ram[0][4]~4_combout\,
	datae => \ALT_INV_vector_ram[2][0]~0_combout\,
	combout => \vector_ram[0][0]~4_combout\);

-- Location: FF_X83_Y14_N26
\vector_ram[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[0]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \vector_ram[0][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[0][0]~q\);

-- Location: MLABCELL_X87_Y15_N21
\vector_ram[1][7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \vector_ram[1][7]~2_combout\ = ( !\load_addr[1]~input_o\ & ( \load_addr[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_load_addr[0]~input_o\,
	dataf => \ALT_INV_load_addr[1]~input_o\,
	combout => \vector_ram[1][7]~2_combout\);

-- Location: MLABCELL_X87_Y15_N3
\vector_ram[1][7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \vector_ram[1][7]~3_combout\ = ( \vector_ram[2][0]~0_combout\ & ( \vector_ram[1][7]~2_combout\ & ( ((\matrix_ram[0][4]~0_combout\ & (\load_enable~input_o\ & !\error_internal~q\))) # (\rst~input_o\) ) ) ) # ( !\vector_ram[2][0]~0_combout\ & ( 
-- \vector_ram[1][7]~2_combout\ & ( \rst~input_o\ ) ) ) # ( \vector_ram[2][0]~0_combout\ & ( !\vector_ram[1][7]~2_combout\ & ( \rst~input_o\ ) ) ) # ( !\vector_ram[2][0]~0_combout\ & ( !\vector_ram[1][7]~2_combout\ & ( \rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[0][4]~0_combout\,
	datab => \ALT_INV_rst~input_o\,
	datac => \ALT_INV_load_enable~input_o\,
	datad => \ALT_INV_error_internal~q\,
	datae => \ALT_INV_vector_ram[2][0]~0_combout\,
	dataf => \ALT_INV_vector_ram[1][7]~2_combout\,
	combout => \vector_ram[1][7]~3_combout\);

-- Location: FF_X83_Y14_N17
\vector_ram[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[0]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \vector_ram[1][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[1][0]~q\);

-- Location: LABCELL_X85_Y13_N42
\vector_ram[2][0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \vector_ram[2][0]~1_combout\ = ( \vector_ram[2][0]~0_combout\ & ( ((\matrix_ram[0][4]~4_combout\ & (\load_addr[1]~input_o\ & !\load_addr[0]~input_o\))) # (\rst~input_o\) ) ) # ( !\vector_ram[2][0]~0_combout\ & ( \rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000111110000111100001111000011110001111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrix_ram[0][4]~4_combout\,
	datab => \ALT_INV_load_addr[1]~input_o\,
	datac => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_load_addr[0]~input_o\,
	datae => \ALT_INV_vector_ram[2][0]~0_combout\,
	combout => \vector_ram[2][0]~1_combout\);

-- Location: FF_X83_Y14_N50
\vector_ram[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[0]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \vector_ram[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[2][0]~q\);

-- Location: LABCELL_X83_Y14_N18
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( col_counter(1) & ( \vector_ram[2][0]~q\ ) ) # ( !col_counter(1) & ( (!col_counter(0) & (\vector_ram[0][0]~q\)) # (col_counter(0) & ((\vector_ram[1][0]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000111101010101001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vector_ram[0][0]~q\,
	datab => \ALT_INV_vector_ram[1][0]~q\,
	datac => \ALT_INV_vector_ram[2][0]~q\,
	datad => ALT_INV_col_counter(0),
	datae => ALT_INV_col_counter(1),
	combout => \Mux15~0_combout\);

-- Location: FF_X83_Y14_N44
\vector_ram[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[1]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \vector_ram[1][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[1][1]~q\);

-- Location: FF_X83_Y14_N41
\vector_ram[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[1]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \vector_ram[0][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[0][1]~q\);

-- Location: FF_X83_Y14_N5
\vector_ram[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[1]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \vector_ram[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[2][1]~q\);

-- Location: LABCELL_X83_Y14_N51
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( col_counter(0) & ( col_counter(1) & ( \vector_ram[2][1]~q\ ) ) ) # ( !col_counter(0) & ( col_counter(1) & ( \vector_ram[2][1]~q\ ) ) ) # ( col_counter(0) & ( !col_counter(1) & ( \vector_ram[1][1]~q\ ) ) ) # ( !col_counter(0) & ( 
-- !col_counter(1) & ( \vector_ram[0][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_vector_ram[1][1]~q\,
	datac => \ALT_INV_vector_ram[0][1]~q\,
	datad => \ALT_INV_vector_ram[2][1]~q\,
	datae => ALT_INV_col_counter(0),
	dataf => ALT_INV_col_counter(1),
	combout => \Mux14~0_combout\);

-- Location: FF_X83_Y14_N59
\vector_ram[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[2]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \vector_ram[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[2][2]~q\);

-- Location: FF_X83_Y14_N29
\vector_ram[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[2]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \vector_ram[0][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[0][2]~q\);

-- Location: FF_X83_Y14_N47
\vector_ram[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[2]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \vector_ram[1][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[1][2]~q\);

-- Location: LABCELL_X83_Y14_N24
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( col_counter(0) & ( col_counter(1) & ( \vector_ram[2][2]~q\ ) ) ) # ( !col_counter(0) & ( col_counter(1) & ( \vector_ram[2][2]~q\ ) ) ) # ( col_counter(0) & ( !col_counter(1) & ( \vector_ram[1][2]~q\ ) ) ) # ( !col_counter(0) & ( 
-- !col_counter(1) & ( \vector_ram[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_vector_ram[2][2]~q\,
	datac => \ALT_INV_vector_ram[0][2]~q\,
	datad => \ALT_INV_vector_ram[1][2]~q\,
	datae => ALT_INV_col_counter(0),
	dataf => ALT_INV_col_counter(1),
	combout => \Mux13~0_combout\);

-- Location: FF_X83_Y14_N2
\vector_ram[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[3]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \vector_ram[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[2][3]~q\);

-- Location: FF_X83_Y14_N20
\vector_ram[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[3]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \vector_ram[0][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[0][3]~q\);

-- Location: FF_X83_Y14_N8
\vector_ram[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[3]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \vector_ram[1][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[1][3]~q\);

-- Location: LABCELL_X83_Y14_N3
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( col_counter(0) & ( \vector_ram[1][3]~q\ & ( (!col_counter(1)) # (\vector_ram[2][3]~q\) ) ) ) # ( !col_counter(0) & ( \vector_ram[1][3]~q\ & ( (!col_counter(1) & ((\vector_ram[0][3]~q\))) # (col_counter(1) & (\vector_ram[2][3]~q\)) ) 
-- ) ) # ( col_counter(0) & ( !\vector_ram[1][3]~q\ & ( (\vector_ram[2][3]~q\ & col_counter(1)) ) ) ) # ( !col_counter(0) & ( !\vector_ram[1][3]~q\ & ( (!col_counter(1) & ((\vector_ram[0][3]~q\))) # (col_counter(1) & (\vector_ram[2][3]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001010000010100000101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vector_ram[2][3]~q\,
	datac => ALT_INV_col_counter(1),
	datad => \ALT_INV_vector_ram[0][3]~q\,
	datae => ALT_INV_col_counter(0),
	dataf => \ALT_INV_vector_ram[1][3]~q\,
	combout => \Mux12~0_combout\);

-- Location: FF_X83_Y14_N35
\vector_ram[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[4]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \vector_ram[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[2][4]~q\);

-- Location: FF_X83_Y14_N23
\vector_ram[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[4]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \vector_ram[0][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[0][4]~q\);

-- Location: FF_X83_Y14_N11
\vector_ram[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[4]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \vector_ram[1][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[1][4]~q\);

-- Location: LABCELL_X83_Y14_N9
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \vector_ram[1][4]~q\ & ( col_counter(1) & ( \vector_ram[2][4]~q\ ) ) ) # ( !\vector_ram[1][4]~q\ & ( col_counter(1) & ( \vector_ram[2][4]~q\ ) ) ) # ( \vector_ram[1][4]~q\ & ( !col_counter(1) & ( (\vector_ram[0][4]~q\) # 
-- (col_counter(0)) ) ) ) # ( !\vector_ram[1][4]~q\ & ( !col_counter(1) & ( (!col_counter(0) & \vector_ram[0][4]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vector_ram[2][4]~q\,
	datac => ALT_INV_col_counter(0),
	datad => \ALT_INV_vector_ram[0][4]~q\,
	datae => \ALT_INV_vector_ram[1][4]~q\,
	dataf => ALT_INV_col_counter(1),
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X85_Y12_N36
\vector_ram[1][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \vector_ram[1][5]~feeder_combout\ = ( \load_data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[5]~input_o\,
	combout => \vector_ram[1][5]~feeder_combout\);

-- Location: FF_X85_Y12_N38
\vector_ram[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vector_ram[1][5]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \vector_ram[1][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[1][5]~q\);

-- Location: LABCELL_X85_Y12_N30
\vector_ram[0][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \vector_ram[0][5]~feeder_combout\ = ( \load_data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[5]~input_o\,
	combout => \vector_ram[0][5]~feeder_combout\);

-- Location: FF_X85_Y12_N32
\vector_ram[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vector_ram[0][5]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \vector_ram[0][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[0][5]~q\);

-- Location: LABCELL_X85_Y13_N30
\vector_ram[2][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \vector_ram[2][5]~feeder_combout\ = ( \load_data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[5]~input_o\,
	combout => \vector_ram[2][5]~feeder_combout\);

-- Location: FF_X85_Y13_N32
\vector_ram[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vector_ram[2][5]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \vector_ram[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[2][5]~q\);

-- Location: LABCELL_X85_Y12_N42
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( col_counter(0) & ( (!col_counter(1) & (\vector_ram[1][5]~q\)) # (col_counter(1) & ((\vector_ram[2][5]~q\))) ) ) # ( !col_counter(0) & ( (!col_counter(1) & (\vector_ram[0][5]~q\)) # (col_counter(1) & ((\vector_ram[2][5]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vector_ram[1][5]~q\,
	datab => \ALT_INV_vector_ram[0][5]~q\,
	datac => ALT_INV_col_counter(1),
	datad => \ALT_INV_vector_ram[2][5]~q\,
	dataf => ALT_INV_col_counter(0),
	combout => \Mux10~0_combout\);

-- Location: MLABCELL_X84_Y12_N27
\vector_ram[2][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \vector_ram[2][6]~feeder_combout\ = ( \load_data[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[6]~input_o\,
	combout => \vector_ram[2][6]~feeder_combout\);

-- Location: FF_X84_Y12_N28
\vector_ram[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vector_ram[2][6]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \vector_ram[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[2][6]~q\);

-- Location: LABCELL_X85_Y12_N51
\vector_ram[0][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \vector_ram[0][6]~feeder_combout\ = ( \load_data[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[6]~input_o\,
	combout => \vector_ram[0][6]~feeder_combout\);

-- Location: FF_X85_Y12_N53
\vector_ram[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vector_ram[0][6]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \vector_ram[0][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[0][6]~q\);

-- Location: FF_X85_Y12_N22
\vector_ram[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[6]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \vector_ram[1][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[1][6]~q\);

-- Location: LABCELL_X85_Y12_N54
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( col_counter(0) & ( col_counter(1) & ( \vector_ram[2][6]~q\ ) ) ) # ( !col_counter(0) & ( col_counter(1) & ( \vector_ram[2][6]~q\ ) ) ) # ( col_counter(0) & ( !col_counter(1) & ( \vector_ram[1][6]~q\ ) ) ) # ( !col_counter(0) & ( 
-- !col_counter(1) & ( \vector_ram[0][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vector_ram[2][6]~q\,
	datac => \ALT_INV_vector_ram[0][6]~q\,
	datad => \ALT_INV_vector_ram[1][6]~q\,
	datae => ALT_INV_col_counter(0),
	dataf => ALT_INV_col_counter(1),
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X83_Y14_N30
\vector_ram[2][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \vector_ram[2][7]~feeder_combout\ = ( \load_data[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[7]~input_o\,
	combout => \vector_ram[2][7]~feeder_combout\);

-- Location: FF_X83_Y14_N32
\vector_ram[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vector_ram[2][7]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \vector_ram[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[2][7]~q\);

-- Location: LABCELL_X83_Y14_N36
\vector_ram[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \vector_ram[0][7]~feeder_combout\ = ( \load_data[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_load_data[7]~input_o\,
	combout => \vector_ram[0][7]~feeder_combout\);

-- Location: FF_X83_Y14_N38
\vector_ram[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vector_ram[0][7]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \vector_ram[0][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[0][7]~q\);

-- Location: FF_X83_Y14_N14
\vector_ram[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \load_data[7]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \vector_ram[1][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vector_ram[1][7]~q\);

-- Location: LABCELL_X83_Y14_N54
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( col_counter(0) & ( col_counter(1) & ( \vector_ram[2][7]~q\ ) ) ) # ( !col_counter(0) & ( col_counter(1) & ( \vector_ram[2][7]~q\ ) ) ) # ( col_counter(0) & ( !col_counter(1) & ( \vector_ram[1][7]~q\ ) ) ) # ( !col_counter(0) & ( 
-- !col_counter(1) & ( \vector_ram[0][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_vector_ram[2][7]~q\,
	datac => \ALT_INV_vector_ram[0][7]~q\,
	datad => \ALT_INV_vector_ram[1][7]~q\,
	datae => ALT_INV_col_counter(0),
	dataf => ALT_INV_col_counter(1),
	combout => \Mux8~0_combout\);

-- Location: DSP_X86_Y14_N0
\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 9,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 9,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 9,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 9,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult0~8_AX_bus\,
	ay => \Mult0~8_AY_bus\,
	bx => \Mult0~8_BX_bus\,
	by => \Mult0~8_BY_bus\,
	resulta => \Mult0~8_RESULTA_bus\);

-- Location: MLABCELL_X87_Y14_N24
\mult_result[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult_result[0]~feeder_combout\ = ( \Mult0~8_resulta\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~8_resulta\,
	combout => \mult_result[0]~feeder_combout\);

-- Location: MLABCELL_X82_Y14_N24
\mult_result[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult_result[0]~0_combout\ = ( col_counter(1) & ( (!\state.CALCULATING~q\) # (((row_counter(1) & row_counter(0))) # (col_counter(0))) ) ) # ( !col_counter(1) & ( (!\state.CALCULATING~q\) # ((row_counter(1) & row_counter(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010111011101010101011101110101111101111111010111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CALCULATING~q\,
	datab => ALT_INV_row_counter(1),
	datac => ALT_INV_col_counter(0),
	datad => ALT_INV_row_counter(0),
	dataf => ALT_INV_col_counter(1),
	combout => \mult_result[0]~0_combout\);

-- Location: LABCELL_X81_Y14_N39
\mult_result[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult_result[0]~1_combout\ = ( calc_step(0) & ( calc_step(1) & ( (\start_calc~input_o\ & (!\state.IDLE~q\ & !\start_calc_prev~q\)) ) ) ) # ( !calc_step(0) & ( calc_step(1) & ( (\start_calc~input_o\ & (!\state.IDLE~q\ & !\start_calc_prev~q\)) ) ) ) # ( 
-- calc_step(0) & ( !calc_step(1) & ( (\start_calc~input_o\ & (!\state.IDLE~q\ & !\start_calc_prev~q\)) ) ) ) # ( !calc_step(0) & ( !calc_step(1) & ( ((\start_calc~input_o\ & (!\state.IDLE~q\ & !\start_calc_prev~q\))) # (\state.CALCULATING~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100110011010100000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start_calc~input_o\,
	datab => \ALT_INV_state.CALCULATING~q\,
	datac => \ALT_INV_state.IDLE~q\,
	datad => \ALT_INV_start_calc_prev~q\,
	datae => ALT_INV_calc_step(0),
	dataf => ALT_INV_calc_step(1),
	combout => \mult_result[0]~1_combout\);

-- Location: FF_X87_Y14_N25
\mult_result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mult_result[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \mult_result[0]~0_combout\,
	ena => \mult_result[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_result(0));

-- Location: MLABCELL_X84_Y13_N0
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( accumulator(0) ) + ( mult_result(0) ) + ( !VCC ))
-- \Add2~2\ = CARRY(( accumulator(0) ) + ( mult_result(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_mult_result(0),
	datad => ALT_INV_accumulator(0),
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X81_Y14_N6
\col_counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \col_counter[0]~0_combout\ = ( \state.CALCULATING~q\ & ( calc_step(1) ) ) # ( !\state.CALCULATING~q\ & ( calc_step(1) ) ) # ( !\state.CALCULATING~q\ & ( !calc_step(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.CALCULATING~q\,
	dataf => ALT_INV_calc_step(1),
	combout => \col_counter[0]~0_combout\);

-- Location: MLABCELL_X82_Y14_N33
\accumulator[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulator[1]~0_combout\ = ( \start_calc~input_o\ & ( \start_calc_prev~q\ & ( (\state.CALCULATING~q\ & ((calc_step(1)) # (calc_step(0)))) ) ) ) # ( !\start_calc~input_o\ & ( \start_calc_prev~q\ & ( (\state.CALCULATING~q\ & ((calc_step(1)) # 
-- (calc_step(0)))) ) ) ) # ( \start_calc~input_o\ & ( !\start_calc_prev~q\ & ( (!\state.IDLE~q\) # ((\state.CALCULATING~q\ & ((calc_step(1)) # (calc_step(0))))) ) ) ) # ( !\start_calc~input_o\ & ( !\start_calc_prev~q\ & ( (\state.CALCULATING~q\ & 
-- ((calc_step(1)) # (calc_step(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101111100011111010100010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CALCULATING~q\,
	datab => ALT_INV_calc_step(0),
	datac => \ALT_INV_state.IDLE~q\,
	datad => ALT_INV_calc_step(1),
	datae => \ALT_INV_start_calc~input_o\,
	dataf => \ALT_INV_start_calc_prev~q\,
	combout => \accumulator[1]~0_combout\);

-- Location: FF_X84_Y13_N2
\accumulator[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \col_counter[0]~0_combout\,
	ena => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(0));

-- Location: MLABCELL_X82_Y13_N15
\result_ram[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[0][0]~feeder_combout\ = ( accumulator(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(0),
	combout => \result_ram[0][0]~feeder_combout\);

-- Location: MLABCELL_X82_Y14_N3
\Decoder2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder2~1_combout\ = ( calc_step(1) & ( (!row_counter(0) & (\state.CALCULATING~q\ & !row_counter(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_row_counter(0),
	datab => \ALT_INV_state.CALCULATING~q\,
	datac => ALT_INV_row_counter(1),
	dataf => ALT_INV_calc_step(1),
	combout => \Decoder2~1_combout\);

-- Location: FF_X82_Y13_N17
\result_ram[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[0][0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[0][0]~q\);

-- Location: MLABCELL_X82_Y14_N0
\Decoder2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder2~0_combout\ = ( row_counter(0) & ( (\state.CALCULATING~q\ & (calc_step(1) & !row_counter(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.CALCULATING~q\,
	datac => ALT_INV_calc_step(1),
	datad => ALT_INV_row_counter(1),
	dataf => ALT_INV_row_counter(0),
	combout => \Decoder2~0_combout\);

-- Location: FF_X81_Y13_N13
\result_ram[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[1][0]~q\);

-- Location: FF_X81_Y13_N31
\result_ram[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[2][0]~q\);

-- Location: LABCELL_X81_Y13_N36
\result_data~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_data~0_combout\ = ( \result_ram[2][0]~q\ & ( ((!\result_addr[0]~input_o\ & (\result_ram[0][0]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][0]~q\)))) # (\result_addr[1]~input_o\) ) ) # ( !\result_ram[2][0]~q\ & ( (!\result_addr[1]~input_o\ & 
-- ((!\result_addr[0]~input_o\ & (\result_ram[0][0]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][0]~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_addr[0]~input_o\,
	datab => \ALT_INV_result_addr[1]~input_o\,
	datac => \ALT_INV_result_ram[0][0]~q\,
	datad => \ALT_INV_result_ram[1][0]~q\,
	dataf => \ALT_INV_result_ram[2][0]~q\,
	combout => \result_data~0_combout\);

-- Location: LABCELL_X85_Y12_N18
\result_data[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_data[8]~1_combout\ = ( \result_addr[0]~input_o\ & ( ((!\LessThan8~0_combout\) # (\result_addr[1]~input_o\)) # (\rst~input_o\) ) ) # ( !\result_addr[0]~input_o\ & ( (!\LessThan8~0_combout\) # (\rst~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101111111011111110101111101011111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	datab => \ALT_INV_result_addr[1]~input_o\,
	datac => \ALT_INV_LessThan8~0_combout\,
	datae => \ALT_INV_result_addr[0]~input_o\,
	combout => \result_data[8]~1_combout\);

-- Location: FF_X81_Y13_N37
\result_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_data~0_combout\,
	sclr => \result_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_data[0]~reg0_q\);

-- Location: MLABCELL_X87_Y14_N33
\mult_result[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult_result[1]~feeder_combout\ = ( \Mult0~9\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~9\,
	combout => \mult_result[1]~feeder_combout\);

-- Location: FF_X87_Y14_N35
\mult_result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mult_result[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \mult_result[0]~0_combout\,
	ena => \mult_result[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_result(1));

-- Location: MLABCELL_X84_Y13_N3
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( accumulator(1) ) + ( mult_result(1) ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( accumulator(1) ) + ( mult_result(1) ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_mult_result(1),
	datad => ALT_INV_accumulator(1),
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X84_Y13_N5
\accumulator[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \col_counter[0]~0_combout\,
	ena => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(1));

-- Location: MLABCELL_X82_Y13_N18
\result_ram[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[0][1]~feeder_combout\ = ( accumulator(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(1),
	combout => \result_ram[0][1]~feeder_combout\);

-- Location: FF_X82_Y13_N19
\result_ram[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[0][1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[0][1]~q\);

-- Location: FF_X83_Y13_N29
\result_ram[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[1][1]~q\);

-- Location: FF_X83_Y13_N31
\result_ram[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[2][1]~q\);

-- Location: LABCELL_X83_Y13_N39
\result_data~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_data~2_combout\ = ( \result_ram[2][1]~q\ & ( ((!\result_addr[0]~input_o\ & (\result_ram[0][1]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][1]~q\)))) # (\result_addr[1]~input_o\) ) ) # ( !\result_ram[2][1]~q\ & ( (!\result_addr[1]~input_o\ & 
-- ((!\result_addr[0]~input_o\ & (\result_ram[0][1]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][1]~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_addr[0]~input_o\,
	datab => \ALT_INV_result_addr[1]~input_o\,
	datac => \ALT_INV_result_ram[0][1]~q\,
	datad => \ALT_INV_result_ram[1][1]~q\,
	dataf => \ALT_INV_result_ram[2][1]~q\,
	combout => \result_data~2_combout\);

-- Location: FF_X83_Y13_N40
\result_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_data~2_combout\,
	sclr => \result_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_data[1]~reg0_q\);

-- Location: MLABCELL_X87_Y14_N12
\mult_result[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult_result[2]~feeder_combout\ = ( \Mult0~10\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~10\,
	combout => \mult_result[2]~feeder_combout\);

-- Location: FF_X87_Y14_N13
\mult_result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mult_result[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \mult_result[0]~0_combout\,
	ena => \mult_result[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_result(2));

-- Location: MLABCELL_X84_Y13_N6
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( accumulator(2) ) + ( mult_result(2) ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( accumulator(2) ) + ( mult_result(2) ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_mult_result(2),
	datad => ALT_INV_accumulator(2),
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X84_Y13_N8
\accumulator[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \col_counter[0]~0_combout\,
	ena => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(2));

-- Location: MLABCELL_X82_Y13_N12
\result_ram[0][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[0][2]~feeder_combout\ = ( accumulator(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(2),
	combout => \result_ram[0][2]~feeder_combout\);

-- Location: FF_X82_Y13_N13
\result_ram[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[0][2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[0][2]~q\);

-- Location: LABCELL_X81_Y13_N15
\result_ram[1][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[1][2]~feeder_combout\ = accumulator(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_accumulator(2),
	combout => \result_ram[1][2]~feeder_combout\);

-- Location: FF_X81_Y13_N17
\result_ram[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[1][2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[1][2]~q\);

-- Location: FF_X81_Y13_N34
\result_ram[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[2][2]~q\);

-- Location: LABCELL_X81_Y13_N18
\result_data~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_data~3_combout\ = ( \result_addr[1]~input_o\ & ( \result_ram[2][2]~q\ ) ) # ( !\result_addr[1]~input_o\ & ( \result_ram[2][2]~q\ & ( (!\result_addr[0]~input_o\ & (\result_ram[0][2]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][2]~q\))) ) ) ) 
-- # ( !\result_addr[1]~input_o\ & ( !\result_ram[2][2]~q\ & ( (!\result_addr[0]~input_o\ & (\result_ram[0][2]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][2]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000000000000000000100010011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_addr[0]~input_o\,
	datab => \ALT_INV_result_ram[0][2]~q\,
	datad => \ALT_INV_result_ram[1][2]~q\,
	datae => \ALT_INV_result_addr[1]~input_o\,
	dataf => \ALT_INV_result_ram[2][2]~q\,
	combout => \result_data~3_combout\);

-- Location: FF_X81_Y13_N19
\result_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_data~3_combout\,
	sclr => \result_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_data[2]~reg0_q\);

-- Location: MLABCELL_X87_Y14_N9
\mult_result[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult_result[3]~feeder_combout\ = ( \Mult0~11\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~11\,
	combout => \mult_result[3]~feeder_combout\);

-- Location: FF_X87_Y14_N10
\mult_result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mult_result[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \mult_result[0]~0_combout\,
	ena => \mult_result[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_result(3));

-- Location: MLABCELL_X84_Y13_N9
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( accumulator(3) ) + ( mult_result(3) ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( accumulator(3) ) + ( mult_result(3) ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_mult_result(3),
	datad => ALT_INV_accumulator(3),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X84_Y13_N11
\accumulator[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \col_counter[0]~0_combout\,
	ena => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(3));

-- Location: MLABCELL_X82_Y13_N21
\result_ram[0][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[0][3]~feeder_combout\ = ( accumulator(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(3),
	combout => \result_ram[0][3]~feeder_combout\);

-- Location: FF_X82_Y13_N22
\result_ram[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[0][3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[0][3]~q\);

-- Location: FF_X83_Y13_N56
\result_ram[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[2][3]~q\);

-- Location: FF_X83_Y13_N26
\result_ram[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[1][3]~q\);

-- Location: LABCELL_X83_Y13_N6
\result_data~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_data~4_combout\ = ( \result_ram[1][3]~q\ & ( (!\result_addr[1]~input_o\ & (((\result_ram[0][3]~q\)) # (\result_addr[0]~input_o\))) # (\result_addr[1]~input_o\ & (((\result_ram[2][3]~q\)))) ) ) # ( !\result_ram[1][3]~q\ & ( 
-- (!\result_addr[1]~input_o\ & (!\result_addr[0]~input_o\ & (\result_ram[0][3]~q\))) # (\result_addr[1]~input_o\ & (((\result_ram[2][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_addr[0]~input_o\,
	datab => \ALT_INV_result_addr[1]~input_o\,
	datac => \ALT_INV_result_ram[0][3]~q\,
	datad => \ALT_INV_result_ram[2][3]~q\,
	dataf => \ALT_INV_result_ram[1][3]~q\,
	combout => \result_data~4_combout\);

-- Location: FF_X83_Y13_N7
\result_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_data~4_combout\,
	sclr => \result_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_data[3]~reg0_q\);

-- Location: MLABCELL_X87_Y14_N0
\mult_result[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult_result[4]~feeder_combout\ = ( \Mult0~12\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~12\,
	combout => \mult_result[4]~feeder_combout\);

-- Location: FF_X87_Y14_N1
\mult_result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mult_result[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \mult_result[0]~0_combout\,
	ena => \mult_result[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_result(4));

-- Location: MLABCELL_X84_Y13_N12
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( accumulator(4) ) + ( mult_result(4) ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( accumulator(4) ) + ( mult_result(4) ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_mult_result(4),
	datad => ALT_INV_accumulator(4),
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X84_Y13_N14
\accumulator[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \col_counter[0]~0_combout\,
	ena => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(4));

-- Location: FF_X82_Y13_N37
\result_ram[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[0][4]~q\);

-- Location: LABCELL_X83_Y13_N0
\result_ram[1][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[1][4]~feeder_combout\ = ( accumulator(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(4),
	combout => \result_ram[1][4]~feeder_combout\);

-- Location: FF_X83_Y13_N1
\result_ram[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[1][4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[1][4]~q\);

-- Location: LABCELL_X80_Y13_N3
\result_ram[2][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[2][4]~feeder_combout\ = ( accumulator(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(4),
	combout => \result_ram[2][4]~feeder_combout\);

-- Location: FF_X80_Y13_N4
\result_ram[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[2][4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[2][4]~q\);

-- Location: LABCELL_X81_Y13_N39
\result_data~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_data~5_combout\ = ( \result_ram[2][4]~q\ & ( ((!\result_addr[0]~input_o\ & (\result_ram[0][4]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][4]~q\)))) # (\result_addr[1]~input_o\) ) ) # ( !\result_ram[2][4]~q\ & ( (!\result_addr[1]~input_o\ & 
-- ((!\result_addr[0]~input_o\ & (\result_ram[0][4]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][4]~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_addr[0]~input_o\,
	datab => \ALT_INV_result_addr[1]~input_o\,
	datac => \ALT_INV_result_ram[0][4]~q\,
	datad => \ALT_INV_result_ram[1][4]~q\,
	dataf => \ALT_INV_result_ram[2][4]~q\,
	combout => \result_data~5_combout\);

-- Location: FF_X81_Y13_N40
\result_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_data~5_combout\,
	sclr => \result_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_data[4]~reg0_q\);

-- Location: MLABCELL_X87_Y14_N3
\mult_result[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult_result[5]~feeder_combout\ = ( \Mult0~13\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~13\,
	combout => \mult_result[5]~feeder_combout\);

-- Location: FF_X87_Y14_N4
\mult_result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mult_result[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \mult_result[0]~0_combout\,
	ena => \mult_result[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_result(5));

-- Location: MLABCELL_X84_Y13_N15
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( accumulator(5) ) + ( mult_result(5) ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( accumulator(5) ) + ( mult_result(5) ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_mult_result(5),
	datad => ALT_INV_accumulator(5),
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X84_Y13_N17
\accumulator[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \col_counter[0]~0_combout\,
	ena => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(5));

-- Location: FF_X82_Y13_N40
\result_ram[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[0][5]~q\);

-- Location: FF_X83_Y13_N5
\result_ram[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[1][5]~q\);

-- Location: FF_X84_Y13_N52
\result_ram[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[2][5]~q\);

-- Location: LABCELL_X83_Y13_N36
\result_data~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_data~6_combout\ = ( \result_ram[2][5]~q\ & ( ((!\result_addr[0]~input_o\ & (\result_ram[0][5]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][5]~q\)))) # (\result_addr[1]~input_o\) ) ) # ( !\result_ram[2][5]~q\ & ( (!\result_addr[1]~input_o\ & 
-- ((!\result_addr[0]~input_o\ & (\result_ram[0][5]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][5]~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_addr[0]~input_o\,
	datab => \ALT_INV_result_addr[1]~input_o\,
	datac => \ALT_INV_result_ram[0][5]~q\,
	datad => \ALT_INV_result_ram[1][5]~q\,
	dataf => \ALT_INV_result_ram[2][5]~q\,
	combout => \result_data~6_combout\);

-- Location: FF_X83_Y13_N37
\result_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_data~6_combout\,
	sclr => \result_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_data[5]~reg0_q\);

-- Location: MLABCELL_X87_Y14_N54
\mult_result[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult_result[6]~feeder_combout\ = ( \Mult0~14\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~14\,
	combout => \mult_result[6]~feeder_combout\);

-- Location: FF_X87_Y14_N56
\mult_result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mult_result[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \mult_result[0]~0_combout\,
	ena => \mult_result[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_result(6));

-- Location: MLABCELL_X84_Y13_N18
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( accumulator(6) ) + ( mult_result(6) ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( accumulator(6) ) + ( mult_result(6) ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_mult_result(6),
	datad => ALT_INV_accumulator(6),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X84_Y13_N20
\accumulator[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \col_counter[0]~0_combout\,
	ena => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(6));

-- Location: MLABCELL_X82_Y13_N30
\result_ram[0][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[0][6]~feeder_combout\ = ( accumulator(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(6),
	combout => \result_ram[0][6]~feeder_combout\);

-- Location: FF_X82_Y13_N31
\result_ram[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[0][6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[0][6]~q\);

-- Location: FF_X81_Y13_N47
\result_ram[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[2][6]~q\);

-- Location: FF_X81_Y13_N16
\result_ram[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[1][6]~q\);

-- Location: LABCELL_X81_Y13_N3
\result_data~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_data~7_combout\ = ( \result_ram[2][6]~q\ & ( \result_ram[1][6]~q\ & ( ((\result_addr[0]~input_o\) # (\result_addr[1]~input_o\)) # (\result_ram[0][6]~q\) ) ) ) # ( !\result_ram[2][6]~q\ & ( \result_ram[1][6]~q\ & ( (!\result_addr[1]~input_o\ & 
-- ((\result_addr[0]~input_o\) # (\result_ram[0][6]~q\))) ) ) ) # ( \result_ram[2][6]~q\ & ( !\result_ram[1][6]~q\ & ( ((\result_ram[0][6]~q\ & !\result_addr[0]~input_o\)) # (\result_addr[1]~input_o\) ) ) ) # ( !\result_ram[2][6]~q\ & ( !\result_ram[1][6]~q\ 
-- & ( (\result_ram[0][6]~q\ & (!\result_addr[1]~input_o\ & !\result_addr[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010111110000111101010000111100000101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_ram[0][6]~q\,
	datac => \ALT_INV_result_addr[1]~input_o\,
	datad => \ALT_INV_result_addr[0]~input_o\,
	datae => \ALT_INV_result_ram[2][6]~q\,
	dataf => \ALT_INV_result_ram[1][6]~q\,
	combout => \result_data~7_combout\);

-- Location: FF_X81_Y13_N4
\result_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_data~7_combout\,
	sclr => \result_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_data[6]~reg0_q\);

-- Location: MLABCELL_X87_Y14_N57
\mult_result[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult_result[7]~feeder_combout\ = ( \Mult0~15\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~15\,
	combout => \mult_result[7]~feeder_combout\);

-- Location: FF_X87_Y14_N59
\mult_result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mult_result[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \mult_result[0]~0_combout\,
	ena => \mult_result[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_result(7));

-- Location: MLABCELL_X84_Y13_N21
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( accumulator(7) ) + ( mult_result(7) ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( accumulator(7) ) + ( mult_result(7) ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_mult_result(7),
	datad => ALT_INV_accumulator(7),
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X84_Y13_N23
\accumulator[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \col_counter[0]~0_combout\,
	ena => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(7));

-- Location: MLABCELL_X82_Y13_N33
\result_ram[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[0][7]~feeder_combout\ = ( accumulator(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(7),
	combout => \result_ram[0][7]~feeder_combout\);

-- Location: FF_X82_Y13_N35
\result_ram[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[0][7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[0][7]~q\);

-- Location: MLABCELL_X82_Y13_N27
\result_ram[1][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[1][7]~feeder_combout\ = ( accumulator(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(7),
	combout => \result_ram[1][7]~feeder_combout\);

-- Location: FF_X82_Y13_N29
\result_ram[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[1][7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[1][7]~q\);

-- Location: LABCELL_X81_Y13_N24
\result_ram[2][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[2][7]~feeder_combout\ = ( accumulator(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(7),
	combout => \result_ram[2][7]~feeder_combout\);

-- Location: FF_X81_Y13_N25
\result_ram[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[2][7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[2][7]~q\);

-- Location: LABCELL_X81_Y13_N6
\result_data~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_data~8_combout\ = ( \result_ram[2][7]~q\ & ( ((!\result_addr[0]~input_o\ & (\result_ram[0][7]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][7]~q\)))) # (\result_addr[1]~input_o\) ) ) # ( !\result_ram[2][7]~q\ & ( (!\result_addr[1]~input_o\ & 
-- ((!\result_addr[0]~input_o\ & (\result_ram[0][7]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][7]~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_addr[0]~input_o\,
	datab => \ALT_INV_result_addr[1]~input_o\,
	datac => \ALT_INV_result_ram[0][7]~q\,
	datad => \ALT_INV_result_ram[1][7]~q\,
	dataf => \ALT_INV_result_ram[2][7]~q\,
	combout => \result_data~8_combout\);

-- Location: FF_X81_Y13_N8
\result_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_data~8_combout\,
	sclr => \result_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_data[7]~reg0_q\);

-- Location: MLABCELL_X87_Y14_N36
\mult_result[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult_result[8]~feeder_combout\ = ( \Mult0~16\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~16\,
	combout => \mult_result[8]~feeder_combout\);

-- Location: FF_X87_Y14_N37
\mult_result[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mult_result[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \mult_result[0]~0_combout\,
	ena => \mult_result[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_result(8));

-- Location: MLABCELL_X84_Y13_N24
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( accumulator(8) ) + ( mult_result(8) ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( accumulator(8) ) + ( mult_result(8) ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_mult_result(8),
	datad => ALT_INV_accumulator(8),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X84_Y13_N26
\accumulator[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \col_counter[0]~0_combout\,
	ena => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(8));

-- Location: FF_X82_Y13_N55
\result_ram[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[0][8]~q\);

-- Location: FF_X83_Y13_N2
\result_ram[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[1][8]~q\);

-- Location: MLABCELL_X84_Y13_N48
\result_ram[2][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[2][8]~feeder_combout\ = accumulator(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_accumulator(8),
	combout => \result_ram[2][8]~feeder_combout\);

-- Location: FF_X84_Y13_N49
\result_ram[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[2][8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[2][8]~q\);

-- Location: LABCELL_X83_Y13_N12
\result_data~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_data~9_combout\ = ( \result_ram[2][8]~q\ & ( ((!\result_addr[0]~input_o\ & (\result_ram[0][8]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][8]~q\)))) # (\result_addr[1]~input_o\) ) ) # ( !\result_ram[2][8]~q\ & ( (!\result_addr[1]~input_o\ & 
-- ((!\result_addr[0]~input_o\ & (\result_ram[0][8]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][8]~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_addr[0]~input_o\,
	datab => \ALT_INV_result_addr[1]~input_o\,
	datac => \ALT_INV_result_ram[0][8]~q\,
	datad => \ALT_INV_result_ram[1][8]~q\,
	dataf => \ALT_INV_result_ram[2][8]~q\,
	combout => \result_data~9_combout\);

-- Location: FF_X83_Y13_N13
\result_data[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_data~9_combout\,
	sclr => \result_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_data[8]~reg0_q\);

-- Location: FF_X87_Y14_N40
\mult_result[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~17\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \mult_result[0]~0_combout\,
	sload => VCC,
	ena => \mult_result[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_result(9));

-- Location: MLABCELL_X84_Y13_N27
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( accumulator(9) ) + ( mult_result(9) ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( accumulator(9) ) + ( mult_result(9) ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_mult_result(9),
	datad => ALT_INV_accumulator(9),
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X84_Y13_N29
\accumulator[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~37_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \col_counter[0]~0_combout\,
	ena => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(9));

-- Location: FF_X82_Y13_N59
\result_ram[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[0][9]~q\);

-- Location: FF_X80_Y13_N13
\result_ram[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[1][9]~q\);

-- Location: FF_X80_Y13_N10
\result_ram[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[2][9]~q\);

-- Location: LABCELL_X81_Y13_N9
\result_data~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_data~10_combout\ = ( \result_ram[2][9]~q\ & ( ((!\result_addr[0]~input_o\ & (\result_ram[0][9]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][9]~q\)))) # (\result_addr[1]~input_o\) ) ) # ( !\result_ram[2][9]~q\ & ( (!\result_addr[1]~input_o\ 
-- & ((!\result_addr[0]~input_o\ & (\result_ram[0][9]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][9]~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_addr[0]~input_o\,
	datab => \ALT_INV_result_addr[1]~input_o\,
	datac => \ALT_INV_result_ram[0][9]~q\,
	datad => \ALT_INV_result_ram[1][9]~q\,
	dataf => \ALT_INV_result_ram[2][9]~q\,
	combout => \result_data~10_combout\);

-- Location: FF_X81_Y13_N10
\result_data[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_data~10_combout\,
	sclr => \result_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_data[9]~reg0_q\);

-- Location: MLABCELL_X87_Y14_N18
\mult_result[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult_result[10]~feeder_combout\ = ( \Mult0~18\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~18\,
	combout => \mult_result[10]~feeder_combout\);

-- Location: FF_X87_Y14_N20
\mult_result[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mult_result[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \mult_result[0]~0_combout\,
	ena => \mult_result[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_result(10));

-- Location: MLABCELL_X84_Y13_N30
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( accumulator(10) ) + ( mult_result(10) ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( accumulator(10) ) + ( mult_result(10) ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_mult_result(10),
	datad => ALT_INV_accumulator(10),
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X84_Y13_N32
\accumulator[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \col_counter[0]~0_combout\,
	ena => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(10));

-- Location: LABCELL_X83_Y13_N27
\result_ram[1][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[1][10]~feeder_combout\ = accumulator(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_accumulator(10),
	combout => \result_ram[1][10]~feeder_combout\);

-- Location: FF_X83_Y13_N28
\result_ram[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[1][10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[1][10]~q\);

-- Location: MLABCELL_X82_Y13_N48
\result_ram[0][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[0][10]~feeder_combout\ = ( accumulator(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(10),
	combout => \result_ram[0][10]~feeder_combout\);

-- Location: FF_X82_Y13_N49
\result_ram[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[0][10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[0][10]~q\);

-- Location: FF_X83_Y13_N58
\result_ram[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(10),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[2][10]~q\);

-- Location: LABCELL_X83_Y13_N9
\result_data~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_data~11_combout\ = ( \result_ram[2][10]~q\ & ( ((!\result_addr[0]~input_o\ & ((\result_ram[0][10]~q\))) # (\result_addr[0]~input_o\ & (\result_ram[1][10]~q\))) # (\result_addr[1]~input_o\) ) ) # ( !\result_ram[2][10]~q\ & ( 
-- (!\result_addr[1]~input_o\ & ((!\result_addr[0]~input_o\ & ((\result_ram[0][10]~q\))) # (\result_addr[0]~input_o\ & (\result_ram[1][10]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_addr[0]~input_o\,
	datab => \ALT_INV_result_addr[1]~input_o\,
	datac => \ALT_INV_result_ram[1][10]~q\,
	datad => \ALT_INV_result_ram[0][10]~q\,
	dataf => \ALT_INV_result_ram[2][10]~q\,
	combout => \result_data~11_combout\);

-- Location: FF_X83_Y13_N11
\result_data[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_data~11_combout\,
	sclr => \result_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_data[10]~reg0_q\);

-- Location: MLABCELL_X87_Y14_N21
\mult_result[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult_result[11]~feeder_combout\ = ( \Mult0~19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~19\,
	combout => \mult_result[11]~feeder_combout\);

-- Location: FF_X87_Y14_N22
\mult_result[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mult_result[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \mult_result[0]~0_combout\,
	ena => \mult_result[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_result(11));

-- Location: MLABCELL_X84_Y13_N33
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( accumulator(11) ) + ( mult_result(11) ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( accumulator(11) ) + ( mult_result(11) ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_mult_result(11),
	datad => ALT_INV_accumulator(11),
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X84_Y13_N35
\accumulator[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~45_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \col_counter[0]~0_combout\,
	ena => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(11));

-- Location: FF_X84_Y13_N56
\result_ram[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(11),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[2][11]~q\);

-- Location: MLABCELL_X82_Y13_N51
\result_ram[0][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[0][11]~feeder_combout\ = ( accumulator(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(11),
	combout => \result_ram[0][11]~feeder_combout\);

-- Location: FF_X82_Y13_N52
\result_ram[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[0][11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[0][11]~q\);

-- Location: MLABCELL_X82_Y13_N9
\result_ram[1][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[1][11]~feeder_combout\ = ( accumulator(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(11),
	combout => \result_ram[1][11]~feeder_combout\);

-- Location: FF_X82_Y13_N10
\result_ram[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[1][11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[1][11]~q\);

-- Location: LABCELL_X83_Y13_N42
\result_data~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_data~12_combout\ = ( \result_addr[1]~input_o\ & ( \result_ram[1][11]~q\ & ( \result_ram[2][11]~q\ ) ) ) # ( !\result_addr[1]~input_o\ & ( \result_ram[1][11]~q\ & ( (\result_ram[0][11]~q\) # (\result_addr[0]~input_o\) ) ) ) # ( 
-- \result_addr[1]~input_o\ & ( !\result_ram[1][11]~q\ & ( \result_ram[2][11]~q\ ) ) ) # ( !\result_addr[1]~input_o\ & ( !\result_ram[1][11]~q\ & ( (!\result_addr[0]~input_o\ & \result_ram[0][11]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001100110011001101011111010111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_addr[0]~input_o\,
	datab => \ALT_INV_result_ram[2][11]~q\,
	datac => \ALT_INV_result_ram[0][11]~q\,
	datae => \ALT_INV_result_addr[1]~input_o\,
	dataf => \ALT_INV_result_ram[1][11]~q\,
	combout => \result_data~12_combout\);

-- Location: FF_X83_Y13_N43
\result_data[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_data~12_combout\,
	sclr => \result_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_data[11]~reg0_q\);

-- Location: MLABCELL_X87_Y14_N48
\mult_result[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult_result[12]~feeder_combout\ = ( \Mult0~20\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~20\,
	combout => \mult_result[12]~feeder_combout\);

-- Location: FF_X87_Y14_N50
\mult_result[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mult_result[12]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \mult_result[0]~0_combout\,
	ena => \mult_result[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_result(12));

-- Location: MLABCELL_X84_Y13_N36
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( accumulator(12) ) + ( mult_result(12) ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( accumulator(12) ) + ( mult_result(12) ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_mult_result(12),
	datad => ALT_INV_accumulator(12),
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X84_Y13_N38
\accumulator[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~49_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \col_counter[0]~0_combout\,
	ena => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(12));

-- Location: MLABCELL_X82_Y13_N0
\result_ram[0][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[0][12]~feeder_combout\ = ( accumulator(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(12),
	combout => \result_ram[0][12]~feeder_combout\);

-- Location: FF_X82_Y13_N1
\result_ram[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[0][12]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[0][12]~q\);

-- Location: LABCELL_X81_Y13_N54
\result_ram[2][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[2][12]~feeder_combout\ = ( accumulator(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(12),
	combout => \result_ram[2][12]~feeder_combout\);

-- Location: FF_X81_Y13_N56
\result_ram[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[2][12]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[2][12]~q\);

-- Location: LABCELL_X81_Y13_N12
\result_ram[1][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[1][12]~feeder_combout\ = accumulator(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_accumulator(12),
	combout => \result_ram[1][12]~feeder_combout\);

-- Location: FF_X81_Y13_N14
\result_ram[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[1][12]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[1][12]~q\);

-- Location: LABCELL_X81_Y13_N48
\result_data~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_data~13_combout\ = ( \result_ram[1][12]~q\ & ( (!\result_addr[1]~input_o\ & (((\result_ram[0][12]~q\)) # (\result_addr[0]~input_o\))) # (\result_addr[1]~input_o\ & (((\result_ram[2][12]~q\)))) ) ) # ( !\result_ram[1][12]~q\ & ( 
-- (!\result_addr[1]~input_o\ & (!\result_addr[0]~input_o\ & (\result_ram[0][12]~q\))) # (\result_addr[1]~input_o\ & (((\result_ram[2][12]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_addr[0]~input_o\,
	datab => \ALT_INV_result_addr[1]~input_o\,
	datac => \ALT_INV_result_ram[0][12]~q\,
	datad => \ALT_INV_result_ram[2][12]~q\,
	dataf => \ALT_INV_result_ram[1][12]~q\,
	combout => \result_data~13_combout\);

-- Location: FF_X81_Y13_N49
\result_data[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_data~13_combout\,
	sclr => \result_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_data[12]~reg0_q\);

-- Location: MLABCELL_X87_Y14_N51
\mult_result[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult_result[13]~feeder_combout\ = ( \Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~21\,
	combout => \mult_result[13]~feeder_combout\);

-- Location: FF_X87_Y14_N52
\mult_result[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mult_result[13]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \mult_result[0]~0_combout\,
	ena => \mult_result[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_result(13));

-- Location: MLABCELL_X84_Y13_N39
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( accumulator(13) ) + ( mult_result(13) ) + ( \Add2~50\ ))
-- \Add2~54\ = CARRY(( accumulator(13) ) + ( mult_result(13) ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_mult_result(13),
	datad => ALT_INV_accumulator(13),
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: FF_X84_Y13_N41
\accumulator[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~53_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \col_counter[0]~0_combout\,
	ena => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(13));

-- Location: MLABCELL_X82_Y13_N6
\result_ram[1][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[1][13]~feeder_combout\ = ( accumulator(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(13),
	combout => \result_ram[1][13]~feeder_combout\);

-- Location: FF_X82_Y13_N7
\result_ram[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[1][13]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[1][13]~q\);

-- Location: MLABCELL_X82_Y13_N3
\result_ram[0][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[0][13]~feeder_combout\ = ( accumulator(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(13),
	combout => \result_ram[0][13]~feeder_combout\);

-- Location: FF_X82_Y13_N4
\result_ram[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[0][13]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[0][13]~q\);

-- Location: FF_X81_Y13_N58
\result_ram[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(13),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[2][13]~q\);

-- Location: LABCELL_X81_Y13_N51
\result_data~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_data~14_combout\ = ( \result_ram[2][13]~q\ & ( ((!\result_addr[0]~input_o\ & ((\result_ram[0][13]~q\))) # (\result_addr[0]~input_o\ & (\result_ram[1][13]~q\))) # (\result_addr[1]~input_o\) ) ) # ( !\result_ram[2][13]~q\ & ( 
-- (!\result_addr[1]~input_o\ & ((!\result_addr[0]~input_o\ & ((\result_ram[0][13]~q\))) # (\result_addr[0]~input_o\ & (\result_ram[1][13]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_addr[0]~input_o\,
	datab => \ALT_INV_result_addr[1]~input_o\,
	datac => \ALT_INV_result_ram[1][13]~q\,
	datad => \ALT_INV_result_ram[0][13]~q\,
	dataf => \ALT_INV_result_ram[2][13]~q\,
	combout => \result_data~14_combout\);

-- Location: FF_X81_Y13_N53
\result_data[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_data~14_combout\,
	sclr => \result_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_data[13]~reg0_q\);

-- Location: MLABCELL_X87_Y14_N42
\mult_result[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult_result[14]~feeder_combout\ = ( \Mult0~22\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~22\,
	combout => \mult_result[14]~feeder_combout\);

-- Location: FF_X87_Y14_N43
\mult_result[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mult_result[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \mult_result[0]~0_combout\,
	ena => \mult_result[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_result(14));

-- Location: MLABCELL_X84_Y13_N42
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( accumulator(14) ) + ( mult_result(14) ) + ( \Add2~54\ ))
-- \Add2~58\ = CARRY(( accumulator(14) ) + ( mult_result(14) ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_mult_result(14),
	datad => ALT_INV_accumulator(14),
	cin => \Add2~54\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: FF_X84_Y13_N44
\accumulator[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~57_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \col_counter[0]~0_combout\,
	ena => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(14));

-- Location: FF_X82_Y13_N43
\result_ram[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => accumulator(14),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[0][14]~q\);

-- Location: LABCELL_X83_Y13_N3
\result_ram[1][14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[1][14]~feeder_combout\ = accumulator(14)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_accumulator(14),
	combout => \result_ram[1][14]~feeder_combout\);

-- Location: FF_X83_Y13_N4
\result_ram[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[1][14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[1][14]~q\);

-- Location: LABCELL_X83_Y13_N18
\result_ram[2][14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[2][14]~feeder_combout\ = ( accumulator(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(14),
	combout => \result_ram[2][14]~feeder_combout\);

-- Location: FF_X83_Y13_N19
\result_ram[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[2][14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[2][14]~q\);

-- Location: LABCELL_X83_Y13_N15
\result_data~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_data~15_combout\ = ( \result_ram[2][14]~q\ & ( ((!\result_addr[0]~input_o\ & (\result_ram[0][14]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][14]~q\)))) # (\result_addr[1]~input_o\) ) ) # ( !\result_ram[2][14]~q\ & ( 
-- (!\result_addr[1]~input_o\ & ((!\result_addr[0]~input_o\ & (\result_ram[0][14]~q\)) # (\result_addr[0]~input_o\ & ((\result_ram[1][14]~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_addr[0]~input_o\,
	datab => \ALT_INV_result_addr[1]~input_o\,
	datac => \ALT_INV_result_ram[0][14]~q\,
	datad => \ALT_INV_result_ram[1][14]~q\,
	dataf => \ALT_INV_result_ram[2][14]~q\,
	combout => \result_data~15_combout\);

-- Location: FF_X83_Y13_N16
\result_data[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_data~15_combout\,
	sclr => \result_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_data[14]~reg0_q\);

-- Location: MLABCELL_X87_Y14_N45
\mult_result[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult_result[15]~feeder_combout\ = ( \Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~23\,
	combout => \mult_result[15]~feeder_combout\);

-- Location: FF_X87_Y14_N46
\mult_result[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mult_result[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \mult_result[0]~0_combout\,
	ena => \mult_result[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_result(15));

-- Location: MLABCELL_X84_Y13_N45
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( accumulator(15) ) + ( mult_result(15) ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_mult_result(15),
	datad => ALT_INV_accumulator(15),
	cin => \Add2~58\,
	sumout => \Add2~61_sumout\);

-- Location: FF_X84_Y13_N47
\accumulator[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~61_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \col_counter[0]~0_combout\,
	ena => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(15));

-- Location: MLABCELL_X82_Y13_N45
\result_ram[0][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[0][15]~feeder_combout\ = ( accumulator(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(15),
	combout => \result_ram[0][15]~feeder_combout\);

-- Location: FF_X82_Y13_N46
\result_ram[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[0][15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[0][15]~q\);

-- Location: LABCELL_X83_Y13_N21
\result_ram[2][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[2][15]~feeder_combout\ = ( accumulator(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(15),
	combout => \result_ram[2][15]~feeder_combout\);

-- Location: FF_X83_Y13_N23
\result_ram[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[2][15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[2][15]~q\);

-- Location: LABCELL_X83_Y13_N24
\result_ram[1][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_ram[1][15]~feeder_combout\ = ( accumulator(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_accumulator(15),
	combout => \result_ram[1][15]~feeder_combout\);

-- Location: FF_X83_Y13_N25
\result_ram[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_ram[1][15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_ram[1][15]~q\);

-- Location: LABCELL_X83_Y13_N48
\result_data~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_data~16_combout\ = ( \result_ram[2][15]~q\ & ( \result_ram[1][15]~q\ & ( ((\result_addr[0]~input_o\) # (\result_addr[1]~input_o\)) # (\result_ram[0][15]~q\) ) ) ) # ( !\result_ram[2][15]~q\ & ( \result_ram[1][15]~q\ & ( (!\result_addr[1]~input_o\ 
-- & ((\result_addr[0]~input_o\) # (\result_ram[0][15]~q\))) ) ) ) # ( \result_ram[2][15]~q\ & ( !\result_ram[1][15]~q\ & ( ((\result_ram[0][15]~q\ & !\result_addr[0]~input_o\)) # (\result_addr[1]~input_o\) ) ) ) # ( !\result_ram[2][15]~q\ & ( 
-- !\result_ram[1][15]~q\ & ( (\result_ram[0][15]~q\ & (!\result_addr[1]~input_o\ & !\result_addr[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000011100110111001101001100010011000111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result_ram[0][15]~q\,
	datab => \ALT_INV_result_addr[1]~input_o\,
	datac => \ALT_INV_result_addr[0]~input_o\,
	datae => \ALT_INV_result_ram[2][15]~q\,
	dataf => \ALT_INV_result_ram[1][15]~q\,
	combout => \result_data~16_combout\);

-- Location: FF_X83_Y13_N49
\result_data[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_data~16_combout\,
	sclr => \result_data[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_data[15]~reg0_q\);

-- Location: LABCELL_X85_Y12_N45
\result_valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_valid~0_combout\ = ( !\result_data[8]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_result_data[8]~1_combout\,
	combout => \result_valid~0_combout\);

-- Location: FF_X85_Y12_N46
\result_valid~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \result_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_valid~reg0_q\);

-- Location: LABCELL_X77_Y1_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


