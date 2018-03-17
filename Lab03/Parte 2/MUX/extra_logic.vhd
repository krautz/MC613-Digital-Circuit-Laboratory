library ieee;
use ieee.std_logic_1164.all;

entity extra_logic is
  port(w3, w2, w1, w0 : in std_logic;
       y3, y2, y1, y0 : in std_logic;
       f : out std_logic);
end extra_logic;

architecture rtl of extra_logic is
SIGNAL vec: STD_LOGIC_VECTOR(3 DOWNTO 0) ;
begin
  vec (0) <= w0 and y0;
  vec (1) <= w1 and y1;
  vec (2) <= w2 and y2;
  vec (3) <= w3 and y3;
  f <= vec (0) or vec (1) or vec (2) or vec (3);
end rtl;

