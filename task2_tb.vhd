library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity task2_tb is
end task2_tb;
architecture Behavioral of task2_tb is
COMPONENT task2 is
PORT(A,B,C,D: IN std_logic;
F,G,H : OUT std_logic);
END COMPONENT;
Signal A, B, C, D, F, G, H: STD_LOGIC;

begin
uut:task2
Port Map(A => A, B => B, C => C, D => D, F => F, G => G, H => H);
test: process
begin
A <= '0'; B <= '0'; C <= '0'; D <= '0'; wait for 20 ns;
A <= '0'; B <= '0'; C <= '0'; D <= '1'; wait for 20 ns;
A <= '0'; B <= '0'; C <= '1'; D <= '0'; wait for 20 ns;
A <= '0'; B <= '0'; C <= '1'; D <= '1'; wait for 20 ns;
A <= '0'; B <= '1'; C <= '0'; D <= '0'; wait for 20 ns;
A <= '0'; B <= '1'; C <= '0'; D <= '1'; wait for 20 ns;
A <= '0'; B <= '1'; C <= '1'; D <= '0'; wait for 20 ns;
A <= '0'; B <= '1'; C <= '1'; D <= '1'; wait for 20 ns;
A <= '1'; B <= '0'; C <= '0'; D <= '0'; wait for 20 ns;
A <= '1'; B <= '0'; C <= '0'; D <= '1'; wait for 20 ns;
A <= '1'; B <= '0'; C <= '1'; D <= '0'; wait for 20 ns;
A <= '1'; B <= '0'; C <= '1'; D <= '1'; wait for 20 ns;
A <= '1'; B <= '1'; C <= '0'; D <= '0'; wait for 20 ns;
A <= '1'; B <= '1'; C <= '0'; D <= '1'; wait for 20 ns;
A <= '1'; B <= '1'; C <= '1'; D <= '0'; wait for 20 ns;
A <= '1'; B <= '1'; C <= '1'; D <= '1'; wait for 20 ns;
  
end process test;
end Behavioral;
