library ieee;
use ieee.std_logic_1164.all;

entity kbd_alphanum is
  port (
			------------------------	Clock Input	 	------------------------
		CLOCK_50	: 	in	STD_LOGIC;											--	50 MHz
		
		------------------------	Push Button		------------------------
		KEY 	:		in	STD_LOGIC_VECTOR (3 downto 0);		--	Pushbutton[3:0]

		------------------------	DPDT Switch		------------------------
		SW 	:		in	STD_LOGIC_VECTOR (9 downto 0);			--	Toggle Switch[9:0]
		
		------------------------	7-SEG Dispaly	------------------------
		HEX0 	:		out	STD_LOGIC_VECTOR (6 downto 0);		--	Seven Segment Digit 0
		HEX1 	:		out	STD_LOGIC_VECTOR (6 downto 0);		--	Seven Segment Digit 1
		HEX2 	:		out	STD_LOGIC_VECTOR (6 downto 0);		--	Seven Segment Digit 2
		HEX3 	:		out	STD_LOGIC_VECTOR (6 downto 0);		--	Seven Segment Digit 3
		
		----------------------------	LED		----------------------------
		LEDR 	:		out	STD_LOGIC_VECTOR (9 downto 0);		--	LED Red[9:0]
					
		------------------------	PS2		--------------------------------
		PS2_DAT 	:		inout	STD_LOGIC;	--	PS2 Data
		PS2_CLK		:		inout	STD_LOGIC		--	PS2 Clock
  );
end kbd_alphanum;

architecture struct of kbd_alphanum is

	component bin2hex
		port(
			SW  : in std_logic_vector(3 downto 0);
			HEX0: out std_logic_vector(6 downto 0)
		);
	end component;

	component kbdex_ctrl
		generic(
			clkfreq : integer
		);
		port(
			ps2_data	:	inout	std_logic;
			ps2_clk		:	inout	std_logic;
			clk				:	in 	std_logic;
			en				:	in 	std_logic;
			resetn		:	in 	std_logic;
			lights		: in	std_logic_vector(2 downto 0); -- lights(Caps, Nun, Scroll)		
			key_on		:	out	std_logic_vector(2 downto 0);
			key_code	:	out	std_logic_vector(47 downto 0)
		);
	end component;
	
	Component dec_tec2asc IS
PORT (
		entrada:in std_logic_vector (7 DOWNTO 0);
		enable: in std_logic;
		saida: out std_logic_vector (7 DOWNTO 0)
	);
END component ;

component reg_caps is
  port (
    data_in : in std_logic;
    data_out : out std_logic
  );
end component;

		
	signal CLOCKHZ, resetn, data_in_caps, enable_caps, enable_shift 	: std_logic;
	signal key0						: std_logic_vector(31 downto 0);
	signal key1, key2 						: std_logic_vector(15 downto 0);
	signal lights, key_on		: std_logic_vector( 2 downto 0);

begin

	resetn <= KEY(0);

	hexseg0: bin2hex port map(
		key1(3 downto 0), HEX0
	);
	hexseg1: bin2hex port map(
		key1(7 downto 4), HEX1
	);
	hexseg2: bin2hex port map(
		key1(11 downto 8), HEX2
	);
	hexseg3: bin2hex port map(
		key1(15 downto 12), HEX3
	);

	kbd_ctrl : kbdex_ctrl generic map(50000) port map(
		PS2_DAT, PS2_CLK, CLOCK_50, KEY(1), resetn, lights(1) & lights(2) & lights(0),
		key_on, key_code(31 downto 0) => key0
	);
	
	data_in_caps <= '1' when key0(7 downto 0) = x"58" else '0';
	with key0(7 downto 0) select
		enable_shift <= '1' when x"12",
							 '1' when x"59",
							 '0' when others;
							 
	key2 <= key0 (31 downto 16) when enable_shift = '1' else key0 (15 downto 0);
	
	reg_caps_instance: reg_caps port map (
		data_in_caps, enable_caps
	);
	
	
	dec_tec2asc_instance: dec_tec2asc port map (
		key2 (7 downto 0), enable_caps XOR enable_shift, key1 (7 downto 0)
	);
	
	LEDR(7 downto 5) <= key_on;
	
	-- Playing with lights! xD
	process(CLOCKHZ, resetn, key_on)
		variable dir : boolean := false;
	begin
		if(rising_edge(CLOCKHZ)) then
			if lights(2) = '1' then
				dir := true;
			elsif lights(0) = '1' then
				dir := false;
			end if;
			if key_on = "000" then
				if not dir then
					lights <= lights(1 downto 0) & lights(2);
				else
					lights <= lights(0) & lights(2 downto 1);
				end if;
			end if;
		end if;
		if resetn = '0' then
			dir := false;	
			lights <= "001";
		end if;		
	end process;
	
	-- Hz clock	
	process(CLOCK_50)
		constant F_HZ : integer := 5;
		
		constant DIVIDER : integer := 50000000/F_HZ;
		variable count : integer range 0 to DIVIDER := 0;		
	begin
		if(rising_edge(CLOCK_50)) then
			if count < DIVIDER / 2 then
				CLOCKHZ <= '1';
			else 
				CLOCKHZ <= '0';
			end if;
			if count = DIVIDER then
				count := 0;
			end if;
			count := count + 1;			
		end if;
	end process;	
end struct;
