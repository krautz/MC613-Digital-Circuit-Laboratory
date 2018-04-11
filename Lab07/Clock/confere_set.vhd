LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY confere_set IS
	PORT ( 	set_hour, set_minute, set_second : IN STD_LOGIC ;
				un_set, dec_set : in std_logic_vector (3 downto 0);
				pode : out std_logic
	) ;
	END confere_set ;
ARCHITECTURE Behavior OF confere_set IS

	signal pode_un, pode_dec, pode_hour, pode_hour_dec, pode_sec, pode_min, pode_hour_1, pode_hour_2, pode_hour_final : std_logic;

BEGIN
	
	pode_un <= '1' when un_set < 10 else '0';
	pode_dec <= '1' when dec_set < 6 else '0';
	pode_hour_dec <= '1' when dec_set < 2 else '0';
	pode_hour <= '1' when (dec_set = 2) and (un_set < 4) else '0';
	
	pode_sec <= '1' when (pode_un = '1') and (pode_dec = '1') and (set_second = '1')  else '0';
	pode_min <= '1' when (pode_un = '1') and (pode_dec = '1') and (set_minute = '1')  else '0';
	pode_hour_1 <= '1' when (pode_un = '1') and (pode_hour_dec = '1') and (set_hour = '1') else '0';
	pode_hour_2 <= '1' when (pode_hour = '1') and (set_hour = '1') else '0';
	pode_hour_final <= '1' when (pode_hour_1 = '1') or (pode_hour_2 = '1') else '0';
	pode <= '1' when (pode_sec = '1') or (pode_min ='1') or (pode_hour_final = '1') else '0';
	
	
end Behavior;