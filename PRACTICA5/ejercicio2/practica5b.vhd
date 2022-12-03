library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity practica5b is port(
	clk50M: in std_logic;
	rout,gout,bout: out std_logic_vector(2 downto 0);
	rin,gin, bin: 	in std_logic_vector(2 downto 0)
);
end practica5b;

architecture topLevel of practica5b is
	component clkdiv is port(clk50M: in std_logic;clkout: out std_logic;wcycle: in integer); end component;
	signal clkinterno: std_logic;
	signal contador: std_logic_vector(7 downto 0):=x"00";
	signal wcycle_r,wcycle_g,wcycle_b: integer;
begin
	r: 	clkdiv port map (clk50M=>clk50M, clkout=>clkinterno, wcycle=>wcycle_r);
	g: 	clkdiv port map (clk50M=>clk50M, clkout=>clkinterno, wcycle=>wcycle_g);
	b: 	clkdiv port map (clk50M=>clk50M, clkout=>clkinterno, wcycle=>wcycle_b);
	process(clkinterno, rin) begin --red 
			case(rin) is 
				when "000"=> wcycle_r<= 0;
				when "001"=> wcycle_r<= 125000;
				when "010"=> wcycle_r<= 187500;
				when "011"=> wcycle_r<= 25000000;
				when "100"=> wcycle_r<= 31250000;
				when "101"=> wcycle_r<= 35250000;
				when "110"=> wcycle_r<= 43750000;
				when others=> wcycle_r<= 500000;
			end case;
	end process;
	process(clkinterno, gin) begin --green
			case(gin) is 
				when "000"=> wcycle_g<= 0;
				when "001"=> wcycle_g<= 125000;
				when "010"=> wcycle_g<= 187500;
				when "011"=> wcycle_g<= 25000000;
				when "100"=> wcycle_g<= 31250000;
				when "101"=> wcycle_g<= 35250000;
				when "110"=> wcycle_g<= 43750000;
				when others=> wcycle_g<= 500000;
			end case;
	end process;
	process(clkinterno, bin) begin --blue
	
			case(bin) is 
				when "000"=> wcycle_b<= 0;
				when "001"=> wcycle_b<= 125000;
				when "010"=> wcycle_b<= 187500;
				when "011"=> wcycle_b<= 25000000;
				when "100"=> wcycle_b<= 31250000;
				when "101"=> wcycle_b<= 35250000;
				when "110"=> wcycle_b<= 43750000;
				when others=> wcycle_b<= 500000;
			end case;
	end process;
end topLevel;


--**************************DIVISOR DE RELOJ*******************
--** Por default configurado a 100HZ salida
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity clkdiv is port(
	clk50M: in std_logic;-- Ajustar dependiendo del reloj de la fpga
	clkout: out std_logic; -- sólo si queremos que el reloj sea nuestra salida
	wcycle: in integer -- ciclo de trabajo
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
		elsif(contador=500000) then-- 5MHz en hexadecimal para el divisor --x"004C4B40"
			contador<= x"000000"; -- reset a contador
		else
			clkout<= '0';
		end if;
	 end if;
	end process;
end behavior;






