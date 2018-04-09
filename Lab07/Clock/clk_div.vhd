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
	end loop;
	end process;
	clk_hz <= '1';

end behavioral;
