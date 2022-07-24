library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity task1_tb is
end task1_tb;
architecture Behavioral of task1_tb is
COMPONENT task1 is
PORT(A,B,CIN: IN std_logic;
Sum,Cout : OUT std_logic);
END COMPONENT;
Signal A, B, Cin, Sum, Cout : STD_LOGIC;
begin
uut: task1
Port Map(A => A, B => B, Cin => Cin, Sum => Sum, Cout => Cout);
test: process
begin
A <= '0'; B <= '0'; Cin <= '1'; wait for 20 ns;
A <= '0'; B <= '1'; Cin <= '0'; wait for 20 ns;
A <= '0'; B <= '1'; Cin <= '1'; wait for 20 ns;
A <= '1'; B <= '0'; Cin <= '0'; wait for 20 ns;
A <= '1'; B <= '0'; Cin <= '1'; wait for 20 ns;
A <= '1'; B <= '1'; Cin <= '0'; wait for 20 ns;
A <= '1'; B <= '1'; Cin <= '1'; wait for 20 ns;
end process test;
end Behavioral;
