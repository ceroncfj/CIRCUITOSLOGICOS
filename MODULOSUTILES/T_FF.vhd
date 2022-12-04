--*****************FLIPFLOP T**************************

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity T_FF is
port( 	T,Clock: in std_logic;
			Q: out std_logic);
end T_FF;
 
architecture Behavioral of T_FF is
	signal tmp: std_logic;
begin
	process (CLOCK)
	begin
		if (rising_edge(CLOCK)) then
			if T='0' then tmp <= tmp;
			elsif T='1' then tmp <= not (tmp);
			end if;
		end if;
	end process;
	Q <= tmp;
end Behavioral;