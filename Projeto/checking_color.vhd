LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY checking_color IS
	PORT (
			CLOCK_50 : IN std_logic;
			estado_vector : IN std_logic_vector (4 DOWNTO 0);
			show_color_led : IN std_logic;
			color_ram_output : IN std_logic_vector (2 DOWNTO 0);
			KEY : IN std_logic_vector(3 DOWNTO 0);
			LEDR : OUT std_logic_vector (4 DOWNTO 0);
			failed : OUT std_logic;
			colors_checked_output : OUT std_logic_vector (9 DOWNTO 0)
	);
END checking_color;


ARCHITECTURE rtl OF checking_color IS

	SIGNAL pressed : std_logic_vector (3 DOWNTO 0);
	SIGNAL colors_checked : std_logic_vector (9 DOWNTO 0);

BEGIN

	PROCESS
	BEGIN
		WAIT UNTIL clock_50'EVENT and CLOCK_50 = '1';
		IF (estado_vector = "00010") THEN
			LEDR(4) <= '0';
			IF (KEY(0) = '0' or KEY(1) = '0' or KEY(2) = '0' or KEY(3) = '0') THEN
				IF (KEY (0) = '0' and color_ram_output = "010" and pressed(0) = '0') THEN
					pressed(0) <= '1';
				ELSIF (KEY (1) = '0' and color_ram_output = "100" and pressed(1) = '0') THEN
					pressed(1) <= '1';
				ELSIF (KEY (2) = '0' and color_ram_output = "110" and pressed(2) = '0') THEN
					pressed(2) <= '1';
				ELSIF (KEY (3) = '0' and color_ram_output = "011" and pressed(3) = '0') THEN
					pressed(3) <= '1';
				ELSIF (pressed = "0000") THEN
					failed <= '1';
				END IF;
			END IF;
			IF (pressed(0) = '1' and key(0) = '1') THEN
				pressed(0) <= '0';
				colors_checked <= colors_checked + 1;
			ELSIF (pressed(1) = '1' and key(1) = '1') THEN
				pressed(1) <= '0';
				colors_checked <= colors_checked + 1;
			ELSIF (pressed(2) = '1' and key(2) = '1') THEN
				pressed(2) <= '0';
				colors_checked <= colors_checked + 1;
			ELSIF (pressed(3) = '1' and key(3) = '1') THEN
				pressed(3) <= '0';
				colors_checked <= colors_checked + 1;
			END IF;
		ELSE
			LEDR(4) <= '1';
			colors_checked <= (OTHERS => '0');
			pressed <= ( OTHERS => '0');
			failed <= '0';
		END IF;
	END PROCESS;
	
	colors_checked_output <= colors_checked;
				
--------------------------------------------------------------------------------------------------------------------------------------------

	-- Turning off and on the leds for the sequence
	
	LEDR(0) <= '1' when (color_ram_output = "010" and show_color_led = '1') or (estado_vector = "10000") or pressed(0) = '1' else '0';
	--LEDR(0) <= '1' when estado = show_color or (estado = start) else '0';
	LEDR(1) <= '1' when (color_ram_output = "100" and show_color_led = '1') or (estado_vector = "10000") or pressed(1) = '1' else '0';
	--LEDR(1) <= '1' when estado = generating_color or (estado = start) else '0';
	LEDR(2) <= '1' when (color_ram_output = "110" and show_color_led = '1') or (estado_vector = "10000") or pressed(2) = '1' else '0';
	--LEDR(2) <= '1' when generate_color = '1' else '0';
	LEDR(3) <= '1' when (color_ram_output = "011" and show_color_led = '1') or (estado_vector = "10000") or pressed(3) = '1' else '0';
	


END rtl;