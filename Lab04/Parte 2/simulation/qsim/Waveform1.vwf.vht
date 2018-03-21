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
-- Generated on "03/21/2018 18:15:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          alu_board
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_board_vhd_vec_tst IS
END alu_board_vhd_vec_tst;
ARCHITECTURE alu_board_arch OF alu_board_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT alu_board
	PORT (
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : alu_board
	PORT MAP (
-- list connections between master ports and signals
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	LEDR => LEDR,
	SW => SW
	);
-- SW[9]
t_prcs_SW_9: PROCESS
BEGIN
	SW(9) <= '0';
WAIT;
END PROCESS t_prcs_SW_9;
-- SW[8]
t_prcs_SW_8: PROCESS
BEGIN
	SW(8) <= '0';
WAIT;
END PROCESS t_prcs_SW_8;
-- SW[7]
t_prcs_SW_7: PROCESS
BEGIN
	SW(7) <= '0';
WAIT;
END PROCESS t_prcs_SW_7;
-- SW[6]
t_prcs_SW_6: PROCESS
BEGIN
	SW(6) <= '1';
WAIT;
END PROCESS t_prcs_SW_6;
-- SW[5]
t_prcs_SW_5: PROCESS
BEGIN
	SW(5) <= '0';
WAIT;
END PROCESS t_prcs_SW_5;
-- SW[4]
t_prcs_SW_4: PROCESS
BEGIN
	SW(4) <= '0';
WAIT;
END PROCESS t_prcs_SW_4;
-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	SW(3) <= '0';
WAIT;
END PROCESS t_prcs_SW_3;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '0';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '1';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '0';
WAIT;
END PROCESS t_prcs_SW_0;
END alu_board_arch;
