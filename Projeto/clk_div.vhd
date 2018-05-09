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

	process (clk)
		variable counter: integer := 1;
		variable temp : std_logic := '0';
	begin
	if (clk'event and clk = '1') then
		counter := counter + 1;
		temp := '0';
		if counter = 50000000 then
			temp := '1';
			counter := 1;
		end if;
	end if;
	clk_hz <= temp;
	end process;

end behavioral;
