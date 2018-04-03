library ieee;
use ieee.std_logic_1164.all;

entity ff_d is
  port (
    D		  :   in  std_logic;
	 Clk	  :	in  std_logic;
    Q	 	  :   out std_logic;
	 Q_n 	  :	out std_logic;
	 Preset :	in std_logic;
	 Clear  :	in std_logic
	 );
end ff_d;

architecture structural of ff_d is
begin

	PROCESS
		variable var: std_logic;
	BEGIN
		WAIT UNTIL Clk'EVENT AND Clk = '1' ;
		IF Clear = '1' THEN
			var := '0';
		ELSIF Preset = '1' THEN
			var := '1';
		ELSE
			var := D;
		END IF;
		Q <= var;
		Q_n <= not(var);
	END PROCESS;
END structural;
		