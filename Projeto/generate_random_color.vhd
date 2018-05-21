LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY generate_random_color IS
	PORT (
		 CLOCK_50 : IN std_logic;
		 Write_Enable : IN std_logic;
		 color_ram_input : OUT std_logic_vector (2 DOWNTO 0)
	);
END generate_random_color;


ARCHITECTURE rtl OF generate_random_color IS

SIGNAL color : std_logic_vector (1 DOWNTO 0) := (OTHERS => '0');
SIGNAL color_and_enable : std_logic_vector (2 DOWNTO 0);
BEGIN

	PROCESS
	BEGIN
		WAIT UNTIL CLOCK_50'EVENT and CLOCK_50 = '1';
		color <= color + 1;
	END PROCESS;
	
	color_and_enable <= Write_Enable&color;
	WITH color_and_enable SELECT
		color_ram_input <= 	"010" WHEN "100", -- verde
									"100" WHEN "101", -- vermelho
									"110" WHEN "110", -- amarelo
									"011" WHEN "111", -- azul
									"---" WHEN OTHERS;
									
									
END rtl;