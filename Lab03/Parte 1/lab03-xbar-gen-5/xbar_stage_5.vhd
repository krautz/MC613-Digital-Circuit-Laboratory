library ieee;
use ieee.std_logic_1164.all;

entity xbar_stage_5 is
  port(SW  : in std_logic_vector (4 downto 0);
       LEDR: out std_logic_vector(0 downto 0));
end xbar_stage_5;

architecture rtl of xbar_stage_5 is
	COMPONENT xbar_gen
	GENERIC (n : integer);
	PORT (s: in std_logic_vector (n-1 downto 0);
			y1, y2: OUT			STD_LOGIC
	);
	END COMPONENT;
begin
	xbar5: xbar_gen 
	GENERIC MAP (n => 5)
	PORT MAP	(SW, LEDR(0));
end rtl;