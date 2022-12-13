library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity muxdisplay is
    Port ( 	a,b,c,d: in std_logic_vector(7 downto 0);
				salida: out std_logic_vector(7 downto 0);
				clk:	in std_logic;
			  Anodos : out  STD_LOGIC_VECTOR (3 downto 0)
			  );		  
end muxdisplay;

architecture Behavioral of muxdisplay is
	signal Selectores: std_LOGIC_VECTOR(1 downto 0):= "00"; -- Para selector del multiplexor(duc)al decoder
begin
	process(clk) begin
		if (rising_edge(clk)) then
			if (Selectores="11") then Selectores<="00";
			else 
			Selectores<=Selectores+1;
			end if;
		end if;
	end process;

	process (Selectores,a,b,c,d) begin
		case Selectores is
			when "00" => Anodos <= "0111"; salida<=a;
			when "01" => Anodos <= "1011";salida<=b;
			when "10" =>  Anodos <= "1101";salida<=c;
			when others => Anodos <= "1110";salida<=d;-- Se puede modificar para el cuarto anodo
		end case;
	end process;

end Behavioral;