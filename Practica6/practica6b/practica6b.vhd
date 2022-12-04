library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity practica6b is port(
	CLOCK,RST,mode:	IN STD_logic; -- 50MHZ
	seg:			out	std_logic_vector(7 downto 0);
	disp:			out	std_logic_vector(3 downto 0)
);
end practica6b;
architecture toplevel of practica6b is 
	
	component clkdiv is port (
		clk50M: in std_logic;	
		clkout: out std_logic);
	end component;
	component decoder is port (
		inx: in std_logic_vector(3 downto 0); 
		seg: out std_logic_vector(7 downto 0));
	end component;
	component bintobcd is port(
		Bin:in STD_LOGIC_VECTOR (7 downto 0);
		Cen,Dec,Uni : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;
	component muxbcd is Port (
		C,D,U : in  STD_LOGIC_VECTOR (3 downto 0); 
		Salidas : out  STD_LOGIC_VECTOR (3 downto 0);
		clk:	in std_logic;
		Anodos : out  STD_LOGIC_VECTOR (3 downto 0)); 
	end component;
	component countupdown is port(
		pulsos,mode,rst: 	in std_logic;
		cuenta:	out std_logic_vector(5 downto 0)); 
	end component;
	
	
	signal CLK10: std_logic; --Salida de divisor de reloj
	signal cuenta: std_LOGIC_VECTOR(5 downto 0);
	signal C,D,U: std_LOGIC_VECTOR (3 downto 0);
	signal inx: std_LOGIC_VECTOR(3 downto 0);
	
begin

	u1: clkdiv	port map(clk50M=> CLOCK, clkout=> CLK10);
	u2: countupdown port map(pulsos=>clk10,mode=>mode,rst=>rst,cuenta=>cuenta);
	u3: bintobcd port map(bin=> "00"&cuenta,cen=>C, dec=>D,uni=>U);
	u4: muxbcd port map (C=>C, D=>D,U=>U, salidas=>inx, clk=>CLOCK, anodos=>disp);
	u5: decoder port map(inx=> inx, seg=> seg);
	

end toplevel;