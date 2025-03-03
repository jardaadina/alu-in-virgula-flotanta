library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity normalizareInmultire_tb is
end normalizareInmultire_tb;

architecture Behavioral of normalizareInmultire_tb is
    signal mantisa_in: std_logic_vector(23 downto 0);
    signal ultimulBit: std_logic;
    signal mantisa_out: std_logic_vector(23 downto 0);

    component normalizareInmultire
        Port (
            mantisa_in: in std_logic_vector(23 downto 0);
            ultimulBit: out std_logic;
            mantisa_out: out std_logic_vector(23 downto 0)
        );
    end component;

begin
    uut: normalizareInmultire
        port map (
            mantisa_in => mantisa_in,
            ultimulBit => ultimulBit,
            mantisa_out => mantisa_out
        );

    stimulus: process
    begin
        -- Test 1: Primul bit al mantisei este '0'.
        mantisa_in <= "000000010000000000000000";
        wait for 10 ns; -- A?tept?m 10 ns.

        -- Test 2: Primul bit al mantisei este '1'.
        mantisa_in <= "100000010000000000000000";
        wait for 10 ns;

        -- Test 3: Alt? valoare pentru mantisa.
        mantisa_in <= "010101010101010101010101";
        wait for 10 ns;

        -- Test 4: Valoare complet '1'.
        mantisa_in <= "111111111111111111111111";
        wait for 10 ns;

        -- Test final: Stop simulare.
        wait;
    end process;

end Behavioral;
