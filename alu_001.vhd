library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity alu_001 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           s : in STD_LOGIC_VECTOR (2 downto 0);
           y : out STD_LOGIC_VECTOR (3 downto 0));
end alu_001;
architecture Behavioral of alu_001 is
begin
with s SELECT 
y<= a and b when "000",
 a or b when "001",
 not a when "010",
 a xor b when "011",
 a nand b when "100",
 a nor b when "101",
 not b when others;
end Behavioral;
