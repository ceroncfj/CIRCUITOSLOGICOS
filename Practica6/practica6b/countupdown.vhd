library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity countupdown is port(
		pulsos,mode,rst: 	in std_logic;
		cuenta:	out std_logic_vector(5 downto 0)
);
end countupdown;
architecture behavior of countupdown is 
	signal contador: std_logic_vector(5 downto 0):= "000000";-- con 6 bits llegamos al 64
begin
	process(pulsos) begin
		 if (rising_edge(pulsos)) then 
			if (mode='0') then
				if (rst='0') then 
					contador<="000000";
				else
					if (contador="111111")then 
					else contador<=contador + 1;
					end if;
				end if;
			else
				if (rst='0') then 
					contador<="111111";
				else
					if (contador="000000")then 
					else contador<=contador - 1;
					end if;
				end if;
			end if;
		 end if;
	end process;
	cuenta<=contador;
end behavior;