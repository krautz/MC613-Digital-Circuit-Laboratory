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
-- Generated on "03/19/2018 13:52:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux4_to_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux4_to_1_vhd_vec_tst IS
END mux4_to_1_vhd_vec_tst;
ARCHITECTURE mux4_to_1_arch OF mux4_to_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL d0 : STD_LOGIC;
SIGNAL d1 : STD_LOGIC;
SIGNAL d2 : STD_LOGIC;
SIGNAL d3 : STD_LOGIC;
SIGNAL output : STD_LOGIC;
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT mux4_to_1
	PORT (
	d0 : IN STD_LOGIC;
	d1 : IN STD_LOGIC;
	d2 : IN STD_LOGIC;
	d3 : IN STD_LOGIC;
	output : BUFFER STD_LOGIC;
	sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux4_to_1
	PORT MAP (
-- list connections between master ports and signals
	d0 => d0,
	d1 => d1,
	d2 => d2,
	d3 => d3,
	output => output,
	sel => sel
	);
-- sel[1]
t_prcs_sel_1: PROCESS
BEGIN
LOOP
	sel(1) <= '0';
	WAIT FOR 400000 ps;
	sel(1) <= '1';
	WAIT FOR 400000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sel_1;
-- sel[0]
t_prcs_sel_0: PROCESS
BEGIN
LOOP
	sel(0) <= '0';
	WAIT FOR 200000 ps;
	sel(0) <= '1';
	WAIT FOR 200000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sel_0;

-- d0
t_prcs_d0: PROCESS
BEGIN
LOOP
	d0 <= '0';
	WAIT FOR 100000 ps;
	d0 <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_d0;

-- d1
t_prcs_d1: PROCESS
BEGIN
LOOP
	d1 <= '0';
	WAIT FOR 50000 ps;
	d1 <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_d1;

-- d2
t_prcs_d2: PROCESS
BEGIN
LOOP
	d2 <= '0';
	WAIT FOR 25000 ps;
	d2 <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_d2;

-- d3
t_prcs_d3: PROCESS
BEGIN
LOOP
	d3 <= '0';
	WAIT FOR 12500 ps;
	d3 <= '1';
	WAIT FOR 12500 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_d3;
END mux4_to_1_arch;
