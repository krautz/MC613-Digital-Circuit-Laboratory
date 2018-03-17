library ieee;
use ieee.std_logic_1164.all;

entity mux16_to_1 is
  port(data : in std_logic_vector(15 downto 0);
       sel : in std_logic_vector(3 downto 0);
       output : out std_logic);
end mux16_to_1;

architecture rtl of mux16_to_1 is
	COMPONENT mux4_to_1
	port(d3, d2, d1, d0 : in std_logic;
       sel : in std_logic_vector(1 downto 0);
       output : out std_logic
	);
	END COMPONENT;
	
	signal m: STD_LOGIC_VECTOR (3 downto 0);
	
begin

	G1: for i in 0 to 3 GENERATE
		muxes: mux4_to_1
		PORT MAP (data(4*i), data (4*i + 1), data (4*i + 2), data (4*i + 3), sel (1 downto 0), m(i));
	END GENERATE;
	
	mux5: mux4_to_1
	PORT MAP (m(0), m(1), m(2), m(3), sel (3 downto 2), output);

end rtl;

