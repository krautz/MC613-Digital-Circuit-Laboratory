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
	GENERIC (
		N : integer
	);
	PORT (
		x,y : in std_logic_vector(N-1 downto 0);
		r : out std_logic_vector(N-1 downto 0);
		cin : in std_logic;
		cout : out std_logic;
		overflow : out std_logic
	);
	END COMPONENT;
	signal negB1, negB, addF, subF, andF, orF, outF, addvecN, subvecN : STD_LOGIC_VECTOR (3 downto 0);
	signal addC, addV, subV, subC, addN, subN, trash_1, trash_2: STD_LOGIC;
	signal S0S1: STD_LOGIC_VECTOR (1 downto 0);
BEGIN
	
	add: ripple_carry
	GENERIC MAP (N => 4)
	PORT MAP (a, b, addF, '0', addC, addV);
	
	negB1 <= b XOR "1111";
	add_aux: ripple_carry
	GENERIC MAP (N => 4)
	PORT MAP (negB1, "0001", negB, '0', trash_1, trash_2);
	
	sub: ripple_carry
			generic map (N => 4)
			port map (a, negB, subF, '0', subC, subV);
	
	ANDL: FOR i in 0 to 3 GENERATE
		andF(i) <= a(i) AND b(i);
	END GENERATE;

	ORL: FOR i in 0 to 3 GENERATE
		orF(i) <= a(i) OR b(i);
	END GENERATE;
	
	addvecN <= addF AND "1000";
	subvecN <= subF AND "1000";
	
	
	S0S1 <= S0 & S1;	
	WITH S0S1 SELECT
		outF <= addF WHEN "00",
			  subF WHEN "10",
			  andF WHEN "01",
			  orF WHEN "11";

	WITH S0S1 SELECT
		C <= addC WHEN "00",
			  subC WHEN "10",
			  '0' WHEN OTHERS;
	WITH S0S1 SELECT
		V <= addV WHEN "00",
			  subV WHEN "10",
			  '0' WHEN OTHERS;
	
	WITH addvecN SELECT
		addN <=  '1' WHEN "1000",
					'0' WHEN OTHERS;
					
	WITH subvecN SELECT
		subN <=  '1' WHEN "1000",
					'0' WHEN OTHERS;
	
	WITH S0S1 SELECT
		N <= addN WHEN "00",
			  subN WHEN "10",
			  '0' WHEN OTHERS;

	Z <= '1' WHEN outF = "0000" ELSE '0';	
	F <= outF;
END behavioral;
