library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity incrementeazaExponent_tb is
end incrementeazaExponent_tb;

architecture Behavioral of incrementeazaExponent_tb is

    component incrementeazaExponent
        Port (exp_in : in std_logic_vector(7 downto 0);
              ultimulBit : in std_logic;
              exp_out : out std_logic_vector(7 downto 0));
    end component;

    signal exp_in : std_logic_vector(7 downto 0) := (others => '0');
    signal ultimulBit : std_logic := '0';
    signal exp_out : std_logic_vector(7 downto 0);

begin

    uut: incrementeazaExponent port map 
    (exp_in => exp_in,
     ultimulBit => ultimulBit,
     exp_out => exp_out);

    stim_proc: process
    begin

        exp_in <= "00000000"; -- 0 in decimal
        ultimulBit <= '0';
        wait for 10 ns;


        exp_in <= "00000000"; -- 0 in decimal
        ultimulBit <= '1';
        wait for 10 ns;

        exp_in <= "00001110"; -- 14 in decimal
        ultimulBit <= '1';
        wait for 10 ns;

        exp_in <= "11111111"; -- 255 in decimal
        ultimulBit <= '1';
        wait for 10 ns;

        exp_in <= "01111111"; -- 127 in decimal
        ultimulBit <= '0';
        wait for 10 ns;

        wait;
    end process;

end Behavioral;
