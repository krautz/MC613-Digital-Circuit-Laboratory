LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY Lab02 IS
	PORT(Xa, Xb, Xc, Xd, Xe : IN 		STD_LOGIC ;
			pin_name6 			: OUT 	STD_LOGIC);
END Lab02 ;
ARCHITECTURE LogicFunction OF Lab02 IS
	signal a, b, c, d, e, g, h, i, j, k, l : STD_LOGIC;
BEGIN
		a <= NOT Xe AND NOT Xd AND NOT Xc AND NOT Xb AND NOT Xa;
		b <= NOT Xe AND NOT Xd AND NOT Xc AND Xb AND NOT Xa;
		c <= NOT Xe AND NOT Xd AND Xc AND NOT Xb AND Xa;
		d <= NOT Xe AND Xd AND NOT Xc AND NOT Xb AND NOT Xa;
		e <= NOT Xe AND Xd AND Xc AND NOT Xb AND Xa;
		l <= NOT Xe AND Xd AND Xc AND Xb AND Xa;
		g <= Xe AND NOT Xd AND NOT Xc AND Xb AND NOT Xa;
		h <= Xe AND NOT Xd AND Xc AND NOT Xb AND Xa;
		i <= Xe AND Xb AND NOT Xc AND NOT Xb AND NOT Xa;
		j <= Xe AND Xb AND Xc AND NOT Xb AND Xa;
		k <= Xe AND Xb AND Xc AND Xb AND Xa;
		pin_name6 <= a OR b OR c OR d OR e OR l OR g OR h OR i OR j OR k;
END LogicFunction ;