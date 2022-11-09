library ieee;
use ieee.std_logic_1164.all;

entity practica3 is
port(
	sel: in std_logic_vector(1 downto 0);
	ix1: in std_logic_vector(3 downto 0);
	ix2: in std_logic_vector(3 downto 0);
	ox: out std_logic_vector(2 downto 0);
	seg: out std_logic_vector(7 downto 0);
	dig: out std_logic_vector(3 downto 0)
);
end practica3;

architecture desarrollo of practica3 is
	component decoder port (binario: in std_logic_vector(3 downto 0); trans: out std_logic_vector(7 downto 0));
	end component;
begin
	process(sel, ix1, ix2)
	begin
	end process;
end desarrollo;