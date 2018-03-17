library ieee;
use ieee.std_logic_1164.all;
	

entity xbar_gen is
  generic (n : integer := 1);
  port(s: in std_logic_vector (N-1 downto 0);
       y1, y2: out std_logic);
end xbar_gen;

architecture rtl of xbar_gen is
COMPONENT xbar_v1
	PORT (x1, x2, s: IN 		STD_LOGIC;
			y1, y2: OUT			STD_LOGIC
	);
	END COMPONENT;
	signal C: STD_LOGIC_VECTOR (0 to 2*n + 1);
begin
	C(0) <= '1';
	C(n + 1) <= '0';
	G1: FOR i IN 0 TO N-1 GENERATE
	xbar: xbar_v1 PORT MAP
			(C(i), C(n + i + 1), s(i), C(i+1), C(n + i + 2));
	END GENERATE;
	y1 <= C(n);
	y2 <= C(2*n + 1);
			
end rtl;

