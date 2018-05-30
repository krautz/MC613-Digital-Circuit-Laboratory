LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY genius_board IS
	PORT (
		 PS2_DAT 						:	INOUT	STD_LOGIC;
		 PS2_CLK							:	INOUT	STD_LOGIC;
		 CLOCK_50 						: 	IN std_logic;
		 VGA_R, VGA_G, VGA_B       : 	OUT std_logic_vector(7 DOWNTO 0);
		 VGA_HS, VGA_VS            : 	OUT std_logic;
		 VGA_BLANK_N, VGA_SYNC_N   : 	OUT std_logic;
		 VGA_CLK                   : 	OUT std_logic	
	);
END genius_board;

ARCHITECTURE game OF genius_board IS

	COMPONENT genius IS
	PORT (
		 PS2_DAT 						:	INOUT	STD_LOGIC;
		 PS2_CLK							:	INOUT	STD_LOGIC;
		 CLOCK_50 						: 	IN std_logic;
		 VGA_R, VGA_G, VGA_B       : 	OUT std_logic_vector(7 DOWNTO 0);
		 VGA_HS, VGA_VS            : 	OUT std_logic;
		 VGA_BLANK_N, VGA_SYNC_N   : 	OUT std_logic;
		 VGA_CLK                   : 	OUT std_logic	
	);
	END COMPONENT;


BEGIN

	genius_play: genius PORT MAP (
		PS2_DAT, PS2_CLK, CLOCK_50, VGA_R, VGA_G, VGA_B, VGA_HS, VGA_VS, VGA_BLANK_N, VGA_SYNC_N, VGA_CLK
	);
	
END game;