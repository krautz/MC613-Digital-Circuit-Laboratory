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

-- DATE "03/12/2018 16:28:08"

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

ENTITY 	Lab01 IS
    PORT (
	pin_name6 : OUT std_logic;
	Xe : IN std_logic;
	Xc : IN std_logic;
	Xd : IN std_logic;
	Xa : IN std_logic;
	Xb : IN std_logic
	);
END Lab01;

-- Design Ports Information
-- pin_name6	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xd	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xb	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xc	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xa	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xe	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab01 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pin_name6 : std_logic;
SIGNAL ww_Xe : std_logic;
SIGNAL ww_Xc : std_logic;
SIGNAL ww_Xd : std_logic;
SIGNAL ww_Xa : std_logic;
SIGNAL ww_Xb : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Xa~input_o\ : std_logic;
SIGNAL \Xc~input_o\ : std_logic;
SIGNAL \Xd~input_o\ : std_logic;
SIGNAL \Xb~input_o\ : std_logic;
SIGNAL \Xe~input_o\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Xe~input_o\ : std_logic;
SIGNAL \ALT_INV_Xa~input_o\ : std_logic;
SIGNAL \ALT_INV_Xc~input_o\ : std_logic;
SIGNAL \ALT_INV_Xb~input_o\ : std_logic;
SIGNAL \ALT_INV_Xd~input_o\ : std_logic;

BEGIN

pin_name6 <= ww_pin_name6;
ww_Xe <= Xe;
ww_Xc <= Xc;
ww_Xd <= Xd;
ww_Xa <= Xa;
ww_Xb <= Xb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Xe~input_o\ <= NOT \Xe~input_o\;
\ALT_INV_Xa~input_o\ <= NOT \Xa~input_o\;
\ALT_INV_Xc~input_o\ <= NOT \Xc~input_o\;
\ALT_INV_Xb~input_o\ <= NOT \Xb~input_o\;
\ALT_INV_Xd~input_o\ <= NOT \Xd~input_o\;

-- Location: IOOBUF_X52_Y0_N2
\pin_name6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~0_combout\,
	devoe => ww_devoe,
	o => ww_pin_name6);

-- Location: IOIBUF_X12_Y0_N18
\Xa~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xa,
	o => \Xa~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\Xc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xc,
	o => \Xc~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\Xd~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xd,
	o => \Xd~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\Xb~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xb,
	o => \Xb~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\Xe~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xe,
	o => \Xe~input_o\);

-- Location: LABCELL_X9_Y1_N30
\inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = ( \Xb~input_o\ & ( \Xe~input_o\ & ( (!\Xa~input_o\ & (!\Xc~input_o\ & !\Xd~input_o\)) # (\Xa~input_o\ & (\Xc~input_o\ & \Xd~input_o\)) ) ) ) # ( !\Xb~input_o\ & ( \Xe~input_o\ & ( (!\Xa~input_o\ & (!\Xc~input_o\ & \Xd~input_o\)) # 
-- (\Xa~input_o\ & (\Xc~input_o\)) ) ) ) # ( \Xb~input_o\ & ( !\Xe~input_o\ & ( (!\Xa~input_o\ & (!\Xc~input_o\ & !\Xd~input_o\)) # (\Xa~input_o\ & (\Xc~input_o\ & \Xd~input_o\)) ) ) ) # ( !\Xb~input_o\ & ( !\Xe~input_o\ & ( !\Xa~input_o\ $ (\Xc~input_o\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100000011000000100011001000110011000000110000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Xa~input_o\,
	datab => \ALT_INV_Xc~input_o\,
	datac => \ALT_INV_Xd~input_o\,
	datae => \ALT_INV_Xb~input_o\,
	dataf => \ALT_INV_Xe~input_o\,
	combout => \inst5~0_combout\);

-- Location: LABCELL_X12_Y74_N0
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


