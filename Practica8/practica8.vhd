library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity practica8 is port(
	clk50, en: in std_logic;
	dig:		out std_logic_vector(3 downto 0);
	seg:		out std_logic_vector(7 downto 0)
);
end practica8;
architecture toplevel of practica8 is 
		component clkdiv is port(
		clk50: in std_logic;
	clkout: out std_logic; 
	ENTERO: in integer --250 000
	); end component;
	
	component  decoder is 
		port(	inx: in std_logic_vector(3 downto 0); 
		seg: out std_logic_vector(7 downto 0)
		);
	end component;
	component muxdisplay is
    Port ( a,b,c,d: in std_logic_vector(7 downto 0);
				salida: out std_logic_vector(7 downto 0);
				clk:	in std_logic;
			  Anodos : out  STD_LOGIC_VECTOR (3 downto 0)
			  );  
	end component;
	component ROM is port(
			en: in std_logic;
			dir: in std_logic_vector(3 downto 0);
			salida1: out std_logic_vector(7 downto 0);
			salida2: out std_logic_vector(7 downto 0);
			salida3: out std_logic_vector(7 downto 0);
			salida4: out std_logic_vector(7 downto 0)
	);
	end component;
	signal clk200: std_logic;
	signal clk1: std_logic;
	signal a,b,c,d: std_LOGIC_VECTOR(7 downto 0);
	signal contador: std_logic_vector(3 downto 0):= x"0";
begin
	u1: clkdiv port map (clk50=>clk50, clkout=> clk200, ENTERO=> 125000);-- Para los dígitos
	u2: clkdiv port map (clk50=>clk50, clkout=> clk1, ENTERO=> 100000000);-- Para las letras
	u3: ROM		port map(en=>en,dir=>contador, salida1=>a,salida2=>b,salida3=>c,salida4=>d);
	u4: muxdisplay port map (a=>not a,b=>not b,c=>not c,d=>not d, salida=> seg, clk=>clk200, anodos=>dig);
	
	process(clk1) begin
		if rising_edge(clk1) then contador<=contador+1; end if;
	end process;
end toplevel;

