LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY genius_board IS
	PORT (
		 CLOCK_50 : IN std_logic;
		 KEY : IN std_logic_vector(3 DOWNTO 0);
		 LEDR : OUT std_logic_vector (3 DOWNTO 0);
		 VGA_R, VGA_G, VGA_B       : OUT std_logic_vector(7 DOWNTO 0);
		 VGA_HS, VGA_VS            : OUT std_logic;
		 VGA_BLANK_N, VGA_SYNC_N   : OUT std_logic;
		 VGA_CLK                   : OUT std_logic;
		 HEX0: out std_logic_vector (6 DOWNTO 0);
		 HEX2: out std_logic_vector (6 DOWNTO 0)
	);
END genius_board;

ARCHITECTURE game OF genius_board IS

	-- memory component
	COMPONENT ram_block IS
		PORT (
			Clock : IN std_logic;
			Address : IN std_logic_vector(9 DOWNTO 0);
			Data : IN std_logic_vector(2 DOWNTO 0);
			Q : OUT std_logic_vector(2 DOWNTO 0);
			WrEn : IN std_logic
		);
	END COMPONENT;
	
	COMPONENT bin2hex IS
		PORT (
		SW:in std_logic_vector (3 DOWNTO 0);
		HEX0: out std_logic_vector (6 DOWNTO 0)
		);
	END COMPONENT ;
	
	-- Interface com a memória de vídeo do controlador
	SIGNAL we : std_logic;                        -- write enable ('1' p/ escrita)
	SIGNAL addr : integer RANGE 0 TO 12287;       -- endereco mem. vga
	SIGNAL pixel : std_logic_vector(2 DOWNTO 0);  -- valor de cor do pixel

	SIGNAL line : integer RANGE 0 TO 95;  -- linha atual
	SIGNAL col : integer RANGE 0 TO 127;  -- coluna atual
												-- escrito na memória de vídeo
	SIGNAL sync, blank: std_logic;

	-- variables for the mealy state machine
	TYPE estado_type IS (start, generating_color, show_color, checking_color, final);
	SIGNAL estado: estado_type := start;
	
	-- for acessing the correct memory adress
	SIGNAL round_number, colors_shown, colors_checked, addr_mem : std_logic_vector (9 DOWNTO 0);
	
	-- flag to start the game 
	SIGNAL check : std_logic;
	
	-- flag to indicate that the user lost the game
	SIGNAL failed : std_logic;
	
	-- turn on and off the led
	SIGNAL show_color_led : std_logic := '0';
	
	-- for generate colors and write and read them to the memory
	SIGNAL Write_Enable : std_logic;
	SIGNAL color : std_logic_vector (1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL color_ram_input, color_and_enable, color_ram_output : std_logic_vector (2 DOWNTO 0);
	
	-- for checking the sequence inputed by the user in the game
	SIGNAL pressed : std_logic_vector (3 DOWNTO 0);
	
	signal aux : std_logic_vector (1 downto 0);

BEGIN

 -------------------------------------------------------------------------------------------------------------------------------------------
	-- vga controller
	
	vga_controller: ENTITY work.vgacon PORT MAP (
		 clk50M       => CLOCK_50,
		 rstn         => '1',
		 red          => VGA_R,
		 green        => VGA_G,
		 blue         => VGA_B,
		 hsync        => VGA_HS,
		 vsync        => VGA_VS,
		 write_clk    => CLOCK_50,
		 write_enable => we,
		 write_addr   => addr,
		 data_in      => pixel,
		 vga_clk      => VGA_CLK,
		 sync         => sync,
		 blank        => blank
	);
	VGA_SYNC_N <= NOT sync;
	VGA_BLANK_N <= NOT blank;
	
	addr  <= col + (128 * line);
	
	PROCESS
	BEGIN 
	WAIT UNTIL CLOCK_50'EVENT and CLOCK_50 = '1';
	  IF col = 127 THEN
		 col <= 0;
	  ELSE
		 col <= col + 1;  
	  END IF;
	END PROCESS;
	
	PROCESS
	BEGIN
	WAIT UNTIL CLOCK_50'EVENT and CLOCK_50 = '1';
		IF col = 127 THEN
		  IF line = 95 THEN               -- conta de 0 a 95 (96 linhas)
			 line <= 0;
		  ELSE
			 line <= line + 1;  
		  END IF;        
		END IF;
	END PROCESS;
	
	PROCESS
	BEGIN
   WAIT UNTIL CLOCK_50'EVENT and CLOCK_50 = '1';
      IF (estado = checking_color or (show_color_led = '1' and color_ram_output = "010")) and (col >= 28) and (col < 52) and (line >= 12) and (line < 36) THEN --sup esq
			we <= '1';
			pixel <= "010";
		ELSIF (estado = checking_color or (show_color_led = '1' and color_ram_output = "110")) and  (col >= 28) and (col < 52) and (line >= 60) and (line < 84) THEN -- inf esq
			we <= '1';
			pixel <= "110";
		ELSIF (estado = checking_color or (show_color_led = '1' and color_ram_output = "100")) and  (col >= 76) and (col < 100) and (line >= 12) and (line < 36) THEN -- sup dir
			we <= '1';
			pixel <= "100";
		ELSIF (estado = checking_color or (show_color_led = '1' and color_ram_output = "011")) and  (col >= 76) and (col < 100) and (line >= 60) and (line < 84) THEN -- inf dir
			we <= '1';
			pixel <= "011";
		ELSIF (estado = start) and (line = 36 or line = 37 or line = 58 or line = 59) and ((col >= 28 and col < 40)) THEN
			we <= '1';
			pixel <= "111";
		ELSE
			we <= '1';
			pixel <= "000";
		END IF;
  END PROCESS;
	
	

 -------------------------------------------------------------------------------------------------------------------------------------------
	-- condition to start the game
	check <= not(KEY(0) or KEY(1) or KEY(2) or KEY(3));

--------------------------------------------------------------------------------------------------------------------------------------------	
	
	--generating a random color
	
	PROCESS
	BEGIN
		WAIT UNTIL CLOCK_50'EVENT and CLOCK_50 = '1';
		color <= color + 1;
	END PROCESS;
	
	color_and_enable <= Write_Enable&color;
	WITH color_and_enable SELECT
		color_ram_input <= 	"010" WHEN "100", -- verde
									"100" WHEN "101", -- vermelho
									"110" WHEN "110", -- amarelo
									"011" WHEN "111", -- azul
									"---" WHEN OTHERS;
									
--------------------------------------------------------------------------------------------------------------------------------------------
							
	-- Acessing memory
	
	memory_acess: ram_block PORT MAP (
		CLOCK_50, addr_mem, color_ram_input, color_ram_output, Write_Enable
	);
	
	seg_light: bin2hex PORT MAP (
		addr_mem (3 downto 0), HEX0
	);
	
	WITH color_ram_output SELECT
		aux <= 					"00" when "010", 
									"01" when "100",
									"10" when "110",
									"11" when "011",
									"--" when others;
	
	seg_1: bin2hex PORT MAP (
		"00"&aux, HEX2
	);

--------------------------------------------------------------------------------------------------------------------------------------------

	-- checking I/O colors
	
	PROCESS
	BEGIN
		WAIT UNTIL clock_50'EVENT and CLOCK_50 = '1';
		IF (estado = checking_color) THEN
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
			colors_checked <= (OTHERS => '0');
			pressed <= ( OTHERS => '0');
			failed <= '0';
		END IF;
	END PROCESS;
				
--------------------------------------------------------------------------------------------------------------------------------------------

	-- Turning off and on the leds for the sequence
	
	LEDR(0) <= '1' when (color_ram_output = "010" and show_color_led = '1') or (estado = start) or pressed(0) = '1' else '0';
	--LEDR(0) <= '1' when estado = show_color or (estado = start) else '0';
	LEDR(1) <= '1' when (color_ram_output = "100" and show_color_led = '1') or (estado = start) or pressed(1) = '1' else '0';
	--LEDR(1) <= '1' when estado = generating_color or (estado = start) else '0';
	LEDR(2) <= '1' when (color_ram_output = "110" and show_color_led = '1') or (estado = start) or pressed(2) = '1' else '0';
	--LEDR(2) <= '1' when generate_color = '1' else '0';
	LEDR(3) <= '1' when (color_ram_output = "011" and show_color_led = '1') or (estado = start) or pressed(3) = '1' else '0';
	
--------------------------------------------------------------------------------------------------------------------------------------------

	-- Machine for the program
	
	PROCESS
		variable counter: integer := 1;
	BEGIN	-- process logica_mealy
		WAIT UNTIL CLOCK_50'EVENT and CLOCK_50 = '1';
		CASE estado IS
			WHEN start         		=> 
												Write_Enable <= '0';
												addr_mem <= "----------";
												round_number <= (OTHERS => '0');
												show_color_led <= '0';
												colors_shown <=  (OTHERS => '0');
												counter := 0;
												
												IF (check = '1') THEN
													estado <= generating_color;
												END IF;

			WHEN generating_color 	=>	
												Write_Enable <= '1';
												addr_mem <= round_number;
												round_number <= round_number + 1;
												show_color_led <= '0';
												colors_shown <= (OTHERS => '0');
												counter := 0;
												
												estado <= show_color;
		
			WHEN show_color      	=> 
												Write_Enable <= '0';
												addr_mem <= colors_shown;
												round_number <= round_number;
												
												counter := counter + 1;
												IF counter = 50000000 THEN
													show_color_led <= not (show_color_led);
												END IF;
												IF counter = 100000000 THEN
													counter := 1;
													show_color_led <= not (show_color_led);
													colors_shown <= colors_shown + 1;
												END IF;
												
												IF (colors_shown = round_number) THEN
													estado <= checking_color;
												END IF;
											
			WHEN checking_color     => 
												Write_Enable <= '0';
												addr_mem <= colors_checked;
												round_number <= round_number;
												show_color_led <= '0';
												colors_shown <= (OTHERS => '0');
												counter := 0;
												
												IF (colors_checked = round_number) and (round_number = "1111111111") THEN
													estado <= final;
												ELSIF (colors_checked = round_number) THEN
													estado <= generating_color;
												ELSIF (failed = '1') THEN
													estado <= start;
												END IF;
		
			WHEN final		      	=> 
												estado <= start;
		END CASE;
	END PROCESS;

--------------------------------------------------------------------------------------------------------------------------------------------
	
END game;