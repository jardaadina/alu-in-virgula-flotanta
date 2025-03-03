library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumatorPe1Bit is
    Port (
        xi : in std_logic;
        yi : in std_logic;
        cIN : in std_logic;
        cOUT : out std_logic;
        si : out std_logic
    );
end sumatorPe1Bit;

architecture Behavioral of sumatorPe1Bit is

begin
    process(xi, yi, cIN)
    begin
 
        si <= (xi xor yi) xor cIN;
        cOUT <= (xi and yi) or ((xi xor yi) and cIN);
        
    end process;

end Behavioral;
