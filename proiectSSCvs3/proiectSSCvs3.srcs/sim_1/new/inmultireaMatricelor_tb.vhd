library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity inmultireaMatricelor_tb is
end inmultireaMatricelor_tb;

architecture Behavioral of inmultireaMatricelor_tb is

    signal a : std_logic_vector(23 downto 0);
    signal b : std_logic_vector(23 downto 0);
    signal rezultat : std_logic_vector(47 downto 0);

    component inmultireaMatricelor is
        Port (a : in  std_logic_vector(23 downto 0);
              b : in  std_logic_vector(23 downto 0);
              rezultat : out std_logic_vector(47 downto 0));
    end component;

begin

    uut: inmultireaMatricelor
        port map (
            a => a,
            b => b,
            rezultat => rezultat);

    stim_proc: process
    begin		
        -- Test 1: multiplicarea 3 * 2
        a <= "111111001100110011001101";  
        b <= "110101001100110011001101";
        wait for 10 ns;  

        -- Test 2: multiplicarea 5 * 10
        a <= "000000000000000000000101";  -- 5
        b <= "000000000000000000001010";  -- 10
        wait for 10 ns;

        -- Test 3: multiplicarea 100 * 25
        a <= "000000000000000001100100";  -- 100
        b <= "000000000000000000110010";  -- 25
        wait for 10 ns;

        -- Test 4: multiplicarea 255 * 255
        a <= "000000000000000011111111";  -- 255
        b <= "000000000000000011111111";  -- 255
        wait for 10 ns;

        -- Test 5: multiplicarea 0 * 10
        a <= "000000000000000000000000";  -- 0
        b <= "000000000000000000001010";  -- 10
        wait for 10 ns;

        wait;
    end process;

end Behavioral;
