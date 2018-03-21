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

-- DATE "03/21/2018 19:42:51"

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

ENTITY 	alu IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	F : OUT std_logic_vector(3 DOWNTO 0);
	s0 : IN std_logic;
	s1 : IN std_logic;
	Z : OUT std_logic;
	C : OUT std_logic;
	V : OUT std_logic;
	N : OUT std_logic
	);
END alu;

-- Design Ports Information
-- F[0]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s0 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \s0~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \s1~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \add|G1:1:adder|cout~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \sub|G1:2:adder|r~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \sub|G1:2:adder|cout~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \sub|G1:3:adder|r~0_combout\ : std_logic;
SIGNAL \add|G1:2:adder|cout~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \add_aux|G1:3:adder|r~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_s0~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_s1~input_o\ : std_logic;
SIGNAL \add_aux|G1:3:adder|ALT_INV_r~combout\ : std_logic;
SIGNAL \sub|G1:3:adder|ALT_INV_r~0_combout\ : std_logic;
SIGNAL \sub|G1:2:adder|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \add|G1:2:adder|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \sub|G1:2:adder|ALT_INV_r~combout\ : std_logic;
SIGNAL \add|G1:1:adder|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
F <= ww_F;
ww_s0 <= s0;
ww_s1 <= s1;
Z <= ww_Z;
C <= ww_C;
V <= ww_V;
N <= ww_N;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_s0~input_o\ <= NOT \s0~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_s1~input_o\ <= NOT \s1~input_o\;
\add_aux|G1:3:adder|ALT_INV_r~combout\ <= NOT \add_aux|G1:3:adder|r~combout\;
\sub|G1:3:adder|ALT_INV_r~0_combout\ <= NOT \sub|G1:3:adder|r~0_combout\;
\sub|G1:2:adder|ALT_INV_cout~0_combout\ <= NOT \sub|G1:2:adder|cout~0_combout\;
\add|G1:2:adder|ALT_INV_cout~0_combout\ <= NOT \add|G1:2:adder|cout~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\sub|G1:2:adder|ALT_INV_r~combout\ <= NOT \sub|G1:2:adder|r~combout\;
\add|G1:1:adder|ALT_INV_cout~0_combout\ <= NOT \add|G1:1:adder|cout~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X89_Y16_N56
\F[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_F(0));

-- Location: IOOBUF_X89_Y16_N22
\F[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_F(1));

-- Location: IOOBUF_X89_Y21_N5
\F[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_F(2));

-- Location: IOOBUF_X89_Y23_N56
\F[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_F(3));

-- Location: IOOBUF_X89_Y15_N5
\Z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_Z);

-- Location: IOOBUF_X89_Y23_N22
\C~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_C);

-- Location: IOOBUF_X89_Y20_N96
\V~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_V);

-- Location: IOOBUF_X89_Y23_N5
\N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_N);

-- Location: IOIBUF_X89_Y21_N55
\s0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0,
	o => \s0~input_o\);

