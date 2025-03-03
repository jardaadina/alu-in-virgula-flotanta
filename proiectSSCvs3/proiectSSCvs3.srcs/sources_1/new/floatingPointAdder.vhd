library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity floatingPointAdder is
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
           -- exponent: out std_logic_vector(7 downto 0);
            nr: out std_logic
        );
end floatingPointAdder;

architecture Behavioral of floatingPointAdder is

component UAL1 is 
  Port ( a: in std_logic_vector(31 downto 0);
         b: in std_logic_vector(31 downto 0);
         diferentaExponenti: out std_logic_vector(7 downto 0);
         nrMaiMare: out std_logic);
      --   mantisa_a_greater: out std_logic);
end component;

component rightShifter
    Port (mantissa_in : in std_logic_vector(22 downto 0);  
          shift_amount : in std_logic_vector(7 downto 0); 
          mantissa_out : out std_logic_vector(23 downto 0)); 
end component;

component rotunjire is
    Port ( mantisa : in  STD_LOGIC_VECTOR(22 downto 0);
           rezultat : out STD_LOGIC_VECTOR(22 downto 0));
end component;

component normalizare is 
  Port ( mantisa_in : in std_logic_vector(23 downto 0); 
        exponent_in : in std_logic_vector ( 7 downto 0);
        mantisa_out : out std_logic_vector(22 downto 0); 
        exponent_out : out std_logic_vector ( 7 downto 0);
        carry_out   : in  std_logic);
end component;

component UAL2 is 
    Port ( 
        mantisa_a : in std_logic_vector(23 downto 0);
        mantisa_b : in std_logic_vector(22 downto 0);
        semn_a : in std_logic;
        semn_b : in std_logic;
        mantisa_out : out std_logic_vector(23 downto 0);
        semn_out : out std_logic;
        carry_out_shift : out std_logic;
        nrMare : in std_logic);
end component;

component reg is
Port(adress : in  std_logic_vector(1 downto 0);
     dataOut : out std_logic_vector (31 downto 0));
end component;

--semnale pentru ual1
signal exp_a_greater, exp_b_greater, exp_equal: std_logic;
signal diff: std_logic_vector(7 downto 0);
signal exponentMaiMare: std_logic_vector(7 downto 0);

--semnale pentru deplasare la dreapta
signal mantisaDeDeplasat: std_logic_vector(22 downto 0);
signal mantisaShiftata: std_logic_vector(23 downto 0);

--semnale pentru UAL2
signal mantisa2DeIntrareInALU: std_logic_vector(22 downto 0);
signal mantisaIesireUal2: std_logic_vector(23 downto 0); 
signal semnOutUal2: std_logic:='0';

--semnale pentru leftShifter
signal mantisaIesireLeftShifter: std_logic_vector(22 downto 0);
signal mantisaRotunjita: std_logic_vector(22 downto 0);
signal exponentNormalizat: std_logic_vector(7 downto 0);

--semnale pentru reg
signal data_a, data_b : std_logic_vector(31 downto 0);
signal adress_a, adress_b: std_logic_vector(1 downto 0);
signal c: std_logic;
signal mantisa_mai_mare: std_logic;
signal nrMaiMare: std_logic;

begin

adress_a<="00";
adress_b<="01";

primulNumar: reg port map
                 (adress => adress_a,
                  dataOut => data_a);
             
alDoileaNumar: reg port map
                 (adress => adress_b,
                  dataOut => data_b);

UAL1mapare:ual1 port map
          ( a => data_a,
            b => data_b,
            diferentaExponenti =>diff,
            nrMaiMare=> nrMaiMare);
           -- mantisa_a_greater=>mantisa_mai_mare);
      
deplasareDreapta: rightShifter port map
    ( mantissa_in => mantisaDeDeplasat,
      shift_amount => diff,
      mantissa_out =>mantisaShiftata);
      
UAL2mapare: UAL2 port map
    ( mantisa_a => mantisaShiftata,
      mantisa_b => mantisa2DeIntrareInALU,
      semn_a => data_a(31),
      semn_b => data_b(31),
      mantisa_out => mantisaIesireUal2,
      semn_out => semnOutUal2,
      carry_out_shift => c,
      nrMare => nrMaiMare);
    
normalizareMapare: normalizare port map
      ( mantisa_in => mantisaIesireUal2,
        exponent_in => exponentMaiMare,
        mantisa_out => mantisaIesireLeftShifter,
        exponent_out => exponentNormalizat,
        carry_out =>c); 
        
rotunjireMapare: rotunjire port map
     ( mantisa => mantisaIesireLeftShifter,
       rezultat => mantisaRotunjita);
         
   process(nrMaiMare, mantisa_mai_mare)
   begin   
    if nrMaiMare = '1'  then 
            mantisaDeDeplasat <= data_a(22 downto 0);
            mantisa2DeIntrareInALU <=data_b(22 downto 0);
            exponentMaiMare <= data_b(30 downto 23);
        elsif nrMaiMare = '0' then
            mantisaDeDeplasat <= data_b(22 downto 0);
            mantisa2DeIntrareInALU <= data_a(22 downto 0);
            exponentMaiMare <= data_a(30 downto 23);
   end if;
   end process;
   
   semn_out <= semnOutUal2;
   exponent_out <= exponentNormalizat;
   mantisa_out <= mantisaRotunjita; 
   
   rezultat <= semnOutUal2 & exponentNormalizat & mantisaRotunjita;
   
   mantisa_a <= data_a(22 downto 0);
   mantisa_b <= data_b( 22 downto 0);
   exponent_a <= data_a(30 downto 23);
   exponent_b <=data_b(30 downto 23);
   semn_a <= data_a(31);
   semn_b <= data_b(31);
   
   mantisa_shiftata <=mantisaShiftata;
   diferenta <= mantisaIesireUal2;
   --exponent <= exponentMaiMare;
   nr <= nrMaiMare;

end Behavioral;
