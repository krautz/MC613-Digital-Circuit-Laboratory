LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY ram_block IS
	PORT (
		Clock 	: 	IN std_logic;
		Address 	: 	IN std_logic_vector(9 DOWNTO 0);
		Data 		: 	IN std_logic_vector(2 DOWNTO 0);
		WrEn 		: 	IN std_logic;
		Q 			: 	OUT std_logic_vector(2 DOWNTO 0)
	);
END ram_block;

ARCHITECTURE direct OF ram_block IS

	-- Build a 2-D array type for the RAM
	SUBTYPE word_t IS std_logic_vector(2 DOWNTO 0);
	TYPE memory_t IS ARRAY (1023 DOWNTO 0) OF word_t;

	-- Declare the RAM signal.	
	SIGNAL ram : memory_t;

	-- Register to hold the address 
	SIGNAL addr_reg : integer RANGE 0 TO 1023;

BEGIN

	addr_reg <= to_integer(unsigned(address));
	
	PROCESS
	BEGIN
	WAIT UNTIL (clock'EVENT and clock = '1');
		IF (WrEn = '1') THEN
			ram(addr_reg) <= data;
		END IF;
		
	END PROCESS;
	
	Q <= ram(addr_reg);
	
END direct;
