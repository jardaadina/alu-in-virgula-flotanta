library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity floatingPointMultiplier_tb is
end floatingPointMultiplier_tb;

architecture Behavioral of floatingPointMultiplier_tb is

    component floatingPointMultiplier
Port ( a: out std_logic_vector(31 downto 0);
       b: out std_logic_vector(31 downto 0);
       produs: out std_logic_vector(31 downto 0);
       clk: in std_logic);
    end component;

    signal a : std_logic_vector(31 downto 0) := (others => '0');
    signal b : std_logic_vector(31 downto 0) := (others => '0');
    signal produs : std_logic_vector(31 downto 0);
    signal clk: std_logic := '0';
begin

    uut: floatingPointMultiplier
        Port map (a => a,
                  b => b,
                  produs => produs,
                  clk => clk);
                  
    clk_process: process
    begin
        clk <= '0';
        wait for 30 ns;
        clk <= '1';
        wait for 30 ns;
    end process;

end Behavioral;
