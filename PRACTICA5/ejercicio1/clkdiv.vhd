
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity clkdiv is port(
	clk50M: in std_logic;-- Ajustar dependiendo del reloj de la fpga
	clkout: out std_logic; -- sólo si queremos que el reloj sea nuestra salida
	dividir: in integer;
	wcycle: in integer -- para dividir el ciclo de trabajo
);
end clkdiv;

architecture behavior of clkdiv is
	signal contador: std_logic_vector(23 downto 0):=x"000000"; -- los 24 bits nos permiten almacenar todos los pulsos generados en un segundo
begin
	process(clk50M) begin
	 if (rising_edge(clk50M)) then 
		contador<=contador + 1;
		if (contador<wcycle)then -- 2.5 MHz es x"002625A0"
			clkout<= '1';
		elsif(contador=dividir) then-- 5MHz en hexadecimal para el divisor --x"004C4B40"
			contador<= x"000000"; -- reset a contador
		else
			clkout<= '0';
		end if;
	 end if;
	end process;
end behavior;