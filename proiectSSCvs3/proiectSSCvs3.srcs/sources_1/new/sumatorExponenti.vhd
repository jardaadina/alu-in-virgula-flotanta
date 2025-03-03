library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumatorExponenti is
 Port (exponent_a:in std_logic_vector(7 downto 0);
       exponent_b:in std_logic_vector(7 downto 0);
       rezultat: out std_logic_vector(7 downto 0);
       enable: in std_logic);--aici
end sumatorExponenti;

architecture Behavioral of sumatorExponenti is

component sumatorPe1Bit is
 Port (xi : in std_logic;
       yi : in std_logic;
       cIN : in std_logic;
       cOUT : out std_logic;
       si : out std_logic);
end component;

signal exp_a: std_logic_vector(7 downto 0);
signal exp_b: std_logic_vector(7 downto 0);
signal aux: std_logic_vector(7 downto 0);
signal c: std_logic_vector(7 downto 0);

begin

exp_a <= exponent_a;
exp_b <= exponent_b;

sumator0: sumatorPe1Bit port map 
          (xi => exp_a(0),
           yi => exp_b(0),
           cIN => '0',
           cOUT => c(0),
           si => aux(0));
           
sumatori: for i in 1 to 7 generate
     sumator: sumatorPe1Bit port map
              (xi => exp_a(i),
               yi => exp_b(i),
               cIN => c(i-1),
               cOUT => c(i),
               si => aux(i));

end generate;    

process(aux, enable)
begin
    if enable = '1' then--aici
    if exp_a = "00000000" or exp_b = "00000000" then
        rezultat <= "01111111";
    else
        rezultat <= aux;
    end if;   
    end if;     --aici
end process;

end Behavioral;