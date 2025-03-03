library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity verificaExponenti is
 Port (exp_in: in std_logic_vector(7 downto 0);
       exp_out: out std_logic_vector(7 downto 0);
       enable: in std_logic);--aici
end verificaExponenti;

architecture Behavioral of verificaExponenti is

begin
process(exp_in, enable) 
begin
    if enable = '1' then--aici
        if(exp_in /= "UUUUUUUU") then    
            exp_out <= std_logic_vector(unsigned(exp_in)-127);
        end if;
        end if;--aici
    end process;

end Behavioral;