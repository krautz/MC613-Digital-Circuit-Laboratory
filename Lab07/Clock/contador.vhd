LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY contador IS
	PORT ( 	Clock, set_hour, set_minute, set_second, Clock_50 : IN STD_LOGIC ;
				un_set, dec_set : in std_logic_vector (3 downto 0);
				sec_un, sec_dec, min_un, min_dec, hour_un, hour_dec : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	) ;
	END contador ;
ARCHITECTURE Behavior OF contador IS

	component confere_set IS
	PORT ( 	set_hour, set_minute, set_second : IN STD_LOGIC ;
				un_set, dec_set : in std_logic_vector (3 downto 0);
				pode : out std_logic
	) ;
	END component ;
	
	signal pode : std_logic;
	
BEGIN

	confere_set_instance: confere_set port map (
		set_hour, set_minute, set_second, un_set, dec_set, pode
	);

	PROCESS 
		variable min_dec_aux, min_un_aux, sec_dec_aux, sec_un_aux, hour_dec_aux, hour_un_aux : std_logic_vector (3 downto 0) := (others => '0');
	BEGIN
	
	wait until Clock_50'event and (clock_50 = '1');
		if (pode = '1') then 
			if set_second = '1' then
				sec_un_aux := un_set;
				sec_dec_aux := dec_set;
			elsif set_minute = '1' then
				min_un_aux := un_set;
				min_dec_aux := dec_set;
			elsif set_hour = '1' then
				hour_un_aux := un_set;
				hour_dec_aux := dec_set;
			end if;
	
		ELSIF (Clock = '1') THEN
			
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
							hour_un_aux := hour_un_aux + 1;
							if hour_dec_aux = "0010" and hour_un_aux = "0100" then
								hour_un_aux := "0000";
								hour_dec_aux := "0000";
							elsif hour_un_aux = "1010" then
								hour_un_aux := "0000";
								hour_dec_aux := hour_dec_aux + 1;
							end if;
						end if;
					end if;
				end if;
			end if;
		END IF ;
		sec_un <= sec_un_aux;
		sec_dec <= sec_dec_aux;
		min_un <= min_un_aux;
		min_dec <= min_dec_aux;
		hour_un <= hour_un_aux;
		hour_dec <= hour_dec_aux;
	END PROCESS ;
END Behavior ;