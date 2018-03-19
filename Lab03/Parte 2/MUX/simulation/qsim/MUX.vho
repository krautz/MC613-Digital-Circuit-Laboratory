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

-- DATE "03/19/2018 16:02:46"

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

ENTITY 	mux16_to_1 IS
    PORT (
	data : IN std_logic_vector(15 DOWNTO 0);
	sel : IN std_logic_vector(3 DOWNTO 0);
	output : OUT std_logic
	);
END mux16_to_1;

-- Design Ports Information
-- output	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[14]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[8]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[12]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[10]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[15]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[9]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[13]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[11]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux16_to_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_output : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sel[3]~input_o\ : std_logic;
SIGNAL \data[13]~input_o\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \mux5|pt2|f~4_combout\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \data[9]~input_o\ : std_logic;
SIGNAL \data[11]~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \mux5|pt2|f~5_combout\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \mux5|pt2|f~7_combout\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \data[15]~input_o\ : std_logic;
SIGNAL \mux5|pt2|f~3_combout\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \data[12]~input_o\ : std_logic;
SIGNAL \mux5|pt2|f~1_combout\ : std_logic;
SIGNAL \data[8]~input_o\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \data[10]~input_o\ : std_logic;
SIGNAL \mux5|pt2|f~2_combout\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \mux5|pt2|f~11_combout\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \data[14]~input_o\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \mux5|pt2|f~0_combout\ : std_logic;
SIGNAL \mux5|pt2|f~6_combout\ : std_logic;
SIGNAL \ALT_INV_data[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[0]~input_o\ : std_logic;
SIGNAL \mux5|pt2|ALT_INV_f~5_combout\ : std_logic;
SIGNAL \mux5|pt2|ALT_INV_f~4_combout\ : std_logic;
SIGNAL \mux5|pt2|ALT_INV_f~3_combout\ : std_logic;
SIGNAL \mux5|pt2|ALT_INV_f~2_combout\ : std_logic;
SIGNAL \mux5|pt2|ALT_INV_f~1_combout\ : std_logic;
SIGNAL \mux5|pt2|ALT_INV_f~0_combout\ : std_logic;
SIGNAL \mux5|pt2|ALT_INV_f~11_combout\ : std_logic;
SIGNAL \mux5|pt2|ALT_INV_f~7_combout\ : std_logic;

BEGIN

ww_data <= data;
ww_sel <= sel;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_data[11]~input_o\ <= NOT \data[11]~input_o\;
\ALT_INV_data[3]~input_o\ <= NOT \data[3]~input_o\;
\ALT_INV_data[13]~input_o\ <= NOT \data[13]~input_o\;
\ALT_INV_data[5]~input_o\ <= NOT \data[5]~input_o\;
\ALT_INV_data[9]~input_o\ <= NOT \data[9]~input_o\;
\ALT_INV_data[1]~input_o\ <= NOT \data[1]~input_o\;
\ALT_INV_data[15]~input_o\ <= NOT \data[15]~input_o\;
\ALT_INV_data[7]~input_o\ <= NOT \data[7]~input_o\;
\ALT_INV_data[10]~input_o\ <= NOT \data[10]~input_o\;
\ALT_INV_data[2]~input_o\ <= NOT \data[2]~input_o\;
\ALT_INV_data[12]~input_o\ <= NOT \data[12]~input_o\;
\ALT_INV_data[4]~input_o\ <= NOT \data[4]~input_o\;
\ALT_INV_data[8]~input_o\ <= NOT \data[8]~input_o\;
\ALT_INV_data[0]~input_o\ <= NOT \data[0]~input_o\;
\ALT_INV_data[14]~input_o\ <= NOT \data[14]~input_o\;
\ALT_INV_data[6]~input_o\ <= NOT \data[6]~input_o\;
\ALT_INV_sel[2]~input_o\ <= NOT \sel[2]~input_o\;
\ALT_INV_sel[1]~input_o\ <= NOT \sel[1]~input_o\;
\ALT_INV_sel[3]~input_o\ <= NOT \sel[3]~input_o\;
\ALT_INV_sel[0]~input_o\ <= NOT \sel[0]~input_o\;
\mux5|pt2|ALT_INV_f~5_combout\ <= NOT \mux5|pt2|f~5_combout\;
\mux5|pt2|ALT_INV_f~4_combout\ <= NOT \mux5|pt2|f~4_combout\;
\mux5|pt2|ALT_INV_f~3_combout\ <= NOT \mux5|pt2|f~3_combout\;
\mux5|pt2|ALT_INV_f~2_combout\ <= NOT \mux5|pt2|f~2_combout\;
\mux5|pt2|ALT_INV_f~1_combout\ <= NOT \mux5|pt2|f~1_combout\;
\mux5|pt2|ALT_INV_f~0_combout\ <= NOT \mux5|pt2|f~0_combout\;
\mux5|pt2|ALT_INV_f~11_combout\ <= NOT \mux5|pt2|f~11_combout\;
\mux5|pt2|ALT_INV_f~7_combout\ <= NOT \mux5|pt2|f~7_combout\;

-- Location: IOOBUF_X52_Y0_N2
\output~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux5|pt2|f~6_combout\,
	devoe => ww_devoe,
	o => ww_output);

