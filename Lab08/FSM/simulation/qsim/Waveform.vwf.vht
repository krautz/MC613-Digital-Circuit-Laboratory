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
-- Generated on "04/16/2018 16:32:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fsm_table
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fsm_table_vhd_vec_tst IS
END fsm_table_vhd_vec_tst;
ARCHITECTURE fsm_table_arch OF fsm_table_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL w : STD_LOGIC;
SIGNAL z : STD_LOGIC;
COMPONENT fsm_table
	PORT (
	clock : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	w : IN STD_LOGIC;
	z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fsm_table
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	reset => reset,
	w => w,
	z => z
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 25000 ps;
	clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 420000 ps;
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- w
t_prcs_w: PROCESS
BEGIN
	w <= '0';
	WAIT FOR 20000 ps;
	w <= '1';
	WAIT FOR 10000 ps;
	w <= '0';
	WAIT FOR 230000 ps;
	w <= '1';
	WAIT FOR 30000 ps;
	w <= '0';
	WAIT FOR 30000 ps;
	w <= '1';
	WAIT FOR 20000 ps;
	w <= '0';
	WAIT FOR 30000 ps;
	w <= '1';
	WAIT FOR 20000 ps;
	w <= '0';
	WAIT FOR 80000 ps;
	w <= '1';
	WAIT FOR 20000 ps;
	w <= '0';
	WAIT FOR 70000 ps;
	w <= '1';
	WAIT FOR 30000 ps;
	w <= '0';
	WAIT FOR 20000 ps;
	w <= '1';
	WAIT FOR 180000 ps;
	w <= '0';
WAIT;
END PROCESS t_prcs_w;
END fsm_table_arch;
