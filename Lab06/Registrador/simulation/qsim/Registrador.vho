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

-- DATE "04/06/2018 19:34:56"

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

ENTITY 	register_bank IS
    PORT (
	clk : IN std_logic;
	data_in : IN std_logic_vector(3 DOWNTO 0);
	data_out : OUT std_logic_vector(3 DOWNTO 0);
	reg_rd : IN std_logic_vector(2 DOWNTO 0);
	reg_wr : IN std_logic_vector(2 DOWNTO 0);
	we : IN std_logic;
	clear : IN std_logic
	);
END register_bank;

ARCHITECTURE structure OF register_bank IS
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
SIGNAL ww_data_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_reg_rd : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_reg_wr : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_we : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \reg_rd[1]~input_o\ : std_logic;
SIGNAL \reg_rd[2]~input_o\ : std_logic;
SIGNAL \reg_rd[0]~input_o\ : std_logic;
SIGNAL \dec3_to_8_instance_1|Equal7~0_combout\ : std_logic;
SIGNAL \reg_wr[0]~input_o\ : std_logic;
SIGNAL \reg_wr[1]~input_o\ : std_logic;
SIGNAL \reg_wr[2]~input_o\ : std_logic;
SIGNAL \dec3_to_8_instance_2|Equal7~0_combout\ : std_logic;
SIGNAL \dec3_to_8_instance_1|Equal0~0_combout\ : std_logic;
SIGNAL \dec3_to_8_instance_1|Equal1~0_combout\ : std_logic;
SIGNAL \dec3_to_8_instance_1|Equal3~0_combout\ : std_logic;
SIGNAL \dec3_to_8_instance_1|Equal2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \dec3_to_8_instance_1|Equal4~0_combout\ : std_logic;
SIGNAL \dec3_to_8_instance_1|Equal5~0_combout\ : std_logic;
SIGNAL \dec3_to_8_instance_1|Equal6~0_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \G1:5:reg_instance|var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1:4:reg_instance|var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1:2:reg_instance|var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1:3:reg_instance|var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1:1:reg_instance|var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1:6:reg_instance|var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1:0:reg_instance|var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1:7:reg_instance|var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reg_rd[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg_rd[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg_rd[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_clear~input_o\ : std_logic;
SIGNAL \ALT_INV_we~input_o\ : std_logic;
SIGNAL \ALT_INV_reg_wr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg_wr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg_wr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \G1:6:reg_instance|ALT_INV_var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1:5:reg_instance|ALT_INV_var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1:4:reg_instance|ALT_INV_var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G1:2:reg_instance|ALT_INV_var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1:3:reg_instance|ALT_INV_var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1:1:reg_instance|ALT_INV_var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1:0:reg_instance|ALT_INV_var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1:7:reg_instance|ALT_INV_var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \dec3_to_8_instance_2|ALT_INV_Equal7~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_data_in <= data_in;
data_out <= ww_data_out;
ww_reg_rd <= reg_rd;
ww_reg_wr <= reg_wr;
ww_we <= we;
ww_clear <= clear;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reg_rd[0]~input_o\ <= NOT \reg_rd[0]~input_o\;
\ALT_INV_reg_rd[2]~input_o\ <= NOT \reg_rd[2]~input_o\;
\ALT_INV_reg_rd[1]~input_o\ <= NOT \reg_rd[1]~input_o\;
\ALT_INV_clear~input_o\ <= NOT \clear~input_o\;
\ALT_INV_we~input_o\ <= NOT \we~input_o\;
\ALT_INV_reg_wr[2]~input_o\ <= NOT \reg_wr[2]~input_o\;
\ALT_INV_reg_wr[1]~input_o\ <= NOT \reg_wr[1]~input_o\;
\ALT_INV_reg_wr[0]~input_o\ <= NOT \reg_wr[0]~input_o\;
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\G1:6:reg_instance|ALT_INV_var\(3) <= NOT \G1:6:reg_instance|var\(3);
\G1:5:reg_instance|ALT_INV_var\(3) <= NOT \G1:5:reg_instance|var\(3);
\G1:4:reg_instance|ALT_INV_var\(3) <= NOT \G1:4:reg_instance|var\(3);
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\G1:2:reg_instance|ALT_INV_var\(3) <= NOT \G1:2:reg_instance|var\(3);
\G1:3:reg_instance|ALT_INV_var\(3) <= NOT \G1:3:reg_instance|var\(3);
\G1:1:reg_instance|ALT_INV_var\(3) <= NOT \G1:1:reg_instance|var\(3);
\G1:0:reg_instance|ALT_INV_var\(3) <= NOT \G1:0:reg_instance|var\(3);
\G1:7:reg_instance|ALT_INV_var\(3) <= NOT \G1:7:reg_instance|var\(3);
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\G1:6:reg_instance|ALT_INV_var\(2) <= NOT \G1:6:reg_instance|var\(2);
\G1:5:reg_instance|ALT_INV_var\(2) <= NOT \G1:5:reg_instance|var\(2);
\G1:4:reg_instance|ALT_INV_var\(2) <= NOT \G1:4:reg_instance|var\(2);
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\G1:2:reg_instance|ALT_INV_var\(2) <= NOT \G1:2:reg_instance|var\(2);
\G1:3:reg_instance|ALT_INV_var\(2) <= NOT \G1:3:reg_instance|var\(2);
\G1:1:reg_instance|ALT_INV_var\(2) <= NOT \G1:1:reg_instance|var\(2);
\G1:0:reg_instance|ALT_INV_var\(2) <= NOT \G1:0:reg_instance|var\(2);
\G1:7:reg_instance|ALT_INV_var\(2) <= NOT \G1:7:reg_instance|var\(2);
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\G1:6:reg_instance|ALT_INV_var\(1) <= NOT \G1:6:reg_instance|var\(1);
\G1:5:reg_instance|ALT_INV_var\(1) <= NOT \G1:5:reg_instance|var\(1);
\G1:4:reg_instance|ALT_INV_var\(1) <= NOT \G1:4:reg_instance|var\(1);
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\G1:2:reg_instance|ALT_INV_var\(1) <= NOT \G1:2:reg_instance|var\(1);
\G1:3:reg_instance|ALT_INV_var\(1) <= NOT \G1:3:reg_instance|var\(1);
\G1:1:reg_instance|ALT_INV_var\(1) <= NOT \G1:1:reg_instance|var\(1);
\G1:0:reg_instance|ALT_INV_var\(1) <= NOT \G1:0:reg_instance|var\(1);
\G1:7:reg_instance|ALT_INV_var\(1) <= NOT \G1:7:reg_instance|var\(1);
\ALT_INV_Mux3~6_combout\ <= NOT \Mux3~6_combout\;
\G1:6:reg_instance|ALT_INV_var\(0) <= NOT \G1:6:reg_instance|var\(0);
\G1:5:reg_instance|ALT_INV_var\(0) <= NOT \G1:5:reg_instance|var\(0);
\G1:4:reg_instance|ALT_INV_var\(0) <= NOT \G1:4:reg_instance|var\(0);
\ALT_INV_Mux3~5_combout\ <= NOT \Mux3~5_combout\;
\ALT_INV_Mux3~4_combout\ <= NOT \Mux3~4_combout\;
\ALT_INV_Mux3~3_combout\ <= NOT \Mux3~3_combout\;
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\G1:2:reg_instance|ALT_INV_var\(0) <= NOT \G1:2:reg_instance|var\(0);
\G1:3:reg_instance|ALT_INV_var\(0) <= NOT \G1:3:reg_instance|var\(0);
\G1:1:reg_instance|ALT_INV_var\(0) <= NOT \G1:1:reg_instance|var\(0);
\G1:0:reg_instance|ALT_INV_var\(0) <= NOT \G1:0:reg_instance|var\(0);
\dec3_to_8_instance_2|ALT_INV_Equal7~0_combout\ <= NOT \dec3_to_8_instance_2|Equal7~0_combout\;
\G1:7:reg_instance|ALT_INV_var\(0) <= NOT \G1:7:reg_instance|var\(0);

\data_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~7_combout\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

\data_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

\data_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

\data_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~2_combout\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

\clear~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

\we~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

\reg_rd[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_rd(1),
	o => \reg_rd[1]~input_o\);

\reg_rd[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_rd(2),
	o => \reg_rd[2]~input_o\);

\reg_rd[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_rd(0),
	o => \reg_rd[0]~input_o\);

\dec3_to_8_instance_1|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dec3_to_8_instance_1|Equal7~0_combout\ = (\we~input_o\ & (\reg_rd[1]~input_o\ & (\reg_rd[2]~input_o\ & \reg_rd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_we~input_o\,
	datab => \ALT_INV_reg_rd[1]~input_o\,
	datac => \ALT_INV_reg_rd[2]~input_o\,
	datad => \ALT_INV_reg_rd[0]~input_o\,
	combout => \dec3_to_8_instance_1|Equal7~0_combout\);

\G1:7:reg_instance|var[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:7:reg_instance|var\(0));

\reg_wr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_wr(0),
	o => \reg_wr[0]~input_o\);

\reg_wr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_wr(1),
	o => \reg_wr[1]~input_o\);

\reg_wr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_wr(2),
	o => \reg_wr[2]~input_o\);

\dec3_to_8_instance_2|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dec3_to_8_instance_2|Equal7~0_combout\ = (\reg_wr[0]~input_o\ & (\reg_wr[1]~input_o\ & (\reg_wr[2]~input_o\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_wr[0]~input_o\,
	datab => \ALT_INV_reg_wr[1]~input_o\,
	datac => \ALT_INV_reg_wr[2]~input_o\,
	datad => \ALT_INV_we~input_o\,
	combout => \dec3_to_8_instance_2|Equal7~0_combout\);

\dec3_to_8_instance_1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dec3_to_8_instance_1|Equal0~0_combout\ = (\we~input_o\ & (!\reg_rd[1]~input_o\ & (!\reg_rd[2]~input_o\ & !\reg_rd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_we~input_o\,
	datab => \ALT_INV_reg_rd[1]~input_o\,
	datac => \ALT_INV_reg_rd[2]~input_o\,
	datad => \ALT_INV_reg_rd[0]~input_o\,
	combout => \dec3_to_8_instance_1|Equal0~0_combout\);

\G1:0:reg_instance|var[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:0:reg_instance|var\(0));

\dec3_to_8_instance_1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dec3_to_8_instance_1|Equal1~0_combout\ = (\we~input_o\ & (!\reg_rd[1]~input_o\ & (!\reg_rd[2]~input_o\ & \reg_rd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_we~input_o\,
	datab => \ALT_INV_reg_rd[1]~input_o\,
	datac => \ALT_INV_reg_rd[2]~input_o\,
	datad => \ALT_INV_reg_rd[0]~input_o\,
	combout => \dec3_to_8_instance_1|Equal1~0_combout\);

\G1:1:reg_instance|var[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:1:reg_instance|var\(0));

\dec3_to_8_instance_1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dec3_to_8_instance_1|Equal3~0_combout\ = (\we~input_o\ & (\reg_rd[1]~input_o\ & (!\reg_rd[2]~input_o\ & \reg_rd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_we~input_o\,
	datab => \ALT_INV_reg_rd[1]~input_o\,
	datac => \ALT_INV_reg_rd[2]~input_o\,
	datad => \ALT_INV_reg_rd[0]~input_o\,
	combout => \dec3_to_8_instance_1|Equal3~0_combout\);

\G1:3:reg_instance|var[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:3:reg_instance|var\(0));

\dec3_to_8_instance_1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dec3_to_8_instance_1|Equal2~0_combout\ = (\we~input_o\ & (\reg_rd[1]~input_o\ & (!\reg_rd[2]~input_o\ & !\reg_rd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_we~input_o\,
	datab => \ALT_INV_reg_rd[1]~input_o\,
	datac => \ALT_INV_reg_rd[2]~input_o\,
	datad => \ALT_INV_reg_rd[0]~input_o\,
	combout => \dec3_to_8_instance_1|Equal2~0_combout\);

\G1:2:reg_instance|var[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:2:reg_instance|var\(0));

\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\reg_wr[2]~input_o\ & (\we~input_o\ & (!\reg_wr[0]~input_o\ $ (!\reg_wr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100000000000000110000000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_wr[0]~input_o\,
	datab => \ALT_INV_reg_wr[1]~input_o\,
	datac => \ALT_INV_reg_wr[2]~input_o\,
	datad => \ALT_INV_we~input_o\,
	combout => \Mux3~0_combout\);

\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\reg_wr[1]~input_o\ & (!\reg_wr[2]~input_o\ & \we~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_wr[1]~input_o\,
	datab => \ALT_INV_reg_wr[2]~input_o\,
	datac => \ALT_INV_we~input_o\,
	combout => \Mux3~1_combout\);

\Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \Mux3~0_combout\ & ( \Mux3~1_combout\ & ( \G1:2:reg_instance|var\(0) ) ) ) # ( !\Mux3~0_combout\ & ( \Mux3~1_combout\ & ( \G1:3:reg_instance|var\(0) ) ) ) # ( \Mux3~0_combout\ & ( !\Mux3~1_combout\ & ( \G1:1:reg_instance|var\(0) ) ) ) 
-- # ( !\Mux3~0_combout\ & ( !\Mux3~1_combout\ & ( \G1:0:reg_instance|var\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1:0:reg_instance|ALT_INV_var\(0),
	datab => \G1:1:reg_instance|ALT_INV_var\(0),
	datac => \G1:3:reg_instance|ALT_INV_var\(0),
	datad => \G1:2:reg_instance|ALT_INV_var\(0),
	datae => \ALT_INV_Mux3~0_combout\,
	dataf => \ALT_INV_Mux3~1_combout\,
	combout => \Mux3~2_combout\);

\Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\reg_wr[2]~input_o\ & (\we~input_o\ & ((!\reg_wr[0]~input_o\) # (!\reg_wr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001110000000000000111000000000000011100000000000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_wr[0]~input_o\,
	datab => \ALT_INV_reg_wr[1]~input_o\,
	datac => \ALT_INV_reg_wr[2]~input_o\,
	datad => \ALT_INV_we~input_o\,
	combout => \Mux3~3_combout\);

\Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (!\reg_wr[1]~input_o\ & (\reg_wr[2]~input_o\ & \we~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_wr[1]~input_o\,
	datab => \ALT_INV_reg_wr[2]~input_o\,
	datac => \ALT_INV_we~input_o\,
	combout => \Mux3~4_combout\);

\Mux3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\reg_wr[2]~input_o\ & (\we~input_o\ & (!\reg_wr[0]~input_o\ $ (!\reg_wr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000000001100000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_wr[0]~input_o\,
	datab => \ALT_INV_reg_wr[1]~input_o\,
	datac => \ALT_INV_reg_wr[2]~input_o\,
	datad => \ALT_INV_we~input_o\,
	combout => \Mux3~5_combout\);

\dec3_to_8_instance_1|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dec3_to_8_instance_1|Equal4~0_combout\ = (\we~input_o\ & (!\reg_rd[1]~input_o\ & (\reg_rd[2]~input_o\ & !\reg_rd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_we~input_o\,
	datab => \ALT_INV_reg_rd[1]~input_o\,
	datac => \ALT_INV_reg_rd[2]~input_o\,
	datad => \ALT_INV_reg_rd[0]~input_o\,
	combout => \dec3_to_8_instance_1|Equal4~0_combout\);

\G1:4:reg_instance|var[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:4:reg_instance|var\(0));

\dec3_to_8_instance_1|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dec3_to_8_instance_1|Equal5~0_combout\ = (\we~input_o\ & (!\reg_rd[1]~input_o\ & (\reg_rd[2]~input_o\ & \reg_rd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_we~input_o\,
	datab => \ALT_INV_reg_rd[1]~input_o\,
	datac => \ALT_INV_reg_rd[2]~input_o\,
	datad => \ALT_INV_reg_rd[0]~input_o\,
	combout => \dec3_to_8_instance_1|Equal5~0_combout\);

\G1:5:reg_instance|var[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:5:reg_instance|var\(0));

\dec3_to_8_instance_1|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dec3_to_8_instance_1|Equal6~0_combout\ = (\we~input_o\ & (\reg_rd[1]~input_o\ & (\reg_rd[2]~input_o\ & !\reg_rd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_we~input_o\,
	datab => \ALT_INV_reg_rd[1]~input_o\,
	datac => \ALT_INV_reg_rd[2]~input_o\,
	datad => \ALT_INV_reg_rd[0]~input_o\,
	combout => \dec3_to_8_instance_1|Equal6~0_combout\);

\G1:6:reg_instance|var[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:6:reg_instance|var\(0));

\Mux3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = ( \G1:6:reg_instance|var\(0) & ( (!\Mux3~5_combout\ & (((\G1:4:reg_instance|var\(0))))) # (\Mux3~5_combout\ & ((!\Mux3~4_combout\) # ((\G1:5:reg_instance|var\(0))))) ) ) # ( !\G1:6:reg_instance|var\(0) & ( (!\Mux3~5_combout\ & 
-- (((\G1:4:reg_instance|var\(0))))) # (\Mux3~5_combout\ & (\Mux3~4_combout\ & ((\G1:5:reg_instance|var\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~4_combout\,
	datab => \ALT_INV_Mux3~5_combout\,
	datac => \G1:4:reg_instance|ALT_INV_var\(0),
	datad => \G1:5:reg_instance|ALT_INV_var\(0),
	datae => \G1:6:reg_instance|ALT_INV_var\(0),
	combout => \Mux3~6_combout\);

\Mux3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = ( \Mux3~6_combout\ & ( (!\dec3_to_8_instance_2|Equal7~0_combout\ & (((\Mux3~3_combout\) # (\Mux3~2_combout\)))) # (\dec3_to_8_instance_2|Equal7~0_combout\ & (\G1:7:reg_instance|var\(0))) ) ) # ( !\Mux3~6_combout\ & ( 
-- (!\dec3_to_8_instance_2|Equal7~0_combout\ & (((\Mux3~2_combout\ & !\Mux3~3_combout\)))) # (\dec3_to_8_instance_2|Equal7~0_combout\ & (\G1:7:reg_instance|var\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100010001000111011101110100011101000100010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1:7:reg_instance|ALT_INV_var\(0),
	datab => \dec3_to_8_instance_2|ALT_INV_Equal7~0_combout\,
	datac => \ALT_INV_Mux3~2_combout\,
	datad => \ALT_INV_Mux3~3_combout\,
	datae => \ALT_INV_Mux3~6_combout\,
	combout => \Mux3~7_combout\);

\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

\G1:7:reg_instance|var[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:7:reg_instance|var\(1));

\G1:0:reg_instance|var[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:0:reg_instance|var\(1));

\G1:1:reg_instance|var[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:1:reg_instance|var\(1));

\G1:3:reg_instance|var[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:3:reg_instance|var\(1));

\G1:2:reg_instance|var[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:2:reg_instance|var\(1));

\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \Mux3~0_combout\ & ( \Mux3~1_combout\ & ( \G1:2:reg_instance|var\(1) ) ) ) # ( !\Mux3~0_combout\ & ( \Mux3~1_combout\ & ( \G1:3:reg_instance|var\(1) ) ) ) # ( \Mux3~0_combout\ & ( !\Mux3~1_combout\ & ( \G1:1:reg_instance|var\(1) ) ) ) 
-- # ( !\Mux3~0_combout\ & ( !\Mux3~1_combout\ & ( \G1:0:reg_instance|var\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1:0:reg_instance|ALT_INV_var\(1),
	datab => \G1:1:reg_instance|ALT_INV_var\(1),
	datac => \G1:3:reg_instance|ALT_INV_var\(1),
	datad => \G1:2:reg_instance|ALT_INV_var\(1),
	datae => \ALT_INV_Mux3~0_combout\,
	dataf => \ALT_INV_Mux3~1_combout\,
	combout => \Mux2~0_combout\);

\G1:4:reg_instance|var[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:4:reg_instance|var\(1));

\G1:5:reg_instance|var[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:5:reg_instance|var\(1));

\G1:6:reg_instance|var[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:6:reg_instance|var\(1));

\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \G1:6:reg_instance|var\(1) & ( (!\Mux3~5_combout\ & (((\G1:4:reg_instance|var\(1))))) # (\Mux3~5_combout\ & ((!\Mux3~4_combout\) # ((\G1:5:reg_instance|var\(1))))) ) ) # ( !\G1:6:reg_instance|var\(1) & ( (!\Mux3~5_combout\ & 
-- (((\G1:4:reg_instance|var\(1))))) # (\Mux3~5_combout\ & (\Mux3~4_combout\ & ((\G1:5:reg_instance|var\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~4_combout\,
	datab => \ALT_INV_Mux3~5_combout\,
	datac => \G1:4:reg_instance|ALT_INV_var\(1),
	datad => \G1:5:reg_instance|ALT_INV_var\(1),
	datae => \G1:6:reg_instance|ALT_INV_var\(1),
	combout => \Mux2~1_combout\);

\Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \Mux2~1_combout\ & ( (!\dec3_to_8_instance_2|Equal7~0_combout\ & (((\Mux2~0_combout\)) # (\Mux3~3_combout\))) # (\dec3_to_8_instance_2|Equal7~0_combout\ & (((\G1:7:reg_instance|var\(1))))) ) ) # ( !\Mux2~1_combout\ & ( 
-- (!\dec3_to_8_instance_2|Equal7~0_combout\ & (!\Mux3~3_combout\ & ((\Mux2~0_combout\)))) # (\dec3_to_8_instance_2|Equal7~0_combout\ & (((\G1:7:reg_instance|var\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101001001111010111100000101100011010010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec3_to_8_instance_2|ALT_INV_Equal7~0_combout\,
	datab => \ALT_INV_Mux3~3_combout\,
	datac => \G1:7:reg_instance|ALT_INV_var\(1),
	datad => \ALT_INV_Mux2~0_combout\,
	datae => \ALT_INV_Mux2~1_combout\,
	combout => \Mux2~2_combout\);

\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

\G1:7:reg_instance|var[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:7:reg_instance|var\(2));

\G1:0:reg_instance|var[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:0:reg_instance|var\(2));

\G1:1:reg_instance|var[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:1:reg_instance|var\(2));

\G1:3:reg_instance|var[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:3:reg_instance|var\(2));

\G1:2:reg_instance|var[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:2:reg_instance|var\(2));

\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Mux3~0_combout\ & ( \Mux3~1_combout\ & ( \G1:2:reg_instance|var\(2) ) ) ) # ( !\Mux3~0_combout\ & ( \Mux3~1_combout\ & ( \G1:3:reg_instance|var\(2) ) ) ) # ( \Mux3~0_combout\ & ( !\Mux3~1_combout\ & ( \G1:1:reg_instance|var\(2) ) ) ) 
-- # ( !\Mux3~0_combout\ & ( !\Mux3~1_combout\ & ( \G1:0:reg_instance|var\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1:0:reg_instance|ALT_INV_var\(2),
	datab => \G1:1:reg_instance|ALT_INV_var\(2),
	datac => \G1:3:reg_instance|ALT_INV_var\(2),
	datad => \G1:2:reg_instance|ALT_INV_var\(2),
	datae => \ALT_INV_Mux3~0_combout\,
	dataf => \ALT_INV_Mux3~1_combout\,
	combout => \Mux1~0_combout\);

\G1:4:reg_instance|var[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:4:reg_instance|var\(2));

\G1:5:reg_instance|var[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:5:reg_instance|var\(2));

\G1:6:reg_instance|var[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:6:reg_instance|var\(2));

\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \G1:6:reg_instance|var\(2) & ( (!\Mux3~5_combout\ & (((\G1:4:reg_instance|var\(2))))) # (\Mux3~5_combout\ & ((!\Mux3~4_combout\) # ((\G1:5:reg_instance|var\(2))))) ) ) # ( !\G1:6:reg_instance|var\(2) & ( (!\Mux3~5_combout\ & 
-- (((\G1:4:reg_instance|var\(2))))) # (\Mux3~5_combout\ & (\Mux3~4_combout\ & ((\G1:5:reg_instance|var\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~4_combout\,
	datab => \ALT_INV_Mux3~5_combout\,
	datac => \G1:4:reg_instance|ALT_INV_var\(2),
	datad => \G1:5:reg_instance|ALT_INV_var\(2),
	datae => \G1:6:reg_instance|ALT_INV_var\(2),
	combout => \Mux1~1_combout\);

\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \Mux1~1_combout\ & ( (!\dec3_to_8_instance_2|Equal7~0_combout\ & (((\Mux1~0_combout\)) # (\Mux3~3_combout\))) # (\dec3_to_8_instance_2|Equal7~0_combout\ & (((\G1:7:reg_instance|var\(2))))) ) ) # ( !\Mux1~1_combout\ & ( 
-- (!\dec3_to_8_instance_2|Equal7~0_combout\ & (!\Mux3~3_combout\ & ((\Mux1~0_combout\)))) # (\dec3_to_8_instance_2|Equal7~0_combout\ & (((\G1:7:reg_instance|var\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101001001111010111100000101100011010010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec3_to_8_instance_2|ALT_INV_Equal7~0_combout\,
	datab => \ALT_INV_Mux3~3_combout\,
	datac => \G1:7:reg_instance|ALT_INV_var\(2),
	datad => \ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_Mux1~1_combout\,
	combout => \Mux1~2_combout\);

\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

\G1:7:reg_instance|var[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:7:reg_instance|var\(3));

\G1:0:reg_instance|var[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:0:reg_instance|var\(3));

\G1:1:reg_instance|var[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:1:reg_instance|var\(3));

\G1:3:reg_instance|var[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:3:reg_instance|var\(3));

\G1:2:reg_instance|var[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:2:reg_instance|var\(3));

\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Mux3~0_combout\ & ( \Mux3~1_combout\ & ( \G1:2:reg_instance|var\(3) ) ) ) # ( !\Mux3~0_combout\ & ( \Mux3~1_combout\ & ( \G1:3:reg_instance|var\(3) ) ) ) # ( \Mux3~0_combout\ & ( !\Mux3~1_combout\ & ( \G1:1:reg_instance|var\(3) ) ) ) 
-- # ( !\Mux3~0_combout\ & ( !\Mux3~1_combout\ & ( \G1:0:reg_instance|var\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1:0:reg_instance|ALT_INV_var\(3),
	datab => \G1:1:reg_instance|ALT_INV_var\(3),
	datac => \G1:3:reg_instance|ALT_INV_var\(3),
	datad => \G1:2:reg_instance|ALT_INV_var\(3),
	datae => \ALT_INV_Mux3~0_combout\,
	dataf => \ALT_INV_Mux3~1_combout\,
	combout => \Mux0~0_combout\);

\G1:4:reg_instance|var[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:4:reg_instance|var\(3));

\G1:5:reg_instance|var[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:5:reg_instance|var\(3));

\G1:6:reg_instance|var[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \dec3_to_8_instance_1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1:6:reg_instance|var\(3));

\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \G1:6:reg_instance|var\(3) & ( (!\Mux3~5_combout\ & (((\G1:4:reg_instance|var\(3))))) # (\Mux3~5_combout\ & ((!\Mux3~4_combout\) # ((\G1:5:reg_instance|var\(3))))) ) ) # ( !\G1:6:reg_instance|var\(3) & ( (!\Mux3~5_combout\ & 
-- (((\G1:4:reg_instance|var\(3))))) # (\Mux3~5_combout\ & (\Mux3~4_combout\ & ((\G1:5:reg_instance|var\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~4_combout\,
	datab => \ALT_INV_Mux3~5_combout\,
	datac => \G1:4:reg_instance|ALT_INV_var\(3),
	datad => \G1:5:reg_instance|ALT_INV_var\(3),
	datae => \G1:6:reg_instance|ALT_INV_var\(3),
	combout => \Mux0~1_combout\);

\Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ( \Mux0~1_combout\ & ( (!\dec3_to_8_instance_2|Equal7~0_combout\ & (((\Mux0~0_combout\)) # (\Mux3~3_combout\))) # (\dec3_to_8_instance_2|Equal7~0_combout\ & (((\G1:7:reg_instance|var\(3))))) ) ) # ( !\Mux0~1_combout\ & ( 
-- (!\dec3_to_8_instance_2|Equal7~0_combout\ & (!\Mux3~3_combout\ & ((\Mux0~0_combout\)))) # (\dec3_to_8_instance_2|Equal7~0_combout\ & (((\G1:7:reg_instance|var\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101001001111010111100000101100011010010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec3_to_8_instance_2|ALT_INV_Equal7~0_combout\,
	datab => \ALT_INV_Mux3~3_combout\,
	datac => \G1:7:reg_instance|ALT_INV_var\(3),
	datad => \ALT_INV_Mux0~0_combout\,
	datae => \ALT_INV_Mux0~1_combout\,
	combout => \Mux0~2_combout\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;
END structure;


