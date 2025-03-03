library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

entity normalizareInmultire is
 Port (mantisa_in: in std_logic_vector(23 downto 0);
       semn_a: in std_logic;
       semn_b: in std_logic;
       ultimulBit: out std_logic;
       mantisa_out: out std_logic_vector(23 downto 0);
       enable: in std_logic);--aici
end normalizareInmultire;

architecture Behavioral of normalizareInmultire is
signal semn: std_logic;

begin
ultimulBit <= mantisa_in(22);
semn <= semn_a xor semn_b;


    process(mantisa_in, enable) 
    variable mant_aux: unsigned(23 downto 0);

    begin
       
        mant_aux := unsigned(mantisa_in);
        if enable = '1' then---aici
        if(mant_aux(23) = '1') then
            mant_aux(23) := '0';
            while mant_aux(23) = '0' loop
            mant_aux := mant_aux sll 1;
            end loop;
            mantisa_out(23)<= semn;
            mantisa_out(22 downto 0) <= std_logic_vector(mant_aux(22 downto 0));
         else
            if mantisa_in = "000000000000000000000000" then
                mantisa_out(23) <= semn;
                mantisa_out(22 downto 0) <= "1"& mantisa_in(22 downto 1);
                mantisa_out(0) <= '0';
            else 
                while mant_aux(23) = '0' loop
                    mant_aux := mant_aux sll 1;
                 end loop;
                    mantisa_out(23)<= semn;
                    mantisa_out(22 downto 0) <= std_logic_vector(mant_aux(22 downto 0));
            end if;
            end if;
         end if;--aici
    end process;

end Behavioral;
