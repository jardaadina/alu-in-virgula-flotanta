library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inmultireaMatricelor is
    Port (a: in std_logic_vector(23 downto 0);
          b: in std_logic_vector(23 downto 0);
          rezultat: out std_logic_vector(47 downto 0));
end inmultireaMatricelor;

architecture Behavioral of inmultireaMatricelor is
    component sumatorMantise is
        Port (
            xi: in std_logic_vector(23 downto 0);
            yi: in std_logic_vector(23 downto 0);
            cIN: in std_logic;
            cOUT: out std_logic;
            suma: out std_logic_vector(23 downto 0)
        );
    end component;

    signal ap1,bp1,ab1: std_logic_vector(47 downto 0);
    signal ap2,bp2,ab2,
            ap3,bp3,ab3,
            ap4,bp4,ab4,
            ap5,bp5,ab5,
            ap6,bp6,ab6,
            ap7,bp7,ab7,
            ap8,bp8,ab8,
            ap9,bp9,ab9,
            ap10,bp10,ab10,
            ap11,bp11,ab11,
            ap12,bp12,ab12,
            ap13,bp13,ab13,
            ap14,bp14,ab14,
            ap15,bp15,ab15,
            ap16,bp16,ab16,
            ap17,bp17,ab17,
            ap18,bp18,ab18,
            ap19,bp19,ab19,
            ap20,bp20,ab20,
            ap21,bp21,ab21,
            ap22,bp22,ab22,
            ap23,bp23,ab23: std_logic_vector(23 downto 0);
    signal s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23: std_logic_vector(24 downto 0);

