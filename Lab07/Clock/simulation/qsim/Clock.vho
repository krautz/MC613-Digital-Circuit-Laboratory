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

-- DATE "04/10/2018 19:25:08"

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

ENTITY 	contador IS
    PORT (
	Clock : IN std_logic;
	E : IN std_logic;
	is_un : IN std_logic;
	is_dec : IN std_logic;
	is_hour : IN std_logic;
	Q : OUT std_logic_vector(4 DOWNTO 0)
	);
END contador;

ARCHITECTURE structure OF contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_is_un : std_logic;
SIGNAL ww_is_dec : std_logic;
SIGNAL ww_is_hour : std_logic;
SIGNAL ww_Q : std_logic_vector(4 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Count[0]~8_combout\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \is_hour~input_o\ : std_logic;
SIGNAL \Count~2_combout\ : std_logic;
SIGNAL \Count~1_combout\ : std_logic;
SIGNAL \Count~6_combout\ : std_logic;
SIGNAL \is_un~input_o\ : std_logic;
SIGNAL \is_dec~input_o\ : std_logic;
SIGNAL \Count[0]~0_combout\ : std_logic;
SIGNAL \Count~7_combout\ : std_logic;
SIGNAL Count : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_Count[0]~0_combout\ : std_logic;
SIGNAL ALT_INV_Count : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_is_hour~input_o\ : std_logic;
SIGNAL \ALT_INV_is_dec~input_o\ : std_logic;
SIGNAL \ALT_INV_is_un~input_o\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_E <= E;
ww_is_un <= is_un;
ww_is_dec <= is_dec;
ww_is_hour <= is_hour;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Count[0]~0_combout\ <= NOT \Count[0]~0_combout\;
ALT_INV_Count(4) <= NOT Count(4);
ALT_INV_Count(3) <= NOT Count(3);
ALT_INV_Count(2) <= NOT Count(2);
ALT_INV_Count(1) <= NOT Count(1);
ALT_INV_Count(0) <= NOT Count(0);
\ALT_INV_is_hour~input_o\ <= NOT \is_hour~input_o\;
\ALT_INV_is_dec~input_o\ <= NOT \is_dec~input_o\;
\ALT_INV_is_un~input_o\ <= NOT \is_un~input_o\;

\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Count(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Count(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Count(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Count(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

\Q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Count(4),
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

\Count[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[0]~8_combout\ = !Count(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Count(0),
	combout => \Count[0]~8_combout\);

\E~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

\Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Count[0]~8_combout\,
	ena => \E~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count(0));

\is_hour~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_hour,
	o => \is_hour~input_o\);

\Count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count~2_combout\ = ( !Count(3) & ( (Count(2) & (Count(1) & (Count(0) & ((!Count(4)) # (!\is_hour~input_o\))))) ) ) # ( Count(3) & ( (!Count(0)) # ((!Count(1) & (((!\Count[0]~0_combout\) # (Count(4))))) # (Count(1) & (!Count(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000111111111111111100000000010101001111001110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Count(2),
	datab => ALT_INV_Count(4),
	datac => \ALT_INV_Count[0]~0_combout\,
	datad => ALT_INV_Count(1),
	datae => ALT_INV_Count(3),
	dataf => ALT_INV_Count(0),
	datag => \ALT_INV_is_hour~input_o\,
	combout => \Count~2_combout\);

\Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Count~2_combout\,
	ena => \E~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count(3));

\Count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count~1_combout\ = ( Count(1) & ( Count(0) & ( (!Count(3) & (Count(4) & ((!\is_hour~input_o\) # (!Count(2))))) # (Count(3) & ((!Count(2) $ (!Count(4))))) ) ) ) # ( !Count(1) & ( Count(0) & ( Count(4) ) ) ) # ( Count(1) & ( !Count(0) & ( Count(4) ) ) ) # 
-- ( !Count(1) & ( !Count(0) & ( Count(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000001111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_hour~input_o\,
	datab => ALT_INV_Count(3),
	datac => ALT_INV_Count(2),
	datad => ALT_INV_Count(4),
	datae => ALT_INV_Count(1),
	dataf => ALT_INV_Count(0),
	combout => \Count~1_combout\);

\Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Count~1_combout\,
	ena => \E~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count(4));

\Count~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count~6_combout\ = ( Count(0) & ( (!Count(2) & (((Count(1))))) # (Count(2) & (!Count(1) & ((!\Count[0]~0_combout\) # (Count(4))))) ) ) # ( !Count(0) & ( Count(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000010111111000000001111000011110000101111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Count[0]~0_combout\,
	datab => ALT_INV_Count(4),
	datac => ALT_INV_Count(2),
	datad => ALT_INV_Count(1),
	datae => ALT_INV_Count(0),
	combout => \Count~6_combout\);

\Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Count~6_combout\,
	ena => \E~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count(2));

\is_un~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_un,
	o => \is_un~input_o\);

\is_dec~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_dec,
	o => \is_dec~input_o\);

\Count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[0]~0_combout\ = (!Count(2) & (Count(3) & (\is_un~input_o\))) # (Count(2) & (!Count(3) & ((\is_dec~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000000010010001100000001001000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Count(2),
	datab => ALT_INV_Count(3),
	datac => \ALT_INV_is_un~input_o\,
	datad => \ALT_INV_is_dec~input_o\,
	combout => \Count[0]~0_combout\);

\Count~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count~7_combout\ = (!Count(1) & (Count(0) & ((!\Count[0]~0_combout\) # (Count(4))))) # (Count(1) & (((!Count(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110110000000011111011000000001111101100000000111110110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Count[0]~0_combout\,
	datab => ALT_INV_Count(4),
	datac => ALT_INV_Count(1),
	datad => ALT_INV_Count(0),
	combout => \Count~7_combout\);

\Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Count~7_combout\,
	ena => \E~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count(1));

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;
END structure;


