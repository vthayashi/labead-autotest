-- VHDL de um somador completo de 1 bit

library ieee;
use ieee.std_logic_1164.all;

entity somador1bit is
    port (
        A	 : in  std_logic;
		  B	 : in  std_logic;
		  cin	 : in  std_logic;
        Y	 : out std_logic;
		  cout : out std_logic
    );
end somador1bit;

architecture estrutural of somador1bit is
begin
	Y <= A xor B xor Cin;
	cout <= (A and B) or (cin and A) or (cin and B);
end estrutural;