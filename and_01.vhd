library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity and_01 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC);
end and_01;

architecture Behavioral of and_01 is

begin

c<= a and b;

end Behavioral;
