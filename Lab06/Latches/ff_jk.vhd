library ieee;
use ieee.std_logic_1164.all;

entity ff_jk is
  port (
    J		  :   in  std_logic;
	 K		  :   in  std_logic;
	 Clk	  :	in  std_logic;
    Q	 	  :   out std_logic;
	 Q_n 	  :	out std_logic;
	 Preset :	in std_logic;
	 Clear  :	in std_logic
	 );
end ff_jk;

architecture structural of ff_jk is
begin

	PROCESS
		variable var : std_logic;
	BEGIN
		WAIT UNTIL Clk'EVENT AND Clk = '1' ;
		IF Clear = '1' THEN
			var := '0';
		ELSIF Preset = '1' THEN
			var := '1';
		ELSIF J = '0' and K = '1' THEN
			var := '0';
		ELSIF J = '1' and K = '0' THEN
			var := '1';
		ELSIF J = '1' and K = '1' THEN
			var := not(var);
		END IF;
		Q <= var;
		Q_n <= not(var);
	END PROCESS;
END structural;
		