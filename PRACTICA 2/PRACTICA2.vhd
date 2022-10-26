library ieee;
use ieee.std_logic_1164.all;

entity practica2 is port(
	mode: in std_logic_vector(3 downto 0); --Selector de ejercicio
	inx:	in	std_logic_vector(3 downto 0); --Entradas push
	seg:	out	std_logic_vector(7 downto 0); --Segmentos de display
	dig:	out	std_logic_vector(3 downto 0); -- Digitos del  display
	outx:	out	std_logic_vector(3 downto 0)	-- Salidas de semáforo
);
end practica2;

architecture p2 of practica2 is 
begin
	dig<="0000";
	process(mode,inx)
	begin
		case(mode) is 
			when"1111" => --***********************Semáforo***************************
				case(inx) is
				when "0000" => -- Rojo
					outx<= "0001";
				when "0001" => --Amarillo
					outx<= "0010";
				when "0010" => -- Verde 
					outx<= "0100";
				when "0011" => --Azul
					outx<= "1000";
				when others => --Otros casos
					outx<= "0000";
				end case;				
			when"1110" => --*********************** Display********************
				outx<= "0000";
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
					when x"A" => seg <="01011000";--
					when x"b" => seg <="01001100";--
					when x"c" => seg <="01100010";--
					when x"d" => seg <="01101001";--
					when x"e" => seg <="00000000";--
					when x"f" => seg <="11111111";--
					when others =>  seg <= x"00";--Otros casos
				end case;
			when"1100" =>--************************ Estéreo
				case(inx) is
					when "0000"=> outx <= "0000";
					when "0001"=> outx <= "0001";
					when "0010"=> outx <= "0010";
					when "0011"=> outx <= "0011";
					when others=>
				end case;
				
			when"1000" =>--************************  Código Gray
				case(inx) is
					when "0000"=> outx<="0000";
					when "0001"=> outx<="0001";
					when "0010"=> outx<="0011";
					when "0011"=> outx<="0010";
					when "0100"=> outx<="0110";
					when "0101"=> outx<="0111";
					when "0110"=> outx<="0101";
					when "0111"=> outx<="0100";
					when "1000"=> outx<="1100";
					when "1001"=> outx<="1101";
					when others=> 
				end case;
			when others=>				
		end case;
	end process;
end p2;



