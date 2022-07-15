library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity task1 is
Port ( A,B,Cin : in STD_LOGIC;
Sum,Cout : out STD_LOGIC);
end task1;
architecture Behavioral of task1 is
begin
Sum <= A xor B xor Cin;
Cout <= ((A and B) or (A and Cin) or (B and Cin));
end Behavioral;
