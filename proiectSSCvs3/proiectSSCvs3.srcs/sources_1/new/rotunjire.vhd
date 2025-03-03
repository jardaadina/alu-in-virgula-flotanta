library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rotunjire is
    Port ( mantisa : in  STD_LOGIC_VECTOR(22 downto 0);
           rezultat : out STD_LOGIC_VECTOR(22 downto 0);
           enable: in std_logic);
end rotunjire;

architecture Behavioral of rotunjire is
begin
    process (mantisa, enable)
    begin
    if enable = '1' then
        if mantisa(0) = '1' then  
            rezultat <= mantisa + "00000000000000000000001";
        else
            rezultat <= mantisa; 
        end if;
    end if;
    end process;
end Behavioral;



