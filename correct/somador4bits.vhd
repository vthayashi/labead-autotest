-- VHDL de um somador de 4 bits

library ieee;
use ieee.std_logic_1164.all;

entity somador4bits is
    port (
        A	 : in  std_logic_vector(3 downto 0);						
		  B	 : in  std_logic_vector(3 downto 0);						
		  cin	 : in  std_logic;
        Y	 : out std_logic_vector(3 downto 0);
		  cout : out std_logic
    );
end somador4bits;

architecture comportamental of somador4bits is

	component somador1bit is
		 port (
			  A	 : in  std_logic;
			  B	 : in  std_logic;
			  cin	 : in  std_logic;
			  Y	 : out std_logic;
			  cout : out std_logic
		 );
	end component;

	signal cout0: std_logic;
	signal cout1: std_logic;
	signal cout2: std_logic;
	
begin
	s0: somador1bit port map(A(0), B(0), cin,   Y(0), cout0);
	s1: somador1bit port map(A(1), B(1), cout0, Y(1), cout1);
	s2: somador1bit port map(A(2), B(2), cout1, Y(2), cout2);
	s3: somador1bit port map(A(3), B(3), cout2, Y(3), cout);
end comportamental;