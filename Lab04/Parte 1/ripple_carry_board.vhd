library ieee;
use ieee.std_logic_1164.all;

entity ripple_carry_board is
  port (
    SW : in std_logic_vector(7 downto 0);
    HEX4 : out std_logic_vector(6 downto 0);
    HEX2 : out std_logic_vector(6 downto 0);
    HEX0 : out std_logic_vector(6 downto 0);
    LEDR : out std_logic_vector(0 downto 0)
    );
end ripple_carry_board;

architecture rtl of ripple_carry_board is

	COMPONENT ripple_carry 
	GENERIC (N : integer);
	port (
    x,y : in std_logic_vector(N-1 downto 0);
    r : out std_logic_vector(N-1 downto 0);
    cin : in std_logic;
    cout : out std_logic;
    overflow : out std_logic
	);
	END COMPONENT;
  
	COMPONENT bin2hex
	PORT (
		SW:in std_logic_vector (3 DOWNTO 0);
		HEX0: out std_logic_vector (6 DOWNTO 0)
	);
	END COMPONENT;
  
  signal output: std_logic_vector (3 downto 0);
  signal cout :std_logic;
  
begin

	ripple: ripple_carry 
	GENERIC MAP (n => 4)
	PORT MAP	(SW (7 downto 4), SW (3 downto 0), output (3 downto 0), '0', cout, LEDR(0));
	
	bin2hexX: bin2hex
	PORT MAP (SW (7 downto 4), HEX4);
	
	bin2hexY: bin2hex
	PORT MAP (SW (3 downto 0), HEX2);
	
	bin2hexout: bin2hex
	PORT MAP (output (3 downto 0), HEX0);
	
end rtl;