-- Location: IOIBUF_X12_Y0_N18
\sel[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(3),
	o => \sel[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(13),
	o => \data[13]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: LABCELL_X16_Y1_N27
\mux5|pt2|f~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux5|pt2|f~4_combout\ = (!\sel[3]~input_o\ & ((\data[5]~input_o\))) # (\sel[3]~input_o\ & (\data[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sel[3]~input_o\,
	datac => \ALT_INV_data[13]~input_o\,
	datad => \ALT_INV_data[5]~input_o\,
	combout => \mux5|pt2|f~4_combout\);

-- Location: IOIBUF_X16_Y0_N18
\sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N58
\data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(9),
	o => \data[9]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(11),
	o => \data[11]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: LABCELL_X16_Y1_N30
\mux5|pt2|f~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux5|pt2|f~5_combout\ = ( \data[3]~input_o\ & ( (!\sel[3]~input_o\) # (\data[11]~input_o\) ) ) # ( !\data[3]~input_o\ & ( (\sel[3]~input_o\ & \data[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sel[3]~input_o\,
	datac => \ALT_INV_data[11]~input_o\,
	dataf => \ALT_INV_data[3]~input_o\,
	combout => \mux5|pt2|f~5_combout\);

-- Location: IOIBUF_X14_Y0_N1
\sel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N41
\data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: LABCELL_X16_Y1_N0
\mux5|pt2|f~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux5|pt2|f~7_combout\ = ( !\sel[3]~input_o\ & ( (!\sel[1]~input_o\ & (((!\sel[2]~input_o\ & ((\data[1]~input_o\))) # (\sel[2]~input_o\ & (\mux5|pt2|f~4_combout\))))) # (\sel[1]~input_o\ & ((((\mux5|pt2|f~5_combout\ & !\sel[2]~input_o\))))) ) ) # ( 
-- \sel[3]~input_o\ & ( (!\sel[1]~input_o\ & (((!\sel[2]~input_o\ & ((\data[9]~input_o\))) # (\sel[2]~input_o\ & (\mux5|pt2|f~4_combout\))))) # (\sel[1]~input_o\ & ((((\mux5|pt2|f~5_combout\ & !\sel[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000011000011111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux5|pt2|ALT_INV_f~4_combout\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_data[9]~input_o\,
	datad => \mux5|pt2|ALT_INV_f~5_combout\,
	datae => \ALT_INV_sel[3]~input_o\,
	dataf => \ALT_INV_sel[2]~input_o\,
	datag => \ALT_INV_data[1]~input_o\,
	combout => \mux5|pt2|f~7_combout\);

-- Location: IOIBUF_X14_Y0_N35
\data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N52
\data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(15),
	o => \data[15]~input_o\);

-- Location: LABCELL_X16_Y1_N45
\mux5|pt2|f~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux5|pt2|f~3_combout\ = ( \data[15]~input_o\ & ( (\sel[2]~input_o\ & (\sel[1]~input_o\ & ((\sel[3]~input_o\) # (\data[7]~input_o\)))) ) ) # ( !\data[15]~input_o\ & ( (\sel[2]~input_o\ & (\sel[1]~input_o\ & (\data[7]~input_o\ & !\sel[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[2]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_data[7]~input_o\,
	datad => \ALT_INV_sel[3]~input_o\,
	dataf => \ALT_INV_data[15]~input_o\,
	combout => \mux5|pt2|f~3_combout\);

-- Location: IOIBUF_X14_Y0_N52
\data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(12),
	o => \data[12]~input_o\);

-- Location: LABCELL_X16_Y1_N51
\mux5|pt2|f~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux5|pt2|f~1_combout\ = ( \data[12]~input_o\ & ( (\data[4]~input_o\) # (\sel[3]~input_o\) ) ) # ( !\data[12]~input_o\ & ( (!\sel[3]~input_o\ & \data[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sel[3]~input_o\,
	datad => \ALT_INV_data[4]~input_o\,
	dataf => \ALT_INV_data[12]~input_o\,
	combout => \mux5|pt2|f~1_combout\);

-- Location: IOIBUF_X12_Y0_N52
\data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(8),
	o => \data[8]~input_o\);

-- Location: IOIBUF_X18_Y0_N75
\data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N92
\data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(10),
	o => \data[10]~input_o\);

-- Location: LABCELL_X16_Y1_N24
\mux5|pt2|f~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux5|pt2|f~2_combout\ = ( \data[10]~input_o\ & ( (\data[2]~input_o\) # (\sel[3]~input_o\) ) ) # ( !\data[10]~input_o\ & ( (!\sel[3]~input_o\ & \data[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sel[3]~input_o\,
	datac => \ALT_INV_data[2]~input_o\,
	dataf => \ALT_INV_data[10]~input_o\,
	combout => \mux5|pt2|f~2_combout\);

-- Location: IOIBUF_X20_Y0_N52
\data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: LABCELL_X16_Y1_N36
\mux5|pt2|f~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux5|pt2|f~11_combout\ = ( !\sel[3]~input_o\ & ( (!\sel[1]~input_o\ & (((!\sel[2]~input_o\ & ((\data[0]~input_o\))) # (\sel[2]~input_o\ & (\mux5|pt2|f~1_combout\))))) # (\sel[1]~input_o\ & ((((\mux5|pt2|f~2_combout\ & !\sel[2]~input_o\))))) ) ) # ( 
-- \sel[3]~input_o\ & ( (!\sel[1]~input_o\ & (((!\sel[2]~input_o\ & ((\data[8]~input_o\))) # (\sel[2]~input_o\ & (\mux5|pt2|f~1_combout\))))) # (\sel[1]~input_o\ & ((((\mux5|pt2|f~2_combout\ & !\sel[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000011000011111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux5|pt2|ALT_INV_f~1_combout\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_data[8]~input_o\,
	datad => \mux5|pt2|ALT_INV_f~2_combout\,
	datae => \ALT_INV_sel[3]~input_o\,
	dataf => \ALT_INV_sel[2]~input_o\,
	datag => \ALT_INV_data[0]~input_o\,
	combout => \mux5|pt2|f~11_combout\);

-- Location: IOIBUF_X2_Y0_N41
\sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(14),
	o => \data[14]~input_o\);

-- Location: IOIBUF_X16_Y0_N35
\data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: LABCELL_X16_Y1_N42
\mux5|pt2|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux5|pt2|f~0_combout\ = ( \sel[3]~input_o\ & ( (\sel[2]~input_o\ & (\sel[1]~input_o\ & \data[14]~input_o\)) ) ) # ( !\sel[3]~input_o\ & ( (\sel[2]~input_o\ & (\sel[1]~input_o\ & \data[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[2]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_data[14]~input_o\,
	datad => \ALT_INV_data[6]~input_o\,
	dataf => \ALT_INV_sel[3]~input_o\,
	combout => \mux5|pt2|f~0_combout\);

-- Location: LABCELL_X16_Y1_N48
\mux5|pt2|f~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux5|pt2|f~6_combout\ = ( \mux5|pt2|f~0_combout\ & ( ((!\sel[0]~input_o\) # (\mux5|pt2|f~3_combout\)) # (\mux5|pt2|f~7_combout\) ) ) # ( !\mux5|pt2|f~0_combout\ & ( (!\sel[0]~input_o\ & (((\mux5|pt2|f~11_combout\)))) # (\sel[0]~input_o\ & 
-- (((\mux5|pt2|f~3_combout\)) # (\mux5|pt2|f~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101110111000011110111011111111111011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux5|pt2|ALT_INV_f~7_combout\,
	datab => \mux5|pt2|ALT_INV_f~3_combout\,
	datac => \mux5|pt2|ALT_INV_f~11_combout\,
	datad => \ALT_INV_sel[0]~input_o\,
	dataf => \mux5|pt2|ALT_INV_f~0_combout\,
	combout => \mux5|pt2|f~6_combout\);

-- Location: LABCELL_X7_Y4_N0
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


