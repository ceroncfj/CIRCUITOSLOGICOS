-- Práctica 5 señales ejercicio 1
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity practica5c is port(
	clk50M: in std_logic;
	bout: out std_logic_vector(4 downto 0);-- Para los 5 led de salida
	start: in std_logic -- Botón de arranque
);
end practica5c;

architecture topLevel of practica5c is
	component clkdiv is port(clk50M: in std_logic;clkout: out std_logic); end component;
	signal clkinterno: std_logic;
	signal contador: std_logic_vector(2 downto 0):="111";
begin
	u1: clkdiv port map (clk50M=>clk50M, clkout=>clkinterno);
	process(clkinterno) begin
		if (start='0') then
			if (rising_edge(clkinterno)) then 
				if (contador =0) then
					contador<="000";
				else
					contador<=contador - 1;
				end if;
			end if;
		else 
			contador<="111"; --reset
		end if;
	
		case (contador) is
		when "111"=>
			bout<= "11111";
		when "110"=>
			bout<= "11110";
		when "101"=>
			bout<= "11100";
		when "100"=>
			bout<= "11000";
		when "011"=>
			bout<= "10000";
		when others=>
			bout<= "00000";
	end case;
	end process;

end topLevel;


--**************************DIVISOR DE RELOJ*******************
--** Por default configurado a 1HZ salida
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity clkdiv is port(
	clk50M: in std_logic;-- Ajustar dependiendo del reloj de la fpga
	clkout: out std_logic -- sólo si queremos que el reloj sea nuestra salida
);
end clkdiv;

architecture behavior of clkdiv is
	signal contador: std_logic_vector(23 downto 0):=x"000000"; -- los 24 bits nos permiten almacenar todos los pulsos generados en un segundo
begin
	process(clk50M) begin
	 if (rising_edge(clk50M)) then 
		contador<=contador + 1;
		if (contador<2500000)then -- 2.5 MHz, en realidad no importa este valor, puesto que usamos los flancos de subida
			clkout<= '1';
		elsif(contador=50000000) then-- 50MHz en hexadecimal para el divisor el periodo es de 1s
			contador<= x"000000"; -- reset a contador
		else
			clkout<= '0';
		end if;
	 end if;
	end process;
end behavior;
