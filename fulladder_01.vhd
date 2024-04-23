library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity fulladder_01 is
    Port ( a, b, c : in STD_LOGIC;
           s, co : out STD_LOGIC);
end fulladder_01;

architecture Behavioral of fulladder_01 is
signal a1 : std_logic;
signal a2: std_logic;
signal a3: std_logic;
begin
a1<= a xor b;
a2<= a1 and c;
a3<= a and b;
co <= a2 or a3;
s <= a1 xor c;
end Behavioral;
