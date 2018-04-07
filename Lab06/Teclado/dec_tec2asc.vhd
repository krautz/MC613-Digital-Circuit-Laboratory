LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY dec_tec2asc IS
PORT (
		entrada:in std_logic_vector (7 DOWNTO 0);
		enable: in std_logic;
		saida: out std_logic_vector (7 DOWNTO 0)
	);
END dec_tec2asc ;

ARCHITECTURE struct OF dec_tec2asc IS

	signal enable_entrada: std_logic_vector (11 downto 0);

BEGIN

	enable_entrada <= "0000"&entrada when enable = '0' else "1111"&entrada;

	with enable_entrada select
		saida <= x"61" when x"01c",
					x"62" when x"032",
					x"63" when x"021",
					x"64" when x"023",
					x"65" when x"024",
					x"66" when x"02b",
					x"67" when x"034",
					x"68" when x"033",
					x"69" when x"043",
					x"6a" when x"03b",
					x"6b" when x"042",
					x"6c" when x"04b",
					x"6d" when x"03a",
					x"6e" when x"031",
					x"6f" when x"044",
					x"70" when x"04d",
					x"71" when x"015",
					x"72" when x"02d",
					x"73" when x"01b",
					x"74" when x"02c",
					x"75" when x"03c",
					x"76" when x"02a",
					x"77" when x"01d",
					x"78" when x"022",
					x"79" when x"035",
					x"7a" when x"01a",
					
					x"41" when x"f1c",
					x"42" when x"f32",
					x"43" when x"f21",
					x"44" when x"f23",
					x"45" when x"f24",
					x"46" when x"f2b",
					x"47" when x"f34",
					x"48" when x"f33",
					x"49" when x"f43",
					x"4a" when x"f3b",
					x"4b" when x"f42",
					x"4c" when x"f4b",
					x"4d" when x"f3a",
					x"4e" when x"f31",
					x"4f" when x"f44",
					x"50" when x"f4d",
					x"51" when x"f15",
					x"52" when x"f2d",
					x"53" when x"f1b",
					x"54" when x"f2c",
					x"55" when x"f3c",
					x"56" when x"f2a",
					x"57" when x"f1d",
					x"58" when x"f22",
					x"59" when x"f35",
					x"5a" when x"f1a",
					
					x"30" when x"045",
					x"31" when x"016",
					x"32" when x"01e",
					x"33" when x"026",
					x"34" when x"025",
					x"35" when x"02e",
					x"36" when x"036",
					x"37" when x"03d",
					x"38" when x"03e",
					x"39" when x"046",
					
					x"30" when x"f45",
					x"31" when x"f16",
					x"32" when x"f1e",
					x"33" when x"f26",
					x"34" when x"f25",
					x"35" when x"f2e",
					x"36" when x"f36",
					x"37" when x"f3d",
					x"38" when x"f3e",
					x"39" when x"f46",
					
					x"30" when x"070",
					x"31" when x"069",
					x"32" when x"072",
					x"33" when x"07a",
					x"34" when x"06b",
					x"35" when x"073",
					x"36" when x"074",
					x"37" when x"06c",
					x"38" when x"075",
					x"39" when x"07d",
					
					x"30" when x"f70",
					x"31" when x"f69",
					x"32" when x"f72",
					x"33" when x"f7a",
					x"34" when x"f6b",
					x"35" when x"f73",
					x"36" when x"f74",
					x"37" when x"f6c",
					x"38" when x"f75",
					x"39" when x"f7d",
					
					x"00" when others;
end struct;
		