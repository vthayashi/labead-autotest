-- VHDL de comparador de 4 bits

library ieee;
use ieee.std_logic_1164.all;

entity comparador is
    port (
        A		: in  std_logic_vector(3 downto 0);					
		  B		: in  std_logic_vector(3 downto 0);					
        igual	: out std_logic					
    );
end comparador;

architecture comportamental of comparador is
begin
	igual <= '1' when A = B else '0';
end comportamental;