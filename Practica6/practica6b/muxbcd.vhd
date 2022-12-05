library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity muxbcd is
    Port ( C,D,U : in  STD_LOGIC_VECTOR (3 downto 0);
           Salidas : out  STD_LOGIC_VECTOR (3 downto 0);
			  clk:	in std_logic;
			  Anodos : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
			 
			  
end muxbcd;

architecture Behavioral of muxbcd is
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

	process (Selectores,C,D,U) begin
		case Selectores is
			when "00" => Salidas <= C; Anodos <= "1011";
			when "01" => Salidas <= D; Anodos <= "1101";
			when "10" => Salidas <= U; Anodos <= "1110";
			when others => Salidas <= "0000";Anodos <= "1111";-- Se puede modificar para el cuarto anodo
		end case;
	end process;

end Behavioral;