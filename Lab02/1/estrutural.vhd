LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY Lab02 IS
	PORT(Xa, Xb, Xc, Xd, Xe : IN 		STD_LOGIC ;
			pin_name6 			: OUT 	STD_LOGIC);
END Lab02 ;
ARCHITECTURE LogicFunction OF Lab02 IS
	signal a, b, c, d, e, g, h, i, j, k, l : STD_LOGIC;
BEGIN
		a <= NOT Xa AND NOT Xb AND NOT Xc AND NOT Xd AND NOT Xe;
		b <= NOT Xa AND NOT Xb AND NOT Xc AND Xd AND NOT Xe;
		c <= NOT Xa AND NOT Xb AND Xc AND NOT Xd AND Xe;
		d <= NOT Xa AND Xb AND NOT Xc AND NOT Xd AND NOT Xe;
		e <= NOT Xa AND Xb AND Xc AND NOT Xd AND Xe;
		l <= NOT Xa AND Xb AND Xc AND Xd AND Xe;
		g <= Xa AND NOT Xb AND NOT Xc AND Xd AND NOT Xe;
		h <= Xa AND NOT Xb AND Xc AND NOT Xd AND Xe;
		i <= Xa AND Xb AND NOT Xc AND NOT Xd AND NOT Xe;
		j <= Xa AND Xb AND Xc AND NOT Xd AND Xe;
		k <= Xa AND Xb AND Xc AND Xd AND Xe;
		pin_name6 <= a OR b OR c OR d OR e OR l OR g OR h OR i OR j OR k;
END LogicFunction ;