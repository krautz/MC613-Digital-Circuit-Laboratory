LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY contador IS
	PORT ( 	Clock, E, is_un, is_dec, is_hour : IN STD_LOGIC ;
				Q : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
				virou : out STD_LOGIC := '0'
	) ;
	END contador ;
ARCHITECTURE Behavior OF contador IS

	SIGNAL Count : STD_LOGIC_VECTOR (4 DOWNTO 0) := (others => '0') ;

BEGIN
	PROCESS ( Clock)
	BEGIN
	IF (Clock'EVENT AND Clock = '1') THEN
		IF E = '1' THEN
			if (count = "01000") and is_un = '1' then
				virou <= '1';
			elsif (count = "00100") and is_dec = '1' then
				virou <= '1';
			else
				virou <= '0';
			end if;
			if (count = "01001") and is_un = '1' then
				count <= "00000";
				virou <= '1';
			elsif (count = "00101") and is_dec = '1' then
				count <= "00000";
				virou <= '1';
			elsif (count = "10111") and is_hour = '1' then
				count <= "00000";
			else
				Count <= Count + 1 ;
			end if;
		ELSE
			Count <= Count ;
			virou <= '0';
		END IF ;
	END IF ;
	END PROCESS ;
	Q <= Count ;
END Behavior ;