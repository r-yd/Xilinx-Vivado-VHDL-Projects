library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity ff_02 is
    Port ( d : in STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (7 downto 0));
end ff_02;
architecture Behavioral of ff_02 is
begin
process (clk, rst)
begin
if (rst='1') then 
q <="00000000";
elsif (clk 'EVENT AND clk='1') then
q <= d;
end if;
end process;
end Behavioral;
