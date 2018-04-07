library ieee;
use ieee.std_logic_1164.all;

entity reg_caps is
  port (
    data_in : in std_logic;
    data_out : out std_logic
  );
end reg_caps;

architecture rtl of reg_caps is

begin
  
	PROCESS (data_in)
		variable var : std_logic := '0';
	BEGIN
		IF data_in = '1' THEN
			var := not(var);
		END IF;
		data_out <= var;
	end process;
	
  
end rtl;