-- Location: IOIBUF_X89_Y16_N4
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X89_Y15_N55
\s1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1,
	o => \s1~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LABCELL_X88_Y19_N3
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \b[0]~input_o\ & ( (!\a[0]~input_o\ & ((!\s1~input_o\) # (\s0~input_o\))) # (\a[0]~input_o\ & ((\s1~input_o\))) ) ) # ( !\b[0]~input_o\ & ( (\a[0]~input_o\ & ((!\s1~input_o\) # (\s0~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101000011110000010111110000010111111111000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s0~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_s1~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X89_Y21_N21
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X89_Y16_N38
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LABCELL_X88_Y20_N54
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \s0~input_o\ & ( \b[0]~input_o\ & ( (!\s1~input_o\ & (!\a[1]~input_o\ $ (!\b[1]~input_o\ $ (!\a[0]~input_o\)))) # (\s1~input_o\ & (((\b[1]~input_o\)) # (\a[1]~input_o\))) ) ) ) # ( !\s0~input_o\ & ( \b[0]~input_o\ & ( (!\s1~input_o\ & 
-- (!\a[1]~input_o\ $ (!\b[1]~input_o\ $ (\a[0]~input_o\)))) # (\s1~input_o\ & (\a[1]~input_o\ & (\b[1]~input_o\))) ) ) ) # ( \s0~input_o\ & ( !\b[0]~input_o\ & ( (!\a[1]~input_o\ & ((\b[1]~input_o\))) # (\a[1]~input_o\ & ((!\b[1]~input_o\) # 
-- (\s1~input_o\))) ) ) ) # ( !\s0~input_o\ & ( !\b[0]~input_o\ & ( (!\a[1]~input_o\ & (!\s1~input_o\ & \b[1]~input_o\)) # (\a[1]~input_o\ & (!\s1~input_o\ $ (\b[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010110110101101101001001100001011001011101011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_s1~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_s0~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X89_Y20_N44
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LABCELL_X88_Y19_N39
\add|G1:1:adder|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add|G1:1:adder|cout~0_combout\ = ( \b[1]~input_o\ & ( \b[0]~input_o\ & ( (\a[0]~input_o\) # (\a[1]~input_o\) ) ) ) # ( !\b[1]~input_o\ & ( \b[0]~input_o\ & ( (\a[1]~input_o\ & \a[0]~input_o\) ) ) ) # ( \b[1]~input_o\ & ( !\b[0]~input_o\ & ( 
-- \a[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000011000000110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_b[1]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \add|G1:1:adder|cout~0_combout\);

-- Location: IOIBUF_X89_Y23_N38
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LABCELL_X88_Y20_N0
\sub|G1:2:adder|r\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub|G1:2:adder|r~combout\ = ( \a[1]~input_o\ & ( \b[2]~input_o\ & ( !\a[2]~input_o\ $ (((!\a[0]~input_o\ & (\b[1]~input_o\ & \b[0]~input_o\)))) ) ) ) # ( !\a[1]~input_o\ & ( \b[2]~input_o\ & ( !\a[2]~input_o\ $ ((((!\a[0]~input_o\ & \b[0]~input_o\)) # 
-- (\b[1]~input_o\))) ) ) ) # ( \a[1]~input_o\ & ( !\b[2]~input_o\ & ( !\a[2]~input_o\ $ ((((!\b[1]~input_o\) # (!\b[0]~input_o\)) # (\a[0]~input_o\))) ) ) ) # ( !\a[1]~input_o\ & ( !\b[2]~input_o\ & ( !\a[2]~input_o\ $ (((!\b[1]~input_o\ & 
-- ((!\b[0]~input_o\) # (\a[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010011010010101010101100110100101011001011010101010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_b[2]~input_o\,
	combout => \sub|G1:2:adder|r~combout\);

