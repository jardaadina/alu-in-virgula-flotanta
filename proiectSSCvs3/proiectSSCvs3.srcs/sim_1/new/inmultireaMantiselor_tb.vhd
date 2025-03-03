library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity inmultireaMantiselor_tb is
end inmultireaMantiselor_tb;

architecture testbench of inmultireaMantiselor_tb is

    signal clk: std_logic := '0';
    signal mantisa_in: std_logic_vector(47 downto 0);
    signal mantisa_out: std_logic_vector(23 downto 0);
    signal rezultat: std_logic_vector(47 downto 0);
    signal semn: std_logic := '0';
    signal enable: std_logic := '1';

    component inmultireaMantiselor is
    Port (mantisa_in: in std_logic_vector(47 downto 0);
          mantisa_out: out std_logic_vector(23 downto 0);
          rezultat: out std_logic_vector(47 downto 0);
          semn: out std_logic;
          clk: in std_logic;
          enable: in std_logic);
    end component;

begin

    uut: inmultireaMantiselor port map (
        mantisa_in => mantisa_in,
        mantisa_out => mantisa_out,
        rezultat => rezultat,
        semn => semn,
        clk => clk,
        enable => enable);

    clk_process: process
    begin
        clk <= '0';
        wait for 900 ns;
        clk <= '1';
        wait for 900 ns;
    end process;

    stim_proc: process
    begin
      enable<='1';
      mantisa_in <= "011010100001110010000000" & "110000001110010010001110";
       wait for 100 ns;
    end process;

end testbench;
