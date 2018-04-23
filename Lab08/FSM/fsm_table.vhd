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
		ELSE
			CASE y IS
				WHEN A =>
					IF w = '0' THEN
						y <= C;
					ELSE
						y <= B;
					END IF;
				WHEN B =>
					IF w = '0' THEN
						y <= D;
					ELSE
						Y <= C;
					END IF;
				WHEN C =>
					IF w = '0' THEN
						y <= B;
					ELSE
						Y <= C;
					END IF;
				WHEN D =>
					IF w = '0' THEN
						y <= A;
					ELSE
						Y <= C;
					END IF;
			END CASE;
		END IF;
	END PROCESS;
	
	PROCESS (y, w)
	BEGIN
		CASE y IS
			WHEN A =>
				z <= '1';
			WHEN B =>
				IF w = '0' THEN
					z <= '1';
				ELSE
					z <= '0';
				END IF;
			WHEN C =>
				z <= '0';
			WHEN D =>
				IF w = '0' THEN
					z <= '0';
				ELSE
					z <= '1';
				END IF;
		END CASE;
	END PROCESS;
 
 
 end structural;