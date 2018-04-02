library ieee;
use ieee.std_logic_1164.all;

entity latch_d_gated is
  port (
    D		 :   		in  std_logic;
	 Clk	 :			in  std_logic;
    Q	 	 :       out std_logic;
	 Q_n 	 :       out std_logic
	 );
end latch_d_gated;

architecture structural of latch_d_gated is
begin

	PROCESS (D, Clk)
	BEGIN
		IF Clk = '1' THEN
			Q <= D;
			Q_n <= not(D);
		END IF;
	END PROCESS;
END structural;
		