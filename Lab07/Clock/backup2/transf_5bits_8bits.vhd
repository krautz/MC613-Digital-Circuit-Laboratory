LIBRARY ieee ;
USE ieee.std_logic_1164.all ;


ENTITY transf_5bits_8bits IS
	PORT ( 	entrada : IN STD_LOGIC_VECTOR (3 downto 0) ;
				saida : OUT integer
	) ;
	END transf_5bits_8bits ;
ARCHITECTURE Behavior OF transf_5bits_8bits IS
BEGIN

	with entrada select
		saida <= 0 when "0000",
					1 when "0001",
					2 when "0010",
					3 when "0011",
					4 when "0100",
					5 when "0101",
					6 when "0110",
					7 when "0111",
					8 when "1000",
					9 when "1001",
					-1 when others;
END Behavior ;