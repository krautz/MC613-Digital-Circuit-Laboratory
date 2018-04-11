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
	
	component transf_5bits_8bits IS
	PORT ( 	entrada : IN STD_LOGIC_VECTOR (3 downto 0) ;
				saida : OUT integer
	) ;
	END component ;
	

	component transf_8bits_5bits IS
	PORT ( 	entrada : IN integer;
				saida : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	) ;
	END component ;
	
	signal pode : std_logic;
	signal min_dec_aux, min_un_aux, sec_dec_aux, sec_un_aux, hour_dec_aux, hour_un_aux : integer := 0;
	signal un_set_int, dec_set_int : integer := 0;
	
BEGIN

	confere_set_instance: confere_set port map (
		set_hour, set_minute, set_second, un_set, dec_set, pode
	);
	
	g1: transf_5bits_8bits port map (
		un_set, un_set_int
	);
	
	g2: transf_5bits_8bits port map (
		dec_set, dec_set_int
	);

	PROCESS (Clock_50)
	BEGIN
	
	IF (Clock_50'event and clock_50 = '1') and (pode = '1') then
		if set_second = '1' then
			sec_un_aux <= un_set_int;
			sec_dec_aux <= dec_set_int;
		elsif set_minute = '1' then
			min_un_aux <= un_set_int;
			min_dec_aux <= dec_set_int;
		elsif set_hour = '1' then
			hour_un_aux <= un_set_int;
			hour_dec_aux <= dec_set_int;
		end if;
	end if;
	END PROCESS;
	
	PROCESS (Clock)
	BEGIN
	IF (Clock'EVENT AND Clock = '1') THEN
		
		sec_un_aux <= sec_un_aux + 1;
		if sec_un_aux = 10 then
			sec_un_aux <= 0;
			sec_dec_aux <= sec_dec_aux + 1;
			if sec_dec_aux = 6 then
				sec_dec_aux <= 0;
				min_un_aux <= min_un_aux + 1;
				if min_un_aux = 10 then
					min_un_aux <= 0;
					min_dec_aux <= min_dec_aux + 1;
					if min_dec_aux = 6 then
						min_dec_aux <= 0;
						hour_un_aux <= hour_un_aux + 1;
						if hour_dec_aux = 2 and hour_un_aux = 4 then
							hour_un_aux <= 0;
							hour_dec_aux <= 0;
						elsif hour_un_aux = 10 then
							hour_un_aux <= 0;
							hour_dec_aux <= hour_dec_aux + 1;
						end if;
					end if;
				end if;
			end if;
		end if;
	END IF ;
	END PROCESS ;
	
	g3: transf_8bits_5bits port map (
		sec_un_aux, sec_un
	);
	g4: transf_8bits_5bits port map (
		sec_dec_aux, sec_dec
	);
	g5: transf_8bits_5bits port map (
		min_un_aux, min_un
	);
	g6: transf_8bits_5bits port map (
		min_dec_aux, min_dec
	);
	g7: transf_8bits_5bits port map (
		hour_un_aux, hour_un
	);
	g8: transf_8bits_5bits port map (
		hour_dec_aux, hour_dec
	);

END Behavior ;