library ieee;
use ieee.std_logic_1164.all;

entity alu_board is
  port (
    SW : in std_logic_vector(9 downto 0);
    HEX5, HEX4, HEX3, HEX2, HEX1, HEX0 : out std_logic_vector(6 downto 0);
    LEDR : out std_logic_vector(3 downto 0)
  );
end alu_board;

architecture behavioral of alu_board is

	COMPONENT alu
	port (
		a, b : in std_logic_vector(3 downto 0);
		F : out std_logic_vector(3 downto 0);
		s0, s1 : in std_logic;
		Z, C, V, N : out std_logic
	 );
end COMPONENT;

	COMPONENT two_comp_to_7seg
	port (
		bin : in std_logic_vector(3 downto 0);
		segs : out std_logic_vector(6 downto 0);
		neg : out std_logic
	);
	END COMPONENT;
	
	SIGNAL saida: STD_LOGIC_VECTOR (3 downto 0);
	SIGNAL negA, negB, negF: STD_LOGIC;

begin
	faz_os_baguio: alu
		port map (SW (3 downto 0), SW (7 downto 4),  saida (3 downto 0), SW(9), SW(8), LEDR(3), LEDR(2), LEDR(1), LEDR(0));
		
	liga_A: two_comp_to_7seg
		port map (SW (7 downto 4), HEX4, negA);
	HEX5 <= "1111110" WHEN negA = '1' ELSE "1111111";
	
	liga_B: two_comp_to_7seg
		port map (SW (3 downto 0), HEX2, negB);
	HEX3 <= "1111110" WHEN negB = '1' ELSE "1111111";
	
	liga_F: two_comp_to_7seg
		port map (saida (3 downto 0), HEX0, negF);
	HEX1 <= "1111110" WHEN negF = '1' ELSE "1111111";
end behavioral;

