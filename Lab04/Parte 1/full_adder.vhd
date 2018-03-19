library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
  port (
    x, y : in std_logic;
    r : out std_logic;
    cin : in std_logic;
    cout : out std_logic
  );
end full_adder;

architecture structural of full_adder is
	signal intermediate: std_logic_vector (2 downto 0);
begin
  r <= (x XOR y) XOR cin;
  intermediate(0) <= x AND y;
  intermediate(1) <= x AND cin;
  intermediate(2) <= y AND cin;
  cout <= intermediate(0) OR intermediate(1) OR intermediate(2);
  
end structural;
