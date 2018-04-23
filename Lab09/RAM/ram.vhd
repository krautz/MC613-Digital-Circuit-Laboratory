library ieee;
use ieee.std_logic_1164.all;

entity ram is
  port (
    Clock : in std_logic;
    Address : in std_logic_vector(9 downto 0);
    DataIn : in std_logic_vector(31 downto 0);
    DataOut : out std_logic_vector(31 downto 0);
    WrEn : in std_logic
  );
end ram;

architecture rtl of ram is

	component ram_block is
	port (
		Clock : in std_logic;
		Address : in std_logic_vector(6 downto 0);
		Data : in std_logic_vector(7 downto 0);
		Q : out std_logic_vector(7 downto 0);
		WrEn : in std_logic
	);
	end component;
	
	signal WrEn1, WrEn2, RdEn1, RdEn2 : std_logic;
	signal RdEn21 : std_logic_vector (1 downto 0);
	signal Q1, Q2 : std_logic_vector (31 downto 0);
	

begin

	WrEn1 <= '0' when (((Address(9) or Address(8) or Address (7)) = '1') or (WrEn = '0')) else '1';
	WrEn2 <= '0' when (((Address(9) or Address(8) or not(Address(7))) = '1') or (WrEn = '0')) else '1';
	
	RdEn1 <= '0' when (Address(9) or Address(8) or Address (7)) = '1' else '1';
	RdEn2 <= '0' when (Address(9) or Address(8) or not(Address(7))) = '1' else '1';
	
	for_1_x: for i in 0 to 3 generate 
		ram_block_1_x: ram_block port map (
			Clock, Address (6 downto 0), Datain ((8*i) + 7 downto 8*i), Q1 ((8*i) + 7 downto 8*i), WrEn1
		);
	end generate;
	
	for_2_x: for i in 0 to 3 generate 
		ram_block_2_x: ram_block port map (
			Clock, Address (6 downto 0), Datain ((8*i) + 7 downto 8*i), Q2 ((8*i) + 7 downto 8*i), WrEn2
		);
	end generate;
	
	RdEn21 <= (RdEn2 & RdEn1);
	With RdEn21 Select
		DataOut <= 	Q1 when "01",
						Q2 when "10",
						(Others => 'Z') when others;

  
  
end rtl;
