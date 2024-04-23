library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity main is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           y : out STD_LOGIC);
end main;
architecture Behavioral of main is
signal a1, a2 : std_logic:='0';
component and_new is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC);
end component;
component or_new is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC);
end component;
begin
INS1: and_new port map(a=>a,b=>b,c=>a1);
INS2: and_new port map(a=>c,b=>d,c=>a2);
INS3: or_new port map(a=>a1,b=>a2,c=>y);
end Behavioral;
