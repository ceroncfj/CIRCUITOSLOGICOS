library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity circuitoCombinatorio is
    port(
            A: in std_logic;
            B: out std_logic
    );
end circuitoCombinatorio;

architecture Behavioral of circuitoCombinatorio is
begin
    B<= A;
end Behavioral;
