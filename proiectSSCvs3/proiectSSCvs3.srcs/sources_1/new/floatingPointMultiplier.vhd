library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity floatingPointMultiplier is
Port ( a: out std_logic_vector(31 downto 0);
       b: out std_logic_vector(31 downto 0);
       produs: out std_logic_vector(31 downto 0);
       clk: in std_logic);
end floatingPointMultiplier;

architecture Behavioral of floatingPointMultiplier is

component sumatorExponenti is
 Port (exponent_a:in std_logic_vector(7 downto 0);
       exponent_b:in std_logic_vector(7 downto 0);
       rezultat: out std_logic_vector(7 downto 0));
end component;

component verificaExponenti is
 Port (exp_in: in std_logic_vector(7 downto 0);
       exp_out: out std_logic_vector(7 downto 0));
end component;

component incrementeazaExponent is
 Port (exp_in: in std_logic_vector(7 downto 0);
       ultimulBit: in std_logic;
       exp_out: out std_logic_vector(7 downto 0));
end component;

component normalizareInmultire is
 Port (mantisa_in: in std_logic_vector(23 downto 0);
       semn_a: in std_logic;
       semn_b: in std_logic;
       ultimulBit: out std_logic;
       mantisa_out: out std_logic_vector(23 downto 0));
end component;

component inmultireaMantiselor is
  Port (mantisa_in: in std_logic_vector(47 downto 0);
        mantisa_out: out std_logic_vector(23 downto 0);
        clk: in std_logic);
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

adress_a<="00";
adress_b<="01";

mant_in(23) <= data_a(31); 
mant_in(22 downto 0) <= data_a(22 downto 0); 
mant_in(47) <= data_b(31); 
mant_in(46 downto 24) <= data_b(22 downto 0); 


primulNumar: reg port map
                 (adress => adress_a,
                  dataOut => data_a);
             
alDoileaNumar: reg port map
                 (adress => adress_b,
                  dataOut => data_b);

sumatorExponenti_map: sumatorExponenti port map 
                      (exponent_a => data_a(30 downto 23),
                       exponent_b => data_b(30 downto 23),
                       rezultat => sumaExponenti);
                      
inmultireaMantriselor_map: inmultireaMantiselor port map 
                     (mantisa_in => mant_in,
                      mantisa_out => inmultireMnatise,
                      clk => clk);

verificaExponenti_map: verificaExponenti port map 
                    (exp_in => sumaExponenti,
                     exp_out => exponentVerificat);


normalizareInmultire_map: normalizareInmultire port map 
                      (mantisa_in => inmultireMnatise,
                       semn_a => data_a(31),
                       semn_b => data_b(31),
                       ultimulBit => ultimulBit,
                       mantisa_out => normalizareMantise);
                             
incrementeazaExponent_map: incrementeazaExponent port map 
                       (exp_in => exponentVerificat,
                        ultimulBit => ultimulBit,
                        exp_out => exponentIncrementat);

produs(31) <= normalizareMantise(23);
produs(30 downto 23) <= exponentIncrementat;
produs(22 downto 0) <= normalizareMantise(22 downto 0);

a <= data_a;
b <= data_b;
end Behavioral;