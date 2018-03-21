library ieee;
use ieee.std_logic_1164.all;

entity alu is
  port (
    a, b : in std_logic_vector(3 downto 0);
    F : out std_logic_vector(3 downto 0);
    s0, s1 : in std_logic;
    Z, C, V, N : out std_logic
  );
end alu;

architecture behavioral of alu is

	COMPONENT ripple_carry
	generic (
		N : integer
	);
	port (
		x,y : in std_logic_vector(N-1 downto 0);
		r : out std_logic_vector(N-1 downto 0);
		cin : in std_logic;
		cout : out std_logic;
		overflow : out std_logic
	);
	END COMPONENT;
	signal negB: STD_LOGIC_VECTOR (3 downto 0);
	signal S1S0: STD_LOGIC_VECTOR (1 downto 0);
	
begin
	
	--PROCESS(a, b, s0, s1)
	--BEGIN
		S0S1 <= S0 & S1;
		
		IF S0S1 = '00' THEN --ADD
		add: ripple_carry
		GENERIC MAP (N => 4)
		PORT MAP (a, b, F, 0, C, V);
		ELSIF S0S1 = "10" THEN --SUB
		negB <= b XOR "1111";
			sub: ripple_carry
				generic map (N => 4)
				port map (a, negB, F, 1, C, V);
		ELSIF S0S1 = "01" THEN --AND
			ANDG: FOR i in 0 to 3 GENERATE
				f(i) <= a(i) AND b(i);
			END GENERATE;
			C <= '0';
			V <= '0';
			N <= '0';
		ELSIF S0S1 = "11" THEN --AND
			ORG: FOR i in 0 to 3 GENERATE
				f(i) <= a(i) OR b(i);
			END GENERATE;
			C <= '0';
			V <= '0';
			N <= '0';		
		END IF;		

		WITH f SELECT
			z <= '0' WHEN "0000",
				  '1' WHEN OTHERS;
			
--		with b select
--			negB <= "0000" WHEN "0000",
--						"1111" WHEN "0001",
--						"1110" WHEN "0010",
--						"1101" WHEN "0011",
--						"1100" WHEN "0100",
--						"1011" WHEN "0101",
--						"1010" WHEN "0110",
--						"1001" WHEN "0111",
--						--"" WHEN "1000",
--						"0111" WHEN "1001",
--						"0110" WHEN "1010",
--						"0101" WHEN "1011",
--						"0100" WHEN "1100",
--						"0011" WHEN "1101",
--						"0010" WHEN "1110",
--						"0001" WHEN "1111";
					
	
  --END PROCESS;
  
end behavioral;
