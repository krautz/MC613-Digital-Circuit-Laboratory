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

-- DATE "04/11/2018 19:31:05"

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

ENTITY 	clk_div IS
    PORT (
	clk : IN std_logic;
	clk_hz : OUT std_logic
	);
END clk_div;

ARCHITECTURE structure OF clk_div IS
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
SIGNAL ww_clk_hz : std_logic;
SIGNAL \clk_hz~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \temp~q\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \temp~0_combout\ : std_logic;
SIGNAL \clk_hz~reg0_q\ : std_logic;
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL ALT_INV_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_temp~q\ : std_logic;
SIGNAL \ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
clk_hz <= ww_clk_hz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Equal0~9_combout\ <= NOT \Equal0~9_combout\;
\ALT_INV_Equal0~8_combout\ <= NOT \Equal0~8_combout\;
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
ALT_INV_counter(0) <= NOT counter(0);
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_temp~q\ <= NOT \temp~q\;
ALT_INV_counter(5) <= NOT counter(5);
ALT_INV_counter(4) <= NOT counter(4);
ALT_INV_counter(3) <= NOT counter(3);
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(16) <= NOT counter(16);
ALT_INV_counter(14) <= NOT counter(14);
ALT_INV_counter(13) <= NOT counter(13);
ALT_INV_counter(12) <= NOT counter(12);
ALT_INV_counter(11) <= NOT counter(11);
ALT_INV_counter(26) <= NOT counter(26);
ALT_INV_counter(24) <= NOT counter(24);
ALT_INV_counter(23) <= NOT counter(23);
ALT_INV_counter(22) <= NOT counter(22);
ALT_INV_counter(21) <= NOT counter(21);
ALT_INV_counter(8) <= NOT counter(8);
ALT_INV_counter(7) <= NOT counter(7);
ALT_INV_counter(6) <= NOT counter(6);
ALT_INV_counter(18) <= NOT counter(18);
ALT_INV_counter(17) <= NOT counter(17);
ALT_INV_counter(15) <= NOT counter(15);
ALT_INV_counter(10) <= NOT counter(10);
ALT_INV_counter(9) <= NOT counter(9);
ALT_INV_counter(28) <= NOT counter(28);
ALT_INV_counter(27) <= NOT counter(27);
ALT_INV_counter(25) <= NOT counter(25);
\ALT_INV_Add0~125_sumout\ <= NOT \Add0~125_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
ALT_INV_counter(20) <= NOT counter(20);
ALT_INV_counter(19) <= NOT counter(19);
\ALT_INV_Add0~121_sumout\ <= NOT \Add0~121_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
ALT_INV_counter(31) <= NOT counter(31);
\ALT_INV_Add0~117_sumout\ <= NOT \Add0~117_sumout\;
ALT_INV_counter(30) <= NOT counter(30);
\ALT_INV_Add0~113_sumout\ <= NOT \Add0~113_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~109_sumout\ <= NOT \Add0~109_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~105_sumout\ <= NOT \Add0~105_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~101_sumout\ <= NOT \Add0~101_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
ALT_INV_counter(29) <= NOT counter(29);
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
\ALT_INV_Add0~73_sumout\ <= NOT \Add0~73_sumout\;
\ALT_INV_Add0~97_sumout\ <= NOT \Add0~97_sumout\;
\ALT_INV_Add0~69_sumout\ <= NOT \Add0~69_sumout\;
\ALT_INV_Add0~93_sumout\ <= NOT \Add0~93_sumout\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~85_sumout\ <= NOT \Add0~85_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;

\clk_hz~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_hz~reg0_q\,
	devoe => ww_devoe,
	o => \clk_hz~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

temp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp~q\);

