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

begin
  -- Your code here!
end structural;
