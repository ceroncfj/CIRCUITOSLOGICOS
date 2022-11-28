library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity practica5 is port(
	clk: in std_logic;
	outx: out std_logic_vector(7 downto 0)
);
end practica5;

architecture topLevel of practica5 is
	signal contador: std_logic_vector(23 downto 0):=x"000000";
begin
	process(clk) begin
	 if (rising_edge(clk)) then 
		contador<=contador + 1;
		if (contador<1000)then
		
	 end if;
	end process;
end topLevel;

