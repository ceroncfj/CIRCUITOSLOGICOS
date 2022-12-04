library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity muxbcd is
    Port ( C,D,U : in  STD_LOGIC_VECTOR (3 downto 0);
           Selectores : in  STD_LOGIC_VECTOR (1 downto 0);
           Salidas : out  STD_LOGIC_VECTOR (3 downto 0));
end muxbcd;

architecture Behavioral of muxbcd is

begin
process (Selectores,C,D,U)
begin
   case Selectores is
      when "00" => Salidas <= C;
      when "01" => Salidas <= D;
      when "10" => Salidas <= U;
      when others => Salidas <= "0000";
   end case;
end process;

end Behavioral;