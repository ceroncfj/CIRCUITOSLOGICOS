-- Práctica 5 señales ejercicio 1
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity practica5 is port(
	clk50M: in std_logic;
	bout: out std_logic_vector(7 downto 0);-- Para los led de salida
	mode: in std_logic_vector(3 downto 0) -- selector de ejercicio de práctica
);
end practica5;

architecture topLevel of practica5 is
	component clkdiv is port(clk50M: in std_logic;clkout: out std_logic); end component;
	signal clkinterno: std_logic;
	signal contador: std_logic_vector(7 downto 0):=x"00";
begin
	u1: clkdiv port map (clk50M=>clk50M, clkout=>clkinterno);
	process(clkinterno) begin
			if (rising_edge(clkinterno)) then contador<=contador + 1; end if;
	end process;
end topLevel;









