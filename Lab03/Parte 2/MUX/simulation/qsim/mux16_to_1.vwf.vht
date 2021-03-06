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
-- Generated on "03/19/2018 16:02:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux16_to_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux16_to_1_vhd_vec_tst IS
END mux16_to_1_vhd_vec_tst;
ARCHITECTURE mux16_to_1_arch OF mux16_to_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL output : STD_LOGIC;
SIGNAL sel : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT mux16_to_1
	PORT (
	data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	output : OUT STD_LOGIC;
	sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux16_to_1
	PORT MAP (
-- list connections between master ports and signals
	data => data,
	output => output,
	sel => sel
	);
-- sel[3]
t_prcs_sel_3: PROCESS
BEGIN
LOOP
	sel(3) <= '0';
	WAIT FOR 400000 ps;
	sel(3) <= '1';
	WAIT FOR 400000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sel_3;
-- sel[2]
t_prcs_sel_2: PROCESS
BEGIN
LOOP
	sel(2) <= '0';
	WAIT FOR 200000 ps;
	sel(2) <= '1';
	WAIT FOR 200000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sel_2;
-- sel[1]
t_prcs_sel_1: PROCESS
BEGIN
LOOP
	sel(1) <= '0';
	WAIT FOR 100000 ps;
	sel(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sel_1;
-- sel[0]
t_prcs_sel_0: PROCESS
BEGIN
LOOP
	sel(0) <= '0';
	WAIT FOR 50000 ps;
	sel(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sel_0;
-- data[15]
t_prcs_data_15: PROCESS
BEGIN
	data(15) <= '1';
	WAIT FOR 400000 ps;
	data(15) <= '0';
WAIT;
END PROCESS t_prcs_data_15;
-- data[14]
t_prcs_data_14: PROCESS
BEGIN
	data(14) <= '0';
WAIT;
END PROCESS t_prcs_data_14;
-- data[13]
t_prcs_data_13: PROCESS
BEGIN
LOOP
	data(13) <= '0';
	WAIT FOR 200000 ps;
	data(13) <= '1';
	WAIT FOR 200000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_13;
-- data[12]
t_prcs_data_12: PROCESS
BEGIN
	data(12) <= '0';
WAIT;
END PROCESS t_prcs_data_12;
-- data[11]
t_prcs_data_11: PROCESS
BEGIN
LOOP
	data(11) <= '0';
	WAIT FOR 100000 ps;
	data(11) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_11;
-- data[10]
t_prcs_data_10: PROCESS
BEGIN
	data(10) <= '0';
WAIT;
END PROCESS t_prcs_data_10;
-- data[9]
t_prcs_data_9: PROCESS
BEGIN
LOOP
	data(9) <= '0';
	WAIT FOR 50000 ps;
	data(9) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_9;
-- data[8]
t_prcs_data_8: PROCESS
BEGIN
	data(8) <= '0';
WAIT;
END PROCESS t_prcs_data_8;
-- data[7]
t_prcs_data_7: PROCESS
BEGIN
LOOP
	data(7) <= '0';
	WAIT FOR 25000 ps;
	data(7) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_7;
-- data[6]
t_prcs_data_6: PROCESS
BEGIN
	data(6) <= '0';
WAIT;
END PROCESS t_prcs_data_6;
-- data[5]
t_prcs_data_5: PROCESS
BEGIN
LOOP
	data(5) <= '0';
	WAIT FOR 12500 ps;
	data(5) <= '1';
	WAIT FOR 12500 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_5;
-- data[4]
t_prcs_data_4: PROCESS
BEGIN
	data(4) <= '0';
WAIT;
END PROCESS t_prcs_data_4;
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
LOOP
	data(3) <= '0';
	WAIT FOR 6250 ps;
	data(3) <= '1';
	WAIT FOR 6250 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	data(2) <= '0';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
LOOP
	data(1) <= '0';
	WAIT FOR 3125 ps;
	data(1) <= '1';
	WAIT FOR 3125 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
	data(0) <= '0';
WAIT;
END PROCESS t_prcs_data_0;
END mux16_to_1_arch;
