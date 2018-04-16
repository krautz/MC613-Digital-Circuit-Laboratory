library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all ;

entity muda_cor is
  port (    
	 flag_chamada : in std_logic;
    cor_out: out  std_logic_vector (2 downto 0)
    );
end muda_cor;

architecture struct of muda_cor is

begin

	PROCESS
		variable cor : std_logic_vector (2 downto 0) := (others => '1');
	BEGIN
	wait until flag_chamada'event and flag_chamada = '1';
		cor := cor + 1;
		if cor = "000" then cor := cor + 1;
		end if;
		
		cor_out <= cor;
	end process;
end struct;
		
	