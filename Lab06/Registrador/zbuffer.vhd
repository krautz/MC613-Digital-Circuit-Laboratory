LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY zbuffer IS
	PORT ( 
		X : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		E : IN STD_LOGIC ;
		F : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) 
	) ;
END zbuffer ;


ARCHITECTURE Behavior OF zbuffer IS
BEGIN
	F <= (OTHERS => 'Z') WHEN E = '0' ELSE X ;
END Behavior ;