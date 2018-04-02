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

	PROCESS (Preset, Clear, Clk)
		variable var: std_logic;
	BEGIN
		IF Clear = '1' THEN
			var := '0';
		ELSIF Preset = '1' THEN
			var := '1';
		ELSIF Clk'EVENT and Clk = '1' THEN
			var := D;
		END IF;
		Q <= var;
		Q_n <= not(var);
	END PROCESS;
END structural;
		