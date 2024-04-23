library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mux_02 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : in STD_LOGIC;
           y : out STD_LOGIC);
end mux_02;
architecture Behavioral of mux_02 is
begin
with s SELECT y <= a when '0', b when others;
end Behavioral;
