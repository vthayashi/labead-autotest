-- VHDL da entidade top level

library ieee;
use ieee.std_logic_1164.all;

entity bug is
    port (
        A		: in  std_logic_vector(3 downto 0);	-- MQTT (E3 - E0)				
		  B		: in  std_logic_vector(3 downto 0);	-- MQTT (E7 - E4)
		  Yleds	: out std_logic_vector(3 downto 0);	-- Leds LEDR3-0
		  Ymqtt	: out std_logic_vector(3 downto 0);	-- MQTT (S3 - S0)
		  cleds	: out std_logic;							-- Leds LEDR4
		  cmqtt	: out std_logic							-- MQTT (S4)
    );
end bug;

architecture estrutural of bug is

	component somador4bits is
		 port (
			  A	 : in  std_logic_vector(3 downto 0);						
			  B	 : in  std_logic_vector(3 downto 0);						
			  cin	 : in  std_logic;
			  Y	 : out std_logic_vector(3 downto 0);
			  cout : out std_logic
		 );
	end component;

	component comparador is
		 port (
			  A		: in  std_logic_vector(3 downto 0);					
			  B		: in  std_logic_vector(3 downto 0);					
			  igual	: out std_logic					
		 );
	end component;

	signal soma		: std_logic_vector(3 downto 0);
	signal somainv	: std_logic_vector(3 downto 0);
	signal cout		: std_logic;
	signal igual1	: std_logic;
	signal igual2	: std_logic;
	signal inverte	: std_logic;
begin

	-- Soma normal
	som: somador4bits port map(A, B, '0', soma, cout);
	
	-- Logica de bug
	cp1: comparador port map(A, "0100", igual1);
	cp2: comparador port map(B, "0100", igual2);
	
	inverte <= igual1 or igual2;
	
	somainv(3) <= soma(3) xor inverte;
	somainv(2) <= soma(2) xor inverte;
	somainv(1) <= soma(1) xor inverte;
	somainv(0) <= soma(0) xor inverte;
	
	-- Atribuicao das saidas
	Yleds <= somainv;
	Ymqtt <= somainv;
	cleds <= cout;
	cmqtt <= cout;
	
end estrutural;