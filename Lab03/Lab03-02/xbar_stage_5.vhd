library ieee;
use ieee.std_logic_1164.all;
library xbar_gen;
use xbar_gen.xbar_gen_component.all;

entity xbar_stage_5 is
  port(SW  : in std_logic_vector (4 downto 0);
       LEDR: out std_logic_vector(0 downto 0));
end xbar_stage_5;

architecture rtl of xbar_stage_5 is
begin
	instance: 
end rtl;

