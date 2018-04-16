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

-- DATE "04/16/2018 16:32:30"

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

ENTITY 	fsm_table IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	w : IN std_logic;
	z : OUT std_logic
	);
END fsm_table;

ARCHITECTURE structure OF fsm_table IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL \z~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \y~9_combout\ : std_logic;
SIGNAL \y.D~q\ : std_logic;
SIGNAL \y~10_combout\ : std_logic;
SIGNAL \y.A~q\ : std_logic;
SIGNAL \y~11_combout\ : std_logic;
SIGNAL \y.C~q\ : std_logic;
SIGNAL \y~8_combout\ : std_logic;
SIGNAL \y.B~q\ : std_logic;
SIGNAL \z~0_combout\ : std_logic;
SIGNAL \z~reg0_q\ : std_logic;
SIGNAL \ALT_INV_w~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_y.C~q\ : std_logic;
SIGNAL \ALT_INV_y.A~q\ : std_logic;
SIGNAL \ALT_INV_y.D~q\ : std_logic;
SIGNAL \ALT_INV_y.B~q\ : std_logic;
SIGNAL \ALT_INV_z~reg0_q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_w <= w;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_w~input_o\ <= NOT \w~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_y.C~q\ <= NOT \y.C~q\;
\ALT_INV_y.A~q\ <= NOT \y.A~q\;
\ALT_INV_y.D~q\ <= NOT \y.D~q\;
\ALT_INV_y.B~q\ <= NOT \y.B~q\;
\ALT_INV_z~reg0_q\ <= NOT \z~reg0_q\;

\z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~reg0_q\,
	devoe => ww_devoe,
	o => \z~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\w~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

\y~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~9_combout\ = (!\reset~input_o\ & (!\w~input_o\ & \y.B~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_w~input_o\,
	datac => \ALT_INV_y.B~q\,
	combout => \y~9_combout\);

\y.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \y~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.D~q\);

\y~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~10_combout\ = (!\reset~input_o\ & ((!\y.D~q\) # (\w~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010100010101000101010001010100010101000101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_w~input_o\,
	datac => \ALT_INV_y.D~q\,
	combout => \y~10_combout\);

\y.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \y~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.A~q\);

\y~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~11_combout\ = (!\reset~input_o\ & (!\w~input_o\ $ (\y.A~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001010000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_w~input_o\,
	datac => \ALT_INV_y.A~q\,
	combout => \y~11_combout\);

\y.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \y~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.C~q\);

\y~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~8_combout\ = (!\reset~input_o\ & ((!\w~input_o\ & ((\y.C~q\))) # (\w~input_o\ & (!\y.A~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010101000001000001010100000100000101010000010000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_w~input_o\,
	datac => \ALT_INV_y.A~q\,
	datad => \ALT_INV_y.C~q\,
	combout => \y~8_combout\);

\y.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \y~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.B~q\);

\z~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~0_combout\ = ( \y.D~q\ & ( \y.A~q\ & ( (!\reset~input_o\ & (((\y.B~q\) # (\w~input_o\)))) # (\reset~input_o\ & (\z~reg0_q\)) ) ) ) # ( !\y.D~q\ & ( \y.A~q\ & ( (!\reset~input_o\ & (((!\w~input_o\ & \y.B~q\)))) # (\reset~input_o\ & (\z~reg0_q\)) ) ) ) # 
-- ( \y.D~q\ & ( !\y.A~q\ & ( (!\reset~input_o\) # (\z~reg0_q\) ) ) ) # ( !\y.D~q\ & ( !\y.A~q\ & ( (!\reset~input_o\) # (\z~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110100010001110100010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_z~reg0_q\,
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_w~input_o\,
	datad => \ALT_INV_y.B~q\,
	datae => \ALT_INV_y.D~q\,
	dataf => \ALT_INV_y.A~q\,
	combout => \z~0_combout\);

\z~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \z~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \z~reg0_q\);

ww_z <= \z~output_o\;
END structure;


