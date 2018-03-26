-- brief : lab05 - question 2

library ieee;
use ieee.std_logic_1164.all;

entity cla_8bits is
  port(
    x    : in  std_logic_vector(7 downto 0);
    y    : in  std_logic_vector(7 downto 0);
    cin  : in  std_logic;
    sum  : out std_logic_vector(7 downto 0);
    cout : out std_logic
  );
end cla_8bits;

architecture rtl of cla_8bits is

	SIGNAL carries: STD_LOGIC_VECTOR (7 downto 0);
	SIGNAL G, P, XOR1: STD_LOGIC_VECTOR (7 downto 0);

begin

	G1: For i in 0 to 7 GENERATE
		G(i) <= x(i) AND y(i);
		P(i) <= x(i) OR y(i);
		XOR1(i) <= x(i) XOR y(i);
	END GENERATE;
	
	carries(0) <= cin;
	carries(1) <= G(0) OR (P(0) AND cin);
	carries(2) <= G(1) OR (P(1) AND G(0)) OR (P(1) AND P(0) AND cin);
	carries(3) <= G(2) OR (P(2) AND G(1)) OR (P(2) AND P(1) AND G(0)) OR (P(2) AND P(1) AND P(0) AND cin);
	carries(4) <= G(3) OR (P(3) AND G(2)) OR (P(3) AND P(2) AND G(1)) OR (P(3) AND P(2) AND P(1) AND G(0)) OR (P(3) AND P(2) AND P(1) AND P(0) AND cin);
	carries(5) <= G(4) OR (P(4) AND G(3)) OR (P(4) AND P(3) AND G(2)) OR (P(4) AND P(3) AND P(2) AND G(1)) OR (P(4) AND P(3) AND P(2) AND P(1) AND G(0)) OR (P(4) AND P(3) AND P(2) AND P(1) AND P(0) AND cin);
	carries(6) <= G(5) OR (P(5) AND G(4)) OR (P(5) AND P(4) AND G(3)) OR (P(5) AND P(4) AND P(3) AND G(2)) OR (P(5) AND P(4) AND P(3) AND P(2) AND G(1)) OR (P(5) AND P(4) AND P(3) AND P(2) AND P(1) AND G(0)) OR (P(5) AND P(4) AND P(3) AND P(2) AND P(1) AND P(0) AND cin);
	carries(7) <= G(6) OR (P(6) AND G(5)) OR (P(6) AND P(5) AND G(4)) OR (P(6) AND P(5) AND P(4) AND G(3)) OR (P(6) AND P(5) AND P(4) AND P(3) AND G(2)) OR (P(6) AND P(5) AND P(4) AND P(3) AND P(2) AND G(1)) OR (P(6) AND P(5) AND P(4) AND P(3) AND P(2) AND P(1) AND G(0)) OR (P(6) AND P(5) AND P(4) AND P(3) AND P(2) AND P(1) AND P(0) AND cin);
	cout <= G(7) OR (P(7) AND G(6)) OR (P(7) AND P(6) AND G(5)) OR (P(7) AND P(6) AND P(5) AND G(4)) OR (P(7) AND P(6) AND P(5) AND P(4) AND G(3)) OR (P(7) AND P(6) AND P(5) AND P(4) AND P(3) AND G(2)) OR (P(7) AND P(6) AND P(5) AND P(4) AND P(3) AND P(2) AND G(1)) OR (P(7) AND P(6) AND P(5) AND P(4) AND P(3) AND P(2) AND P(1) AND G(0)) OR (P(7) AND P(6) AND P(5) AND P(4) AND P(3) AND P(2) AND P(1) AND P(0) AND cin);
  
  G2: FOR i in 0 to 7 GENERATE
		sum(i) <= XOR1(i) XOR carries(i);
	END GENERATE;
end rtl;

