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
-- Generated on "04/02/2018 17:54:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ff_t
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ff_t_vhd_vec_tst IS
END ff_t_vhd_vec_tst;
ARCHITECTURE ff_t_arch OF ff_t_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clear : STD_LOGIC;
SIGNAL Clk : STD_LOGIC;
SIGNAL Preset : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL Q_n : STD_LOGIC;
SIGNAL T : STD_LOGIC;
COMPONENT ff_t
	PORT (
	Clear : IN STD_LOGIC;
	Clk : IN STD_LOGIC;
	Preset : IN STD_LOGIC;
	Q : OUT STD_LOGIC;
	Q_n : OUT STD_LOGIC;
	T : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ff_t
	PORT MAP (
-- list connections between master ports and signals
	Clear => Clear,
	Clk => Clk,
	Preset => Preset,
	Q => Q,
	Q_n => Q_n,
	T => T
	);

-- Clear
t_prcs_Clear: PROCESS
BEGIN
	Clear <= '0';
	WAIT FOR 10000 ps;
	Clear <= '1';
	WAIT FOR 20000 ps;
	Clear <= '0';
	WAIT FOR 400000 ps;
	Clear <= '1';
	WAIT FOR 20000 ps;
	Clear <= '0';
WAIT;
END PROCESS t_prcs_Clear;

-- Preset
t_prcs_Preset: PROCESS
BEGIN
	Preset <= '0';
	WAIT FOR 10000 ps;
	Preset <= '1';
	WAIT FOR 20000 ps;
	Preset <= '0';
	WAIT FOR 230000 ps;
	Preset <= '1';
	WAIT FOR 30000 ps;
	Preset <= '0';
	WAIT FOR 220000 ps;
	Preset <= '1';
	WAIT FOR 20000 ps;
	Preset <= '0';
WAIT;
END PROCESS t_prcs_Preset;

-- Clk
t_prcs_Clk: PROCESS
BEGIN
	Clk <= '0';
	WAIT FOR 10000 ps;
	Clk <= '1';
	WAIT FOR 20000 ps;
	Clk <= '0';
	WAIT FOR 180000 ps;
	Clk <= '1';
	WAIT FOR 30000 ps;
	Clk <= '0';
	WAIT FOR 170000 ps;
	Clk <= '1';
	WAIT FOR 10000 ps;
	Clk <= '0';
	WAIT FOR 90000 ps;
	Clk <= '1';
	WAIT FOR 20000 ps;
	Clk <= '0';
	WAIT FOR 80000 ps;
	Clk <= '1';
	WAIT FOR 40000 ps;
	Clk <= '0';
WAIT;
END PROCESS t_prcs_Clk;

-- T
t_prcs_T: PROCESS
BEGIN
	T <= '0';
	WAIT FOR 200000 ps;
	T <= '1';
	WAIT FOR 200000 ps;
	T <= '0';
	WAIT FOR 200000 ps;
	T <= '1';
WAIT;
END PROCESS t_prcs_T;
END ff_t_arch;
