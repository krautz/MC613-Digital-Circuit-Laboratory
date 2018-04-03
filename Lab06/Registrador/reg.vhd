library ieee;
use ieee.std_logic_1164.all;

entity reg is
  generic (
    N : integer := 4
  );
  port (
    clk : in std_logic;
    data_in : in std_logic_vector(N-1 downto 0);
    data_out : out std_logic_vector(N-1 downto 0);
    load : in std_logic; -- Write enable
    clear : in std_logic
  );
end reg;

architecture rtl of reg is

begin
  
	PROCESS (clk, clear)
		variable var: std_logic_vector (N-1 downto 0);
	BEGIN
		IF clear = '1' THEN
			G1: For i in 0 to N-1 loop
				var(i) := '0';
			END loop;
		ELSIF Clk'EVENT AND Clk = '1' and load = '1' THEN
			G2: For i in 0 to N-1 loop
				var(i) := data_in(i);
			END loop;
		END IF;
		G3: For i in 0 to N-1 loop
			data_out(i) <= var(i);
		END loop;
	END PROCESS;
	
  
end rtl;
