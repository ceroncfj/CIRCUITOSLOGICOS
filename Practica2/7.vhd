library ieee;
use ieee.std_logic_1164.all;

entity practica2 is port(
			mode:		in 	std_logic_vector(3 downto 0);
			inx: 		in		std_logic_vector(4 downto 0);-- A,B,C,D,E
			outx:		out 	std_logic_vector(3 downto 0) -- NS,¬NS,EO,¬EO
);
end practica2;

architecture behavior of practica2 is
	signal green: std_logic;
begin
	process(inx,mode)
	begin
		case(mode) is
		when "1111"=> 		--EJERCICIO 1 (SEMÁFORO)
			green<=	((not inx(0) and inx(1) and not inx(2) and not inx(3)) or 
						(inx(0) and not inx(1) and not inx(2) and not inx(3)) or 
						(inx(0) and inx(1) and not inx(2) and not inx(3)) or 
						(inx(0) and inx(1) and not inx(2) and inx(3)) or 
						(inx(0) and inx(1) and inx(2) and not inx(3)));
			outx(0)<= green;
			outx(1)<=not green;
			outx(2)<=not green;
			outx(3)<= green;
		when "1110"=> -- Ejercicio 2 (drogaaas)
			outx(0)<= 	(not inx(0) and  not inx(1) and  inx(2) and  not inx(3)) or 
							(not inx(0) and  inx(1) and  not inx(2) and  inx(3)) or 
							(not inx(0) and  inx(1) and  inx(2) and  inx(3)) or 
							(inx(0) and  not inx(1) and  not inx(2) and  not inx(3)) or 
							(inx(0) and  not inx(1) and  inx(2) and  inx(3)) or 
							(inx(0) and  inx(1) and  inx(2) and  not inx(3)) or 
							(inx(0) and  inx(1) and  inx(2) and  inx(3));
			outx(1)<='0';	outx(2)<='0';	outx(3)<='0';
			
		when "1100"=> --Ejercicio 3 (norteños)
		outx(0)<= 	(NOT INX(0) AND INX(2) AND NOT INX(3)) or 
						(NOT INX(1) AND INX(3) AND INX(4)) or 
						(NOT INX(1) AND NOT INX(2) AND INX(4)) or 
						(INX(0) AND NOT INX(3) AND NOT INX(4)) or 
						(INX(1) AND NOT INX(3) AND NOT INX(4)) or 
						(NOT INX(0) AND NOT INX(1) AND NOT INX(2) AND INX(3)) or 
						(INX(0) AND INX(1) AND INX(2) AND INX(4)) or 
						(NOT INX(0) AND NOT INX(2) AND INX(3) AND INX(4));
						
						
						
		outx(1)<='0';	outx(2)<='0';	outx(3)<='0';
		
		when "1000"=> --Ejercicio 4 (BCD)
		outx(0)<=	(not inx(0) and not inx(4)) or
						(inx(2) and inx(3) and not inx(4)) or
						(inx(0) and not inx(2) and inx(4));
					
		outx(1)<='0';	outx(2)<='0';	outx(3)<='0';
		when "0000"=> --Ejercicio 5 (DETECTOR POTENCIAS DE 2)
		outx(0)<= 	(inx(0)and not inx(1)and not inx(2)and not inx(3)) or
						(not inx(0)and inx(1)and not inx(2)and not inx(3)) or
						(not inx(0)and not inx(1)and inx(2)and not inx(3)) or
						(not inx(0)and not inx(1)and not inx(2)and inx(3));
		outx(1)<='0';	outx(2)<='0';	outx(3)<='0';
		
		when others=>
			outx<="0000";
		end case;
	end process;
end behavior;
