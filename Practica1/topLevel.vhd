library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity topLevel is port(
		sel:								in 	std_logic_vector(3 downto 0); -- Selector de programas
		a0,b0,c0,d0,x0,y0,z0,w0: 	in 	std_logic;
		out1,out2:						out	std_logic --out1=: expresión original out2=: expresión simplificada
);
end topLevel;

architecture practica of topLevel is
begin
	process(sel)
	begin
		case sel is
			when "0000" => --Ejercicio 1		
				out1<= not(x0 and y0 and z0) or (not y0 and ((not x0 and z0) or (x0 or not z0)));
				out2<= not x and not y and not z;
			when "0001" => --Ejercicio 2
				out1<= not((z0 or not(not x0 and y0))and(not(y0 or w0)));
				out2<= y0 or w0;
			when "0010" => --Ejercicio 3
				out1<=not(not(x0 or y0)or (x0 and z0 and w0))and not(x0 and y0);
				out2<=(x0 or y0)and();
			when "0011"-- CI 74LS00 (nand)
				out1<= x0 nand y0;
			when "0100"=> --CI 74L04 (not)
				out1<= not x0;
			when "0101"=> --CI 74L86 (xor)
				out1<= x0 xor y1;
			when "0110"=> -- 74L10 (nand 3 entradas)
				out1<= x0 nand y0 nand z0;
			when "0111"=> --74LS21 (and 4 entradas)
				out1<= w0 and x0 and y0 and z0;
			when "1000"=> -- 74LS30 (Nand 8 entradas)
				out1<= w0 and x0 and y0 and z0 and a0 and b0 and c0 and d0;
			when others=>-- Default
				out1 <= '0';			
		end case;
	end process;
end practica;