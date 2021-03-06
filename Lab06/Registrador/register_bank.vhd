library ieee;
use ieee.std_logic_1164.all;

entity register_bank is
  port (
    clk : in std_logic;
    data_in : in std_logic_vector(3 downto 0);
    data_out : out std_logic_vector(3 downto 0);
    reg_rd : in std_logic_vector(2 downto 0);
    reg_wr : in std_logic_vector(2 downto 0);
    we : in std_logic;
    clear : in std_logic
  );
end register_bank;

architecture structural of register_bank is

	component reg is
		generic (
			N : integer
		);
		port (
			 clk : in std_logic;
			 data_in : in std_logic_vector(N-1 downto 0);
			 data_out : out std_logic_vector(N-1 downto 0);
			 load : in std_logic; -- Write enable
			 clear : in std_logic
		);
	end component;
	
	component zbuffer IS
		PORT ( 
			X : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
			E : IN STD_LOGIC ;
			F : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) 
		) ;
	END component ;
	
	component dec3_to_8 is
		port (
			en: in std_logic;
			w: in std_logic_vector (2 downto 0);
			y: out std_logic_vector (7 downto 0)
		);
	end component;
	
	signal enable_reg, enable_buffer: std_logic_vector (7 downto 0);
	signal data_out_aux, data_out_final: std_logic_vector (31 downto 0);
	signal data_out_placa: std_logic_vector (3 downto 0);
	signal aux: std_logic;
begin
  
	dec3_to_8_instance_1: dec3_to_8 port map (
			we, reg_rd, enable_reg
	);
	
	dec3_to_8_instance_2: dec3_to_8 port map (
			we, reg_wr, enable_buffer
	);
	

	G1: For i in 0 to 7 GENERATE
		reg_instance: reg 
		generic map (N => 4)
		port map (
				clk, data_in, data_out_aux(((4 * (i + 1)) - 1) downto (4 * i)), enable_reg(i), clear
		);
		buffer_instance: zbuffer port map (
				data_out_aux(((4 * (i + 1)) - 1) downto (4 * i)), enable_buffer(i), data_out_final(((4 * (i + 1)) - 1) downto (4 * i))
		);
		
	end generate;
	
	with enable_buffer select
		data_out <= data_out_final (3 downto 0) 	when "00000001",
						data_out_final (7 downto 4) 	when "00000010",
						data_out_final (11 downto 8) 	when "00000100",
						data_out_final (15 downto 12) when "00001000",
						data_out_final (19 downto 16) when "00010000",
						data_out_final (23 downto 20) when "00100000",
						data_out_final (27 downto 24) when "01000000",
						data_out_final (31 downto 28) when "10000000",
						"----" when Others;
	
end structural;
