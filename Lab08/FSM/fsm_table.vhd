library ieee;
use ieee.std_logic_1164.all;

entity fsm_table is
    port (
      clock : in  std_logic;
      reset : in  std_logic;
      w     : in  std_logic;
      z     : out std_logic
    );
 end fsm_table;
 
 architecture structural of fsm_table is
 
	TYPE State_type IS (A, B, C, D);
	
	SIGNAL y : State_type := A;
 
 begin
 
	PROCESS 
	BEGIN
	WAIT UNTIL (clock'event and clock = '1');
		IF (reset = '1') THEN
			y <= A;
			z <= '0';
		ELSE 
			CASE y IS
				WHEN A =>
					IF w = '0' THEN
						y <= C;
					ELSE
						y <= B;
					END IF;
					z <= '1';
				WHEN B =>
					IF w = '0' THEN
						y <= D;
						z <= '1';
					ELSE
						Y <= C;
						z <= '0';
					END IF;
				WHEN C =>
					IF w = '0' THEN
						y <= B;
					ELSE
						Y <= C;
					END IF;
					z <= '0';
				WHEN D =>
					IF w = '0' THEN
						y <= A;
						z <= '0';
					ELSE
						Y <= C;
						z <= '1';
					END IF;
			END CASE;
		END IF;
	END PROCESS;
 
 
 end structural;