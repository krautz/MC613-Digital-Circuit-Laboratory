library ieee;
use ieee.std_logic_1164.all;

entity fsm_diag is
     port (
      clock : in  std_logic;
      reset : in  std_logic;
      w     : in  std_logic;
      z     : out std_logic
    );
 end fsm_diag;
 
 architecture structural of fsm_diag is
 
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
						y <= A;
					ELSE
						y <= B;
					END IF;
				WHEN B =>
					IF w = '0' THEN
						y <= C;
					ELSE
						Y <= B;
					END IF;
				WHEN C =>
					IF w = '0' THEN
						y <= C;
					ELSE
						Y <= D;
					END IF;
				WHEN D =>
					IF w = '0' THEN
						y <= A;
					ELSE
						Y <= D;
					END IF;
			END CASE;
		END IF;
	END PROCESS;
			
	z <= '1' WHEN (y = B) ELSE '0';
	
 end structural;