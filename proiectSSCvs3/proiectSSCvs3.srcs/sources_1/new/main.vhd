library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main is
    Port ( a : out STD_LOGIC_VECTOR(31 downto 0);
           b : out STD_LOGIC_VECTOR(31 downto 0);
           clk : in STD_LOGIC;           
           rst : in STD_LOGIC;
           op : in STD_LOGIC;
           rezultatAdunare : out STD_LOGIC_VECTOR(31 downto 0);
           rezultatInmultire : out STD_LOGIC_VECTOR(31 downto 0));
end main;

architecture Behavioral of main is
component reg is
Port(adress : in  std_logic_vector(1 downto 0);
     dataOut : out std_logic_vector (31 downto 0));
end component;

component FSM is
    Port (clk: in  std_logic;
          rst: in  std_logic;
          a: out std_logic_vector(31 downto 0);
          b: out std_logic_vector(31 downto 0);
          rezultat: out std_logic_vector(31 downto 0));
end component;

component FSM2 is 
Port ( clk : in  std_logic;
       rst : in  std_logic;
       a: out std_logic_vector(31 downto 0);
       b: out std_logic_vector(31 downto 0);
       rezultat: out std_logic_vector(31 downto 0));
end component;

signal rezultat1, rezultat2: std_logic_vector(31 downto 0);
signal operatie : std_logic;
signal data_a, data_b : std_logic_vector(31 downto 0);
signal adress_a, adress_b: std_logic_vector(1 downto 0);

begin

adress_a <= "00";
adress_b <= "01";

primulNumar: reg port map
                 (adress => adress_a,
                  dataOut => data_a);
             
alDoileaNumar: reg port map
                 (adress => adress_b,
                  dataOut => data_b);

FSM_mapare: FSM port map
            (clk => clk,
             rst => rst,
             a => a,
             b => b,
             rezultat => rezultat1);
             
FSM2_mapare: FSM2 port map
            (clk => clk,
             rst => rst,
             a => a,
             b => b,
             rezultat => rezultat2);
   
 rezultatAdunare <= rezultat1 when op = '0' ;
 rezultatInmultire<=rezultat2 when op = '1'; 

end Behavioral;