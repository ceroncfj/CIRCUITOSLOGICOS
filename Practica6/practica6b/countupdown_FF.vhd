library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity countupdown_FF is port(
		pulsos,mode,rst: 	in std_logic;
		cuenta:	out std_logic_vector(5 downto 0)
);
end countupdown_FF;
architecture behavior of countupdown_FF is 
	component JK_FF is port(J,K,CLOCK,mode: in std_logic; Q: out std_logic);end component;
	signal	Q: std_logic_vector(5 downto 0):= "111111";
	signal 	modex: std_logic;
	signal 	reset: std_logic;
	
	
	signal qprueba: std_logic_vector(5 downto 0):="000000";
begin
	reset<=not rst;
	modex<=mode;
	ff1: JK_FF port map(J=>reset, K=>'1',mode=>modex, CLOCK=> pulsos, Q=>Q(0));
	ff2: JK_FF port map(J=>reset, K=>'1',mode=>modex, CLOCK=> Q(0), Q=>Q(1));
	ff3: JK_FF port map(J=>reset, K=>'1',mode=>modex, CLOCK=> Q(1), Q=>Q(2));
	ff4: JK_FF port map(J=>reset, K=>'1',mode=>modex, CLOCK=> Q(2), Q=>Q(3));
	ff5: JK_FF port map(J=>reset, K=>'1',mode=>modex, CLOCK=> Q(3), Q=>Q(4));
	ff6: JK_FF port map(J=>reset, K=>'1',mode=>modex, CLOCK=> Q(4), Q=>Q(5));
	
	cuenta<=qprueba;

end behavior;