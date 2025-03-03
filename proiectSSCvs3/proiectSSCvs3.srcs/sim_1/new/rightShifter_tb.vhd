library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rightShifter_tb is
end rightShifter_tb;

architecture Behavioral of rightShifter_tb is
    signal mantissa_in : std_logic_vector(22 downto 0);
    signal shift_amount : std_logic_vector(7 downto 0);
    signal mantissa_out : std_logic_vector(23 downto 0);

    component rightShifter
        Port (
            mantissa_in : in std_logic_vector(22 downto 0);
            shift_amount : in std_logic_vector(7 downto 0);
            mantissa_out : out std_logic_vector(23 downto 0)
        );
    end component;

begin
    uut: rightShifter
        Port map (
            mantissa_in => mantissa_in,
            shift_amount => shift_amount,
            mantissa_out => mantissa_out
        );

    stimulus: process
    begin
        mantissa_in <= "10000000000000000000000"; -- 1
        shift_amount <= "00000001"; -- 0
        wait for 10 ns;

        mantissa_in <= "00000000000000000000010"; -- 2
        shift_amount <= "00000001"; -- 1
        wait for 10 ns;

        mantissa_in <= "10000000000000000000000"; -- o valoare mare
        shift_amount <= "00000101"; -- 5
        wait for 10 ns;

        mantissa_in <= "11111111111111111111111"; -- valoare maxim?
        shift_amount <= "00011000"; -- 24 (mai mare decât dimensiunea mantisei)
        wait for 10 ns;

        mantissa_in <= "01111111111111111111111"; -- 0.5 în format normalizat
        shift_amount <= "00001000"; -- 8
        wait for 10 ns;

        wait;
    end process;

end Behavioral;
