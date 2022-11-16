library ieee;
use ieee.std_logic_1164.all;

entity practica4 is 
generic (N: Natural:=2);
port(
	A,B:	in std_logic_vector(2 downto 0);
	C:		out std_logic_vector(2 downto 0));
end practica4;

architecture topLevel of practica4 is
component adder is port (
	A,B:	in std_logic_vector(N downto 0);
	C:	out std_logic_vector(N downto 0));
end component;
begin
end topLevel;

--*******************CIRCUITO SUMADOR DE N BITS**************
library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity adder is 
generic (N: Natural:=2);
port(
	A,B:	in std_logic_vector(N downto 0);
	C:	out std_logic_vector(N downto 0));

end adder;
architecture behavior of adder is 
begin
	C<=A+B;
end behavior;
