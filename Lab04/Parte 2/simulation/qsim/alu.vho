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

-- DATE "03/21/2018 17:28:12"

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
	F : BUFFER std_logic_vector(3 DOWNTO 0);
	s0 : IN std_logic;
	s1 : IN std_logic;
	Z : BUFFER std_logic;
	C : BUFFER std_logic;
	V : BUFFER std_logic;
	N : BUFFER std_logic
	);
END alu;

-- Design Ports Information
-- F[0]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \s0~input_o\ : std_logic;
SIGNAL \s1~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \add|G1:1:adder|cout~0_combout\ : std_logic;
SIGNAL \sub|G1:1:adder|cout~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \add|G1:2:adder|cout~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \sub|G1:2:adder|cout~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
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
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \add|G1:2:adder|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \sub|G1:2:adder|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \add|G1:1:adder|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \sub|G1:1:adder|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;

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
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\add|G1:2:adder|ALT_INV_cout~0_combout\ <= NOT \add|G1:2:adder|cout~0_combout\;
\sub|G1:2:adder|ALT_INV_cout~0_combout\ <= NOT \sub|G1:2:adder|cout~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\add|G1:1:adder|ALT_INV_cout~0_combout\ <= NOT \add|G1:1:adder|cout~0_combout\;
\sub|G1:1:adder|ALT_INV_cout~0_combout\ <= NOT \sub|G1:1:adder|cout~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;

-- Location: IOOBUF_X89_Y25_N56
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

-- Location: IOOBUF_X89_Y25_N22
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

-- Location: IOOBUF_X89_Y20_N62
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

-- Location: IOOBUF_X89_Y25_N39
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

-- Location: IOOBUF_X89_Y20_N45
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

-- Location: IOOBUF_X89_Y23_N5
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

-- Location: IOOBUF_X89_Y25_N5
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

-- Location: IOIBUF_X89_Y20_N78
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\s0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0,
	o => \s0~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\s1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1,
	o => \s1~input_o\);