begin

    rezultat(0) <= a(0) and b(0);
    
    bp1(22 downto 0) <= b(23 downto 1);  
    bp1(23) <= '0'; 
    bp1(47 downto 24) <= b(23 downto 0);
    
    ap1(22 downto 0) <= (others => a(0)); 
    ap1(23) <= '0'; 
    ap1(47 downto 24) <= (others => a(1));
    
    ab1 <= ap1 and bp1;
    
    sum1: sumatorMantise port map (
        xi => ab1(23 downto 0),
        yi => ab1(47 downto 24),
        cIN => '0',
        cOUT => s1(24),
        suma => s1(23 downto 0)
    );
    rezultat(1) <= s1(0);

    ap2(23 downto 0) <= (others => a(2));
    bp2(23 downto 0) <= b;
    ab2 <= ap2 and bp2;
    sum2: sumatorMantise port map (
        xi => ab2(23 downto 0),
        yi => s1(24 downto 1),
        cIN => '0',
        cOUT => s2(24),
        suma => s2(23 downto 0)
    );
    rezultat(2) <= s2(0);

    ap3(23 downto 0) <= (others => a(3));
    bp3(23 downto 0) <= b;
    ab3 <= ap3 and bp3;
    sum3: sumatorMantise port map (
        xi => ab3(23 downto 0),
        yi => s2(24 downto 1),
        cIN => '0',
        cOUT => s3(24),
        suma => s3(23 downto 0)
    );
    rezultat(3) <= s3(0);

    ap4(23 downto 0) <= (others => a(4));
    bp4(23 downto 0) <= b;
    ab4 <= ap4 and bp4;
    sum4: sumatorMantise port map (
        xi => ab4(23 downto 0),
        yi => s3(24 downto 1),
        cIN => '0',
        cOUT => s4(24),
        suma => s4(23 downto 0)
    );
    rezultat(4) <= s4(0);

    ap5(23 downto 0) <= (others => a(5));
    bp5(23 downto 0) <= b;
    ab5 <= ap5 and bp5;
    sum5: sumatorMantise port map (
        xi => ab5(23 downto 0),
        yi => s4(24 downto 1),
        cIN => '0',
        cOUT => s5(24),
        suma => s5(23 downto 0)
    );
    rezultat(5) <= s5(0);

    ap6(23 downto 0) <= (others => a(6));
    bp6(23 downto 0) <= b;
    ab6 <= ap6 and bp6;
    sum6: sumatorMantise port map (
        xi => ab6(23 downto 0),
        yi => s5(24 downto 1),
        cIN => '0',
        cOUT => s6(24),
        suma => s6(23 downto 0)
    );
    rezultat(6) <= s6(0);

    ap7(23 downto 0) <= (others => a(7));
    bp7(23 downto 0) <= b;
    ab7 <= ap7 and bp7;
    sum7: sumatorMantise port map (
        xi => ab7(23 downto 0),
        yi => s6(24 downto 1),
        cIN => '0',
        cOUT => s7(24),
        suma => s7(23 downto 0)
    );
    rezultat(7) <= s7(0);

    ap8(23 downto 0) <= (others => a(8));
    bp8(23 downto 0) <= b;
    ab8 <= ap8 and bp8;
    sum8: sumatorMantise port map (
        xi => ab8(23 downto 0),
        yi => s7(24 downto 1),
        cIN => '0',
        cOUT => s8(24),
        suma => s8(23 downto 0)
    );
    rezultat(8) <= s8(0);

    ap9(23 downto 0) <= (others => a(9));
    bp9(23 downto 0) <= b;
    ab9 <= ap9 and bp9;
    sum9: sumatorMantise port map (
        xi => ab9(23 downto 0),
        yi => s8(24 downto 1),
        cIN => '0',
        cOUT => s9(24),
        suma => s9(23 downto 0)
    );
    rezultat(9) <= s9(0);

    ap10(23 downto 0) <= (others => a(10));
    bp10(23 downto 0) <= b;
    ab10 <= ap10 and bp10;
    sum10: sumatorMantise port map (
        xi => ab10(23 downto 0),
        yi => s9(24 downto 1),
        cIN => '0',
        cOUT => s10(24),
        suma => s10(23 downto 0)
    );
    rezultat(10) <= s10(0);

    ap11(23 downto 0) <= (others => a(11));
    bp11(23 downto 0) <= b;
    ab11 <= ap11 and bp11;
    sum11: sumatorMantise port map (
        xi => ab11(23 downto 0),
        yi => s10(24 downto 1),
        cIN => '0',
        cOUT => s11(24),
        suma => s11(23 downto 0)
    );
    rezultat(11) <= s11(0);

    ap12(23 downto 0) <= (others => a(12));
    bp12(23 downto 0) <= b;
    ab12 <= ap12 and bp12;
    sum12: sumatorMantise port map (
        xi => ab12(23 downto 0),
        yi => s11(24 downto 1),
        cIN => '0',
        cOUT => s12(24),
        suma => s12(23 downto 0)
    );
    rezultat(12) <= s12(0);

    ap13(23 downto 0) <= (others => a(13));
    bp13(23 downto 0) <= b;
    ab13 <= ap13 and bp13;
    sum13: sumatorMantise port map (
        xi => ab13(23 downto 0),
        yi => s12(24 downto 1),
        cIN => '0',
        cOUT => s13(24),
        suma => s13(23 downto 0)
    );
    rezultat(13) <= s13(0);

    ap14(23 downto 0) <= (others => a(14));
    bp14(23 downto 0) <= b;
    ab14 <= ap14 and bp14;
    sum14: sumatorMantise port map (
        xi => ab14(23 downto 0),
        yi => s13(24 downto 1),
        cIN => '0',
        cOUT => s14(24),
        suma => s14(23 downto 0)
    );
    rezultat(14) <= s14(0);

    ap15(23 downto 0) <= (others => a(15));
    bp15(23 downto 0) <= b;
    ab15 <= ap15 and bp15;
    sum15: sumatorMantise port map (
        xi => ab15(23 downto 0),
        yi => s14(24 downto 1),
        cIN => '0',
        cOUT => s15(24),
        suma => s15(23 downto 0)
    );
    rezultat(15) <= s15(0);

    ap16(23 downto 0) <= (others => a(16));
    bp16(23 downto 0) <= b;
    ab16 <= ap16 and bp16;
    sum16: sumatorMantise port map (
        xi => ab16(23 downto 0),
        yi => s15(24 downto 1),
        cIN => '0',
        cOUT => s16(24),
        suma => s16(23 downto 0)
    );
    rezultat(16) <= s16(0);

    ap17(23 downto 0) <= (others => a(17));
    bp17(23 downto 0) <= b;
    ab17 <= ap17 and bp17;
    sum17: sumatorMantise port map (
        xi => ab17(23 downto 0),
        yi => s16(24 downto 1),
        cIN => '0',
        cOUT => s17(24),
        suma => s17(23 downto 0)
    );
    rezultat(17) <= s17(0);

    ap18(23 downto 0) <= (others => a(18));
    bp18(23 downto 0) <= b;
    ab18 <= ap18 and bp18;
    sum18: sumatorMantise port map (
        xi => ab18(23 downto 0),
        yi => s17(24 downto 1),
        cIN => '0',
        cOUT => s18(24),
        suma => s18(23 downto 0)
    );
    rezultat(18) <= s18(0);

    ap19(23 downto 0) <= (others => a(19));
    bp19(23 downto 0) <= b;
    ab19 <= ap19 and bp19;
    sum19: sumatorMantise port map (
        xi => ab19(23 downto 0),
        yi => s18(24 downto 1),
        cIN => '0',
        cOUT => s19(24),
        suma => s19(23 downto 0)
    );
    rezultat(19) <= s19(0);

    ap20(23 downto 0) <= (others => a(20));
    bp20(23 downto 0) <= b;
    ab20 <= ap20 and bp20;
    sum20: sumatorMantise port map (
        xi => ab20(23 downto 0),
        yi => s19(24 downto 1),
        cIN => '0',
        cOUT => s20(24),
        suma => s20(23 downto 0)
    );
    rezultat(20) <= s20(0);

    ap21(23 downto 0) <= (others => a(21));
    bp21(23 downto 0) <= b;
    ab21 <= ap21 and bp21;
    sum21: sumatorMantise port map (
        xi => ab21(23 downto 0),
        yi => s20(24 downto 1),
        cIN => '0',
        cOUT => s21(24),
        suma => s21(23 downto 0)
    );
    rezultat(21) <= s21(0);

    ap22(23 downto 0) <= (others => a(22));
    bp22(23 downto 0) <= b;
    ab22 <= ap22 and bp22;
    sum22: sumatorMantise port map (
        xi => ab22(23 downto 0),
        yi => s21(24 downto 1),
        cIN => '0',
        cOUT => s22(24),
        suma => s22(23 downto 0)
    );
    rezultat(22) <= s22(0);
    
    ap23(23 downto 0) <= (others => a(23));
    bp23(23 downto 0) <= b;
    ab23 <= ap23 and bp23;
    sum23: sumatorMantise port map (
        xi => ab23(23 downto 0),
        yi => s22(24 downto 1),
        cIN => '0',
        cOUT => s23(24),
        suma => s23(23 downto 0)
    );
    
    rezultat(47 downto 23) <= s23;

end Behavioral;