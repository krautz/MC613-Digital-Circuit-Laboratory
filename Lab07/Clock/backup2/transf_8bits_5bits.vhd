LIBRARY ieee ;
USE ieee.std_logic_1164.all ;


ENTITY transf_8bits_5bits IS
	PORT ( 	entrada : IN integer;
				saida : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	) ;
	END transf_8bits_5bits ;
ARCHITECTURE Behavior OF transf_8bits_5bits IS
BEGIN

	with entrada select
		saida <= "0000" when 0,
					"0001" when 1,
					"0010" when 2,
					"0011" when 3,
					"0100" when 4,
					"0101" when 5,
					"0110" when 6,
					"0111" when 7,
					"1000" when 8,
					"1001" when 9,
					"----" when others;
END Behavior ;