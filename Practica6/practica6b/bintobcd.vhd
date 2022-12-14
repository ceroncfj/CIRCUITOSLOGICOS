library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bintobcd is
Port ( Bin : in   STD_LOGIC_VECTOR (7 downto 0);
       Cen,Dec,Uni : out  STD_LOGIC_VECTOR (3 downto 0)
		 );
end bintobcd;
architecture Behavioral of bintobcd is
begin
	process(Bin)
	variable Z: STD_LOGIC_VECTOR (19 downto 0);
	begin
		for i in 0 to 19 loop
			Z(i) := '0';
		end loop;
		Z(10 downto 3) := Bin;
		for i in 0 to 4 loop
			if Z(11 downto 8) > 4 then
				Z(11 downto 8) := Z(11 downto 8) + 3;
			end if;
			if Z(15 downto 12) > 4 then
				Z(15 downto 12) := Z(15 downto 12) + 3;
			end if;
			Z(17 downto 1) := Z(16 downto 0);
		end  loop;
		Cen <= Z(19 downto 16);
		Dec <= Z(15 downto 12);
		Uni <= Z(11 downto 8);
	end Process;
end Behavioral;