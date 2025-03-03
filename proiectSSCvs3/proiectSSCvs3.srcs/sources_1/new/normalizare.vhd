library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

entity normalizare is
  Port ( mantisa_in : in std_logic_vector(23 downto 0); 
        exponent_in : in std_logic_vector ( 7 downto 0);
        mantisa_out : out std_logic_vector(22 downto 0); 
        exponent_out : out std_logic_vector ( 7 downto 0);
        carry_out   : in  std_logic;
        enable: in std_logic);
end normalizare;

architecture Behavioral of normalizare is

begin
    process(mantisa_in, exponent_in, carry_out, enable)
    variable exp : unsigned (7 downto 0) ;
    variable mantisaTemp : unsigned(23 downto 0);
    begin
    if enable = '1' then
        exp := unsigned(exponent_in);
        mantisaTemp := unsigned(mantisa_in);
   if carry_out = '1' then
            mantisaTemp :=  mantisaTemp srl 1;
            exp := exp + 1; 
   elsif mantisaTemp(23) = '0' then 
            while mantisaTemp(23) = '0' and exp > 0 loop
               mantisaTemp:= mantisaTemp sll 1;
                exp := exp - 1;
            end loop;
        end if;
     mantisa_out <= std_logic_vector(mantisaTemp(22 downto 0));
     exponent_out <= std_logic_vector(exp);
     end if;
    end process;

end Behavioral;
