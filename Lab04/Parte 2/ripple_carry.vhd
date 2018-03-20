library ieee;
use ieee.std_logic_1164.all;

entity ripple_carry is
  generic (
    N : integer := 4
  );
  port (
    x,y : in std_logic_vector(N-1 downto 0);
    r : out std_logic_vector(N-1 downto 0);
    cin : in std_logic;
    cout : out std_logic;
    overflow : out std_logic
  );
end ripple_carry;

architecture rtl of ripple_carry is
	COMPONENT full_adder
	port (
    x, y : in std_logic;
    r : out std_logic;
    cin : in std_logic;
    cout : out std_logic
  );
  END COMPONENT;
  
  SIGNAL carries : std_logic_vector (N downto 0);
  
begin
	carries(0) <= cin;
	G1: FOR i in 0 to N - 1 GENERATE
	adder: full_adder PORT MAP
		(x(i), y(i), r(i), carries(i), carries(i + 1));
	END GENERATE;
	overflow <= carries (N - 1) XOR carries (N);
	cout <= carries(N);
	
  
end rtl;
