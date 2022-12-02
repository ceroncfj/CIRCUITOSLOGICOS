-- Práctica 5 señales 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity practica5 is port(
	clk50M: in std_logic;
	clk: out std_logic
);
end practica5;

architecture topLevel of practica5 is
	signal contador: std_logic_vector(23 downto 0):=x"000000";
begin
	process(clk50M) begin
	 if (rising_edge(clk50M)) then 
		contador<=contador + 1;
		if (contador<x"002625A0")then
			clk<= '1';
		elsif(contador=x"004C4B40") then
			contador<= x"000000";
		else
			clk<= '0';
		end if;
	 end if;
	end process;
end topLevel;


-- Práctica 5 señales 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
