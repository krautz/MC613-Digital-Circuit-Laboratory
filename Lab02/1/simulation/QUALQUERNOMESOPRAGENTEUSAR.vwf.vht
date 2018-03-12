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
-- Generated on "03/12/2018 16:28:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Lab01
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab01_vhd_vec_tst IS
END Lab01_vhd_vec_tst;
ARCHITECTURE Lab01_arch OF Lab01_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL pin_name6 : STD_LOGIC;
SIGNAL Xa : STD_LOGIC;
SIGNAL Xb : STD_LOGIC;
SIGNAL Xc : STD_LOGIC;
SIGNAL Xd : STD_LOGIC;
SIGNAL Xe : STD_LOGIC;
COMPONENT Lab01
	PORT (
	pin_name6 : OUT STD_LOGIC;
	Xa : IN STD_LOGIC;
	Xb : IN STD_LOGIC;
	Xc : IN STD_LOGIC;
	Xd : IN STD_LOGIC;
	Xe : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Lab01
	PORT MAP (
-- list connections between master ports and signals
	pin_name6 => pin_name6,
	Xa => Xa,
	Xb => Xb,
	Xc => Xc,
	Xd => Xd,
	Xe => Xe
	);

-- Xe
t_prcs_Xe: PROCESS
BEGIN
	Xe <= '0';
	WAIT FOR 400000 ps;
	Xe <= '1';
WAIT;
END PROCESS t_prcs_Xe;

-- Xd
t_prcs_Xd: PROCESS
BEGIN
	Xd <= '0';
	WAIT FOR 200000 ps;
	Xd <= '1';
	WAIT FOR 200000 ps;
	Xd <= '0';
	WAIT FOR 200000 ps;
	Xd <= '1';
WAIT;
END PROCESS t_prcs_Xd;

-- Xc
t_prcs_Xc: PROCESS
BEGIN
	Xc <= '0';
	WAIT FOR 100000 ps;
	Xc <= '1';
	WAIT FOR 100000 ps;
	Xc <= '0';
	WAIT FOR 100000 ps;
	Xc <= '1';
	WAIT FOR 100000 ps;
	Xc <= '0';
	WAIT FOR 100000 ps;
	Xc <= '1';
	WAIT FOR 100000 ps;
	Xc <= '0';
	WAIT FOR 100000 ps;
	Xc <= '1';
WAIT;
END PROCESS t_prcs_Xc;

-- Xb
t_prcs_Xb: PROCESS
BEGIN
	Xb <= '0';
	WAIT FOR 50000 ps;
	Xb <= '1';
	WAIT FOR 50000 ps;
	Xb <= '0';
	WAIT FOR 50000 ps;
	Xb <= '1';
	WAIT FOR 50000 ps;
	Xb <= '0';
	WAIT FOR 50000 ps;
	Xb <= '1';
	WAIT FOR 50000 ps;
	Xb <= '0';
	WAIT FOR 50000 ps;
	Xb <= '1';
	WAIT FOR 50000 ps;
	Xb <= '0';
	WAIT FOR 50000 ps;
	Xb <= '1';
	WAIT FOR 50000 ps;
	Xb <= '0';
	WAIT FOR 50000 ps;
	Xb <= '1';
	WAIT FOR 50000 ps;
	Xb <= '0';
	WAIT FOR 50000 ps;
	Xb <= '1';
	WAIT FOR 50000 ps;
	Xb <= '0';
	WAIT FOR 50000 ps;
	Xb <= '1';
WAIT;
END PROCESS t_prcs_Xb;

-- Xa
t_prcs_Xa: PROCESS
BEGIN
	Xa <= '0';
	WAIT FOR 20000 ps;
	Xa <= '1';
	WAIT FOR 30000 ps;
	Xa <= '0';
	WAIT FOR 30000 ps;
	Xa <= '1';
	WAIT FOR 20000 ps;
	Xa <= '0';
	WAIT FOR 30000 ps;
	Xa <= '1';
	WAIT FOR 20000 ps;
	Xa <= '0';
	WAIT FOR 30000 ps;
	Xa <= '1';
	WAIT FOR 20000 ps;
	Xa <= '0';
	WAIT FOR 30000 ps;
	Xa <= '1';
	WAIT FOR 20000 ps;
	Xa <= '0';
	WAIT FOR 30000 ps;
	Xa <= '1';
	WAIT FOR 20000 ps;
	Xa <= '0';
	WAIT FOR 30000 ps;
	Xa <= '1';
	WAIT FOR 20000 ps;
	Xa <= '0';
	WAIT FOR 30000 ps;
	Xa <= '1';
	WAIT FOR 20000 ps;
	Xa <= '0';
	WAIT FOR 30000 ps;
	Xa <= '1';
	WAIT FOR 20000 ps;
	Xa <= '0';
	WAIT FOR 30000 ps;
	Xa <= '1';
	WAIT FOR 20000 ps;
	Xa <= '0';
	WAIT FOR 30000 ps;
	Xa <= '1';
	WAIT FOR 20000 ps;
	Xa <= '0';
	WAIT FOR 30000 ps;
	Xa <= '1';
	WAIT FOR 20000 ps;
	Xa <= '0';
	WAIT FOR 30000 ps;
	Xa <= '1';
	WAIT FOR 20000 ps;
	Xa <= '0';
	WAIT FOR 30000 ps;
	Xa <= '1';
	WAIT FOR 20000 ps;
	Xa <= '0';
	WAIT FOR 30000 ps;
	Xa <= '1';
	WAIT FOR 20000 ps;
	Xa <= '0';
	WAIT FOR 30000 ps;
	Xa <= '1';
WAIT;
END PROCESS t_prcs_Xa;
END Lab01_arch;
