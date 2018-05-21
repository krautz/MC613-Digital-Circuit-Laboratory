LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY genius_board IS
	PORT (
		 CLOCK_50 : IN std_logic;
		 KEY : IN std_logic_vector(3 DOWNTO 0);
		 LEDR : OUT std_logic_vector (7 DOWNTO 0);
		 VGA_R, VGA_G, VGA_B       : OUT std_logic_vector(7 DOWNTO 0);
		 VGA_HS, VGA_VS            : OUT std_logic;
		 VGA_BLANK_N, VGA_SYNC_N   : OUT std_logic;
		 VGA_CLK                   : OUT std_logic;
		 PS2_DAT 	:		inout	STD_LOGIC;
		 PS2_CLK		:		inout	STD_LOGIC;	
		 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector (6 DOWNTO 0)
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
	
	-- mouse component
	COMPONENT mouse_ctrl
		GENERIC (
			clkfreq : integer
		);
		PORT (
			ps2_data	:	INOUT	std_logic;
			ps2_clk		:	INOUT	std_logic;
			clk				:	IN 	std_logic;
			en				:	IN 	std_logic;
			resetn		:	IN 	std_logic;
			newdata		:	OUT	std_logic;
			bt_on			:	OUT	std_logic_vector(2 DOWNTO 0);
			ox, oy		:	OUT std_logic;
			dx, dy		:	OUT	std_logic_vector(8 DOWNTO 0);
			wheel			: OUT	std_logic_vector(3 DOWNTO 0)
		);
	END COMPONENT;
	
	-- generate random color component
	COMPONENT generate_random_color
	PORT (
		 CLOCK_50 : IN std_logic;
		 Write_Enable : IN std_logic;
		 color_ram_input : OUT std_logic_vector (2 DOWNTO 0)
	);
	END COMPONENT;
	
	-- checking color component
	COMPONENT checking_color
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
	END COMPONENT;
	
	-- vga controller component
	COMPONENT vga_controller
	PORT (
			CLOCK_50 : IN std_logic;
			estado_vector : IN std_logic_vector (4 DOWNTO 0);
			line_mouse : IN integer RANGE 0 TO 95;
			col_mouse : IN integer RANGE 0 TO 127;
			show_color_led : IN std_logic;
			color_ram_output : IN std_logic_vector (2 DOWNTO 0);
			VGA_R, VGA_G, VGA_B       : OUT std_logic_vector(7 DOWNTO 0);
			VGA_HS, VGA_VS            : OUT std_logic;
			VGA_BLANK_N, VGA_SYNC_N   : OUT std_logic;
			VGA_CLK                   : OUT std_logic
		 
	);
	END COMPONENT;
	
	-- Interface com o mouse
	SIGNAL signewdata : std_logic;
	SIGNAL dx, dy : std_logic_vector(8 DOWNTO 0);
	SIGNAL x, y, x_ant, y_ant	: std_logic_vector(7 DOWNTO 0) := (others => '0');
	SIGNAL hexdata : std_logic_vector(15 DOWNTO 0);
	CONSTANT SENSIBILITY : integer := 50; -- Rise to decrease sensibility
	
	SIGNAL line_mouse : integer RANGE 0 TO 95;  -- linha atual
	SIGNAL col_mouse : integer RANGE 0 TO 127;  -- coluna atual

	-- variables for the mealy state machine
	TYPE estado_type IS (start, generating_color, show_color, eval_color, final);
	SIGNAL estado: estado_type := start;
	SIGNAL estado_vector : std_logic_vector (4 DOWNTO 0);
	
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
	SIGNAL color_ram_input, color_ram_output : std_logic_vector (2 DOWNTO 0);
	
	SIGNAL aux : std_logic_vector (1 downto 0);

BEGIN

 -------------------------------------------------------------------------------------------------------------------------------------------
	-- mouse controller

	mousectrl : mouse_ctrl 
		GENERIC MAP (50000) 
		PORT MAP (
			PS2_DAT, PS2_CLK, CLOCK_50, '1', KEY(0),
			signewdata, LEDR(7 downto 5), OPEN, OPEN, dx, dy, OPEN
		);
	
	hexseg0: bin2hex port map(
		hexdata(3 downto 0), HEX0
	);
	hexseg1: bin2hex port map(
		hexdata(7 downto 4), HEX1
	);
	hexseg2: bin2hex port map(
		hexdata(11 downto 8), HEX2
	);
	hexseg3: bin2hex port map(
		hexdata(15 downto 12), HEX3
	);	
	
	-- Read new mouse data	
	PROCESS(signewdata)
		VARIABLE xacc, yacc : integer RANGE -10000 TO 10000 := 0;
	BEGIN
		IF(rising_edge(signewdata)) THEN			
			x_ant <= x;
			y_ant <= y;
			x <= std_logic_vector(to_signed(to_integer(signed(x)) + ((xacc + to_integer(signed(dx))) / SENSIBILITY), 8));
			y <= std_logic_vector(to_signed(to_integer(signed(y)) + ((yacc + to_integer(signed(dy))) / SENSIBILITY), 8));
			xacc := ((xacc + to_integer(signed(dx))) rem SENSIBILITY);
			yacc := ((yacc + to_integer(signed(dy))) rem SENSIBILITY);
		END IF;
	END PROCESS;

	hexdata(3  DOWNTO  0) <= y(3 DOWNTO 0);
	hexdata(7  DOWNTO  4) <= y(7 DOWNTO 4);
	hexdata(11 DOWNTO  8) <= x(3 DOWNTO 0);
	hexdata(15 DOWNTO 12) <= x(7 DOWNTO 4);
	
	PROCESS
	BEGIN
		WAIT UNTIL CLOCK_50'EVENT and CLOCK_50 = '1';
		IF (x > x_ant or  (x_ant = x"FF" and x = x"00")) THEN
			col_mouse <= col_mouse + 1;
		ELSIF (x < x_ant or  (x_ant = x"00" and x = x"FF")) THEN
			col_mouse <= col_mouse - 1;
		END IF;
	END PROCESS;
		--IF (col_mouse < 0) THEN
		--	col_mouse <= 0;
		--ELSIF (col_mouse >= 128) THEN
		--	col_mouse <= 127;
		--END IF;
	PROCESS
	BEGIN
		WAIT UNTIL CLOCK_50'EVENT and CLOCK_50 = '1';
		IF (y > y_ant or  (y_ant = x"FF" and y = x"00")) THEN
			line_mouse <= line_mouse + 1;
		ELSIF (y < y_ant or  (y_ant = x"00" and y = x"FF")) THEN
			line_mouse <= line_mouse - 1;
		END IF;
	END PROCESS;
		--IF (line_mouse < 0) THEN
		--	line_mouse <= 0;
		--ELSIF (line_mouse >= 96) THEN
		--	line_mouse <= 95;
		--END IF;        

 -------------------------------------------------------------------------------------------------------------------------------------------
	-- vga controller
	
	vga_controller_instance: vga_controller PORT MAP (
			CLOCK_50, estado_vector, line_mouse, col_mouse, show_color_led, color_ram_output, VGA_R, VGA_G, VGA_B, VGA_HS, VGA_VS, VGA_BLANK_N, VGA_SYNC_N, VGA_CLK 
	);
	

 -------------------------------------------------------------------------------------------------------------------------------------------
	-- condition to start the game
	check <= not(KEY(0) or KEY(1) or KEY(2) or KEY(3));

--------------------------------------------------------------------------------------------------------------------------------------------	
	
	--generating a random color
	
	generate_random_color_instance : generate_random_color PORT MAP (
		 CLOCK_50, Write_Enable, color_ram_input
	);
									
--------------------------------------------------------------------------------------------------------------------------------------------
							
	-- Acessing memory
	
	memory_acess: ram_block PORT MAP (
		CLOCK_50, addr_mem, color_ram_input, color_ram_output, Write_Enable
	);
	
	seg_light: bin2hex PORT MAP (
		addr_mem (3 downto 0), HEX4
	);
	
	WITH color_ram_output SELECT
		aux <= 					"00" when "010", 
									"01" when "100",
									"10" when "110",
									"11" when "011",
									"--" when others;
	
	seg_1: bin2hex PORT MAP (
		"00"&aux, HEX5
	);

--------------------------------------------------------------------------------------------------------------------------------------------

	-- checking I/O colors
	
	checking_color_instance: checking_color PORT MAP (
			CLOCK_50, estado_vector, show_color_led, color_ram_output, KEY, LEDR (4 DOWNTO 0), failed, colors_checked
	);
	
	
--------------------------------------------------------------------------------------------------------------------------------------------

	-- Machine for the program
	
	PROCESS
		variable counter: integer := 1;
	BEGIN	-- process logica_mealy
		WAIT UNTIL CLOCK_50'EVENT and CLOCK_50 = '1';
		CASE estado IS
			WHEN start         		=> 
												estado_vector <= "10000";
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
												estado_vector <= "01000";
												Write_Enable <= '1';
												addr_mem <= round_number;
												round_number <= round_number + 1;
												show_color_led <= '0';
												colors_shown <= (OTHERS => '0');
												counter := 0;
												
												estado <= show_color;
		
			WHEN show_color      	=> 
												estado_vector <= "00100";
												Write_Enable <= '0';
												addr_mem <= colors_shown;
												round_number <= round_number;
												
												counter := counter + 1;
												IF counter = 35000000 THEN
													show_color_led <= not (show_color_led);
												END IF;
												IF counter = 70000000 THEN
													counter := 1;
													show_color_led <= not (show_color_led);
													colors_shown <= colors_shown + 1;
												END IF;
												
												IF (colors_shown = round_number) THEN
													estado <= eval_color;
												END IF;
											
			WHEN eval_color	     => 
												estado_vector <= "00010";
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
												estado_vector <= "00001";
												estado <= start;
		END CASE;
	END PROCESS;

--------------------------------------------------------------------------------------------------------------------------------------------
	
END game;