library ieee;
use ieee.std_logic_1164.all;

entity clk_div is
  port (
    clk : in std_logic;
    clk_hz : out std_logic
  );
end clk_div;

architecture behavioral of clk_div is

	signal counter: integer := 0;

begin

	process
	begin
	wait until clk'event and clk = '1';
	g1: for i in 0 to 50000000 loop
		counter <= counter + 1;
		if counter = 25000000 then
			clk_hz <= '1';
		end if;
	end loop;
	clk_hz <= '0';
	end process;

end behavioral;
