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
-- Generated on "04/07/2018 17:36:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          reg_caps
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY reg_caps_vhd_vec_tst IS
END reg_caps_vhd_vec_tst;
ARCHITECTURE reg_caps_arch OF reg_caps_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data_in : STD_LOGIC;
SIGNAL data_out : STD_LOGIC;
COMPONENT reg_caps
	PORT (
	data_in : IN STD_LOGIC;
	data_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : reg_caps
	PORT MAP (
-- list connections between master ports and signals
	data_in => data_in,
	data_out => data_out
	);

-- data_in
t_prcs_data_in: PROCESS
BEGIN
	data_in <= '0';
	WAIT FOR 40000 ps;
	data_in <= '1';
	WAIT FOR 160000 ps;
	data_in <= '0';
	WAIT FOR 200000 ps;
	data_in <= '1';
	WAIT FOR 200000 ps;
	data_in <= '0';
WAIT;
END PROCESS t_prcs_data_in;
END reg_caps_arch;
