-- Práctica 5 señales ejercicio 1
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity practica5 is port(
	clk50M: in std_logic;
	ledout: out std_logic_vector(7 downto 0)-- Para los led de salida
);
end practica5;

architecture topLevel of practica5 is
	component clkdiv is port(
			clk50M: in std_logic;
			clkout: out std_logic; 
			dividir,wcycle: in integer);
	end component;
	
	signal clkNHZ: std_logic;
	signal contador: std_logic_vector(7 downto 0):=x"00";
	signal dividir, wcycle: integer;

begin
	u1: clkdiv port map (clk50M=>clk50M, clkout=>clkNHZ, dividir=>dividir, wcycle=>wcycle);
	process(clkNHZ) begin
			dividir<=5000000; wcycle<= 2500000;
			if (rising_edge(clkNHZ)) then contador<=contador + 1; end if;
	end process;
	ledout<=contador;

end topLevel;









