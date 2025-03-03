library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rightShifter is
    Port (mantissa_in  : in  std_logic_vector(22 downto 0);  
          shift_amount : in  std_logic_vector(7 downto 0); 
          mantissa_out : out std_logic_vector(23 downto 0);
          enable: in std_logic); 
end rightShifter;

architecture Behavioral of rightShifter is
    signal mantissa_in_aux : std_logic_vector(23 downto 0); 
    signal mantissa_out_aux : unsigned(23 downto 0); 
begin

    mantissa_in_aux <= '1' & mantissa_in;

    process(mantissa_in_aux, shift_amount, enable)
    begin
    if enable = '1' then
    if shift_amount = "00000000" then
        mantissa_out_aux <= unsigned(mantissa_in_aux);
    else
        mantissa_out_aux <= unsigned(mantissa_in_aux) srl to_integer(unsigned(shift_amount));
    end if;
    end if;
    end process;

    mantissa_out <= std_logic_vector(mantissa_out_aux);
end Behavioral;
