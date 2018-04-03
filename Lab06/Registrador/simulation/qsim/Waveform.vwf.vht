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
-- Generated on "04/03/2018 15:27:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          reg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY reg_vhd_vec_tst IS
END reg_vhd_vec_tst;
ARCHITECTURE reg_arch OF reg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clear : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL data_in : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL load : STD_LOGIC;
COMPONENT reg
	PORT (
	clear : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	data_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	load : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : reg
	PORT MAP (
-- list connections between master ports and signals
	clear => clear,
	clk => clk,
	data_in => data_in,
	data_out => data_out,
	load => load
	);

-- clear
t_prcs_clear: PROCESS
BEGIN
	clear <= '0';
	WAIT FOR 90000 ps;
	clear <= '1';
	WAIT FOR 10000 ps;
	clear <= '0';
	WAIT FOR 260000 ps;
	clear <= '1';
	WAIT FOR 40000 ps;
	clear <= '0';
WAIT;
END PROCESS t_prcs_clear;

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
	WAIT FOR 70000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
	WAIT FOR 70000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	clk <= '0';
	WAIT FOR 80000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	clk <= '0';
	WAIT FOR 110000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	clk <= '0';
	WAIT FOR 30000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	clk <= '0';
	WAIT FOR 40000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
	WAIT FOR 120000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '0';
	WAIT FOR 50000 ps;
	load <= '1';
	WAIT FOR 30000 ps;
	load <= '0';
	WAIT FOR 160000 ps;
	load <= '1';
	WAIT FOR 20000 ps;
	load <= '0';
	WAIT FOR 100000 ps;
	load <= '1';
	WAIT FOR 40000 ps;
	load <= '0';
	WAIT FOR 70000 ps;
	load <= '1';
	WAIT FOR 30000 ps;
	load <= '0';
	WAIT FOR 110000 ps;
	load <= '1';
	WAIT FOR 20000 ps;
	load <= '0';
WAIT;
END PROCESS t_prcs_load;
-- data_in[3]
t_prcs_data_in_3: PROCESS
BEGIN
	data_in(3) <= '0';
	WAIT FOR 60000 ps;
	data_in(3) <= '1';
	WAIT FOR 470000 ps;
	data_in(3) <= '0';
WAIT;
END PROCESS t_prcs_data_in_3;
-- data_in[2]
t_prcs_data_in_2: PROCESS
BEGIN
	data_in(2) <= '0';
	WAIT FOR 110000 ps;
	data_in(2) <= '1';
	WAIT FOR 240000 ps;
	data_in(2) <= '0';
WAIT;
END PROCESS t_prcs_data_in_2;
-- data_in[1]
t_prcs_data_in_1: PROCESS
BEGIN
	data_in(1) <= '0';
	WAIT FOR 110000 ps;
	data_in(1) <= '1';
	WAIT FOR 420000 ps;
	data_in(1) <= '0';
WAIT;
END PROCESS t_prcs_data_in_1;
-- data_in[0]
t_prcs_data_in_0: PROCESS
BEGIN
	data_in(0) <= '0';
	WAIT FOR 60000 ps;
	data_in(0) <= '1';
WAIT;
END PROCESS t_prcs_data_in_0;
END reg_arch;
