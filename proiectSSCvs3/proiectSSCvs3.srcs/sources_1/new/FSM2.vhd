library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM2 is
Port ( clk : in  std_logic;
       rst : in  std_logic;
       a: out std_logic_vector(31 downto 0);
       b: out std_logic_vector(31 downto 0);
       rezultat: out std_logic_vector(31 downto 0));
end FSM2;

architecture Behavioral of FSM2 is

type state_type is (IDLE, LOAD, COMPARE, SHIFT, CALCULATE, NORMALIZE, INCREMENT, OUTPUT);
signal current_state, next_state : state_type;
signal enableSumator, enableVerifica, enableIncrementeaza, enableNormalizare, enableInmultire: std_logic;

component sumatorExponenti is
 Port (exponent_a:in std_logic_vector(7 downto 0);
       exponent_b:in std_logic_vector(7 downto 0);
       rezultat: out std_logic_vector(7 downto 0);
       enable: in std_logic);
end component;

component verificaExponenti is
 Port (exp_in: in std_logic_vector(7 downto 0);
       exp_out: out std_logic_vector(7 downto 0);
       enable: in std_logic);
end component;

component incrementeazaExponent is
 Port (exp_in: in std_logic_vector(7 downto 0);
       ultimulBit: in std_logic;
       exp_out: out std_logic_vector(7 downto 0);
       enable: in std_logic);
end component;

component normalizareInmultire is
 Port (mantisa_in: in std_logic_vector(23 downto 0);
       semn_a: in std_logic;
       semn_b: in std_logic;
       ultimulBit: out std_logic;
       mantisa_out: out std_logic_vector(23 downto 0);
       enable: in std_logic);
end component;

component inmultireaMantiselor is
  Port (mantisa_in: in std_logic_vector(47 downto 0);
        mantisa_out: out std_logic_vector(23 downto 0);
        clk: in std_logic;
        enable: in std_logic);
end component;

component reg is
Port(adress : in  std_logic_vector(1 downto 0);
     dataOut : out std_logic_vector (31 downto 0));
end component;

signal data_a, data_b : std_logic_vector(31 downto 0);
signal adress_a, adress_b: std_logic_vector(1 downto 0);

signal mant_in: std_logic_vector(47 downto 0);
signal mant_b: std_logic_vector(22 downto 0);

signal sumaExponenti: std_logic_vector(7 downto 0);
signal inmultireMnatise: std_logic_vector(23 downto 0);
signal exponentVerificat: std_logic_vector(7 downto 0);
signal normalizareMantise: std_logic_vector(23 downto 0);
signal exponentIncrementat: std_logic_vector(7 downto 0);

signal ultimulBit: std_logic;

begin

primulNumar: reg port map
                 (adress => adress_a,
                  dataOut => data_a);
             
alDoileaNumar: reg port map
                 (adress => adress_b,
                  dataOut => data_b);

sumatorExponenti_map: sumatorExponenti port map 
                      (exponent_a => data_a(30 downto 23),
                       exponent_b => data_b(30 downto 23),
                       rezultat => sumaExponenti,
                       enable => enableSumator);
                      
inmultireaMantriselor_map: inmultireaMantiselor port map 
                     (mantisa_in => mant_in,
                      mantisa_out => inmultireMnatise,
                      clk => clk,
                      enable => enableInmultire);

verificaExponenti_map: verificaExponenti port map 
                    (exp_in => sumaExponenti,
                     exp_out => exponentVerificat,
                     enable => enableVerifica);


normalizareInmultire_map: normalizareInmultire port map 
                      (mantisa_in => inmultireMnatise,
                       semn_a => data_a(31),
                       semn_b => data_b(31),
                       ultimulBit => ultimulBit,
                       mantisa_out => normalizareMantise,
                       enable => enableNormalizare);
                             
incrementeazaExponent_map: incrementeazaExponent port map 
                       (exp_in => exponentVerificat,
                        ultimulBit => ultimulBit,
                        exp_out => exponentIncrementat,
                        enable => enableIncrementeaza);

process(clk, rst)
    begin
        if rst = '1' then
            current_state <= IDLE;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

process(current_state)
begin
             adress_a <= "00"; 
            adress_b <= "01";  
            a <= data_a;
            b <= data_b;
 
    case current_state is
        when IDLE =>
            next_state <= LOAD;
            enableSumator<='0';
            enableInmultire<='0';
            enableVerifica<='0';
            enableNormalizare <= '0';
            enableIncrementeaza <= '0';

        when LOAD =>

            mant_in(23) <= data_a(31); 
            mant_in(22 downto 0) <= data_a(22 downto 0); 
            mant_in(47) <= data_b(31); 
            mant_in(46 downto 24) <= data_b(22 downto 0);
            
            next_state <= COMPARE;
                        
            enableSumator<='0';
            enableInmultire<='0';
            enableVerifica<='0';
            enableNormalizare <= '0';
            enableIncrementeaza <= '0';

        when COMPARE =>
            enableSumator<='1';
            enableInmultire<='0';
            enableVerifica<='0';
            enableNormalizare <= '0';
            enableIncrementeaza <= '0';
            next_state <= SHIFT;

        when SHIFT =>
            enableSumator<='0';
            enableInmultire<='0';
            enableVerifica<='1';
            enableNormalizare <= '0';
            enableIncrementeaza <= '0';
            next_state <= CALCULATE;

        when CALCULATE =>
            enableSumator<='0';
            enableInmultire<='1';
            enableVerifica<='0';
            enableNormalizare <= '0';
            enableIncrementeaza <= '0';
            next_state <= NORMALIZE;

        when NORMALIZE =>

            enableSumator<='0';
            enableInmultire<='0';
            enableVerifica<='0';
            enableNormalizare <= '1';
            enableIncrementeaza <= '0';
            next_state <= INCREMENT;
            
        when INCREMENT =>

            enableSumator<='0';
            enableInmultire<='0';
            enableVerifica<='0';
            enableNormalizare <= '0';
            enableIncrementeaza <= '1';
            next_state <= OUTPUT;
            
        when OUTPUT =>
            rezultat <= normalizareMantise(23) & exponentIncrementat & normalizareMantise(22 downto 0);   
            next_state <= IDLE;
            enableSumator<='0';
            enableInmultire<='0';
            enableVerifica<='0';
            enableNormalizare <= '0';
            enableIncrementeaza <= '0';

        when others =>
            next_state <= IDLE;
    end case;
end process;

end Behavioral;
