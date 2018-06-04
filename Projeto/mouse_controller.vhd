LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY mouse_controller IS
	PORT (
		PS2_DAT 	:	INOUT	STD_LOGIC;
		PS2_CLK	:	INOUT	STD_LOGIC;
		CLOCK_50	: 	IN std_logic;
		col 		: 	OUT integer RANGE 0 TO 127;
		line 		: 	OUT integer RANGE 0 TO 95;
		click 	: 	OUT std_logic;
		Check		:	OUT std_logic
	);
END mouse_controller;

ARCHITECTURE rtl OF mouse_controller IS

	-- mouse component
	COMPONENT mouse_ctrl
		GENERIC (
			clkfreq : integer
		);
		PORT (
			ps2_data		:	INOUT	std_logic;
			ps2_clk		:	INOUT	std_logic;
			clk			:	IN 	std_logic;
			en				:	IN 	std_logic;
			resetn		:	IN 	std_logic;
			newdata		:	OUT	std_logic;
			bt_on			:	OUT	std_logic_vector(2 DOWNTO 0);
			ox, oy		:	OUT std_logic;
			dx, dy		:	OUT	std_logic_vector(8 DOWNTO 0);
			wheel			: 	OUT	std_logic_vector(3 DOWNTO 0)
		);
	END COMPONENT;

	-- Interface com o mouse
	SIGNAL signewdata : std_logic;
	SIGNAL dx, dy : std_logic_vector(8 DOWNTO 0);
	CONSTANT SENSIBILITY : integer := 11; -- Rise to decrease sensibility
	SIGNAL mouse_click : std_logic_vector (2 downto 0);
	
	SIGNAL line_mouse : integer RANGE 0 TO 95;  -- linha atual
	SIGNAL col_mouse : integer RANGE 0 TO 127;  -- coluna atual
	
	SIGNAL pressed : std_logic := '0';


BEGIN

	mousectrl : mouse_ctrl 
		GENERIC MAP (50000) 
		PORT MAP (
			PS2_DAT, PS2_CLK, CLOCK_50, '1', '1',
			signewdata, mouse_click, OPEN, OPEN, dx, dy, OPEN
		);

	-- Read new mouse data	
	PROCESS(signewdata)
		VARIABLE xacc, yacc : integer RANGE -10000 TO 10000 := 0;
	BEGIN
		IF (rising_edge(signewdata)) THEN		
	
				IF (col_mouse + ((xacc + to_integer(signed(dx))) / SENSIBILITY) >= 127) THEN
					col_mouse <= 126;
				ELSIF (col_mouse + ((xacc + to_integer(signed(dx))) / SENSIBILITY) < 0) THEN
					col_mouse <= 0;
				ELSE
					col_mouse <= col_mouse + ((xacc + to_integer(signed(dx))) / SENSIBILITY);
				END IF;
	
				IF (line_mouse - ((yacc + to_integer(signed(dy))) / SENSIBILITY) >= 96) THEN
					line_mouse <= 95;
				ELSIF (line_mouse - ((yacc + to_integer(signed(dy))) / SENSIBILITY) < 0) THEN
					line_mouse <= 0;
				ELSE
					line_mouse <= line_mouse - ((yacc + to_integer(signed(dy))) / SENSIBILITY);
				END IF;
				xacc := ((xacc + to_integer(signed(dx))) rem SENSIBILITY);
				yacc := ((yacc + to_integer(signed(dy))) rem SENSIBILITY);
		END IF;
	END PROCESS;
	
	col <= col_mouse;
	line <= line_mouse;
	click <= mouse_click(0);
	
	PROCESS
	BEGIN
		WAIT UNTIL clock_50'EVENT and CLOCK_50 = '1';
		IF (pressed = '0' and mouse_click(0) = '1') THEN
			pressed <= '1';
		ELSIF (pressed = '1' and mouse_click(0) = '0') THEN
			pressed <= '0';
			check <= '1';
		ELSE
			check <= '0';
		END IF;
	END PROCESS;
	
END rtl;

