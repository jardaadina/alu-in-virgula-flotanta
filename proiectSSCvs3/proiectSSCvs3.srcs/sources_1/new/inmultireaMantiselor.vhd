library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity inmultireaMantiselor is
  Port (mantisa_in: in std_logic_vector(47 downto 0);
        mantisa_out: out std_logic_vector(23 downto 0);
        rezultat: out std_logic_vector(47 downto 0);
        semn: out std_logic;
        clk: in std_logic; 
        enable: in std_logic);--aici
end inmultireaMantiselor;

architecture Behavioral of inmultireaMantiselor is

component inmultireaMatricelor is
Port (a:in std_logic_vector(23 downto 0);
      b:in std_logic_vector(23 downto 0);
      rezultat: out std_logic_vector(47 downto 0));
end component;

signal a,b: std_logic_vector(23 downto 0);
signal rezultat1: std_logic_vector(47 downto 0);
signal mantisa_aux: std_logic_vector(23 downto 0);
signal semn1: std_logic;

begin

a <= "1" & mantisa_in(22 downto 0);
b <= "1" & mantisa_in(46 downto 24);

inmultire: inmultireaMatricelor port map 
                        (a => a,
                         b => b, 
                         rezultat => rezultat1);
      
 semn1 <= mantisa_in(23) xor mantisa_in(47);
                                                  
process(clk, enable)
begin
if rising_edge(clk) then
 if enable = '1' then--aici
   if a(22 downto 0) = "00000000000000000000000" or b(22 downto 0)= "00000000000000000000000" then
        mantisa_out <= (others => '0');
    else
        mantisa_out <= semn1 & rezultat1(47 downto 25); 
    end if;
    end if;--aici
end if;
end process;
    rezultat <= rezultat1;
    semn <= semn1;
end Behavioral;