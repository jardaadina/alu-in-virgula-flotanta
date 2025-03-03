library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ual1 is
  Port ( a: in std_logic_vector(31 downto 0);
         b: in std_logic_vector(31 downto 0);
         diferentaExponenti: out std_logic_vector(7 downto 0);
         nrMaiMare: out std_logic;
         enable: in std_logic);
end ual1;

architecture Behavioral of ual1 is

signal exponent_a: std_logic_vector(7 downto 0);
signal exponent_b: std_logic_vector(7 downto 0);

signal mantisa_a: std_logic_vector(23 downto 0);
signal mantisa_b: std_logic_vector(23 downto 0);

signal diferenta: std_logic_vector(7 downto 0);

signal mare: std_logic;

begin

exponent_a <= a(30 downto 23);
exponent_b <= b(30 downto 23);
mantisa_a <= '1' & a(22 downto 0);
mantisa_b <= '1' & b(22 downto 0);

 process(exponent_a, exponent_b, mantisa_a, mantisa_b, enable)
 begin
 if enable = '1' then
    if unsigned(exponent_a) > unsigned(exponent_b) then
        mare <= '0';
    elsif unsigned(exponent_a) < unsigned(exponent_b) then
        mare <= '1';
    elsif unsigned(exponent_a) = unsigned(exponent_b) then
            if unsigned(mantisa_a) >= unsigned(mantisa_b) then
                 mare <= '0';
            elsif unsigned(mantisa_a) < unsigned(mantisa_b) then
                 mare <= '1';
            end if;
    end if;
    end if;
 end process;
 
    nrMaiMare <= mare;
    
 process(mare, exponent_a, exponent_b, enable)
 begin
 if enable = '1' then
    if mare = '0' then 
        diferenta <= std_logic_vector(unsigned(exponent_a) - unsigned(exponent_b));
    elsif mare= '1' then
         diferenta <= std_logic_vector(unsigned(exponent_b) - unsigned(exponent_a));
    end if;
 end if;
 end process;
 
 process(diferenta, enable)
 begin
 if enable = '1' then
    if diferenta <= "00011000" then
        diferentaExponenti <= diferenta;
    else
        diferentaExponenti <= "00011001";
    end if; 
 end if;
 end process;

end Behavioral;