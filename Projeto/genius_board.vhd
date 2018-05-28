LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY genius_board IS
	PORT (
		 CLOCK_50 : IN std_logic;
		 VGA_R, VGA_G, VGA_B       : OUT std_logic_vector(7 DOWNTO 0);
		 VGA_HS, VGA_VS            : OUT std_logic;
		 VGA_BLANK_N, VGA_SYNC_N   : OUT std_logic;
		 VGA_CLK                   : OUT std_logic;
		 PS2_DAT 	:		inout	STD_LOGIC;
		 PS2_CLK		:		inout	STD_LOGIC	
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
			color_ram_output : IN std_logic_vector (2 DOWNTO 0);
			mouse_click : IN std_logic;
			line_mouse : IN integer RANGE 0 TO 95;
			col_mouse : IN integer RANGE 0 TO 127;
			failed : OUT std_logic;
			colors_checked_output : OUT std_logic_vector (9 DOWNTO 0)
	);
	END COMPONENT;
	
	-- mouse controller component
	COMPONENT mouse_controller
	PORT (
		col : OUT integer RANGE 0 TO 127;
		line : OUT integer RANGE 0 TO 95;
		click : OUT std_logic;
		CLOCK_50 : IN std_logic;
		PS2_DAT 	:		inout	STD_LOGIC;
		PS2_CLK		:		inout	STD_LOGIC
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
	SIGNAL mouse_click : std_logic;
	
	SIGNAL line_mouse : integer RANGE 0 TO 95;  -- linha atual
	SIGNAL col_mouse : integer RANGE 0 TO 127;  -- coluna atual

	-- variables for the mealy state machine
	TYPE estado_type IS (start, generating_color, show_color, eval_color, final);
	SIGNAL estado: estado_type := start;
	SIGNAL estado_vector : std_logic_vector (4 DOWNTO 0);
	
	-- for acessing the correct memory adress
	SIGNAL round_number, colors_shown, colors_checked, addr_mem : std_logic_vector (9 DOWNTO 0);
	
	-- flag to start the game 
	SIGNAL check : std_logic := '0';
	
	-- flag to indicate that the user lost the game
	SIGNAL failed : std_logic;
	
	-- turn on and off the led
	SIGNAL show_color_led : std_logic := '0';
	
	-- for generate colors and write and read them to the memory
	SIGNAL Write_Enable : std_logic;
	SIGNAL color_ram_input, color_ram_output : std_logic_vector (2 DOWNTO 0);
	
	SIGNAL pressed : std_logic := '0';
	

BEGIN

 -------------------------------------------------------------------------------------------------------------------------------------------
	-- mouse controller

	mouse_controller_instance: mouse_controller PORT MAP (
		col_mouse, line_mouse, mouse_click, CLOCK_50, PS2_DAT, PS2_CLK	
	);

 -------------------------------------------------------------------------------------------------------------------------------------------
	-- vga controller
	
	vga_controller_instance: vga_controller PORT MAP (
			CLOCK_50, estado_vector, line_mouse, col_mouse, show_color_led, color_ram_output, VGA_R, VGA_G, VGA_B, VGA_HS, VGA_VS, VGA_BLANK_N, VGA_SYNC_N, VGA_CLK 
	);
	

 -------------------------------------------------------------------------------------------------------------------------------------------
	-- condition to start the game
	PROCESS
	BEGIN
		WAIT UNTIL clock_50'EVENT and CLOCK_50 = '1';
		IF (pressed = '0' and mouse_click = '1' and estado_vector = "10000") THEN
			pressed <= '1';
		ELSIF (pressed = '1' and mouse_click = '0' and estado_vector = "10000") THEN
			pressed <= '0';
			check <= '1';
		ELSE
			check <= '0';
		END IF;
	END PROCESS;
			

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
	

--------------------------------------------------------------------------------------------------------------------------------------------

	-- checking I/O colors
	
	checking_color_instance: checking_color PORT MAP (
			CLOCK_50, estado_vector, color_ram_output, mouse_click, line_mouse, col_mouse, failed, colors_checked
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