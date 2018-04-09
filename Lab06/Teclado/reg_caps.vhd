library ieee;
use ieee.std_logic_1164.all;

entity reg_caps is
  port (
	 clk 		 : in std_logic;
    T  : in std_logic;
    Q : out std_logic;
	 key_on : in std_logic
  );
end reg_caps;

architecture rtl of reg_caps is

	signal ajuda : std_logic := '0';

begin
  
	PROCESS 
		variable var : std_logic := '0';
	BEGIN
		wait until clk'event and clk = '1';
		IF T = '1' and key_on = '1' and ajuda = '0' THEN
			var := not(var);
			ajuda <= '1';
		ELSIF key_on = '0' then
			ajuda <= '0';
		END IF;
		Q <= var;
	END PROCESS;
  
end rtl;
