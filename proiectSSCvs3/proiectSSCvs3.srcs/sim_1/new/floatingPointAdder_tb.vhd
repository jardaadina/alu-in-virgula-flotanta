library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity floatingPointAdder_tb is
end floatingPointAdder_tb;

architecture Behavioral of floatingPointAdder_tb is

    component floatingPointAdder
        Port (
            mantisa_a    : out std_logic_vector(22 downto 0);
            mantisa_b    : out std_logic_vector(22 downto 0);
            exponent_a   : out std_logic_vector(7 downto 0);
            exponent_b   : out std_logic_vector(7 downto 0);
            semn_a       : out std_logic;
            semn_b       : out std_logic;
            mantisa_out  : out std_logic_vector(22 downto 0);
            exponent_out : out std_logic_vector(7 downto 0);
            semn_out     : out std_logic;
            rezultat: out std_logic_vector(31 downto 0);
            mantisa_shiftata: out std_logic_vector(23 downto 0);
            diferenta: out std_logic_vector(23 downto 0);
            nr: out std_logic
);
    end component;

    signal mantisa_a_tb    : std_logic_vector(22 downto 0) := (others => '0');
    signal diferenta, mantisa_shiftata   : std_logic_vector(23 downto 0) := (others => '0');
    signal mantisa_b_tb    : std_logic_vector(22 downto 0) := (others => '0');
    signal exponent_a_tb   : std_logic_vector(7 downto 0) := (others => '0');
    signal exponent_b_tb   : std_logic_vector(7 downto 0) := (others => '0');
    signal semn_a_tb       : std_logic := '0';
    signal semn_b_tb       : std_logic := '0';
    signal mantisa_out_tb  : std_logic_vector(22 downto 0);
    signal exponent_out_tb : std_logic_vector(7 downto 0);
    signal semn_out_tb, nrMaiMare    : std_logic;
    signal rezultat  : std_logic_vector(31 downto 0);

    signal clk             : std_logic := '0';

begin

    uut: floatingPointAdder
        port map (
            mantisa_a    => mantisa_a_tb,
            mantisa_b    => mantisa_b_tb,
            exponent_a   => exponent_a_tb,
            exponent_b   => exponent_b_tb,
            semn_a       => semn_a_tb,
            semn_b       => semn_b_tb,
            mantisa_out  => mantisa_out_tb,
            exponent_out => exponent_out_tb,
            semn_out     => semn_out_tb,
            rezultat =>rezultat,
            mantisa_shiftata => mantisa_shiftata,
            diferenta =>diferenta,
            nr => nrMaiMare
        );

    clk_process: process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

  

end Behavioral;
