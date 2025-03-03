library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity scazatorMantise is
Port (xi: in std_logic_vector(23 downto 0);
      yi: in std_logic_vector(23 downto 0);
      cIN: in std_logic;
      cOUT: out std_logic;
      suma: out std_logic_vector(23 downto 0));
end scazatorMantise;

architecture Behavioral of scazatorMantise is

component sumatorPe1Bit is
    Port (
        xi : in std_logic;
        yi : in std_logic;
        cIN : in std_logic;
        cOUT : out std_logic;
        si : out std_logic
    );
end component;

signal carry: std_logic_vector(23 downto 0); 
signal yNegat: std_logic_vector(23 downto 0);

begin

yNegat<= not(yi);

scazator: sumatorPe1Bit port map 
          (xi=>xi(0),
           yi=>yNegat(0),
           cIN=>'1',
           cOUT=>carry(0),
           si=>suma(0));
         
scazatori: for i in 1 to 23 generate
            scazator: sumatorPe1Bit port map
                     (xi=>xi(i),
                      yi=>yNegat(i),
                      cIN=>carry(i-1),
                      cOUT=>carry(i),
                      si=>suma(i));

end generate;
cOUT<=not(carry(23));

end Behavioral;
