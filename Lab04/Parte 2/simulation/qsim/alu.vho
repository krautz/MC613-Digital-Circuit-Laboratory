-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "03/21/2018 18:15:47"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu_board IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0)
	);
END alu_board;

-- Design Ports Information
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu_board IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \liga_A|Mux6~0_combout\ : std_logic;
SIGNAL \liga_A|Mux5~0_combout\ : std_logic;
SIGNAL \liga_A|Mux4~0_combout\ : std_logic;
SIGNAL \liga_A|Mux3~0_combout\ : std_logic;
SIGNAL \liga_A|Mux2~0_combout\ : std_logic;
SIGNAL \liga_A|Mux1~0_combout\ : std_logic;
SIGNAL \liga_A|Mux0~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \liga_B|Mux6~0_combout\ : std_logic;
SIGNAL \liga_B|Mux5~0_combout\ : std_logic;
SIGNAL \liga_B|Mux4~0_combout\ : std_logic;
SIGNAL \liga_B|Mux3~0_combout\ : std_logic;
SIGNAL \liga_B|Mux2~0_combout\ : std_logic;
SIGNAL \liga_B|Mux1~0_combout\ : std_logic;
SIGNAL \liga_B|Mux0~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \faz_os_baguio|add|G1:2:adder|cout~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|sub|G1:2:adder|cout~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|Mux0~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|sub|G1:1:adder|cout~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|add|G1:1:adder|cout~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|Mux1~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|Mux3~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|Mux2~0_combout\ : std_logic;
SIGNAL \liga_F|Mux6~0_combout\ : std_logic;
SIGNAL \liga_F|Mux5~0_combout\ : std_logic;
SIGNAL \liga_F|Mux4~0_combout\ : std_logic;
SIGNAL \liga_F|Mux3~0_combout\ : std_logic;
SIGNAL \liga_F|Mux2~0_combout\ : std_logic;
SIGNAL \liga_F|Mux1~0_combout\ : std_logic;
SIGNAL \liga_F|Mux0~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|Mux8~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|Mux5~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|Mux4~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \liga_F|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|add|G1:1:adder|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|sub|G1:1:adder|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|add|G1:2:adder|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \faz_os_baguio|sub|G1:2:adder|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \liga_B|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \liga_A|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\liga_F|ALT_INV_Mux0~0_combout\ <= NOT \liga_F|Mux0~0_combout\;
\faz_os_baguio|ALT_INV_Mux1~0_combout\ <= NOT \faz_os_baguio|Mux1~0_combout\;
\faz_os_baguio|add|G1:1:adder|ALT_INV_cout~0_combout\ <= NOT \faz_os_baguio|add|G1:1:adder|cout~0_combout\;
\faz_os_baguio|sub|G1:1:adder|ALT_INV_cout~0_combout\ <= NOT \faz_os_baguio|sub|G1:1:adder|cout~0_combout\;
\faz_os_baguio|ALT_INV_Mux2~0_combout\ <= NOT \faz_os_baguio|Mux2~0_combout\;
\faz_os_baguio|ALT_INV_Mux3~0_combout\ <= NOT \faz_os_baguio|Mux3~0_combout\;
\faz_os_baguio|ALT_INV_Mux0~0_combout\ <= NOT \faz_os_baguio|Mux0~0_combout\;
\faz_os_baguio|add|G1:2:adder|ALT_INV_cout~0_combout\ <= NOT \faz_os_baguio|add|G1:2:adder|cout~0_combout\;
\faz_os_baguio|sub|G1:2:adder|ALT_INV_cout~0_combout\ <= NOT \faz_os_baguio|sub|G1:2:adder|cout~0_combout\;
\liga_B|ALT_INV_Mux0~0_combout\ <= NOT \liga_B|Mux0~0_combout\;
\liga_A|ALT_INV_Mux0~0_combout\ <= NOT \liga_A|Mux0~0_combout\;

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[7]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_A|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_A|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_A|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_A|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_A|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_A|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_A|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[3]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_B|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_B|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_B|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_B|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_B|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_B|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_B|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \faz_os_baguio|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_F|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_F|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_F|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_F|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_F|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_F|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \liga_F|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \faz_os_baguio|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \faz_os_baguio|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \faz_os_baguio|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \faz_os_baguio|Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LABCELL_X88_Y13_N30
\liga_A|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_A|Mux6~0_combout\ = ( \SW[5]~input_o\ & ( (\SW[6]~input_o\ & (\SW[7]~input_o\ & \SW[4]~input_o\)) ) ) # ( !\SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (!\SW[7]~input_o\ & \SW[4]~input_o\)) # (\SW[6]~input_o\ & ((!\SW[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111000000001100111100000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \liga_A|Mux6~0_combout\);

