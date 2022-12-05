library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity countupdown is port(
		pulsos,mode,rst: 	in std_logic;
		cuenta:	out std_logic_vector(7 downto 0)
);
end countupdown;
architecture behavior of countupdown is 
	signal contador: std_logic_vector(7 downto 0):= "00000000";
begin
	process(pulsos) begin
		 if (rising_edge(pulsos)) then 
				if (rst='1' or contador="00010000") then 
					contador<="00000000";
				else	
					contador<=contador + 1;
				end if;
		 end if;
	end process;
	cuenta<=contador;
end behavior;