library ieee;
use ieee.std_logic_1164.all;

entity practica3 is
port(
	mode: in std_logic(2 downto 0);
	sel: in std_logic;
	ix1: in std_logic_vector(3 downto 0);
	ix2: in std_logic_vector(3 downto 0);
	ox: out std_logic_vector(2 downto 0);
	seg: out std_logic_vector(7 downto 0);
	dig: out std_logic_vector(3 downto 0)
);
end practica3;

architecture desarrollo of practica3 is
	component decoder port (inx: in std_logic_vector(3 downto 0); seg: out std_logic_vector(7 downto 0));
	end component;
	signal inx : std_logic_vector (3 downto 0);
	signal compare: std_logic;
begin
	process(sel, ix1, ix2, mode)
	begin
		if(ix1>ix2) then
			inx<= ix1;
		else
			inx<= ix2;
		end if;
	end process;
	u1: decoder port map(inx=> inx, seg=> seg);
	|
end desarrollo;