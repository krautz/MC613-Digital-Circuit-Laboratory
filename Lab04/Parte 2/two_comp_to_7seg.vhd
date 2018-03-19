library ieee;
use ieee.std_logic_1164.all;

entity two_comp_to_7seg is
  port (
    bin : in std_logic_vector(3 downto 0);
    segs : out std_logic_vector(6 downto 0);
    neg : out std_logic
  );
end two_comp_to_7seg;

architecture behavioral of two_comp_to_7seg is
begin
  WITH bin SELECT
		segs <= 	"1000000" WHEN "0000", 		--0
					"1111001" WHEN "0001",		--1
					"0100100" WHEN "0010",		--2
					"0110000" WHEN "0011",		--3
					"0011001" WHEN "0100",		--4
					"0010010" WHEN "0101",		--5
					"0000010" WHEN "0110",		--6
					"1111000" WHEN "0111",		--7
					"0000000" WHEN "1000",		--minus8
					"1111000" WHEN "1001",		--minus7
					"0000010" WHEN "1010",		--minus6
					"0010010" WHEN "1011",		--minus5
					"0011001" WHEN "1100",		--minus4
					"0110000" WHEN "1101",		--minus3
					"0100100" WHEN "1110",		--minus2
					"1111001" WHEN "1111";		--minus1
	
	WITH bin SELECT
		neg <= 	'0' WHEN "0000", 		--0
					'0' WHEN "0001",		--1
					'0' WHEN "0010",		--2
					'0' WHEN "0011",		--3
					'0' WHEN "0100",		--4
					'0' WHEN "0101",		--5
					'0' WHEN "0110",		--6
					'0' WHEN "0111",		--7
					'1' WHEN OTHERS;
end behavioral;
