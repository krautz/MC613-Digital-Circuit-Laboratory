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

-- DATE "04/03/2018 14:59:00"

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

ENTITY 	latches_ffs IS
    PORT (
	clock : IN std_logic;
	preset : IN std_logic;
	clear : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	Q : BUFFER std_logic_vector(1 TO 6)
	);
END latches_ffs;

ARCHITECTURE structure OF latches_ffs IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_preset : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Q : std_logic_vector(1 TO 6);
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \lff1|process_0~0_combout\ : std_logic;
SIGNAL \lff1|Qa~combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \preset~input_o\ : std_logic;
SIGNAL \lff5|var~q\ : std_logic;
SIGNAL \lff5|var~0_combout\ : std_logic;
SIGNAL \lff5|Q~q\ : std_logic;
SIGNAL \lff2|comb~1_combout\ : std_logic;
SIGNAL \lff2|comb~0_combout\ : std_logic;
SIGNAL \lff2|Q~combout\ : std_logic;
SIGNAL \lff4|var~0_combout\ : std_logic;
SIGNAL \lff4|Q~q\ : std_logic;
SIGNAL \lff6|var~q\ : std_logic;
SIGNAL \lff6|var~0_combout\ : std_logic;
SIGNAL \lff6|Q~q\ : std_logic;
SIGNAL \lff3|Q~combout\ : std_logic;
SIGNAL \ALT_INV_clock~input_o\ : std_logic;
SIGNAL \ALT_INV_preset~input_o\ : std_logic;
SIGNAL \ALT_INV_clear~input_o\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;
SIGNAL \ALT_INV_A~input_o\ : std_logic;
SIGNAL \lff3|ALT_INV_Q~combout\ : std_logic;
SIGNAL \lff2|ALT_INV_Q~combout\ : std_logic;
SIGNAL \lff1|ALT_INV_Qa~combout\ : std_logic;
SIGNAL \lff6|ALT_INV_var~q\ : std_logic;
SIGNAL \lff2|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \lff2|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \lff5|ALT_INV_var~q\ : std_logic;
SIGNAL \lff1|ALT_INV_process_0~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_preset <= preset;
ww_clear <= clear;
ww_A <= A;
ww_B <= B;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clock~input_o\ <= NOT \clock~input_o\;
\ALT_INV_preset~input_o\ <= NOT \preset~input_o\;
\ALT_INV_clear~input_o\ <= NOT \clear~input_o\;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;
\ALT_INV_A~input_o\ <= NOT \A~input_o\;
\lff3|ALT_INV_Q~combout\ <= NOT \lff3|Q~combout\;
\lff2|ALT_INV_Q~combout\ <= NOT \lff2|Q~combout\;
\lff1|ALT_INV_Qa~combout\ <= NOT \lff1|Qa~combout\;
\lff6|ALT_INV_var~q\ <= NOT \lff6|var~q\;
\lff2|ALT_INV_comb~1_combout\ <= NOT \lff2|comb~1_combout\;
\lff2|ALT_INV_comb~0_combout\ <= NOT \lff2|comb~0_combout\;
\lff5|ALT_INV_var~q\ <= NOT \lff5|var~q\;
\lff1|ALT_INV_process_0~0_combout\ <= NOT \lff1|process_0~0_combout\;

\Q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lff1|Qa~combout\,
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

\Q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lff5|Q~q\,
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

\Q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lff2|Q~combout\,
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lff4|Q~q\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lff6|Q~q\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lff3|Q~combout\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

\A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

\B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

\lff1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lff1|process_0~0_combout\ = (!\A~input_o\ & \B~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \ALT_INV_B~input_o\,
	combout => \lff1|process_0~0_combout\);

\lff1|Qa\ : cyclonev_lcell_comb
-- Equation(s):
-- \lff1|Qa~combout\ = ( \A~input_o\ & ( !\lff1|process_0~0_combout\ ) ) # ( !\A~input_o\ & ( !\lff1|process_0~0_combout\ & ( \lff1|Qa~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lff1|ALT_INV_Qa~combout\,
	datae => \ALT_INV_A~input_o\,
	dataf => \lff1|ALT_INV_process_0~0_combout\,
	combout => \lff1|Qa~combout\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\clear~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

\preset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_preset,
	o => \preset~input_o\);

\lff5|var\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \lff5|var~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lff5|var~q\);

\lff5|var~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lff5|var~0_combout\ = ( \lff5|var~q\ & ( (!\clear~input_o\ & ((!\B~input_o\) # (\preset~input_o\))) ) ) # ( !\lff5|var~q\ & ( (!\clear~input_o\ & ((\preset~input_o\) # (\A~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000110000001111000001010000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \ALT_INV_B~input_o\,
	datac => \ALT_INV_clear~input_o\,
	datad => \ALT_INV_preset~input_o\,
	datae => \lff5|ALT_INV_var~q\,
	combout => \lff5|var~0_combout\);

\lff5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \lff5|var~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lff5|Q~q\);

\lff2|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lff2|comb~1_combout\ = (\A~input_o\ & (!\B~input_o\ & \clock~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \ALT_INV_B~input_o\,
	datac => \ALT_INV_clock~input_o\,
	combout => \lff2|comb~1_combout\);

\lff2|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lff2|comb~0_combout\ = (!\A~input_o\ & (\B~input_o\ & \clock~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \ALT_INV_B~input_o\,
	datac => \ALT_INV_clock~input_o\,
	combout => \lff2|comb~0_combout\);

\lff2|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \lff2|Q~combout\ = ( \lff2|comb~1_combout\ & ( !\lff2|comb~0_combout\ ) ) # ( !\lff2|comb~1_combout\ & ( !\lff2|comb~0_combout\ & ( \lff2|Q~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lff2|ALT_INV_Q~combout\,
	datae => \lff2|ALT_INV_comb~1_combout\,
	dataf => \lff2|ALT_INV_comb~0_combout\,
	combout => \lff2|Q~combout\);

\lff4|var~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lff4|var~0_combout\ = (!\clear~input_o\ & ((\preset~input_o\) # (\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \ALT_INV_clear~input_o\,
	datac => \ALT_INV_preset~input_o\,
	combout => \lff4|var~0_combout\);

\lff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \lff4|var~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lff4|Q~q\);

\lff6|var\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \lff6|var~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lff6|var~q\);

\lff6|var~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lff6|var~0_combout\ = (!\clear~input_o\ & ((!\A~input_o\ $ (!\lff6|var~q\)) # (\preset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110010001100010011001000110001001100100011000100110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \ALT_INV_clear~input_o\,
	datac => \ALT_INV_preset~input_o\,
	datad => \lff6|ALT_INV_var~q\,
	combout => \lff6|var~0_combout\);

\lff6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \lff6|var~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lff6|Q~q\);

\lff3|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \lff3|Q~combout\ = ( \lff3|Q~combout\ & ( \clock~input_o\ & ( \A~input_o\ ) ) ) # ( !\lff3|Q~combout\ & ( \clock~input_o\ & ( \A~input_o\ ) ) ) # ( \lff3|Q~combout\ & ( !\clock~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A~input_o\,
	datae => \lff3|ALT_INV_Q~combout\,
	dataf => \ALT_INV_clock~input_o\,
	combout => \lff3|Q~combout\);

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;
END structure;


