LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY vga_controller IS
	PORT (
			CLOCK_50	 						: 	IN std_logic;
			estado_vector 					: 	IN std_logic_vector (4 DOWNTO 0);
			line_mouse 						: 	IN integer RANGE 0 TO 95;
			col_mouse 						: 	IN integer RANGE 0 TO 127;
			show_color_led 				: 	IN std_logic;
			color_ram_output				:	IN std_logic_vector (2 DOWNTO 0);
			VGA_R, VGA_G, VGA_B       	:	OUT std_logic_vector(7 DOWNTO 0);
			VGA_HS, VGA_VS            	: 	OUT std_logic;
			VGA_BLANK_N, VGA_SYNC_N   	: 	OUT std_logic;
			VGA_CLK                   	: 	OUT std_logic
		 
	);
END vga_controller;


ARCHITECTURE rtl OF vga_controller IS

	SIGNAL we : std_logic;                        -- write enable ('1' p/ escrita)
	SIGNAL addr : integer RANGE 0 TO 12287;       -- endereco mem. vga
	SIGNAL pixel : std_logic_vector(2 DOWNTO 0);  -- valor de cor do pixel

	SIGNAL line	: integer RANGE 0 TO 95;  -- linha atual
	SIGNAL col : integer RANGE 0 TO 127;  -- coluna atual
												-- escrito na memória de vídeo
	SIGNAL sync, blank: std_logic;


BEGIN

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
		  IF line = 95 THEN
			 line <= 0;
		  ELSE
			 line <= line + 1;  
		  END IF;        
		END IF;
	END PROCESS;
	
	PROCESS
	BEGIN
   WAIT UNTIL CLOCK_50'EVENT and CLOCK_50 = '1';
		IF (col = col_mouse and line = line_mouse) THEN
			we <= '1';
			pixel <= "111";
      ELSIF (estado_vector = "00010" or (show_color_led = '1' and color_ram_output = "010")) and (col >= 28) and (col < 52) and (line >= 12) and (line < 36) THEN --sup esq
			we <= '1';
			pixel <= "010";
		ELSIF (estado_vector = "00010" or (show_color_led = '1' and color_ram_output = "110")) and  (col >= 28) and (col < 52) and (line >= 60) and (line < 84) THEN -- inf esq
			we <= '1';
			pixel <= "110";
		ELSIF (estado_vector = "00010" or (show_color_led = '1' and color_ram_output = "100")) and  (col >= 76) and (col < 100) and (line >= 12) and (line < 36) THEN -- sup dir
			we <= '1';
			pixel <= "100";
		ELSIF (estado_vector = "00010" or (show_color_led = '1' and color_ram_output = "011")) and  (col >= 76) and (col < 100) and (line >= 60) and (line < 84) THEN -- inf dir
			we <= '1';
			pixel <= "011";
		ELSIF (estado_vector = "10000") and (line = 36 or line = 37) and ((col >= 28 and col < 40) or (col >= 43 and col < 55) or (col >= 58 and col < 70) or (col >= 73 and col < 85) or (col >= 88 and col < 100)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "10000") and (line = 38 or line = 39) and ((col = 28 or col = 29 or col = 38 or col = 39) or (col = 48 or col = 49) or (col = 58 or col = 59 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 83 or col = 84) or (col = 93 or col = 94)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "10000") and (line >= 40 and line <= 46) and ((col = 28 or col = 29) or (col = 48 or col = 49) or (col = 58 or col = 59 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 83 or col = 84) or (col = 93 or col = 94)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "10000") and (line = 47 or line = 48) and ((col >= 28 and col < 40) or (col = 48 or col = 49) or (col >= 58 and col < 70) or (col >= 73 and col < 85) or (col = 93 or col = 94)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "10000") and (line = 49) and ((col = 38 or col = 39) or (col = 48 or col = 49) or (col = 58 or col = 59 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 78 or col = 79) or (col = 93 or col = 94)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "10000") and (line = 50 or line = 51) and ((col = 38 or col = 39) or (col = 48 or col = 49) or (col = 58 or col = 59 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 79 or col = 80) or (col = 93 or col = 94)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "10000") and (line = 52 or line = 53) and ((col = 38 or col = 39) or (col = 48 or col = 49) or (col = 58 or col = 59 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 80 or col = 81) or (col = 93 or col = 94)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "10000") and (line = 54 or line = 55) and ((col = 38 or col = 39) or (col = 48 or col = 49) or (col = 58 or col = 59 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 81 or col = 82) or (col = 93 or col = 94)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "10000") and (line = 56 or line = 57) and ((col = 28 or col = 29 or col = 38 or col = 39) or (col = 48 or col = 49) or (col = 58 or col = 59 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 82 or col = 83) or (col = 93 or col = 94)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "10000") and (line = 58 or line = 59) and ((col >= 28 and col < 40) or (col = 48 or col = 49) or (col = 58 or col = 59 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 83 or col = 84) or (col = 93 or col = 94)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "00001") and (line = 36 or line = 37) and ((col >= 43 and col < 55) or (col = 58 or col = 59 or col = 60 or col = 61 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 75 or col = 76)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "00001") and (line = 38 or line = 39) and ((col = 43 or col = 44) or (col = 58 or col = 59 or col = 60 or col = 61 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 76 or col = 77)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "00001") and (line = 40 or line = 41) and ((col = 43 or col = 44) or (col = 58 or col = 59 or col = 61 or col = 62 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 77 or col = 78)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "00001") and (line = 42 or line = 43) and ((col = 43 or col = 44) or (col = 58 or col = 59 or col = 61 or col = 62 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 78 or col = 79)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "00001") and (line = 44 or line = 45) and ((col = 43 or col = 44) or (col = 58 or col = 59 or col = 62 or col = 63 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 79 or col = 80)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "00001") and (line = 46 or line = 47) and ((col = 43 or col = 44) or (col = 58 or col = 59 or col = 62 or col = 63 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 80 or col = 81)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "00001") and (line = 48 or line = 49) and ((col >= 43 and col < 55) or (col = 58 or col = 59 or col = 63 or col = 64 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 80 or col = 81)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "00001") and (line = 50 or line = 51) and ((col = 43 or col = 44) or (col = 58 or col = 59 or col = 64 or col = 65 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 79 or col = 80)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "00001") and (line = 52 or line = 53) and ((col = 43 or col = 44) or (col = 58 or col = 59 or col = 64 or col = 65 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 78 or col = 79)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "00001") and (line = 54 or line = 55) and ((col = 43 or col = 44) or (col = 58 or col = 59 or col = 65 or col = 66 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 77 or col = 78)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "00001") and (line = 56 or line = 57) and ((col = 43 or col = 44) or (col = 58 or col = 59 or col = 65 or col = 66 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 76 or col = 77)) THEN
			we <= '1';
			pixel <= "101";
		ELSIF (estado_vector = "00001") and (line = 58 or line = 59) and ((col >= 43 and col < 55) or (col = 58 or col = 59 or col = 66 or col = 67 or col = 68 or col = 69) or (col = 73 or col = 74 or col = 75 or col = 76)) THEN
			we <= '1';
			pixel <= "101";
		ELSE
			we <= '1';
			pixel <= "000";
		END IF;
  END PROCESS;
									
									
END rtl;