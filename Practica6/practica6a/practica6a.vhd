-- Práctica 6 flipflops
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity practica6a is port(
	CLOCK,A,B:	IN STD_logic; -- 50MHZ
	Q: out std_logic_vector(3 downto 0)
);
end practica6a;
architecture toplevel of practica6a is 
	component SR_FF is port(S,R,CLOCK: in std_logic;Q: out std_logic); end component;
	component JK_FF is port(J,K,CLOCK: in std_logic;Q: out std_logic);end component;
	component T_FF is port(T: in std_logic; CLOCK: in std_logic;Q: out std_logic);end component;
	component D_FF is port(D,CLOCK: in std_logic;Q: out std_logic);end component;
	component clkdiv is port(clk50M: in std_logic;clkout: out std_logic);end component;
	signal CLOCKDIV: std_logic;
begin
	clk:	clkdiv port map (clk50M=>CLOCK, clkout=> CLOCKDIV);
	sr:	SR_FF port map (S=>A, R=>B,CLOCK=>CLOCKDIV,Q=>Q(0));
	jk:	JK_FF port map (J=>A,K=>B,CLOCK=>CLOCKDIV,Q=>Q(1));
	t:		T_FF 	port map (T=>A,CLOCK=>CLOCKDIV,Q=>Q(2));
	d:		D_FF 	port map (D=>A,CLOCK=>CLOCKDIV,Q=>Q(3));
end toplevel;

