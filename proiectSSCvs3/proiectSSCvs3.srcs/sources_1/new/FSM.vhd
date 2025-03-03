library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM is
    Port (clk: in  std_logic;
          rst: in  std_logic;
          a: out std_logic_vector(31 downto 0);
          b: out std_logic_vector(31 downto 0);
          rezultat: out std_logic_vector(31 downto 0));
end FSM;

architecture Behavioral of FSM is

    type state_type is (IDLE, LOAD, COMPARE, SHIFT, CALCULATE, NORMALIZE, ROUND, OUTPUT);
    signal current_state, next_state : state_type;

component UAL1 is 
  Port ( a: in std_logic_vector(31 downto 0);
         b: in std_logic_vector(31 downto 0);
         diferentaExponenti: out std_logic_vector(7 downto 0);
         nrMaiMare: out std_logic;
         enable: in std_logic);
end component;

component rightShifter
    Port (mantissa_in : in std_logic_vector(22 downto 0);  
          shift_amount : in std_logic_vector(7 downto 0); 
          mantissa_out : out std_logic_vector(23 downto 0);
          enable: in std_logic); 
end component;

component rotunjire is
    Port ( mantisa : in  STD_LOGIC_VECTOR(22 downto 0);
           rezultat : out STD_LOGIC_VECTOR(22 downto 0);
           enable: in std_logic);
end component;

component normalizare is 
  Port ( mantisa_in : in std_logic_vector(23 downto 0); 
        exponent_in : in std_logic_vector ( 7 downto 0);
        mantisa_out : out std_logic_vector(22 downto 0); 
        exponent_out : out std_logic_vector ( 7 downto 0);
        carry_out   : in  std_logic;
        enable: in std_logic);

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
        nrMare : in std_logic;
        aluCTRL: in std_logic;
        enable: in std_logic);
end component;

component reg is
Port(adress : in  std_logic_vector(1 downto 0);
     dataOut : out std_logic_vector (31 downto 0));
end component;

--semnale pentru ual1
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
signal selectieOperatie: std_logic;
signal enableUAL1, enableDeplasareDreapta, enableUAL2, enableNormalizare, enableRotunjire: std_logic;

signal temp_mantisa_a : std_logic_vector(22 downto 0);
signal temp_mantisa_b : std_logic_vector(22 downto 0);
signal temp_exponent_a : std_logic_vector(7 downto 0);
signal temp_exponent_b : std_logic_vector(7 downto 0);
signal temp_semn_a : std_logic;
signal temp_semn_b : std_logic;

begin
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
            nrMaiMare=> nrMaiMare,
            enable => enableUAL1);
      
deplasareDreapta: rightShifter port map
    ( mantissa_in => mantisaDeDeplasat,
      shift_amount => diff,
      mantissa_out =>mantisaShiftata,
      enable => enableDeplasareDreapta);
      
UAL2mapare: UAL2 port map
    ( mantisa_a => mantisaShiftata,
      mantisa_b => mantisa2DeIntrareInALU,
      semn_a => data_a(31),
      semn_b => data_b(31),
      mantisa_out => mantisaIesireUal2,
      semn_out => semnOutUal2,
      carry_out_shift => c,
      nrMare => nrMaiMare,
      aluCTRL => selectieOperatie,
      enable => enableUAL2);
    
normalizareMapare: normalizare port map
      ( mantisa_in => mantisaIesireUal2,
        exponent_in => exponentMaiMare,
        mantisa_out => mantisaIesireLeftShifter,
        exponent_out => exponentNormalizat,
        carry_out =>c,
        enable => enableNormalizare); 
        
rotunjireMapare: rotunjire port map
     ( mantisa => mantisaIesireLeftShifter,
       rezultat => mantisaRotunjita,
       enable => enableRotunjire);

process(clk, rst)
    begin
        if rst = '1' then
            current_state <= IDLE;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

            a<= data_a;
            b<= data_b;

  process(current_state, data_a, data_b, diff, mantisaShiftata, next_state,
        mantisaRotunjita, semnOutUal2, exponentNormalizat, enableUAL1, enableUAL2, enableDeplasareDreapta, enableNormalizare, enableRotunjire)
begin
    case current_state is
        when IDLE =>
        
            next_state <= LOAD;
            enableRotunjire<='0';
            enableUAL1<='0';
            enableUAL2<='0';
            enableDeplasareDreapta <= '0';
            enableNormalizare <= '0';

        when LOAD =>
        
            adress_a <= "00";
            adress_b <= "01";
        
            temp_mantisa_a <= data_a(22 downto 0);
            temp_mantisa_b <= data_b(22 downto 0);
            temp_exponent_a <= data_a(30 downto 23);
            temp_exponent_b <= data_b(30 downto 23);
            temp_semn_a <= data_a(31);
            temp_semn_b <= data_b(31);

            if (temp_semn_a xnor temp_semn_b) = '1' then
                selectieOperatie <= '1';  --adunare
            else
                selectieOperatie <= '0'; --scadere
            end if;

            next_state <= COMPARE;
            
            enableRotunjire<='0';
            enableUAL1<='0';
            enableUAL2<='0';
            enableDeplasareDreapta <= '0';
            enableNormalizare <= '0';

        when COMPARE =>
            if nrMaiMare = '1' then
                mantisaDeDeplasat <= temp_mantisa_a;
                mantisa2DeIntrareInALU <= temp_mantisa_b;
                exponentMaiMare <= temp_exponent_b;
            else
                mantisaDeDeplasat <= temp_mantisa_b;
                mantisa2DeIntrareInALU <= temp_mantisa_a;
                exponentMaiMare <= temp_exponent_a;
            end if;
            
            enableUAL1<='1';
            enableDeplasareDreapta <= '0';
            enableUAL2<= '0';
            enableNormalizare<='0';
            enableRotunjire<='0';
            next_state <= SHIFT;

        when SHIFT =>
            
            enableDeplasareDreapta <= '1';
            enableUAL2<= '0';
            enableNormalizare<='0';
            enableRotunjire<='0';
            enableUAL1<='0';
        next_state <= CALCULATE;

        when CALCULATE =>
            enableUAL2<= '1';
            enableNormalizare<='0';
            enableRotunjire<='0';
            enableUAL1<='0';
            enableDeplasareDreapta <= '0';
            next_state <= NORMALIZE;

        when NORMALIZE =>
            enableNormalizare<='1';
            enableRotunjire<='0';
            enableUAL1<='0';
            enableUAL2<='0';
            enableDeplasareDreapta <= '0';
            next_state <= ROUND;

        when ROUND =>
            enableRotunjire<='1';
            enableUAL1<='0';
            enableUAL2<='0';
            enableDeplasareDreapta <= '0';
            enableNormalizare <= '0';
            next_state <= OUTPUT;
            
        when OUTPUT =>
            rezultat <= semnOutUal2 & exponentNormalizat & mantisaRotunjita;
            next_state <= IDLE;
            
            enableRotunjire<='0';
            enableUAL1<='0';
            enableUAL2<='0';
            enableDeplasareDreapta <= '0';
            enableNormalizare <= '0';

        when others =>
            next_state <= IDLE;
    end case;
end process;
end Behavioral;
