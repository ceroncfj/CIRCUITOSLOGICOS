library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity practica6b is port(
	CLOCK,RST,mode:	IN STD_logic; -- 50MHZ
	seg:			out	std_logic_vector(6 downto 0);
	disp:			out	std_logic_vector(3 downto 0)
);
end practica6b;
architecture toplevel of practica6b is 
	
	component clkdiv is port (clk50M: in std_logic;	clkout: out std_logic);end component;
	component decoder is port (inx: in std_logic_vector(3 downto 0); seg: out std_logic_vector(7 downto 0));end component;
	component bintobcd is port(Bin:in STD_LOGIC_VECTOR (7 downto 0);Cen,Dec,Uni : out  STD_LOGIC_VECTOR (3 downto 0));end component;
	component muxbcd is Port ( C,D,U : in  STD_LOGIC_VECTOR (3 downto 0); Selectores : in  STD_LOGIC_VECTOR (1 downto 0); Salidas : out  STD_LOGIC_VECTOR (3 downto 0)); end component;
	
	signal CLK10: std_logic;
	signal contador: std_logic_vector(5 downto 0):= "000000";-- con 5 bits llegamos al 64
begin
	divisor: clkdiv	port map(clk50M=> CLOCK, clkout=> CLK10);
	process(CLK10) begin
	 if (rising_edge(CLK10)) then 
		if (mode='0') then
			if (contador="111111")then 
			else contador<=contador + 1;
			end if;
		else
			if (contador="000000")then 
			else contador<=contador - 1;
			end if;
		end if;
	 end if;
	end process;
	process(CLOCK) begin
	end process;
end toplevel;