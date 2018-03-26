/* Quartus Prime Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Ign)
		Device PartName(SOCVHPS) MfrSpec(OpMask(0));
	P ActionCode(Cfg)
		Device PartName(5CSEMA5F31) Path("/home/ec2015/ra175188/MC613-Digital-Circuit-Laboratory/Lab05/Parte 1/output_files/") File("barrel_shifter.sof") MfrSpec(OpMask(1));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;
