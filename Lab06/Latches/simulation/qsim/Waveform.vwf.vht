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
-- Generated on "04/02/2018 16:18:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          latch_sr_nand
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY latch_sr_nand_vhd_vec_tst IS
END latch_sr_nand_vhd_vec_tst;
ARCHITECTURE latch_sr_nand_arch OF latch_sr_nand_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Qa : STD_LOGIC;
SIGNAL Qb : STD_LOGIC;
SIGNAL R_n : STD_LOGIC;
SIGNAL S_n : STD_LOGIC;
COMPONENT latch_sr_nand
	PORT (
	Qa : OUT STD_LOGIC;
	Qb : OUT STD_LOGIC;
	R_n : IN STD_LOGIC;
	S_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : latch_sr_nand
	PORT MAP (
-- list connections between master ports and signals
	Qa => Qa,
	Qb => Qb,
	R_n => R_n,
	S_n => S_n
	);

-- S_n
t_prcs_S_n: PROCESS
BEGIN
LOOP
	S_n <= '0';
	WAIT FOR 400000 ps;
	S_n <= '1';
	WAIT FOR 400000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S_n;

-- R_n
t_prcs_R_n: PROCESS
BEGIN
LOOP
	R_n <= '0';
	WAIT FOR 200000 ps;
	R_n <= '1';
	WAIT FOR 200000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_R_n;
END latch_sr_nand_arch;
