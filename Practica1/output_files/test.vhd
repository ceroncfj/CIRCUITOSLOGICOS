library ieee;
use ieee.std_logic_1164.all;

entity test is port(
		s:		in			std_logic;
		o:		out		std_logic_vector(5 downto 0)	
);
end test;

architecture prueba of test is
begin
	process(s) is
	begin
		case s is
			when '1'=>
				o<="111111";
			when others=>
				o<="000000";
		end case;
	end process;

end prueba;