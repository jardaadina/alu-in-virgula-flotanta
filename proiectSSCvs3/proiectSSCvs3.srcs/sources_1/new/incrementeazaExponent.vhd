library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity incrementeazaExponent is
 Port (exp_in: in std_logic_vector(7 downto 0);
       ultimulBit: in std_logic;
       exp_out: out std_logic_vector(7 downto 0);
       enable: in std_logic);--aici
end incrementeazaExponent;

architecture Behavioral of incrementeazaExponent is
begin

process(exp_in, ultimulBit, enable)
begin
if enable = '1' then --aici
    if(ultimulBit = '1') then
        exp_out <= std_logic_vector(unsigned(exp_in) +1);
    else 
        exp_out <= exp_in;
    end if;
    end if;--aici
    end process;

end Behavioral;