--***************************TOP LEVEL**************
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity practica4 is 
port(
	A,B:		in std_logic_vector(2 downto 0);
	C:			out std_logic_vector(2 downto 0);
	mode: 	in std_logic; -- Selector ejercicios
	sel: 		in std_logic_vector(2 downto 0);-- Selector de operación
	seg:		out std_logic_vector(7 downto 0)-- Dato a display
);
end practica4;

architecture topLevel of practica4 is
	signal result: std_logic_vector(5 downto 0);
	signal sumres: std_logic_vector(2 downto 0);
	signal indeco: std_logic_vector(3 downto 0);
	component decoder is port(	inx: in std_logic_vector(3 downto 0);seg: out std_logic_vector(7 downto 0));
end component;
begin
	process(A,B,mode,sel) begin
		if(mode='1') then -- **********SUMADOR/RESTADOR
			case(sel) is
				when "111" =>
					sumres<= (A+B);
					
				when "110" =>
					sumres<= (A-B);
					when others =>
					sumres<="000";
			end case;
		else -- ***************************ALU
			case(sel) is
				when "111"=> C<= A;
				when "110"=>
					C<= A AND B;
				when "101"=>
					C<= A OR B;
				when "100"=>
					C<= NOT A;
				when "011"=>
					C<= A + B;
				when "010"=>
					C<= NOT B;
				when "001"=>
					C<= A-B;
				when others =>
					result<= std_logic_vector(unsigned(A) * unsigned(B));
					c<=result (2 downto 0);
			end case;
		end if;
	end process;
	indeco<= '0'& sumres;
	u1:	decoder port map(inx=>indeco,seg=>seg);
end topLevel;

--*********************DECODER***************

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