-- Location: LABCELL_X88_Y20_N36
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \s0~input_o\ & ( \b[2]~input_o\ & ( (\s1~input_o\) # (\sub|G1:2:adder|r~combout\) ) ) ) # ( !\s0~input_o\ & ( \b[2]~input_o\ & ( !\a[2]~input_o\ $ (((\s1~input_o\) # (\add|G1:1:adder|cout~0_combout\))) ) ) ) # ( \s0~input_o\ & ( 
-- !\b[2]~input_o\ & ( (!\s1~input_o\ & ((\sub|G1:2:adder|r~combout\))) # (\s1~input_o\ & (\a[2]~input_o\)) ) ) ) # ( !\s0~input_o\ & ( !\b[2]~input_o\ & ( (!\s1~input_o\ & (!\a[2]~input_o\ $ (!\add|G1:1:adder|cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000000011110101010110011001010101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \add|G1:1:adder|ALT_INV_cout~0_combout\,
	datac => \sub|G1:2:adder|ALT_INV_r~combout\,
	datad => \ALT_INV_s1~input_o\,
	datae => \ALT_INV_s0~input_o\,
	dataf => \ALT_INV_b[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X89_Y20_N78
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LABCELL_X88_Y20_N18
\sub|G1:2:adder|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub|G1:2:adder|cout~0_combout\ = ( \a[1]~input_o\ & ( \b[2]~input_o\ & ( (\a[2]~input_o\ & (((!\b[0]~input_o\) # (!\b[1]~input_o\)) # (\a[0]~input_o\))) ) ) ) # ( !\a[1]~input_o\ & ( \b[2]~input_o\ & ( (\a[2]~input_o\ & (!\b[1]~input_o\ & 
-- ((!\b[0]~input_o\) # (\a[0]~input_o\)))) ) ) ) # ( \a[1]~input_o\ & ( !\b[2]~input_o\ & ( (!\b[0]~input_o\ & (((\b[1]~input_o\)))) # (\b[0]~input_o\ & (((!\b[1]~input_o\) # (\a[2]~input_o\)) # (\a[0]~input_o\))) ) ) ) # ( !\a[1]~input_o\ & ( 
-- !\b[2]~input_o\ & ( (!\b[1]~input_o\ & (\b[0]~input_o\ & ((\a[2]~input_o\) # (\a[0]~input_o\)))) # (\b[1]~input_o\ & (((\a[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100001111001100111101111100001101000000000000111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_b[1]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_b[2]~input_o\,
	combout => \sub|G1:2:adder|cout~0_combout\);

-- Location: IOIBUF_X89_Y20_N61
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LABCELL_X88_Y20_N24
\sub|G1:3:adder|r~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub|G1:3:adder|r~0_combout\ = ( \b[2]~input_o\ & ( !\a[3]~input_o\ $ (\b[3]~input_o\) ) ) # ( !\b[2]~input_o\ & ( !\a[3]~input_o\ $ (!\b[3]~input_o\ $ (((\b[0]~input_o\) # (\b[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010000111011110001000011111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[1]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	datad => \ALT_INV_b[3]~input_o\,
	dataf => \ALT_INV_b[2]~input_o\,
	combout => \sub|G1:3:adder|r~0_combout\);

-- Location: LABCELL_X88_Y20_N12
\add|G1:2:adder|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add|G1:2:adder|cout~0_combout\ = ( \a[1]~input_o\ & ( \b[2]~input_o\ & ( (((\a[0]~input_o\ & \b[0]~input_o\)) # (\b[1]~input_o\)) # (\a[2]~input_o\) ) ) ) # ( !\a[1]~input_o\ & ( \b[2]~input_o\ & ( ((\a[0]~input_o\ & (\b[0]~input_o\ & \b[1]~input_o\))) # 
-- (\a[2]~input_o\) ) ) ) # ( \a[1]~input_o\ & ( !\b[2]~input_o\ & ( (\a[2]~input_o\ & (((\a[0]~input_o\ & \b[0]~input_o\)) # (\b[1]~input_o\))) ) ) ) # ( !\a[1]~input_o\ & ( !\b[2]~input_o\ & ( (\a[0]~input_o\ & (\b[0]~input_o\ & (\a[2]~input_o\ & 
-- \b[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010000111100001111000111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_b[1]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_b[2]~input_o\,
	combout => \add|G1:2:adder|cout~0_combout\);

-- Location: LABCELL_X88_Y20_N48
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !\s0~input_o\ & ( (!\s1~input_o\ & (!\a[3]~input_o\ $ (!\add|G1:2:adder|cout~0_combout\ $ ((\b[3]~input_o\))))) # (\s1~input_o\ & (\a[3]~input_o\ & (((\b[3]~input_o\))))) ) ) # ( \s0~input_o\ & ( (!\s1~input_o\ & 
-- ((!\sub|G1:2:adder|cout~0_combout\ $ (((!\sub|G1:3:adder|r~0_combout\)))))) # (\s1~input_o\ & ((((\b[3]~input_o\))) # (\a[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100100010010101000111010011111101001000100101011101000111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datab => \ALT_INV_s1~input_o\,
	datac => \sub|G1:2:adder|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_b[3]~input_o\,
	datae => \ALT_INV_s0~input_o\,
	dataf => \sub|G1:3:adder|ALT_INV_r~0_combout\,
	datag => \add|G1:2:adder|ALT_INV_cout~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X88_Y19_N0
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\Mux0~0_combout\ & ( (!\Mux2~0_combout\ & (!\Mux3~0_combout\ & !\Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Mux3~0_combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X88_Y20_N27
\add_aux|G1:3:adder|r\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_aux|G1:3:adder|r~combout\ = ( \b[2]~input_o\ & ( !\b[3]~input_o\ ) ) # ( !\b[2]~input_o\ & ( !\b[3]~input_o\ $ (((!\b[1]~input_o\ & !\b[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[1]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \ALT_INV_b[3]~input_o\,
	dataf => \ALT_INV_b[2]~input_o\,
	combout => \add_aux|G1:3:adder|r~combout\);

-- Location: LABCELL_X88_Y20_N42
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( !\s0~input_o\ & ( (!\s1~input_o\ & ((!\a[3]~input_o\ & (\add|G1:2:adder|cout~0_combout\ & (\b[3]~input_o\))) # (\a[3]~input_o\ & (((\b[3]~input_o\)) # (\add|G1:2:adder|cout~0_combout\))))) ) ) # ( \s0~input_o\ & ( ((!\s1~input_o\ & 
-- ((!\a[3]~input_o\ & (\add_aux|G1:3:adder|r~combout\ & \sub|G1:2:adder|cout~0_combout\)) # (\a[3]~input_o\ & ((\sub|G1:2:adder|cout~0_combout\) # (\add_aux|G1:3:adder|r~combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001011100000000000001010000000000010111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datab => \add|G1:2:adder|ALT_INV_cout~0_combout\,
	datac => \add_aux|G1:3:adder|ALT_INV_r~combout\,
	datad => \ALT_INV_s1~input_o\,
	datae => \ALT_INV_s0~input_o\,
	dataf => \sub|G1:2:adder|ALT_INV_cout~0_combout\,
	datag => \ALT_INV_b[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X88_Y20_N6
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( !\s0~input_o\ & ( (!\s1~input_o\ & ((!\a[3]~input_o\ & (\add|G1:2:adder|cout~0_combout\ & (!\b[3]~input_o\))) # (\a[3]~input_o\ & (!\add|G1:2:adder|cout~0_combout\ & (\b[3]~input_o\))))) ) ) # ( \s0~input_o\ & ( (!\s1~input_o\ & 
-- ((!\a[3]~input_o\ & (!\add_aux|G1:3:adder|r~combout\ & ((\sub|G1:2:adder|cout~0_combout\)))) # (\a[3]~input_o\ & (\add_aux|G1:3:adder|r~combout\ & ((!\sub|G1:2:adder|cout~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100001000000000001000000010000001000010000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datab => \ALT_INV_s1~input_o\,
	datac => \add_aux|G1:3:adder|ALT_INV_r~combout\,
	datad => \ALT_INV_b[3]~input_o\,
	datae => \ALT_INV_s0~input_o\,
	dataf => \sub|G1:2:adder|ALT_INV_cout~0_combout\,
	datag => \add|G1:2:adder|ALT_INV_cout~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X88_Y20_N30
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( !\s0~input_o\ & ( (!\s1~input_o\ & (!\a[3]~input_o\ $ (!\add|G1:2:adder|cout~0_combout\ $ ((\b[3]~input_o\))))) ) ) # ( \s0~input_o\ & ( ((!\s1~input_o\ & (!\sub|G1:2:adder|cout~0_combout\ $ (((!\sub|G1:3:adder|r~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100100010000100000011000000110001001000100001001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datab => \ALT_INV_s1~input_o\,
	datac => \sub|G1:2:adder|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_b[3]~input_o\,
	datae => \ALT_INV_s0~input_o\,
	dataf => \sub|G1:3:adder|ALT_INV_r~0_combout\,
	datag => \add|G1:2:adder|ALT_INV_cout~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X37_Y79_N3
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


