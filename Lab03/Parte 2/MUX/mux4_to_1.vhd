library ieee;
use ieee.std_logic_1164.all;

entity mux4_to_1 is
  port(d3, d2, d1, d0 : in std_logic;
       sel : in std_logic_vector(1 downto 0);
       output : out std_logic);
end mux4_to_1;

architecture rtl of mux4_to_1 is
	COMPONENT dec2_to_4
	PORT (en, w1, w0: in std_logic;
       y3, y2, y1, y0: out std_logic
	);
	END COMPONENT;
	
	COMPONENT extra_logic
	PORT (w3, w2, w1, w0 : in std_logic;
			y3, y2, y1, y0 : in std_logic;
			f : out std_logic
	);
	END COMPONENT;
	
	signal aux: STD_LOGIC_VECTOR (3 downto 0);
	
begin
	pt1: dec2_to_4
	PORT MAP	('1', sel(1), sel(0), aux(3), aux(2), aux(1), aux(0));
	
	pt2: extra_logic
	PORT MAP (d3, d2, d1, d0, aux(3), aux(2), aux(1), aux(0), output);
end rtl;

