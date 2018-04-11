library ieee;
use ieee.std_logic_1164.all;

entity clk_div is
  port (
    clk : in std_logic;
    clk_hz : out std_logic
  );
end clk_div;

architecture behavioral of clk_div is

begin

	process
		variable counter: integer := 1;
		variable temp : std_logic := '0';
	begin
	wait until clk'event and clk = '1';
	counter := counter + 1;
	if counter = 25000000 then
		temp := not(temp);
		counter := 1;
	end if;
	clk_hz <= temp;
	end process;

end behavioral;
