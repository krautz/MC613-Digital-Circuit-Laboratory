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
	
	COMPONENT bin2hex
		PORT (
			SW:in std_logic_vector (3 DOWNTO 0);
			HEX0: out std_logic_vector (6 DOWNTO 0)
		);
	END COMPONENT ;
	
	SIGNAL saida: STD_LOGIC_VECTOR (3 downto 0);
	SIGNAL negA, negB, negF: STD_LOGIC;
	SIGNAL HEX4arit,HEX5arit,HEX3arit,HEX1arit,HEX2arit,HEX0arit,HEX0log,HEX4log,HEX1log,HEX3log,HEX5log,HEX2log: STD_LOGIC_VECTOR(6 downto 0);

begin
	
	liga_A_arit: two_comp_to_7seg
		port map (SW (7 downto 4), HEX4arit (6 downto 0), negA);
	HEX5arit <= "0111111" WHEN negA = '1' ELSE "1111111";
	
	liga_B_arit: two_comp_to_7seg
		port map (SW (3 downto 0), HEX2arit (6 downto 0), negB);
	HEX3arit <= "0111111" WHEN negB = '1' ELSE "1111111";
	
	liga_A_log: bin2hex
		port map (SW (7 downto 4), HEX4log (6 downto 0));
	HEX5log <= "1111111";
	
	liga_B_log: bin2hex
		port map (SW (3 downto 0), HEX2log (6 downto 0));
	HEX3log <= "1111111";

	faz_os_baguio: alu
		port map (SW (7 downto 4), SW (3 downto 0),  saida (3 downto 0), SW(9), SW(8), LEDR(3), LEDR(2), LEDR(1), LEDR(0));
	
	liga_F_arit: two_comp_to_7seg
		port map (saida (3 downto 0), HEX0arit (6 downto 0), negF);
	HEX1arit <= "0111111" WHEN negF = '1' ELSE "1111111";
	
	liga_F_log: bin2hex
		port map (saida (3 downto 0), HEX0log (6 downto 0));
	HEX1log <= "1111111";
	
	HEX0 <= HEX0arit when SW(8) = '0' Else HEX0log;
	HEX1 <= HEX1arit when SW(8) = '0' Else HEX1log;
	HEX2 <= HEX2arit when SW(8) = '0' Else HEX2log;
	HEX3 <= HEX3arit when SW(8) = '0' Else HEX3log;
	HEX4 <= HEX4arit when SW(8) = '0' Else HEX4log;
	HEX5 <= HEX5arit when SW(8) = '0' Else HEX5log;
	
		
	
end behavioral;

