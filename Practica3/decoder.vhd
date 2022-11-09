library ieee;
use ieee.std_logic_1164.all;
entity decoder is 
port(	inx: in std_logic_vector(3 downto 0); 
		seg: out std_logic_vector(7 downto 0)
		);
end decoder;
architecture behavior of decoder is
begin
process(inx)
begin
	case(inx) is
					when x"0" => seg <=x"c0";--0
					when x"1" => seg <=x"f9";--1
					when x"2" => seg <=x"a4";--2
					when x"3" => seg <=x"b0";--3
					when x"4" => seg <=x"99";--4
					when x"5" => seg <=x"92";--5
					when x"6" => seg <=x"82";--6
					when x"7" => seg <=x"f8";--7
					when x"8" => seg <=x"80";--8
					when x"9" => seg <=x"90";--9
					when x"A" => seg <=x"88";--A
					when x"b" => seg <=x"83";--B
					when x"c" => seg <=x"c6";--C
					when x"d" => seg <=x"a1";--D
					when x"e" => seg <=x"86";--E
					when x"f" => seg <=x"8e";--F
					when others =>  seg <= x"00";--Otros casos
			end case;
end process;
end behavior;
