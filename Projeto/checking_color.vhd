LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY checking_color IS
	PORT (
			CLOCK_50 : IN std_logic;
			estado_vector : IN std_logic_vector (4 DOWNTO 0);
			color_ram_output : IN std_logic_vector (2 DOWNTO 0);
			mouse_click : IN std_logic;
			line_mouse : IN integer RANGE 0 TO 95;
			col_mouse : IN integer RANGE 0 TO 127;
			failed : OUT std_logic;
			colors_checked_output : OUT std_logic_vector (9 DOWNTO 0)
	);
END checking_color;


ARCHITECTURE rtl OF checking_color IS

	SIGNAL pressed : std_logic;
	SIGNAL colors_checked : std_logic_vector (9 DOWNTO 0);

BEGIN

	PROCESS
	BEGIN
		WAIT UNTIL clock_50'EVENT and CLOCK_50 = '1';
		IF (estado_vector = "00010") THEN
			IF (mouse_click = '1' and pressed = '0') THEN
				IF (color_ram_output = "010" and ((col_mouse >= 28) and (col_mouse < 52) and (line_mouse >= 12) and (line_mouse < 36))) THEN
					pressed <= '1';
				ELSIF (color_ram_output = "100" and ((col_mouse >= 76) and (col_mouse < 100) and (line_mouse >= 12) and (line_mouse < 36))) THEN
					pressed <= '1';
				ELSIF (color_ram_output = "110" and ((col_mouse >= 28) and (col_mouse < 52) and (line_mouse >= 60) and (line_mouse < 84))) THEN
					pressed <= '1';
				ELSIF (color_ram_output = "011" and ((col_mouse >= 76) and (col_mouse < 100) and (line_mouse >= 60) and (line_mouse < 84))) THEN
					pressed <= '1';
				ELSIF (pressed = '0') THEN
					failed <= '1';
				END IF;
			END IF;
			IF (pressed = '1' and mouse_click = '0') THEN
				pressed <= '0';
				colors_checked <= colors_checked + 1;
			END IF;
		ELSE
			colors_checked <= (OTHERS => '0');
			pressed <= '0';
			failed <= '0';
		END IF;
	END PROCESS;
	
	colors_checked_output <= colors_checked;


END rtl;