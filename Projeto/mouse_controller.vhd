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
		click 	: 	OUT std_logic
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
		if(rising_edge(signewdata)) then			
				col_mouse <= col_mouse + ((xacc + to_integer(signed(dx))) / SENSIBILITY);
				if (line_mouse - ((yacc + to_integer(signed(dy))) / SENSIBILITY) >= 96) then
					line_mouse <= 0;
				else
					line_mouse <= line_mouse - ((yacc + to_integer(signed(dy))) / SENSIBILITY);
				end if;
				xacc := ((xacc + to_integer(signed(dx))) rem SENSIBILITY);
				yacc := ((yacc + to_integer(signed(dy))) rem SENSIBILITY);
		END IF;
	END PROCESS;
	
	col <= col_mouse;
	line <= line_mouse;
	click <= mouse_click(0);
	
END rtl;

