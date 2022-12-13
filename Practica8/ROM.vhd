library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity ROM is port(
			en: in std_logic;
			dir: in std_logic_vector(3 downto 0);
			salida1: out std_logic_vector(7 downto 0);
			salida2: out std_logic_vector(7 downto 0);
			salida3: out std_logic_vector(7 downto 0);
			salida4: out std_logic_vector(7 downto 0)
);
end ROM;
architecture behavior of ROM is 
		type REGISTROS is array (0 to 15) of std_logic_vector(7 downto 0);
		constant datos: REGISTROS :=( 
			"01101101","01110111","00111001","00111001",
			x"00","01110111","00111110","01110111",
		   "00111001",x"00","01011110","00111001",
			"01010000",x"00",x"00",x"00"	
		);
begin
	process(en, dir) begin
		if en='0' then salida1<=x"00";salida2<=x"00";salida3<=x"00";salida4<=x"00";
		else
			salida1<=datos(conv_integer(dir));
			salida2<=datos(conv_integer(dir)+1);
			salida3<=datos(conv_integer(dir)+2);
			salida4<=datos(conv_integer(dir)+3);
		end if;
	end process;
end behavior;
