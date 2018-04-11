LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY contador IS
	PORT ( 	Clock, set_hour, set_minute, set_second, Clock_50 : IN STD_LOGIC ;
				un_set, dec_set : in std_logic_vector (3 downto 0);
				hour_set : in std_logic_vector (4 downto 0);
				sec_un, sec_dec, min_un, min_dec : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
				hour : out std_logic_vector (4 downto 0)
	) ;
	END contador ;
ARCHITECTURE Behavior OF contador IS

BEGIN
	PROCESS ( Clock)
		variable min_dec_aux, min_un_aux, sec_dec_aux, sec_un_aux : std_logic_vector (3 downto 0) := (others => '0');
		variable hour_aux : std_logic_vector (4 downto 0) := (others => '0');
	BEGIN
	
	IF (Clock'event and clock = '1') and (set_hour = '1' or set_minute = '1' or set_second = '1') then
		if set_second = '1' then
			sec_un_aux := un_set;
			sec_dec_aux := dec_set;
		elsif set_minute = '1' then
			min_un_aux := un_set;
			min_dec_aux := dec_set;
		elsif set_hour = '1' then
			hour_aux := hour_set;
		end if;
	
	ELSIF (Clock'EVENT AND Clock = '1') THEN
		
		sec_un_aux := sec_un_aux + 1;
		if sec_un_aux = "1010" then
			sec_un_aux := "0000";
			sec_dec_aux := sec_dec_aux + 1;
			if sec_dec_aux = "0110" then
				sec_dec_aux := "0000";
				min_un_aux := min_un_aux + 1;
				if min_un_aux = "1010" then
					min_un_aux := "0000";
					min_dec_aux := min_dec_aux + 1;
					if min_dec_aux = "0110" then
						min_dec_aux := "0000";
						hour_aux := hour_aux + 1;
						if hour_aux = "11000" then
							hour_aux := "00000";
						end if;
					end if;
				end if;
			end if;
		end if;
		sec_un <= sec_un_aux;
		sec_dec <= sec_dec_aux;
		min_un <= min_un_aux;
		min_dec <= min_dec_aux;
		hour <= hour_aux;
	END IF ;
	END PROCESS ;
END Behavior ;