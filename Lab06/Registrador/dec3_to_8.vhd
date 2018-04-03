library ieee;
use ieee.std_logic_1164.all;

entity dec3_to_8 is
	port (
		en: in std_logic;
		w: in std_logic_vector (2 downto 0);
		y: out std_logic_vector (7 downto 0)
	);
end dec3_to_8;

architecture rtl of dec3_to_8 is
SIGNAL Enw : STD_LOGIC_VECTOR(3 DOWNTO 0) ;
begin
	Enw <= En & w;
	
	y(0) <= '1' WHEN Enw = "1000" ELSE '0';
	y(1) <= '1' WHEN Enw = "1001" ELSE '0';
	y(2) <= '1' WHEN Enw = "1010" ELSE '0';
	y(3) <= '1' WHEN Enw = "1011" ELSE '0';
	y(4) <= '1' WHEN Enw = "1100" ELSE '0';
	y(5) <= '1' WHEN Enw = "1101" ELSE '0';
	y(6) <= '1' WHEN Enw = "1110" ELSE '0';
	y(7) <= '1' WHEN Enw = "1111" ELSE '0';

end rtl;