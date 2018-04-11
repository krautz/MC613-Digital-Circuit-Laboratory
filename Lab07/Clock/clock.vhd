library ieee;
use ieee.std_logic_1164.all;

entity clock is
  port (
	 clk_aux : in std_logic;
    clk : in std_logic;
    decimal : in std_logic_vector(3 downto 0);
    unity : in std_logic_vector(3 downto 0);
    set_hour : in std_logic;
    set_minute : in std_logic;
    set_second : in std_logic;
    hour_dec, hour_un : out std_logic_vector(6 downto 0);
    min_dec, min_un : out std_logic_vector(6 downto 0);
    sec_dec, sec_un : out std_logic_vector(6 downto 0)
  );
end clock;

architecture rtl of clock is
  component clk_div is
    port (
      clk : in std_logic;
      clk_hz : out std_logic
    );
  end component;
  
  component transf_5bits_8bits IS
	PORT ( 	entrada : IN STD_LOGIC_VECTOR (4 downto 0) ;
				saida : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	) ;
	END component ;
	
	component transf_8bits_5bits IS
	PORT ( 	entrada : IN STD_LOGIC_VECTOR (7 downto 0) ;
				saida : OUT STD_LOGIC_VECTOR (4 DOWNTO 0)
	) ;
	END component ;
	
	component contador IS
	PORT ( 	Clock, set_hour, set_minute, set_second, Clock_50 : IN STD_LOGIC ;
				un_set, dec_set : in std_logic_vector (3 downto 0);
				hour_set : in std_logic_vector (4 downto 0);
				sec_un, sec_dec, min_un, min_dec : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
				hour : out std_logic_vector (4 downto 0)
	) ;
	END component ;
	
	component bin2hex IS
	PORT (
		SW:in std_logic_vector (3 DOWNTO 0);
		HEX0: out std_logic_vector (6 DOWNTO 0)
	);
	END component ;
  
  signal clk_hz : std_logic;
  
  signal hour_aux_8bits : std_logic_vector (7 downto 0);
  signal hour_aux, hour_aux_set :  std_logic_vector(4 downto 0);
  signal min_dec_aux, min_un_aux :  std_logic_vector(3 downto 0);
  signal sec_dec_aux, sec_un_aux :  std_logic_vector(3 downto 0);
  signal sec_un_virou, sec_dec_virou, min_un_virou, min_dec_virou : std_logic;
begin
	-- clock_divider : clk_div port map (clk, clk_hz);
	
	transforma_hora_2: transf_8bits_5bits port map (
		decimal&unity, hour_aux_set
	);
	
	contador_instance: contador port map (
		clk_aux, set_hour, set_minute, set_second, clk, unity, decimal, hour_aux_set, sec_un_aux, sec_dec_aux, min_un_aux, min_dec_aux, hour_aux
	);
	
	transforma_hora: transf_5bits_8bits port map (
		hour_aux, hour_aux_8bits
	);
	
	bin2hex_sec_un: bin2hex port map (
		sec_un_aux, sec_un
	);
	
	bin2hex_sec_dec: bin2hex port map (
		sec_dec_aux, sec_dec
	);
	
	bin2hex_min_un: bin2hex port map (
		min_un_aux, min_un
	);
	
	bin2hex_min_dec: bin2hex port map (
		min_dec_aux, min_dec
	);
	
	bin2hex_hour_un: bin2hex port map (
		hour_aux_8bits(3 downto 0), hour_un
	);
	
	bin2hex_hour_dec: bin2hex port map (
		hour_aux_8bits(7 downto 4), hour_dec
	);
					  
	
end rtl;