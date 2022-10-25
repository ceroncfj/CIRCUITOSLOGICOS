library ieee;
use ieee.std_logic_1164.all;

entity topLevel is port(
		mode:		in 	std_logic_vector(3 downto 0); -- Selector de programas
		inx: 		in 	std_logic_vector(8 downto 0);	-- Entradas de CI y ejercicios
		outx:		out	std_logic_vector(5 downto 0) 	-- Salidas de CI y ejercicios
);
end topLevel;

architecture practica of topLevel is
begin
	process(mode,inx)
	begin
		case mode is
								--*****************************Ejercicios de simplificación*******************
			when "1111" => --Ejercicio 0		
				outx(0)<= not(inx(1) and inx(2) and inx(3)) or ((not inx(2)) and (((not inx(1)) and inx(3)) or (inx(1) or not (inx(3)))));
				outx(1)<= (not inx(1)) or (not inx(2)) or (not inx(3));
				outx(2) <= '0';
				outx(3) <= '0';
				outx(4) <= '0';
				outx(5) <= '0';
			when "1110" => --Ejercicio 1
				outx(0)<= not((inx(3) or not(not inx(1) and inx(2)))and(not(inx(2) or inx(0))));
				outx(1)<= inx(2) or inx(0);
				outx(2) <= '0';
				outx(3) <= '0';
				outx(4) <= '0';
				outx(5) <= '0';
			when "1101" => --Ejercicio 2************************************
				outx(0)<=not(not(inx(1) or inx(2))or (inx(2) and inx(3) and inx(0)))and not(inx(1) and inx(2));
				outx(1)<=(inx(1) or inx(2))and(not inx(2) or not inx(3) or not inx(0)) and (not inx(1) or not inx(2));
				outx(2) <= '0';
				outx(3) <= '0';
				outx(4) <= '0';
				outx(5) <= '0';
							--*****************************Compuertas lógicas*******************
			when "1100"=>										--74LS00 	(nand) Ejercicio 3
				outx(0)<= inx(0) nand inx(1);		outx(1)<= inx(2) nand inx(3);
				outx(2)<= inx(4) nand inx(5);		outx(3)<= inx(6) nand inx(7);
				outx(4) <= '0';
				outx(5) <= '0';
			when "1011"=> 										--74LS04 	(not) Ejercicio 4
				outx(0)<= not inx(0);		outx(1)<= not inx(1);		outx(2)<= not inx(2);
				outx(3)<= not inx(3);		outx(4)<= not inx(4);		outx(5)<= not inx(5);
			when "1010"=> 										--74LS86 	(xor)
				outx(0)<=inx(0) xor inx(1);		outx(1)<=inx(2) xor inx(3);
				outx(2)<=inx(4) xor inx(5);		outx(3)<=inx(6) xor inx(7);
				outx(4) <= '0';
				outx(5) <= '0';
			when "1001"=> 										--74LS10 	(nand 3 entradas)
				outx(0)<= not((inx(0)and inx(1)) and inx(2));
				outx(1)<= not((inx(3)and inx(4)) and inx(5));
				outx(2)<= not((inx(6)and inx(7)) and inx(8));
				outx(3) <= '0';
				outx(4) <= '0';
				outx(5) <= '0';
			when "1000"=> 										--74LS21 	(and 4 entradas)
				outx(0)<= inx(0) and inx(1) and inx(2) and inx(3);
				outx(1)<= inx(4) and inx(5) and inx(6) and inx(7);
				outx(2) <= '0';
				outx(3) <= '0';
				outx(4) <= '0';
				outx(5) <= '0';
			when "0111"=> 										--74LS30 	(nand 8 entradas)
				outx(0)<= not(((((((inx(0) and inx(1)) and inx(2)) and inx(3)) and inx(4)) and inx(5)) and inx(6)) and inx(7));
				outx(1) <= '0';
				outx(2) <= '0';
				outx(3) <= '0';
				outx(4) <= '0';
				outx(5) <= '0';
			when others=>-- Default
				outx <= "000000";			
		end case;
	end process;
end practica;