-- VHDL da entidade top level

library ieee;
use ieee.std_logic_1164.all;

entity somador is
    port (
        A		: in  std_logic_vector(3 downto 0);	-- MQTT (E3 - E0)				
		  B		: in  std_logic_vector(3 downto 0);	-- MQTT (E7 - E4)
		  Yleds	: out std_logic_vector(3 downto 0);	-- Leds LEDR3-0
		  Ymqtt	: out std_logic_vector(3 downto 0);	-- MQTT (S3 - S0)
		  cleds	: out std_logic;							-- Leds LEDR4
		  cmqtt	: out std_logic							-- MQTT (S4)
    );
end somador;

architecture estrutural of somador is

	component somador4bits is
		 port (
			  A	 : in  std_logic_vector(3 downto 0);						
			  B	 : in  std_logic_vector(3 downto 0);						
			  cin	 : in  std_logic;
			  Y	 : out std_logic_vector(3 downto 0);
			  cout : out std_logic
		 );
	end component;


	signal soma		: std_logic_vector(3 downto 0);
	signal cout		: std_logic;

begin

	som: somador4bits port map(A, B, '0', soma, cout);
	Yleds <= soma;
	Ymqtt <= soma;
	cleds <= cout;
	cmqtt <= cout;
	
end estrutural;