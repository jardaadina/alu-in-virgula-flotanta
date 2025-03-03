library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity main_tb is
end main_tb;

architecture Behavioral of main_tb is

    signal a, b: std_logic_vector(31 downto 0):=(others=>'0');
    signal clk: std_logic := '0';  
    signal rst: std_logic := '0';  
    signal op: std_logic := '0';
    signal rezultatAdunare: std_logic_vector(31 downto 0);
    signal rezultatInmultire: std_logic_vector(31 downto 0);
    
    component main is
    Port ( a : out STD_LOGIC_VECTOR(31 downto 0);
           b : out STD_LOGIC_VECTOR(31 downto 0);
           clk : in STD_LOGIC;
           rst : in std_logic;
           op : in STD_LOGIC;
           rezultatAdunare : out STD_LOGIC_VECTOR(31 downto 0);
           rezultatInmultire : out STD_LOGIC_VECTOR(31 downto 0));
    end component;

begin
 op <= not op after 160ns;
 clk <= not clk after 10ns;
 
    uut: main port map (
        a => a,
        b => b,
        clk => clk,
        rst => rst,
        op => op,
        rezultatAdunare => rezultatAdunare,
        rezultatInmultire => rezultatInmultire);
    
end Behavioral;