-- Location: LABCELL_X88_Y13_N33
\liga_A|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_A|Mux5~0_combout\ = ( \SW[5]~input_o\ & ( (!\SW[7]~input_o\ & (\SW[6]~input_o\ & !\SW[4]~input_o\)) # (\SW[7]~input_o\ & (!\SW[6]~input_o\)) ) ) # ( !\SW[5]~input_o\ & ( (!\SW[7]~input_o\ & (\SW[6]~input_o\ & \SW[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001001100100011001000110010001100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \liga_A|Mux5~0_combout\);

-- Location: LABCELL_X88_Y13_N6
\liga_A|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_A|Mux4~0_combout\ = ( \SW[5]~input_o\ & ( (!\SW[4]~input_o\ & (!\SW[7]~input_o\ $ (\SW[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \liga_A|Mux4~0_combout\);

-- Location: LABCELL_X88_Y13_N15
\liga_A|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_A|Mux3~0_combout\ = ( \SW[5]~input_o\ & ( (\SW[4]~input_o\ & \SW[6]~input_o\) ) ) # ( !\SW[5]~input_o\ & ( !\SW[4]~input_o\ $ (!\SW[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \liga_A|Mux3~0_combout\);

-- Location: LABCELL_X88_Y13_N18
\liga_A|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_A|Mux2~0_combout\ = ( \SW[6]~input_o\ & ( (!\SW[5]~input_o\) # (\SW[4]~input_o\) ) ) # ( !\SW[6]~input_o\ & ( \SW[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \liga_A|Mux2~0_combout\);

-- Location: LABCELL_X88_Y13_N9
\liga_A|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_A|Mux1~0_combout\ = ( \SW[5]~input_o\ & ( (!\SW[7]~input_o\ & ((!\SW[6]~input_o\) # (\SW[4]~input_o\))) # (\SW[7]~input_o\ & (\SW[6]~input_o\)) ) ) # ( !\SW[5]~input_o\ & ( (\SW[4]~input_o\ & ((!\SW[6]~input_o\) # (\SW[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110110011011100110111001101110011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \liga_A|Mux1~0_combout\);

-- Location: LABCELL_X88_Y13_N12
\liga_A|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_A|Mux0~0_combout\ = ( \SW[5]~input_o\ & ( (!\SW[4]~input_o\) # (!\SW[6]~input_o\) ) ) # ( !\SW[5]~input_o\ & ( ((!\SW[4]~input_o\ & \SW[7]~input_o\)) # (\SW[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101111101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \liga_A|Mux0~0_combout\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X88_Y13_N54
\liga_B|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_B|Mux6~0_combout\ = ( \SW[0]~input_o\ & ( (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & !\SW[3]~input_o\)) # (\SW[2]~input_o\ & (\SW[1]~input_o\ & \SW[3]~input_o\)) ) ) # ( !\SW[0]~input_o\ & ( (\SW[2]~input_o\ & !\SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011000000000000111100000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \liga_B|Mux6~0_combout\);

-- Location: LABCELL_X88_Y13_N0
\liga_B|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_B|Mux5~0_combout\ = (!\SW[3]~input_o\ & (\SW[2]~input_o\ & (!\SW[0]~input_o\ $ (!\SW[1]~input_o\)))) # (\SW[3]~input_o\ & (!\SW[2]~input_o\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100000000100110010000000010011001000000001001100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	combout => \liga_B|Mux5~0_combout\);

-- Location: LABCELL_X88_Y13_N3
\liga_B|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_B|Mux4~0_combout\ = ( !\SW[0]~input_o\ & ( (\SW[1]~input_o\ & (!\SW[3]~input_o\ $ (\SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001001100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \liga_B|Mux4~0_combout\);

-- Location: LABCELL_X88_Y13_N39
\liga_B|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_B|Mux3~0_combout\ = ( \SW[0]~input_o\ & ( !\SW[1]~input_o\ $ (\SW[2]~input_o\) ) ) # ( !\SW[0]~input_o\ & ( (!\SW[1]~input_o\ & \SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \liga_B|Mux3~0_combout\);

-- Location: MLABCELL_X82_Y13_N30
\liga_B|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_B|Mux2~0_combout\ = ( \SW[1]~input_o\ & ( \SW[0]~input_o\ ) ) # ( !\SW[1]~input_o\ & ( (\SW[2]~input_o\) # (\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010101010101010101011111010111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	combout => \liga_B|Mux2~0_combout\);

-- Location: LABCELL_X88_Y13_N57
\liga_B|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_B|Mux1~0_combout\ = ( \SW[0]~input_o\ & ( (!\SW[3]~input_o\ & ((!\SW[2]~input_o\) # (\SW[1]~input_o\))) # (\SW[3]~input_o\ & ((!\SW[1]~input_o\) # (\SW[2]~input_o\))) ) ) # ( !\SW[0]~input_o\ & ( (\SW[1]~input_o\ & (!\SW[3]~input_o\ $ 
-- (\SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001001100111011101101110111101110110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \liga_B|Mux1~0_combout\);

-- Location: LABCELL_X88_Y13_N36
\liga_B|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_B|Mux0~0_combout\ = ( \SW[0]~input_o\ & ( !\SW[1]~input_o\ $ (!\SW[2]~input_o\) ) ) # ( !\SW[0]~input_o\ & ( ((\SW[3]~input_o\) # (\SW[2]~input_o\)) # (\SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \liga_B|Mux0~0_combout\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: MLABCELL_X59_Y1_N6
\faz_os_baguio|add|G1:2:adder|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \faz_os_baguio|add|G1:2:adder|cout~0_combout\ = ( \SW[1]~input_o\ & ( \SW[2]~input_o\ & ( (((\SW[0]~input_o\ & \SW[4]~input_o\)) # (\SW[5]~input_o\)) # (\SW[6]~input_o\) ) ) ) # ( !\SW[1]~input_o\ & ( \SW[2]~input_o\ & ( ((\SW[0]~input_o\ & 
-- (\SW[4]~input_o\ & \SW[5]~input_o\))) # (\SW[6]~input_o\) ) ) ) # ( \SW[1]~input_o\ & ( !\SW[2]~input_o\ & ( (\SW[6]~input_o\ & (((\SW[0]~input_o\ & \SW[4]~input_o\)) # (\SW[5]~input_o\))) ) ) ) # ( !\SW[1]~input_o\ & ( !\SW[2]~input_o\ & ( 
-- (\SW[0]~input_o\ & (\SW[6]~input_o\ & (\SW[4]~input_o\ & \SW[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010011001100110011001101110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \faz_os_baguio|add|G1:2:adder|cout~0_combout\);

-- Location: MLABCELL_X59_Y1_N0
\faz_os_baguio|sub|G1:2:adder|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \faz_os_baguio|sub|G1:2:adder|cout~0_combout\ = ( \SW[1]~input_o\ & ( \SW[2]~input_o\ & ( (!\SW[6]~input_o\) # ((!\SW[5]~input_o\) # ((\SW[0]~input_o\ & !\SW[4]~input_o\))) ) ) ) # ( !\SW[1]~input_o\ & ( \SW[2]~input_o\ & ( (!\SW[6]~input_o\) # 
-- ((\SW[0]~input_o\ & (!\SW[4]~input_o\ & !\SW[5]~input_o\))) ) ) ) # ( \SW[1]~input_o\ & ( !\SW[2]~input_o\ & ( (!\SW[6]~input_o\ & ((!\SW[5]~input_o\) # ((\SW[0]~input_o\ & !\SW[4]~input_o\)))) ) ) ) # ( !\SW[1]~input_o\ & ( !\SW[2]~input_o\ & ( 
-- (\SW[0]~input_o\ & (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & !\SW[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000110011000100000011011100110011001111111111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \faz_os_baguio|sub|G1:2:adder|cout~0_combout\);

-- Location: MLABCELL_X59_Y1_N12
\faz_os_baguio|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \faz_os_baguio|Mux0~0_combout\ = ( \faz_os_baguio|sub|G1:2:adder|cout~0_combout\ & ( \SW[7]~input_o\ & ( (!\SW[9]~input_o\ & (!\SW[3]~input_o\ $ (((\faz_os_baguio|add|G1:2:adder|cout~0_combout\) # (\SW[8]~input_o\))))) # (\SW[9]~input_o\ & 
-- (((\SW[8]~input_o\)) # (\SW[3]~input_o\))) ) ) ) # ( !\faz_os_baguio|sub|G1:2:adder|cout~0_combout\ & ( \SW[7]~input_o\ & ( (!\SW[9]~input_o\ & (!\SW[3]~input_o\ $ (((\faz_os_baguio|add|G1:2:adder|cout~0_combout\) # (\SW[8]~input_o\))))) # 
-- (\SW[9]~input_o\ & ((!\SW[3]~input_o\) # ((\SW[8]~input_o\)))) ) ) ) # ( \faz_os_baguio|sub|G1:2:adder|cout~0_combout\ & ( !\SW[7]~input_o\ & ( (!\SW[9]~input_o\ & (!\SW[8]~input_o\ & (!\SW[3]~input_o\ $ (!\faz_os_baguio|add|G1:2:adder|cout~0_combout\)))) 
-- # (\SW[9]~input_o\ & (!\SW[3]~input_o\ $ ((\SW[8]~input_o\)))) ) ) ) # ( !\faz_os_baguio|sub|G1:2:adder|cout~0_combout\ & ( !\SW[7]~input_o\ & ( (!\SW[9]~input_o\ & (!\SW[8]~input_o\ & (!\SW[3]~input_o\ $ 
-- (!\faz_os_baguio|add|G1:2:adder|cout~0_combout\)))) # (\SW[9]~input_o\ & (\SW[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000110010001011000011010000110100111011001111001011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \faz_os_baguio|add|G1:2:adder|ALT_INV_cout~0_combout\,
	datae => \faz_os_baguio|sub|G1:2:adder|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \faz_os_baguio|Mux0~0_combout\);

-- Location: LABCELL_X88_Y13_N21
\faz_os_baguio|sub|G1:1:adder|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \faz_os_baguio|sub|G1:1:adder|cout~0_combout\ = ( \SW[0]~input_o\ & ( (!\SW[5]~input_o\ & ((!\SW[4]~input_o\) # (\SW[1]~input_o\))) # (\SW[5]~input_o\ & (!\SW[4]~input_o\ & \SW[1]~input_o\)) ) ) # ( !\SW[0]~input_o\ & ( (!\SW[5]~input_o\ & 
-- \SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010001000111011101000100011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \faz_os_baguio|sub|G1:1:adder|cout~0_combout\);

-- Location: LABCELL_X88_Y13_N42
\faz_os_baguio|add|G1:1:adder|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \faz_os_baguio|add|G1:1:adder|cout~0_combout\ = ( \SW[5]~input_o\ & ( ((\SW[4]~input_o\ & \SW[0]~input_o\)) # (\SW[1]~input_o\) ) ) # ( !\SW[5]~input_o\ & ( (\SW[4]~input_o\ & (\SW[0]~input_o\ & \SW[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \faz_os_baguio|add|G1:1:adder|cout~0_combout\);

-- Location: LABCELL_X88_Y13_N24
\faz_os_baguio|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \faz_os_baguio|Mux1~0_combout\ = ( \SW[9]~input_o\ & ( \faz_os_baguio|add|G1:1:adder|cout~0_combout\ & ( (!\SW[8]~input_o\ & (!\faz_os_baguio|sub|G1:1:adder|cout~0_combout\ $ (!\SW[6]~input_o\ $ (\SW[2]~input_o\)))) # (\SW[8]~input_o\ & 
-- (((\SW[2]~input_o\) # (\SW[6]~input_o\)))) ) ) ) # ( !\SW[9]~input_o\ & ( \faz_os_baguio|add|G1:1:adder|cout~0_combout\ & ( (!\SW[6]~input_o\ & (!\SW[8]~input_o\ & !\SW[2]~input_o\)) # (\SW[6]~input_o\ & ((\SW[2]~input_o\))) ) ) ) # ( \SW[9]~input_o\ & ( 
-- !\faz_os_baguio|add|G1:1:adder|cout~0_combout\ & ( (!\SW[8]~input_o\ & (!\faz_os_baguio|sub|G1:1:adder|cout~0_combout\ $ (!\SW[6]~input_o\ $ (\SW[2]~input_o\)))) # (\SW[8]~input_o\ & (((\SW[2]~input_o\) # (\SW[6]~input_o\)))) ) ) ) # ( !\SW[9]~input_o\ & 
-- ( !\faz_os_baguio|add|G1:1:adder|cout~0_combout\ & ( (!\SW[6]~input_o\ & (!\SW[8]~input_o\ & \SW[2]~input_o\)) # (\SW[6]~input_o\ & (!\SW[8]~input_o\ $ (\SW[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000011011000111001111111000000001100110110001110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \faz_os_baguio|sub|G1:1:adder|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \faz_os_baguio|add|G1:1:adder|ALT_INV_cout~0_combout\,
	combout => \faz_os_baguio|Mux1~0_combout\);

-- Location: LABCELL_X88_Y13_N45
\faz_os_baguio|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \faz_os_baguio|Mux3~0_combout\ = ( \SW[0]~input_o\ & ( (!\SW[4]~input_o\ & ((!\SW[8]~input_o\) # (\SW[9]~input_o\))) # (\SW[4]~input_o\ & ((\SW[8]~input_o\))) ) ) # ( !\SW[0]~input_o\ & ( (\SW[4]~input_o\ & ((!\SW[8]~input_o\) # (\SW[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000101010101010000010110101010010111111010101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \faz_os_baguio|Mux3~0_combout\);

-- Location: LABCELL_X88_Y13_N48
\faz_os_baguio|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \faz_os_baguio|Mux2~0_combout\ = ( \SW[1]~input_o\ & ( \SW[5]~input_o\ & ( ((\SW[0]~input_o\ & (!\SW[9]~input_o\ $ (!\SW[4]~input_o\)))) # (\SW[8]~input_o\) ) ) ) # ( !\SW[1]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[8]~input_o\ & ((!\SW[0]~input_o\) # 
-- (!\SW[9]~input_o\ $ (\SW[4]~input_o\)))) # (\SW[8]~input_o\ & (((\SW[9]~input_o\)))) ) ) ) # ( \SW[1]~input_o\ & ( !\SW[5]~input_o\ & ( (!\SW[8]~input_o\ & ((!\SW[0]~input_o\) # (!\SW[9]~input_o\ $ (\SW[4]~input_o\)))) # (\SW[8]~input_o\ & 
-- (((\SW[9]~input_o\)))) ) ) ) # ( !\SW[1]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[0]~input_o\ & (!\SW[8]~input_o\ & (!\SW[9]~input_o\ $ (!\SW[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000000111000111011001111100011101100110001111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \faz_os_baguio|Mux2~0_combout\);

-- Location: LABCELL_X88_Y11_N3
\liga_F|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_F|Mux6~0_combout\ = ( \faz_os_baguio|Mux3~0_combout\ & ( \faz_os_baguio|Mux2~0_combout\ & ( (\faz_os_baguio|Mux0~0_combout\ & \faz_os_baguio|Mux1~0_combout\) ) ) ) # ( \faz_os_baguio|Mux3~0_combout\ & ( !\faz_os_baguio|Mux2~0_combout\ & ( 
-- (!\faz_os_baguio|Mux0~0_combout\ & !\faz_os_baguio|Mux1~0_combout\) ) ) ) # ( !\faz_os_baguio|Mux3~0_combout\ & ( !\faz_os_baguio|Mux2~0_combout\ & ( \faz_os_baguio|Mux1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111101010100000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \faz_os_baguio|ALT_INV_Mux0~0_combout\,
	datad => \faz_os_baguio|ALT_INV_Mux1~0_combout\,
	datae => \faz_os_baguio|ALT_INV_Mux3~0_combout\,
	dataf => \faz_os_baguio|ALT_INV_Mux2~0_combout\,
	combout => \liga_F|Mux6~0_combout\);

-- Location: LABCELL_X88_Y11_N39
\liga_F|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_F|Mux5~0_combout\ = ( \faz_os_baguio|Mux3~0_combout\ & ( \faz_os_baguio|Mux2~0_combout\ & ( (\faz_os_baguio|Mux0~0_combout\ & !\faz_os_baguio|Mux1~0_combout\) ) ) ) # ( !\faz_os_baguio|Mux3~0_combout\ & ( \faz_os_baguio|Mux2~0_combout\ & ( 
-- !\faz_os_baguio|Mux0~0_combout\ $ (!\faz_os_baguio|Mux1~0_combout\) ) ) ) # ( \faz_os_baguio|Mux3~0_combout\ & ( !\faz_os_baguio|Mux2~0_combout\ & ( (!\faz_os_baguio|Mux0~0_combout\ & \faz_os_baguio|Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101001010101101010100101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \faz_os_baguio|ALT_INV_Mux0~0_combout\,
	datad => \faz_os_baguio|ALT_INV_Mux1~0_combout\,
	datae => \faz_os_baguio|ALT_INV_Mux3~0_combout\,
	dataf => \faz_os_baguio|ALT_INV_Mux2~0_combout\,
	combout => \liga_F|Mux5~0_combout\);

-- Location: LABCELL_X88_Y11_N42
\liga_F|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_F|Mux4~0_combout\ = ( !\faz_os_baguio|Mux3~0_combout\ & ( \faz_os_baguio|Mux2~0_combout\ & ( !\faz_os_baguio|Mux1~0_combout\ $ (\faz_os_baguio|Mux0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100101101001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \faz_os_baguio|ALT_INV_Mux1~0_combout\,
	datac => \faz_os_baguio|ALT_INV_Mux0~0_combout\,
	datae => \faz_os_baguio|ALT_INV_Mux3~0_combout\,
	dataf => \faz_os_baguio|ALT_INV_Mux2~0_combout\,
	combout => \liga_F|Mux4~0_combout\);

-- Location: LABCELL_X88_Y11_N48
\liga_F|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_F|Mux3~0_combout\ = ( \faz_os_baguio|Mux3~0_combout\ & ( \faz_os_baguio|Mux2~0_combout\ & ( \faz_os_baguio|Mux1~0_combout\ ) ) ) # ( \faz_os_baguio|Mux3~0_combout\ & ( !\faz_os_baguio|Mux2~0_combout\ & ( !\faz_os_baguio|Mux1~0_combout\ ) ) ) # ( 
-- !\faz_os_baguio|Mux3~0_combout\ & ( !\faz_os_baguio|Mux2~0_combout\ & ( \faz_os_baguio|Mux1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \faz_os_baguio|ALT_INV_Mux1~0_combout\,
	datae => \faz_os_baguio|ALT_INV_Mux3~0_combout\,
	dataf => \faz_os_baguio|ALT_INV_Mux2~0_combout\,
	combout => \liga_F|Mux3~0_combout\);

-- Location: LABCELL_X88_Y11_N57
\liga_F|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_F|Mux2~0_combout\ = ( \faz_os_baguio|Mux3~0_combout\ & ( \faz_os_baguio|Mux2~0_combout\ ) ) # ( \faz_os_baguio|Mux3~0_combout\ & ( !\faz_os_baguio|Mux2~0_combout\ ) ) # ( !\faz_os_baguio|Mux3~0_combout\ & ( !\faz_os_baguio|Mux2~0_combout\ & ( 
-- \faz_os_baguio|Mux1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \faz_os_baguio|ALT_INV_Mux1~0_combout\,
	datae => \faz_os_baguio|ALT_INV_Mux3~0_combout\,
	dataf => \faz_os_baguio|ALT_INV_Mux2~0_combout\,
	combout => \liga_F|Mux2~0_combout\);

-- Location: LABCELL_X88_Y11_N33
\liga_F|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_F|Mux1~0_combout\ = ( \faz_os_baguio|Mux3~0_combout\ & ( \faz_os_baguio|Mux2~0_combout\ & ( (!\faz_os_baguio|Mux0~0_combout\) # (\faz_os_baguio|Mux1~0_combout\) ) ) ) # ( !\faz_os_baguio|Mux3~0_combout\ & ( \faz_os_baguio|Mux2~0_combout\ & ( 
-- !\faz_os_baguio|Mux0~0_combout\ $ (\faz_os_baguio|Mux1~0_combout\) ) ) ) # ( \faz_os_baguio|Mux3~0_combout\ & ( !\faz_os_baguio|Mux2~0_combout\ & ( (!\faz_os_baguio|Mux1~0_combout\) # (\faz_os_baguio|Mux0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010110101010010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \faz_os_baguio|ALT_INV_Mux0~0_combout\,
	datad => \faz_os_baguio|ALT_INV_Mux1~0_combout\,
	datae => \faz_os_baguio|ALT_INV_Mux3~0_combout\,
	dataf => \faz_os_baguio|ALT_INV_Mux2~0_combout\,
	combout => \liga_F|Mux1~0_combout\);

-- Location: LABCELL_X88_Y11_N6
\liga_F|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \liga_F|Mux0~0_combout\ = ( \faz_os_baguio|Mux3~0_combout\ & ( \faz_os_baguio|Mux2~0_combout\ & ( !\faz_os_baguio|Mux1~0_combout\ ) ) ) # ( !\faz_os_baguio|Mux3~0_combout\ & ( \faz_os_baguio|Mux2~0_combout\ ) ) # ( \faz_os_baguio|Mux3~0_combout\ & ( 
-- !\faz_os_baguio|Mux2~0_combout\ & ( \faz_os_baguio|Mux1~0_combout\ ) ) ) # ( !\faz_os_baguio|Mux3~0_combout\ & ( !\faz_os_baguio|Mux2~0_combout\ & ( (\faz_os_baguio|Mux0~0_combout\) # (\faz_os_baguio|Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010101010101010111111111111111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \faz_os_baguio|ALT_INV_Mux1~0_combout\,
	datac => \faz_os_baguio|ALT_INV_Mux0~0_combout\,
	datae => \faz_os_baguio|ALT_INV_Mux3~0_combout\,
	dataf => \faz_os_baguio|ALT_INV_Mux2~0_combout\,
	combout => \liga_F|Mux0~0_combout\);

-- Location: MLABCELL_X59_Y1_N48
\faz_os_baguio|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \faz_os_baguio|Mux8~0_combout\ = ( \faz_os_baguio|sub|G1:2:adder|cout~0_combout\ & ( \SW[7]~input_o\ & ( (!\SW[8]~input_o\ & (!\SW[3]~input_o\ $ (((\faz_os_baguio|add|G1:2:adder|cout~0_combout\) # (\SW[9]~input_o\))))) ) ) ) # ( 
-- !\faz_os_baguio|sub|G1:2:adder|cout~0_combout\ & ( \SW[7]~input_o\ & ( (!\SW[8]~input_o\ & (!\SW[3]~input_o\ $ (((!\SW[9]~input_o\ & \faz_os_baguio|add|G1:2:adder|cout~0_combout\))))) ) ) ) # ( \faz_os_baguio|sub|G1:2:adder|cout~0_combout\ & ( 
-- !\SW[7]~input_o\ & ( (!\SW[8]~input_o\ & (!\SW[3]~input_o\ $ (((!\SW[9]~input_o\ & !\faz_os_baguio|add|G1:2:adder|cout~0_combout\))))) ) ) ) # ( !\faz_os_baguio|sub|G1:2:adder|cout~0_combout\ & ( !\SW[7]~input_o\ & ( (!\SW[8]~input_o\ & (!\SW[3]~input_o\ 
-- $ (((!\faz_os_baguio|add|G1:2:adder|cout~0_combout\) # (\SW[9]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010010000011000001010000010100000011000001001000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \faz_os_baguio|add|G1:2:adder|ALT_INV_cout~0_combout\,
	datae => \faz_os_baguio|sub|G1:2:adder|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \faz_os_baguio|Mux8~0_combout\);

-- Location: MLABCELL_X59_Y1_N54
\faz_os_baguio|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \faz_os_baguio|Mux5~0_combout\ = ( \faz_os_baguio|sub|G1:2:adder|cout~0_combout\ & ( \SW[7]~input_o\ & ( (!\SW[8]~input_o\ & ((!\SW[3]~input_o\ & (\SW[9]~input_o\)) # (\SW[3]~input_o\ & (!\SW[9]~input_o\ & 
-- !\faz_os_baguio|add|G1:2:adder|cout~0_combout\)))) ) ) ) # ( !\faz_os_baguio|sub|G1:2:adder|cout~0_combout\ & ( \SW[7]~input_o\ & ( (\SW[3]~input_o\ & (!\SW[9]~input_o\ & (!\SW[8]~input_o\ & !\faz_os_baguio|add|G1:2:adder|cout~0_combout\))) ) ) ) # ( 
-- \faz_os_baguio|sub|G1:2:adder|cout~0_combout\ & ( !\SW[7]~input_o\ & ( (!\SW[3]~input_o\ & (!\SW[9]~input_o\ & (!\SW[8]~input_o\ & \faz_os_baguio|add|G1:2:adder|cout~0_combout\))) ) ) ) # ( !\faz_os_baguio|sub|G1:2:adder|cout~0_combout\ & ( 
-- !\SW[7]~input_o\ & ( (!\SW[8]~input_o\ & ((!\SW[3]~input_o\ & (!\SW[9]~input_o\ & \faz_os_baguio|add|G1:2:adder|cout~0_combout\)) # (\SW[3]~input_o\ & (\SW[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010010000000000001000000001000000000000000110000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \faz_os_baguio|add|G1:2:adder|ALT_INV_cout~0_combout\,
	datae => \faz_os_baguio|sub|G1:2:adder|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \faz_os_baguio|Mux5~0_combout\);

-- Location: MLABCELL_X59_Y1_N30
\faz_os_baguio|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \faz_os_baguio|Mux4~0_combout\ = ( \faz_os_baguio|sub|G1:2:adder|cout~0_combout\ & ( \SW[7]~input_o\ & ( (!\SW[8]~input_o\ & ((!\SW[3]~input_o\ & ((\faz_os_baguio|add|G1:2:adder|cout~0_combout\) # (\SW[9]~input_o\))) # (\SW[3]~input_o\ & 
-- (!\SW[9]~input_o\)))) ) ) ) # ( !\faz_os_baguio|sub|G1:2:adder|cout~0_combout\ & ( \SW[7]~input_o\ & ( (!\SW[8]~input_o\ & (((\faz_os_baguio|add|G1:2:adder|cout~0_combout\) # (\SW[9]~input_o\)) # (\SW[3]~input_o\))) ) ) ) # ( 
-- \faz_os_baguio|sub|G1:2:adder|cout~0_combout\ & ( !\SW[7]~input_o\ & ( (\SW[3]~input_o\ & (!\SW[9]~input_o\ & (!\SW[8]~input_o\ & \faz_os_baguio|add|G1:2:adder|cout~0_combout\))) ) ) ) # ( !\faz_os_baguio|sub|G1:2:adder|cout~0_combout\ & ( 
-- !\SW[7]~input_o\ & ( (!\SW[8]~input_o\ & ((!\SW[3]~input_o\ & (\SW[9]~input_o\)) # (\SW[3]~input_o\ & (!\SW[9]~input_o\ & \faz_os_baguio|add|G1:2:adder|cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001100000000000000100000001110000111100000110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \faz_os_baguio|add|G1:2:adder|ALT_INV_cout~0_combout\,
	datae => \faz_os_baguio|sub|G1:2:adder|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \faz_os_baguio|Mux4~0_combout\);

-- Location: LABCELL_X88_Y11_N12
\faz_os_baguio|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \faz_os_baguio|Equal0~0_combout\ = ( !\faz_os_baguio|Mux3~0_combout\ & ( !\faz_os_baguio|Mux2~0_combout\ & ( (!\faz_os_baguio|Mux1~0_combout\ & !\faz_os_baguio|Mux0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \faz_os_baguio|ALT_INV_Mux1~0_combout\,
	datac => \faz_os_baguio|ALT_INV_Mux0~0_combout\,
	datae => \faz_os_baguio|ALT_INV_Mux3~0_combout\,
	dataf => \faz_os_baguio|ALT_INV_Mux2~0_combout\,
	combout => \faz_os_baguio|Equal0~0_combout\);

-- Location: LABCELL_X71_Y6_N3
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


