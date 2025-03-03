library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumatorExponenti_tb is
end sumatorExponenti_tb;

architecture Behavioral of sumatorExponenti_tb is

    component sumatorExponenti
        Port (exponent_a : in std_logic_vector(7 downto 0);
              exponent_b : in std_logic_vector(7 downto 0);
              rezultat : out std_logic_vector(7 downto 0);
              enable: in std_logic);
    end component;

    signal exponent_a : std_logic_vector(7 downto 0) := (others => '0');
    signal exponent_b : std_logic_vector(7 downto 0) := (others => '0');
    signal rezultat : std_logic_vector(7 downto 0);
    signal enable: std_logic;

begin

    uut: sumatorExponenti port map 
            (exponent_a => exponent_a,
             exponent_b => exponent_b,
             rezultat => rezultat,
             enable => enable);

    stim_proc: process
    begin
        enable<='1';
        exponent_a <= "00000000";
        exponent_b <= "00000000";
        wait for 10 ns;

        exponent_a <= "00000000";
        exponent_b <= "00001111";
        wait for 10 ns;

        exponent_a <= "00001111";
        exponent_b <= "00000000";
        wait for 10 ns;

        exponent_a <= "00001111";
        exponent_b <= "00001111";
        wait for 10 ns;

        exponent_a <= "11111111";
        exponent_b <= "11111111";
        wait for 10 ns;

        exponent_a <= "00000001";
        exponent_b <= "11111111";
        wait for 10 ns;

        wait;
    end process;

end Behavioral;