\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( !counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~106\ = CARRY(( !counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(0),
	cin => GND,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( counter(28) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( counter(28) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(28),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( counter(29) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~2\ = CARRY(( counter(29) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(29),
	cin => \Add0~30\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( counter(30) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( counter(30) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(30),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( counter(31) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(31),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\);

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add0~53_sumout\ & (\Add0~57_sumout\ & !\Add0~61_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~53_sumout\,
	datab => \ALT_INV_Add0~57_sumout\,
	datac => \ALT_INV_Add0~61_sumout\,
	combout => \Equal0~0_combout\);

\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\Add0~49_sumout\ & ( \Equal0~0_combout\ & ( (!\Add0~33_sumout\ & (!\Add0~37_sumout\ & (\Add0~41_sumout\ & \Add0~45_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datab => \ALT_INV_Add0~37_sumout\,
	datac => \ALT_INV_Add0~41_sumout\,
	datad => \ALT_INV_Add0~45_sumout\,
	datae => \ALT_INV_Add0~49_sumout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~1_combout\);

\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\Add0~29_sumout\ & ( \Equal0~1_combout\ & ( (\Add0~13_sumout\ & (\Add0~17_sumout\ & (\Add0~21_sumout\ & !\Add0~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~13_sumout\,
	datab => \ALT_INV_Add0~17_sumout\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_Add0~25_sumout\,
	datae => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~2_combout\);

\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\Add0~121_sumout\ & ( !\Add0~125_sumout\ & ( (!\Add0~105_sumout\ & (!\Add0~109_sumout\ & (!\Add0~113_sumout\ & !\Add0~117_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~105_sumout\,
	datab => \ALT_INV_Add0~109_sumout\,
	datac => \ALT_INV_Add0~113_sumout\,
	datad => \ALT_INV_Add0~117_sumout\,
	datae => \ALT_INV_Add0~121_sumout\,
	dataf => \ALT_INV_Add0~125_sumout\,
	combout => \Equal0~3_combout\);

\Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = ( \Add0~97_sumout\ & ( !\Add0~101_sumout\ & ( (!\Add0~81_sumout\ & (!\Add0~85_sumout\ & (\Add0~89_sumout\ & \Add0~93_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~81_sumout\,
	datab => \ALT_INV_Add0~85_sumout\,
	datac => \ALT_INV_Add0~89_sumout\,
	datad => \ALT_INV_Add0~93_sumout\,
	datae => \ALT_INV_Add0~97_sumout\,
	dataf => \ALT_INV_Add0~101_sumout\,
	combout => \Equal0~9_combout\);

\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \Equal0~3_combout\ & ( \Equal0~9_combout\ & ( (\Add0~65_sumout\ & (\Add0~69_sumout\ & (\Add0~73_sumout\ & !\Add0~77_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~65_sumout\,
	datab => \ALT_INV_Add0~69_sumout\,
	datac => \ALT_INV_Add0~73_sumout\,
	datad => \ALT_INV_Add0~77_sumout\,
	datae => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Equal0~9_combout\,
	combout => \Equal0~4_combout\);

\counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = ( \Equal0~2_combout\ & ( \Equal0~4_combout\ & ( !\Add0~105_sumout\ $ (((!\Add0~1_sumout\ & (!\Add0~5_sumout\ & !\Add0~9_sumout\)))) ) ) ) # ( !\Equal0~2_combout\ & ( \Equal0~4_combout\ & ( !\Add0~105_sumout\ ) ) ) # ( 
-- \Equal0~2_combout\ & ( !\Equal0~4_combout\ & ( !\Add0~105_sumout\ ) ) ) # ( !\Equal0~2_combout\ & ( !\Equal0~4_combout\ & ( !\Add0~105_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010100110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~105_sumout\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_Add0~9_sumout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \counter~0_combout\);

\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( counter(1) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( counter(1) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(1),
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~109_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( counter(2) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( counter(2) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(2),
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~113_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( counter(3) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( counter(3) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(3),
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~117_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( counter(4) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( counter(4) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(4),
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~121_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( counter(5) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~126\ = CARRY(( counter(5) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(5),
	cin => \Add0~122\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~125_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( counter(6) ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~54\ = CARRY(( counter(6) ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(6),
	cin => \Add0~126\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( counter(7) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( counter(7) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(7),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~57_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( counter(8) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( counter(8) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(8),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( counter(9) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~34\ = CARRY(( counter(9) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(9),
	cin => \Add0~62\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( counter(10) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( counter(10) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(10),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( counter(11) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~86\ = CARRY(( counter(11) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(11),
	cin => \Add0~38\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( counter(12) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( counter(12) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(12),
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~89_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( counter(13) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( counter(13) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(13),
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~93_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( counter(14) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( counter(14) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(14),
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~97_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( counter(15) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~42\ = CARRY(( counter(15) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(15),
	cin => \Add0~98\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( counter(16) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~102\ = CARRY(( counter(16) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(16),
	cin => \Add0~42\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~101_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( counter(17) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~46\ = CARRY(( counter(17) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(17),
	cin => \Add0~102\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( counter(18) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( counter(18) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(18),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( counter(19) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~14\ = CARRY(( counter(19) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(19),
	cin => \Add0~50\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( counter(20) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( counter(20) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(20),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( counter(21) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~66\ = CARRY(( counter(21) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(21),
	cin => \Add0~18\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( counter(22) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( counter(22) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(22),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~69_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( counter(23) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( counter(23) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(23),
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~73_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( counter(24) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( counter(24) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(24),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~77_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( counter(25) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~22\ = CARRY(( counter(25) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(25),
	cin => \Add0~78\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( counter(26) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~82\ = CARRY(( counter(26) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(26),
	cin => \Add0~22\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~81_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( counter(27) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~26\ = CARRY(( counter(27) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(27),
	cin => \Add0~82\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

\Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ( !\Add0~53_sumout\ & ( \Add0~57_sumout\ & ( (!\Add0~61_sumout\ & (!\Add0~33_sumout\ & (!\Add0~37_sumout\ & \Add0~45_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~61_sumout\,
	datab => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_Add0~37_sumout\,
	datad => \ALT_INV_Add0~45_sumout\,
	datae => \ALT_INV_Add0~53_sumout\,
	dataf => \ALT_INV_Add0~57_sumout\,
	combout => \Equal0~7_combout\);

\Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Add0~49_sumout\ & \Add0~41_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~49_sumout\,
	datab => \ALT_INV_Add0~41_sumout\,
	combout => \Equal0~8_combout\);

\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~7_combout\ & ( \Equal0~8_combout\ & ( (\Add0~13_sumout\ & (\Add0~17_sumout\ & (\Add0~21_sumout\ & !\Add0~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~13_sumout\,
	datab => \ALT_INV_Add0~17_sumout\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_Add0~25_sumout\,
	datae => \ALT_INV_Equal0~7_combout\,
	dataf => \ALT_INV_Equal0~8_combout\,
	combout => \Equal0~5_combout\);

\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~5_combout\ & ( \Equal0~4_combout\ & ( (!\Add0~29_sumout\ & (!\Add0~1_sumout\ & (!\Add0~5_sumout\ & !\Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_Add0~9_sumout\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Equal0~6_combout\);

\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

\temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp~0_combout\ = ( \Equal0~2_combout\ & ( \Equal0~4_combout\ & ( !\temp~q\ $ ((((\Add0~9_sumout\) # (\Add0~5_sumout\)) # (\Add0~1_sumout\))) ) ) ) # ( !\Equal0~2_combout\ & ( \Equal0~4_combout\ & ( \temp~q\ ) ) ) # ( \Equal0~2_combout\ & ( 
-- !\Equal0~4_combout\ & ( \temp~q\ ) ) ) # ( !\Equal0~2_combout\ & ( !\Equal0~4_combout\ & ( \temp~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101011001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp~q\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_Add0~9_sumout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \temp~0_combout\);

\clk_hz~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_hz~reg0_q\);

ww_clk_hz <= \clk_hz~output_o\;
END structure;


