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

-- DATE "04/02/2018 17:54:37"

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

ENTITY 	ff_t IS
    PORT (
	T : IN std_logic;
	Clk : IN std_logic;
	Q : OUT std_logic;
	Q_n : OUT std_logic;
	Preset : IN std_logic;
	Clear : IN std_logic
	);
END ff_t;

ARCHITECTURE structure OF ff_t IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_T : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_Q_n : std_logic;
SIGNAL ww_Preset : std_logic;
SIGNAL ww_Clear : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \Q_n~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \T~input_o\ : std_logic;
SIGNAL \var~5_combout\ : std_logic;
SIGNAL \Preset~input_o\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \var~1_combout\ : std_logic;
SIGNAL \var~3_combout\ : std_logic;
SIGNAL \var~0_combout\ : std_logic;
SIGNAL \var~_emulated_q\ : std_logic;
SIGNAL \var~2_combout\ : std_logic;
SIGNAL \ALT_INV_var~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_var~5_combout\ : std_logic;
SIGNAL \ALT_INV_var~2_combout\ : std_logic;
SIGNAL \ALT_INV_T~input_o\ : std_logic;
SIGNAL \ALT_INV_Clear~input_o\ : std_logic;
SIGNAL \ALT_INV_Preset~input_o\ : std_logic;
SIGNAL \ALT_INV_var~1_combout\ : std_logic;
SIGNAL \ALT_INV_var~0_combout\ : std_logic;

BEGIN

ww_T <= T;
ww_Clk <= Clk;
Q <= ww_Q;
Q_n <= ww_Q_n;
ww_Preset <= Preset;
ww_Clear <= Clear;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_var~_emulated_q\ <= NOT \var~_emulated_q\;
\ALT_INV_var~5_combout\ <= NOT \var~5_combout\;
\ALT_INV_var~2_combout\ <= NOT \var~2_combout\;
\ALT_INV_T~input_o\ <= NOT \T~input_o\;
\ALT_INV_Clear~input_o\ <= NOT \Clear~input_o\;
\ALT_INV_Preset~input_o\ <= NOT \Preset~input_o\;
\ALT_INV_var~1_combout\ <= NOT \var~1_combout\;
\ALT_INV_var~0_combout\ <= NOT \var~0_combout\;

\Q~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var~2_combout\,
	devoe => ww_devoe,
	o => \Q~output_o\);

\Q_n~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_var~2_combout\,
	devoe => ww_devoe,
	o => \Q_n~output_o\);

\Clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

\T~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T,
	o => \T~input_o\);

\var~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \var~5_combout\ = !\var~2_combout\ $ (!\T~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var~2_combout\,
	datab => \ALT_INV_T~input_o\,
	combout => \var~5_combout\);

\Preset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Preset,
	o => \Preset~input_o\);

\Clear~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clear,
	o => \Clear~input_o\);

\var~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \var~1_combout\ = ( \Preset~input_o\ & ( !\Clear~input_o\ ) ) # ( !\Preset~input_o\ & ( !\Clear~input_o\ & ( \var~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_var~1_combout\,
	datae => \ALT_INV_Preset~input_o\,
	dataf => \ALT_INV_Clear~input_o\,
	combout => \var~1_combout\);

\var~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \var~3_combout\ = !\var~5_combout\ $ (!\var~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var~5_combout\,
	datab => \ALT_INV_var~1_combout\,
	combout => \var~3_combout\);

\var~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \var~0_combout\ = (\Preset~input_o\) # (\Clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clear~input_o\,
	datab => \ALT_INV_Preset~input_o\,
	combout => \var~0_combout\);

\var~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \var~3_combout\,
	clrn => \ALT_INV_var~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var~_emulated_q\);

\var~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \var~2_combout\ = (!\Clear~input_o\ & ((!\var~_emulated_q\ $ (!\var~1_combout\)) # (\Preset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111100000000011011110000000001101111000000000110111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var~_emulated_q\,
	datab => \ALT_INV_var~1_combout\,
	datac => \ALT_INV_Preset~input_o\,
	datad => \ALT_INV_Clear~input_o\,
	combout => \var~2_combout\);

ww_Q <= \Q~output_o\;

ww_Q_n <= \Q_n~output_o\;
END structure;


