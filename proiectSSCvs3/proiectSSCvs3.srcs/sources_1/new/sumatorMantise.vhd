library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumatorMantise is
Port (xi: in std_logic_vector(23 downto 0);
      yi: in std_logic_vector(23 downto 0);
      cIN: in std_logic;
      cOUT: out std_logic;
      suma: out std_logic_vector(23 downto 0));
end sumatorMantise;

architecture Behavioral of sumatorMantise is

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

begin

sumator0: sumatorPe1Bit port map 
          (xi=>xi(0),
           yi=>yi(0),
           cIN=>cIN,
           cOUT=>carry(0),
           si=>suma(0));
         
sumatori: for i in 1 to 23 generate
            sumator: sumatorPe1Bit port map
                     (xi=>xi(i),
                      yi=>yi(i),
                      cIN=>carry(i-1),
                      cOUT=>carry(i),
                      si=>suma(i));

end generate;
cOUT<=carry(23);
end Behavioral;
