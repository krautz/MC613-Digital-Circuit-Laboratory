LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY genius_board IS
  PORT (
    CLOCK_50 : IN std_logic;
    KEY : IN std_logic_vector(3 DOWNTO 0);
	 LEDR : OUT std_logic_vector (3 DOWNTO 0)
  );
END genius_board;

ARCHITECTURE game OF genius_board IS

	COMPONENT ram_block IS
		PORT (
			Clock : in std_logic;
			Address : in std_logic_vector(9 downto 0);
			Data : in std_logic_vector(2 downto 0);
			Q : out std_logic_vector(2 downto 0);
			WrEn : in std_logic;
			generated : out std_logic
		);
	END COMPONENT;
	
	COMPONENT clk_div IS
		PORT (
			clk : in std_logic;
			clk_hz : out std_logic
		);
	end COMPONENT;
	
	--variables for the mealy state machine
	TYPE estado_type IS (start, generating_color, show_color, checking_color, final);
	SIGNAL estado: estado_type := start;
	
	SIGNAL round_number, colors_shown, colors_checked, addr_mem : std_logic_vector (9 DOWNTO 0);
	SIGNAL check, failed, generate_color : std_logic;
	SIGNAL color_generated, show_color_led : std_logic := '0';
	SIGNAL color : std_logic_vector (1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL color_ram, color_and_enable, color_ram_output : std_logic_vector (2 DOWNTO 0);
	SIGNAL clock_hz : std_logic;

BEGIN
	-- condition to start the game
	check <= not(KEY(0) or KEY(1) or KEY(2) or KEY(3));
	
	--generating a random color
	
	PROCESS
	BEGIN
		WAIT UNTIL CLOCK_50'EVENT and CLOCK_50 = '1';
		color <= color + 1;
	END PROCESS;
	
	color_and_enable <= generate_color&color;
	WITH color_and_enable SELECT
		color_ram <= 	"001" when "100",
							"011" when "101",
							"101" when "110",
							"111" when "111",
							"---" when others;
	
	WITH estado SELECT
		addr_mem <=	round_number when generating_color,
						colors_shown when show_color,
						colors_checked when checking_color,
						"----------" when others;
	
	memory_acess: ram_block PORT MAP (
		CLOCK_50, addr_mem, color_ram, color_ram_output, generate_color, color_generated
	);
	
	clock_div_awakes: clk_div PORT MAP (
		CLOCK_50, clock_hz
	);
	
	PROCESS
	BEGIN
		WAIT UNTIL clock_hz'EVENT and clock_hz = '1';
		IF (estado = show_color) THEN
			show_color_led <= not (show_color_led);
			IF (show_color_led = '1') THEN
				colors_shown <= colors_shown + 1;
			END IF;
		ELSE
			colors_shown <= (OTHERS => '0');
		END IF;
	END PROCESS;
	
	PROCESS
	BEGIN
		WAIT UNTIL clock_50'EVENT and CLOCK_50 = '1';
		IF (estado = checking_color) THEN
			IF (KEY(0) = '0' or KEY(1) = '0' or KEY(2) = '0' or KEY(3) = '0') THEN
				IF (KEY (0) = '0' and color_ram_output /= "001") THEN
					failed <= '1';
				ELSIF (KEY (1) = '0' and color_ram_output /= "011") THEN
					failed <= '1';
				ELSIF (KEY (2) = '0' and color_ram_output /= "101") THEN
					failed <= '1';
				ELSIF (KEY (3) = '0' and color_ram_output /= "111") THEN
					failed <= '1';
				ELSE
					colors_checked <= colors_checked + 1;
				END IF;
			END IF;
		ELSE
			colors_checked <= (OTHERS => '0');
		END IF;
	END PROCESS;
				
				
	
	--LEDR(0) <= '1' when (color_ram_output = "001" and estado = show_color and show_color_led = '1') or (estado = start) else '0';
	LEDR(0) <= '1' when estado = show_color or (estado = start) else '0';
	--LEDR(1) <= '1' when (color_ram_output = "011" and estado = show_color and show_color_led = '1') or (estado = start) else '0';
	LEDR(1) <= '1' when estado = generating_color or (estado = start) else '0';
	--LEDR(2) <= '1' when (color_ram_output = "101" and estado = show_color and show_color_led = '1') or (estado = start) else '0';
	LEDR(2) <= '1' when generate_color = '1' else '0';
	LEDR(3) <= '1' when (color_ram_output = "111" and estado = show_color and show_color_led = '1') or (estado = start) else '0';
	

	PROCESS(check, color_generated, colors_shown, failed)
	BEGIN  -- process logica_mealy
		CASE estado IS
			WHEN start         		=> IF (check = '1') THEN
													generate_color <= '1';
													estado <= generating_color;
												ELSE
													estado <=  estado;
												END IF;
												round_number <= (OTHERS => '0');

			WHEN generating_color 	=>		estado <= show_color;
													round_number <= round_number + 1;
		
			WHEN show_color      	=> IF (colors_shown = round_number) THEN
													estado <= checking_color;
												ELSE
													estado <= estado;
												END IF;
											
			WHEN checking_color     => IF (colors_checked = round_number) and (round_number = "1111111111") THEN
													estado <= final;
												ELSIF (colors_checked = round_number) THEN
													estado <= generating_color;
													generate_color <= '1';
												ELSIF (failed = '1') THEN
													estado <= start;
												ELSE
													estado <= estado;
												END IF;
		
			WHEN final		      	=> estado <= start;
		END CASE;
	END PROCESS;


END game;