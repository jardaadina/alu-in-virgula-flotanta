library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM2_tb is
end FSM2_tb;

architecture Behavioral of FSM2_tb is
component FSM2 is
 Port ( clk: in  std_logic;
        rst: in  std_logic;
        a: out std_logic_vector(31 downto 0);
        b: out std_logic_vector(31 downto 0);
        rezultat: out std_logic_vector(31 downto 0));
end component;

    signal clk: std_logic := '0';
    signal rst: std_logic := '0';
    signal a: std_logic_vector(31 downto 0);
    signal b: std_logic_vector(31 downto 0);
    signal rezultat: std_logic_vector(31 downto 0);

begin
mapareFSM:FSM2 port map 
           ( clk => clk,
            rst => rst,
            a => a,
            b => b,
            rezultat => rezultat);

    clk_process: process
    begin
        clk <= '0';
        wait for 30ns;
        clk <= '1';
        wait for 30ns;
    end process;


end Behavioral;
