library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity ff_01 is
    Port ( d,clk,rst : in STD_LOGIC;
           q,q_b : out STD_LOGIC);
end ff_01;
architecture Behavioral of ff_01 is
begin
process (clk, rst)
begin
if (rst='1') then 
q <='0';
q_b <='1';
elsif (clk 'EVENT AND clk='1') then
q <= d;
q_b <= not d;
end if;
end process;
end Behavioral;