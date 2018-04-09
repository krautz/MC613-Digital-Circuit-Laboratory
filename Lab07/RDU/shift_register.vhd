library ieee;
use ieee.std_logic_1164.all;

entity shift_register is
generic (N : integer := 6);
port(
    clk     : in  std_logic;
    mode    : in  std_logic_vector(1 downto 0);
    ser_in  : in  std_logic;
    par_in  : in  std_logic_vector((N - 1) downto 0);
    par_out : out std_logic_vector((N - 1) downto 0)
  );
end shift_register;

architecture rtl of shift_register is
  signal Q_buffer : std_logic_vector ((N - 1) downto 0) := (OTHERS => '0');
begin
  
  PROCESS
  BEGIN
  WAIT UNTIL clk'EVENT and clk = '1';
  if mode = "01" then
		loop1: for i in 0 to N-2 loop
			Q_buffer(i) <= Q_buffer (i + 1);
		end loop;
		Q_buffer(N-1) <= ser_in;
  elsif mode = "10" then
		loop2: for i in 1 to N-1 loop
			Q_buffer(i) <= Q_buffer (i - 1);
		end loop;
		Q_buffer(0) <= ser_in;
  elsif mode = "11" then
		loop3: for i in 0 to N-1 loop
			Q_buffer(i) <= par_in (i);
		end loop;
  end if;
  end process;
  par_out <= Q_buffer;

end rtl;
