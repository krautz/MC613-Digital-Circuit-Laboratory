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
-- Generated on "04/10/2018 19:25:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          contador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY contador_vhd_vec_tst IS
END contador_vhd_vec_tst;
ARCHITECTURE contador_arch OF contador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL E : STD_LOGIC;
SIGNAL is_dec : STD_LOGIC;
SIGNAL is_hour : STD_LOGIC;
SIGNAL is_un : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT contador
	PORT (
	Clock : IN STD_LOGIC;
	E : IN STD_LOGIC;
	is_dec : IN STD_LOGIC;
	is_hour : IN STD_LOGIC;
	is_un : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : contador
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	E => E,
	is_dec => is_dec,
	is_hour => is_hour,
	is_un => is_un,
	Q => Q
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 25000 ps;
	Clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;

-- E
t_prcs_E: PROCESS
BEGIN
	E <= '1';
WAIT;
END PROCESS t_prcs_E;

-- is_dec
t_prcs_is_dec: PROCESS
BEGIN
	is_dec <= '0';
WAIT;
END PROCESS t_prcs_is_dec;

-- is_hour
t_prcs_is_hour: PROCESS
BEGIN
	is_hour <= '0';
WAIT;
END PROCESS t_prcs_is_hour;

-- is_un
t_prcs_is_un: PROCESS
BEGIN
	is_un <= '1';
WAIT;
END PROCESS t_prcs_is_un;
END contador_arch;
