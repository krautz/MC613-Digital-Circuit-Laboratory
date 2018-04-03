LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
LIBRARY altera ;
USE altera.maxplus2.all ;

package latches_ffs_pack is

	component latch_sr_nand is
		port (
			 S_n	 :   		in  std_logic;
			 R_n	 :  		in  std_logic;
			 Qa	 :       out std_logic;
			 Qb 	 :       out std_logic
		);
	end component;
	
	component latch_sr_gated is
		port (
			S		 :   		in  std_logic;
			R		 :  		in  std_logic;
			Clk	 :			in  std_logic;
			Q	 	 :       out std_logic;
			Q_n 	 :       out std_logic
		);
	end component;
	
	component latch_d_gated is
		port (
			 D		 :   		in  std_logic;
			 Clk	 :			in  std_logic;
			 Q	 	 :       out std_logic;
			 Q_n 	 :       out std_logic
		);
	end component;
	
	component ff_d is
		port (
			 D		  :   in  std_logic;
			 Clk	  :	in  std_logic;
			 Q	 	  :   out std_logic;
			 Q_n 	  :	out std_logic;
			 Preset :	in std_logic;
			 Clear  :	in std_logic
		);
	end component;
	
	component ff_jk is
		port (
			 J		  :   in  std_logic;
			 K		  :   in  std_logic;
			 Clk	  :	in  std_logic;
			 Q	 	  :   out std_logic;
			 Q_n 	  :	out std_logic;
			 Preset :	in std_logic;
			 Clear  :	in std_logic
		);
	end component;
	
	component ff_t is
		port (
			 T		  :   in  std_logic;
			 Clk	  :	in  std_logic;
			 Q	 	  :   out std_logic;
			 Q_n 	  :	out std_logic;
			 Preset :	in std_logic;
			 Clear  :	in std_logic
		);
	end component;
end latches_ffs_pack;
