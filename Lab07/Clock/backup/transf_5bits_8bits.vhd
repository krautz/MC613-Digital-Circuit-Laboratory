LIBRARY ieee ;
USE ieee.std_logic_1164.all ;


ENTITY transf_5bits_8bits IS
	PORT ( 	entrada : IN STD_LOGIC_VECTOR (4 downto 0) ;
				saida : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	) ;
	END transf_5bits_8bits ;
ARCHITECTURE Behavior OF transf_5bits_8bits IS
BEGIN

	with entrada select
		saida <= "00000000" when "00000",
					"00000001" when "00001",
					"00000010" when "00010",
					"00000011" when "00011",
					"00000100" when "00100",
					"00000101" when "00101",
					"00000110" when "00110",
					"00000111" when "00111",
					"00001000" when "01000",
					"00001001" when "01001",
					"00010000" when "01010",
					"00010001" when "01011",
					"00010010" when "01100",
					"00010011" when "01101",
					"00010100" when "01110",
					"00010101" when "01111",
					"00010110" when "10000",
					"00010111" when "10001",
					"00011000" when "10010",
					"00011001" when "10011",
					"00100000" when "10100",
					"00100001" when "10101",
					"00100010" when "10110",
					"00100011" when "10111",
					"--------" when others;
END Behavior ;