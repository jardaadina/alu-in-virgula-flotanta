library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ual1_tb is
end ual1_tb;

architecture Behavioral of ual1_tb is
    
component ual1 is
  Port ( a: in std_logic_vector(31 downto 0);
         b: in std_logic_vector(31 downto 0);
         diferentaExponenti: out std_logic_vector(7 downto 0);
         nrMaiMare: out std_logic);
    end component;
    
    signal a : std_logic_vector(31 downto 0);
    signal b : std_logic_vector(31 downto 0);
    signal diferentaExponenti : std_logic_vector(7 downto 0);
    signal nrMaiMare : std_logic;
    
   
begin

    ual1_tb: ual1 port map(
             a => a, 
             b => b,
             diferentaExponenti => diferentaExponenti,
             nrMaiMare => nrMaiMare);
    
    process 
    begin 
    --mare='0' si diferenta="00000000" 00
     a <= "00000000100000000000000000001111"; 
     b <= "00000000100000000000000000001111";  
     wait for 10ns; 
     
     --mare='0' si diferenta="00000010" 02
     a <= "00000001100000000000000000001111"; 
     b <= "00000000100000000000000000001111";  
     wait for 10ns; 
     
     --mare='1' si diferenta="00001010" 0A
     a <= "00000000100000000000000000001111"; 
     b <= "00000101100000000000000000001111";  
     wait for 10ns; 
 
    wait;
    end process;
end Behavioral;