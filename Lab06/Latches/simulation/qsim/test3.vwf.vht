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
-- Generated on "04/02/2018 17:33:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ff_d
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ff_d_vhd_vec_tst IS
END ff_d_vhd_vec_tst;
ARCHITECTURE ff_d_arch OF ff_d_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL Q_n : STD_LOGIC;
COMPONENT ff_d
	PORT (
	Clk : IN STD_LOGIC;
	D : IN STD_LOGIC;
	Q : OUT STD_LOGIC;
	Q_n : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ff_d
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	D => D,
	Q => Q,
	Q_n => Q_n
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
	Clk <= '0';
	WAIT FOR 90000 ps;
	Clk <= '1';
	WAIT FOR 110000 ps;
	Clk <= '0';
	WAIT FOR 180000 ps;
	Clk <= '1';
	WAIT FOR 120000 ps;
	Clk <= '0';
	WAIT FOR 120000 ps;
	Clk <= '1';
	WAIT FOR 130000 ps;
	Clk <= '0';
WAIT;
END PROCESS t_prcs_Clk;

-- D
t_prcs_D: PROCESS
BEGIN
	D <= '0';
	WAIT FOR 370000 ps;
	D <= '1';
	WAIT FOR 40000 ps;
	D <= '0';
WAIT;
END PROCESS t_prcs_D;
END ff_d_arch;
