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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/02/2018 17:43:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ff_jk
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ff_jk_vhd_vec_tst IS
END ff_jk_vhd_vec_tst;
ARCHITECTURE ff_jk_arch OF ff_jk_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clear : STD_LOGIC;
SIGNAL Clk : STD_LOGIC;
SIGNAL J : STD_LOGIC;
SIGNAL K : STD_LOGIC;
SIGNAL Preset : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL Q_n : STD_LOGIC;
COMPONENT ff_jk
	PORT (
	Clear : IN STD_LOGIC;
	Clk : IN STD_LOGIC;
	J : IN STD_LOGIC;
	K : IN STD_LOGIC;
	Preset : IN STD_LOGIC;
	Q : BUFFER STD_LOGIC;
	Q_n : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ff_jk
	PORT MAP (
-- list connections between master ports and signals
	Clear => Clear,
	Clk => Clk,
	J => J,
	K => K,
	Preset => Preset,
	Q => Q,
	Q_n => Q_n
	);

-- Clear
t_prcs_Clear: PROCESS
BEGIN
	Clear <= '0';
	WAIT FOR 260000 ps;
	Clear <= '1';
	WAIT FOR 30000 ps;
	Clear <= '0';
	WAIT FOR 180000 ps;
	Clear <= '1';
	WAIT FOR 20000 ps;
	Clear <= '0';
	WAIT FOR 270000 ps;
	Clear <= '1';
	WAIT FOR 30000 ps;
	Clear <= '0';
WAIT;
END PROCESS t_prcs_Clear;

-- Preset
t_prcs_Preset: PROCESS
BEGIN
	Preset <= '1';
	WAIT FOR 20000 ps;
	Preset <= '0';
	WAIT FOR 240000 ps;
	Preset <= '1';
	WAIT FOR 30000 ps;
	Preset <= '0';
	WAIT FOR 140000 ps;
	Preset <= '1';
	WAIT FOR 20000 ps;
	Preset <= '0';
	WAIT FOR 310000 ps;
	Preset <= '1';
	WAIT FOR 30000 ps;
	Preset <= '0';
WAIT;
END PROCESS t_prcs_Preset;

-- Clk
t_prcs_Clk: PROCESS
BEGIN
	Clk <= '0';
	WAIT FOR 30000 ps;
	Clk <= '1';
	WAIT FOR 40000 ps;
	Clk <= '0';
	WAIT FOR 140000 ps;
	Clk <= '1';
	WAIT FOR 30000 ps;
	Clk <= '0';
	WAIT FOR 280000 ps;
	Clk <= '1';
	WAIT FOR 20000 ps;
	Clk <= '0';
	WAIT FOR 120000 ps;
	Clk <= '1';
	WAIT FOR 40000 ps;
	Clk <= '0';
	WAIT FOR 60000 ps;
	Clk <= '1';
	WAIT FOR 30000 ps;
	Clk <= '0';
WAIT;
END PROCESS t_prcs_Clk;

-- J
t_prcs_J: PROCESS
BEGIN
LOOP
	J <= '0';
	WAIT FOR 400000 ps;
	J <= '1';
	WAIT FOR 400000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_J;

-- K
t_prcs_K: PROCESS
BEGIN
LOOP
	K <= '0';
	WAIT FOR 200000 ps;
	K <= '1';
	WAIT FOR 200000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_K;
END ff_jk_arch;
