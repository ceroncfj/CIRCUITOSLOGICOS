--*********************FLIPFLOP JK***********************

library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;
 
entity JK_FF is

PORT( 	J,K,CLOCK,mode: 	in std_logic;
			Q: 					out std_logic);
end JK_FF;
 
Architecture behavioral of JK_FF is

begin

	PROCESS(CLOCK)
	variable TMP1: std_logic;
	--variable TMP2: std_logic;
	begin
		--if (mode='0') then
			if(rising_edge(CLOCK)) then
				if(J='0' and K='0')then TMP1:=TMP1;
				elsif(J='1' and K='1')then TMP1:= not TMP1;
				elsif(J='0' and K='1')then TMP1:='0';
				else TMP1:='1';
				end if;
			end if;
			Q<=TMP1;
		--elsif (mode='1') then
--			if(falling_edge(CLOCK)) then
--				if(J='0' and K='0')then TMP2:=TMP2;
--				elsif(J='1' and K='1')then TMP2:= not TMP2;
--				elsif(J='0' and K='1')then TMP2:='0';
--				else TMP2:='1';
--				end if;
--			end if;
--			Q<=TMP2;
		--end if;
	end PROCESS;
end behavioral;
