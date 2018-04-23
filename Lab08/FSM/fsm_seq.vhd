library ieee;
use ieee.std_logic_1164.all;

entity fsm_seq is
     port (
      clock : in  std_logic;
      reset : in  std_logic;
      w     : in  std_logic;
      z     : out std_logic
    );
 end fsm_seq;
 
 architecture structural of fsm_seq is
 
	TYPE State_type IS (A, B, C, D, E);
	
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
						y <= B;
					ELSE
						y <= A;
					END IF;
				WHEN B =>
					IF w = '0' THEN
						y <= B;
					ELSE
						Y <= C;
					END IF;
				WHEN C =>
					IF w = '0' THEN
						y <= D;
					ELSE
						Y <= A;
					END IF;
				WHEN D =>
					IF w = '0' THEN
						y <= B;
					ELSE
						Y <= E;
					END IF;
				WHEN E =>
					IF w = '0' THEN
						y <= D;
					ELSE
						y <= A;
					END IF;
			END CASE;
		END IF;
	END PROCESS;
			
	z <= '1' WHEN y = E ELSE '0';
	
 end structural;