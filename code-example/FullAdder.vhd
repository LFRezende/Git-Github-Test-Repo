-- 1BitAdder project --
library ieee;
use ieee.std_logic_1164;
-- Entity --
entity BitAdder is 
	port (A, B, Cin: in bit;
			S, Cout: out bit);
end BitAdder;
-- Architecture --
architecture combinational of BitAdder is
begin
	S <= A xor B xor Cin;
	Cout <= (A and Cin) or ((B) and (A xor Cin));
end combinational;
-----------------------------