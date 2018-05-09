LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY genius_board IS
  PORT (
    CLOCK_50 : IN std_logic;
    KEY : IN std_logic_vector(3 DOWNTO 0);
	 LEDR : IN std_logic_vector (3 DOWNTO 0);
  );
END genius_board;

ARCHITECTURE game OF clock_board IS

	COMPONENT ram_block IS
		PORT (
			Clock : in std_logic;
			Address : in std_logic_vector(9 downto 0);
			Data : in std_logic_vector(2 downto 0);
			Q : out std_logic_vector(2 downto 0);
			WrEn : in std_logic
		);
	END COMPONENT;
	
	--variables for the mealy state machine
	TYPE estado_type IS (start, generating_color, show_color, checking_color, final);
	SIGNAL estado: estado_t := start;
	
	SIGNAL round_number, colors_shown, colors_checked : std_logic_vector (9 DOWNTO 0);
	SIGNAL check, failed : std_logic;
	SIGNAL color : std_logic_vector (1 DOWNTO 0) := (OTHERS <= '0');
	SIGNAL color_ram, color_and_enable : std_logic_vector (2 DOWNTO 0);

BEGIN
	-- condition to start the game
	check <= not(KEY(0) or KEY(1) or KEY(2) or KEY(3));
	
	--generating a random color
	
	PROCESS ()
	BEGIN
		WAIT UNTIL CLOCK_50'EVENT and CLOCK_50 = '1';
		color <= color + 1;
	END PROCESS;
	
	color_and_enable <= generate_color&color;
	WITH color SELECT
		color_ram <= 	"001" when "100",
							"011" when "101",
							"101" when "110",
							"111" when "111";
							"---" when others;
	
	
		
	

	PROCESS(check, colors_shown, round_number, color_generated, failed)
	BEGIN  -- process logica_mealy
		CASE estado IS
			WHEN start         		=> IF (check = '1') THEN
													estado <= generating_color;
													generate_color <= '1';
												ELSE
													estado <=  estado;
												END IF;
												round_number <= (OTHERS => '0');
												colors_shown <= (OTHERS => '0');
												colors_checked <= (OTHERS => '0');

			WHEN generating_color 	=> IF (color_generated = '1') THEN
													estado <= show_color;
													colors_shown <= (OTHERS => '0');
													generate_color <= '0';
												ELSE
													estado <= estado;
												END IF;
		
			WHEN show_color      	=> IF (colors_shown = round_number) THEN
													estado <= checking_color;
													colors_checked <= (OTHERS => '0');
												ELSE
													estado <= estado;
												END IF;
											
			WHEN checking_color     => IF (colors_checked = round_number) and (round_number = "1111111111") THEN
													estado <= final;
												ELSIF (colors_checked = round_number) THEN
													estado <= generating_color;
												ELSIF (failed = '1') THEN
													estado <= start;
												ELSE
													estado <= estado;
												END IF;
		
			WHEN final		      	=> estado <= start;
		END CASE;
	END PROCESS;


END game;