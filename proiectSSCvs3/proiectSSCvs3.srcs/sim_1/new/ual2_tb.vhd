library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UAL2_tb is
end UAL2_tb;

architecture Behavioral of UAL2_tb is

    signal mantisa_a : std_logic_vector(23 downto 0) := (others => '0');
    signal mantisa_b : std_logic_vector(22 downto 0) := (others => '0');
    signal semn_a : std_logic := '0';
    signal semn_b : std_logic := '0';

    signal mantisa_out: std_logic_vector(23 downto 0);
    signal semn_out : std_logic;
    signal carry: std_logic;
    signal mantisa_a_greater: std_logic:='0';

    component UAL2 is
    Port ( 
        mantisa_a : in std_logic_vector(23 downto 0);
        mantisa_b : in std_logic_vector(22 downto 0);
        semn_a : in std_logic;
        semn_b : in std_logic;
        mantisa_out : out std_logic_vector(23 downto 0);
        semn_out : out std_logic;
        carry_out_shift : out std_logic;
        mantisa_a_greater : in std_logic);
    end component;

begin

    ual: UAL2 port map(
        mantisa_a => mantisa_a,
        mantisa_b => mantisa_b,
        semn_a => semn_a,
        semn_b => semn_b,
        mantisa_out => mantisa_out,
        semn_out => semn_out,
        carry_out_shift => carry,
        mantisa_a_greater =>mantisa_a_greater);
      

    process
    begin
        --semne egale
        mantisa_a <= "011000000000000000000000"; 
        mantisa_b <= "01000000000000000000000"; 
        semn_a <= '1';
        semn_b <= '0';
        wait for 20 ns;
        
        --mantisa_a > mantisa_b
        mantisa_a <= "000000000000000000000100";
        mantisa_b <= "00000000000000000000010";
        semn_a <= '0';
        semn_b <= '1';
        wait for 20 ns;

        --mantisa_b > mantisa_a
        mantisa_a <= "000000000000000000000010";
        mantisa_b <= "00000000000000000000100";
        semn_a <= '1';
        semn_b <= '0';
        wait for 20 ns;

        --semne opuse, adunare
        mantisa_a <= "000000000000000000000110";
        mantisa_b <= "00000000000000000000100";
        semn_a <= '0';
        semn_b <= '1';
        wait for 20 ns;

        wait;
    end process;

end Behavioral;