-- Location: IOIBUF_X89_Y23_N55
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LABCELL_X88_Y21_N30
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \b[0]~input_o\ & ( (!\a[0]~input_o\ & ((!\s1~input_o\) # (\s0~input_o\))) # (\a[0]~input_o\ & ((\s1~input_o\))) ) ) # ( !\b[0]~input_o\ & ( (\a[0]~input_o\ & ((!\s1~input_o\) # (\s0~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000011001100110000001111001100001111111100110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_s0~input_o\,
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

-- Location: LABCELL_X88_Y21_N36
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \b[1]~input_o\ & ( \b[0]~input_o\ & ( (!\s1~input_o\ & (!\a[0]~input_o\ $ (!\s0~input_o\ $ (!\a[1]~input_o\)))) # (\s1~input_o\ & (((\a[1]~input_o\) # (\s0~input_o\)))) ) ) ) # ( !\b[1]~input_o\ & ( \b[0]~input_o\ & ( (!\s1~input_o\ & 
-- (!\a[0]~input_o\ $ (!\s0~input_o\ $ (\a[1]~input_o\)))) # (\s1~input_o\ & (((\s0~input_o\ & \a[1]~input_o\)))) ) ) ) # ( \b[1]~input_o\ & ( !\b[0]~input_o\ & ( (!\s1~input_o\ & ((!\a[1]~input_o\))) # (\s1~input_o\ & ((\a[1]~input_o\) # (\s0~input_o\))) ) 
-- ) ) # ( !\b[1]~input_o\ & ( !\b[0]~input_o\ & ( (\a[1]~input_o\ & ((!\s1~input_o\) # (\s0~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111101011110101010100101000100001111000011101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s1~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_s0~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	datae => \ALT_INV_b[1]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X88_Y21_N12
\add|G1:1:adder|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add|G1:1:adder|cout~0_combout\ = ( \b[0]~input_o\ & ( (!\a[0]~input_o\ & (\b[1]~input_o\ & \a[1]~input_o\)) # (\a[0]~input_o\ & ((\a[1]~input_o\) # (\b[1]~input_o\))) ) ) # ( !\b[0]~input_o\ & ( (\b[1]~input_o\ & \a[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \add|G1:1:adder|cout~0_combout\);

-- Location: LABCELL_X88_Y21_N33
\sub|G1:1:adder|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub|G1:1:adder|cout~0_combout\ = ( \b[0]~input_o\ & ( (!\a[0]~input_o\ & ((!\a[1]~input_o\) # (\b[1]~input_o\))) # (\a[0]~input_o\ & (!\a[1]~input_o\ & \b[1]~input_o\)) ) ) # ( !\b[0]~input_o\ & ( (!\a[1]~input_o\ & \b[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011000000111111001100000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_b[1]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \sub|G1:1:adder|cout~0_combout\);

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

-- Location: IOIBUF_X89_Y23_N21
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LABCELL_X88_Y21_N48
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \b[2]~input_o\ & ( \a[2]~input_o\ & ( ((!\s0~input_o\ & (\add|G1:1:adder|cout~0_combout\)) # (\s0~input_o\ & ((\sub|G1:1:adder|cout~0_combout\)))) # (\s1~input_o\) ) ) ) # ( !\b[2]~input_o\ & ( \a[2]~input_o\ & ( (!\s0~input_o\ & 
-- (!\add|G1:1:adder|cout~0_combout\ & (!\s1~input_o\))) # (\s0~input_o\ & (((!\sub|G1:1:adder|cout~0_combout\) # (\s1~input_o\)))) ) ) ) # ( \b[2]~input_o\ & ( !\a[2]~input_o\ & ( (!\s0~input_o\ & (!\add|G1:1:adder|cout~0_combout\ & (!\s1~input_o\))) # 
-- (\s0~input_o\ & (((!\sub|G1:1:adder|cout~0_combout\) # (\s1~input_o\)))) ) ) ) # ( !\b[2]~input_o\ & ( !\a[2]~input_o\ & ( (!\s1~input_o\ & ((!\s0~input_o\ & (\add|G1:1:adder|cout~0_combout\)) # (\s0~input_o\ & ((\sub|G1:1:adder|cout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000110101011000010111010101100001010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s0~input_o\,
	datab => \add|G1:1:adder|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_s1~input_o\,
	datad => \sub|G1:1:adder|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_a[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X89_Y16_N21
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LABCELL_X88_Y21_N0
\add|G1:2:adder|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add|G1:2:adder|cout~0_combout\ = ( \b[2]~input_o\ & ( \b[0]~input_o\ & ( ((!\a[0]~input_o\ & (\b[1]~input_o\ & \a[1]~input_o\)) # (\a[0]~input_o\ & ((\a[1]~input_o\) # (\b[1]~input_o\)))) # (\a[2]~input_o\) ) ) ) # ( !\b[2]~input_o\ & ( \b[0]~input_o\ & 
-- ( (\a[2]~input_o\ & ((!\a[0]~input_o\ & (\b[1]~input_o\ & \a[1]~input_o\)) # (\a[0]~input_o\ & ((\a[1]~input_o\) # (\b[1]~input_o\))))) ) ) ) # ( \b[2]~input_o\ & ( !\b[0]~input_o\ & ( ((\b[1]~input_o\ & \a[1]~input_o\)) # (\a[2]~input_o\) ) ) ) # ( 
-- !\b[2]~input_o\ & ( !\b[0]~input_o\ & ( (\a[2]~input_o\ & (\b[1]~input_o\ & \a[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101010101010101111100000001000101010101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \add|G1:2:adder|cout~0_combout\);

-- Location: IOIBUF_X89_Y21_N38
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LABCELL_X88_Y21_N24
\sub|G1:2:adder|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub|G1:2:adder|cout~0_combout\ = ( \b[2]~input_o\ & ( \b[0]~input_o\ & ( (!\a[2]~input_o\) # ((!\a[0]~input_o\ & ((!\a[1]~input_o\) # (\b[1]~input_o\))) # (\a[0]~input_o\ & (\b[1]~input_o\ & !\a[1]~input_o\))) ) ) ) # ( !\b[2]~input_o\ & ( \b[0]~input_o\ 
-- & ( (!\a[2]~input_o\ & ((!\a[0]~input_o\ & ((!\a[1]~input_o\) # (\b[1]~input_o\))) # (\a[0]~input_o\ & (\b[1]~input_o\ & !\a[1]~input_o\)))) ) ) ) # ( \b[2]~input_o\ & ( !\b[0]~input_o\ & ( (!\a[2]~input_o\) # ((\b[1]~input_o\ & !\a[1]~input_o\)) ) ) ) # 
-- ( !\b[2]~input_o\ & ( !\b[0]~input_o\ & ( (!\a[2]~input_o\ & (\b[1]~input_o\ & !\a[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000101011111010101010001010000010001110111110101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \sub|G1:2:adder|cout~0_combout\);

-- Location: LABCELL_X88_Y21_N6
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \s1~input_o\ & ( \sub|G1:2:adder|cout~0_combout\ & ( (!\s0~input_o\ & (\a[3]~input_o\ & \b[3]~input_o\)) # (\s0~input_o\ & ((\b[3]~input_o\) # (\a[3]~input_o\))) ) ) ) # ( !\s1~input_o\ & ( \sub|G1:2:adder|cout~0_combout\ & ( 
-- !\a[3]~input_o\ $ (!\b[3]~input_o\ $ (((\add|G1:2:adder|cout~0_combout\) # (\s0~input_o\)))) ) ) ) # ( \s1~input_o\ & ( !\sub|G1:2:adder|cout~0_combout\ & ( (!\s0~input_o\ & (\a[3]~input_o\ & \b[3]~input_o\)) # (\s0~input_o\ & ((\b[3]~input_o\) # 
-- (\a[3]~input_o\))) ) ) ) # ( !\s1~input_o\ & ( !\sub|G1:2:adder|cout~0_combout\ & ( !\a[3]~input_o\ $ (!\b[3]~input_o\ $ (((!\s0~input_o\ & \add|G1:2:adder|cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100111000110000100010111011101101100100100110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s0~input_o\,
	datab => \ALT_INV_a[3]~input_o\,
	datac => \add|G1:2:adder|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_b[3]~input_o\,
	datae => \ALT_INV_s1~input_o\,
	dataf => \sub|G1:2:adder|ALT_INV_cout~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X88_Y21_N15
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\Mux3~0_combout\ & ( (!\Mux1~0_combout\ & (!\Mux0~0_combout\ & !\Mux2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X88_Y21_N42
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( !\s1~input_o\ & ( \sub|G1:2:adder|cout~0_combout\ & ( (!\add|G1:2:adder|cout~0_combout\ & (\a[3]~input_o\ & (!\s0~input_o\ $ (!\b[3]~input_o\)))) # (\add|G1:2:adder|cout~0_combout\ & ((!\b[3]~input_o\ & ((\a[3]~input_o\))) # 
-- (\b[3]~input_o\ & (!\s0~input_o\)))) ) ) ) # ( !\s1~input_o\ & ( !\sub|G1:2:adder|cout~0_combout\ & ( (!\add|G1:2:adder|cout~0_combout\ & ((!\b[3]~input_o\ & (\s0~input_o\)) # (\b[3]~input_o\ & ((\a[3]~input_o\))))) # (\add|G1:2:adder|cout~0_combout\ & 
-- ((!\s0~input_o\ $ (!\b[3]~input_o\)) # (\a[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100111011000000000000000000010011001010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s0~input_o\,
	datab => \ALT_INV_a[3]~input_o\,
	datac => \add|G1:2:adder|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_b[3]~input_o\,
	datae => \ALT_INV_s1~input_o\,
	dataf => \sub|G1:2:adder|ALT_INV_cout~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X88_Y21_N18
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( !\s1~input_o\ & ( \sub|G1:2:adder|cout~0_combout\ & ( (!\add|G1:2:adder|cout~0_combout\ & (\a[3]~input_o\ & (!\s0~input_o\ $ (!\b[3]~input_o\)))) # (\add|G1:2:adder|cout~0_combout\ & (!\b[3]~input_o\ & (!\s0~input_o\ $ 
-- (\a[3]~input_o\)))) ) ) ) # ( !\s1~input_o\ & ( !\sub|G1:2:adder|cout~0_combout\ & ( (!\add|G1:2:adder|cout~0_combout\ & (\b[3]~input_o\ & (!\s0~input_o\ $ (!\a[3]~input_o\)))) # (\add|G1:2:adder|cout~0_combout\ & (!\a[3]~input_o\ & (!\s0~input_o\ $ 
-- (\b[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001100100000000000000000000011001001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s0~input_o\,
	datab => \ALT_INV_a[3]~input_o\,
	datac => \add|G1:2:adder|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_b[3]~input_o\,
	datae => \ALT_INV_s1~input_o\,
	dataf => \sub|G1:2:adder|ALT_INV_cout~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X88_Y21_N54
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( !\s1~input_o\ & ( \sub|G1:2:adder|cout~0_combout\ & ( !\a[3]~input_o\ $ (!\b[3]~input_o\ $ (((\add|G1:2:adder|cout~0_combout\) # (\s0~input_o\)))) ) ) ) # ( !\s1~input_o\ & ( !\sub|G1:2:adder|cout~0_combout\ & ( !\a[3]~input_o\ $ 
-- (!\b[3]~input_o\ $ (((!\s0~input_o\ & \add|G1:2:adder|cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100111000110000000000000000001101100100100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s0~input_o\,
	datab => \ALT_INV_a[3]~input_o\,
	datac => \add|G1:2:adder|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_b[3]~input_o\,
	datae => \ALT_INV_s1~input_o\,
	dataf => \sub|G1:2:adder|ALT_INV_cout~0_combout\,
	combout => \Mux8~0_combout\);

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


