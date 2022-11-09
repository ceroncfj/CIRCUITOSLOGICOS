library ieee;
use ieee.std_logic_1164.all;

entity practica2 is port(
	mode: in 		std_logic_vector(3 downto 0); --Selector de ejercicio
	inx:	in			std_logic_vector(9 downto 0); --Entradas push
	seg:	out		std_logic_vector(7 downto 0); --Segmentos de display
	dig:	out		std_logic_vector(3 downto 0); -- Digitos del  display
	outx:	out		std_logic_vector(3 downto 0)	-- Salidas de semáforo
);
end practica2;

architecture p2 of practica2 is 
begin
	dig<="0000";
	process(mode,inx)
	begin
		case(mode) is 
			
				
			when"1000" =>--************************  Código Gray
				case(inx) is
					when "0000000000"=> outx<="0010";
					when "0000000001"=> outx<="0110";
					when "0000000010"=> outx<="0111";
					when "0000000100"=> outx<="0101";
					when "0000001000"=> outx<="0100";
					when "0000010000"=> outx<="1100";
					when "0000100000"=> outx<="1101";
					when "0001000000"=> outx<="1111";
					when "0010000000"=> outx<="1110";
					when "0100000000"=> outx<="1010";
					when "1000000000"=> outx<="1011";
					when others=> outx<="0000";
				end case;
			when others=>				
		end case;
	end process;
end p2;



