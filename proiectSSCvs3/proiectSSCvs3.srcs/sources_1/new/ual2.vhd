library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UAL2 is
    Port ( 
        mantisa_a : in std_logic_vector(23 downto 0);
        mantisa_b : in std_logic_vector(22 downto 0);
        semn_a : in std_logic;
        semn_b : in std_logic;
        mantisa_out : out std_logic_vector(23 downto 0);
        semn_out : out std_logic;
        carry_out_shift : out std_logic;
        nrMare : in std_logic;
        aluCTRL: in std_logic;
        enable: in std_logic);
end UAL2;

architecture Behavioral of UAL2 is

    signal carry_out_adunare : std_logic;
    signal carry_out_scadere : std_logic;
    signal suma_mantisa : std_logic_vector(23 downto 0);
    signal diferenta_mantisa : std_logic_vector(23 downto 0);
    signal diferenta_mantisa2 : std_logic_vector(23 downto 0);

    signal mantisa_a_aux : std_logic_vector(23 downto 0);
    signal mantisa_b_aux : std_logic_vector(23 downto 0);

    component sumatorMantise is
        Port (
            xi : in std_logic_vector(23 downto 0);
            yi : in std_logic_vector(23 downto 0);
            cIN : in std_logic;
            cOUT : out std_logic;
            suma : out std_logic_vector(23 downto 0)
        );
    end component;

    component scazatorMantise is
        Port (
            xi : in std_logic_vector(23 downto 0);
            yi : in std_logic_vector(23 downto 0);
            cIN : in std_logic;
            cOUT : out std_logic;
            suma : out std_logic_vector(23 downto 0)
        );
    end component;

begin

    mantisa_a_aux <= mantisa_a;
    mantisa_b_aux <= '1' & mantisa_b; 
    
    sumator: sumatorMantise
        port map (
            xi => mantisa_a_aux,
            yi => mantisa_b_aux,
            cIN => '0',
            cOUT => carry_out_adunare,
            suma => suma_mantisa
        );

    scazator: scazatorMantise
        port map (
            xi => mantisa_b_aux,
            yi => mantisa_a_aux,
            cIN => '0',
            cOUT => carry_out_scadere,
            suma => diferenta_mantisa
        );

    process(semn_a, semn_b, suma_mantisa, diferenta_mantisa, carry_out_adunare, nrMare, enable)
    begin
            
    if aluCTRL='1' then
        if enable='1' then
            if carry_out_adunare = '1' then
                mantisa_out <= suma_mantisa;
                carry_out_shift <= '1';
            else
                mantisa_out <= suma_mantisa;
                carry_out_shift <= '0';
            end if;
            end if;
            semn_out <= semn_a;

        elsif aluCTRL = '0' then
            if enable = '1' then
            if nrMare = '0' then
                mantisa_out <= diferenta_mantisa;
                semn_out <= semn_a;
            elsif nrMare = '1' then
                mantisa_out <= diferenta_mantisa;
                semn_out <= semn_b;
            end if;
        end if;
        end if;
    end process;

end Behavioral;
