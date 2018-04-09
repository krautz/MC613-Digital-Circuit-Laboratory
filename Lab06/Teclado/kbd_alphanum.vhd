library ieee;
use ieee.std_logic_1164.all;

entity kbd_alphanum is
  port (
    clk : in std_logic;
    key_on : in std_logic_vector(2 downto 0);
    key_code : in std_logic_vector(47 downto 0);
    HEX1 : out std_logic_vector(6 downto 0); -- GFEDCBA
    HEX0 : out std_logic_vector(6 downto 0) -- GFEDCB
  );
end kbd_alphanum;

architecture rtl of kbd_alphanum is

	component bin2hex
		port(
			SW  : in std_logic_vector(3 downto 0);
			HEX0: out std_logic_vector(6 downto 0)
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
    clk 		 : in std_logic;
    T  : in std_logic;
    Q : out std_logic;
	 key_on : in std_logic
  );
end component;
		
	signal data_in_caps, enable_caps, enable_shift 	: std_logic;
	signal key1, key2 						: std_logic_vector(15 downto 0);
	signal out_aux : std_logic_vector (13 downto 0);

begin

	hexseg0: bin2hex port map(
		key1(3 downto 0), out_aux (6 downto 0)
	);
	hexseg1: bin2hex port map(
		key1(7 downto 4), out_aux (13 downto 7)
	);
	
	HEX0 <= "1111111" when out_aux = "10000001000000" else out_aux (6 downto 0);
	HEX1 <= "1111111" when out_aux = "10000001000000" else out_aux (13 downto 7);
	
	data_in_caps <= '1' when key_code(7 downto 0) = x"58" else '0';
	with key_code(7 downto 0) select
		enable_shift <= '1' when x"12",
							 '1' when x"59",
							 '0' when others;
							 
	key2 <= key_code (31 downto 16) when enable_shift = '1' else key_code (15 downto 0);
	
	reg_caps_instance: reg_caps port map (
		clk, data_in_caps, enable_caps, key_on(0)
	);
	
	
	dec_tec2asc_instance: dec_tec2asc port map (
		key2 (7 downto 0), enable_caps XOR enable_shift, key1 (7 downto 0)
	);
	
end rtl;
