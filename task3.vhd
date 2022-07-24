library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity task3 is
Port ( hex_in : in STD_LOGIC_VECTOR (3 downto 0);
A,B,C,D,E,F,G : out STD_LOGIC);
end task3;
architecture Behavioral of task3 is

begin
A <= '1' when hex_in = "0000" else '1' when hex_in = "0010" else '1' when hex_in = "0011" else
'1' when hex_in = "0101" else '1' when hex_in = "0110" else
'1' when hex_in = "0111" else '1' when hex_in = "1000" else '1' when hex_in = "1001" else '1'
when hex_in = "1010" else '1' when hex_in = "1100" else
'1' when hex_in = "1110" else '1' when hex_in = "1111" else '0';
  
B <= '1' when hex_in = "0000" else '1' when hex_in = "0001" else '1' when hex_in = "0010" else
'1' when hex_in = "0011" else '1' when hex_in = "0100" else
'1' when hex_in = "0111" else '1' when hex_in = "1000" else '1' when hex_in = "1001" else '1'
when hex_in = "1010" else '1' when hex_in = "1101" else '0';
  
C <= '1' when hex_in = "0000" else '1' when hex_in = "0001" else '1' when hex_in = "0011" else
'1' when hex_in = "0100" else '1' when hex_in = "0101" else
'1' when hex_in = "0110" else '1' when hex_in = "0111" else '1' when hex_in = "1000" else '1'
when hex_in = "1001" else '1' when hex_in = "1010" else
'1' when hex_in = "1011" else '1' when hex_in = "1101" else '0';
  
D <= '1' when hex_in = "0000" else '1' when hex_in = "0010" else '1' when hex_in = "0011" else
'1' when hex_in = "0101" else '1' when hex_in = "0110" else
'1' when hex_in = "1000" else '1' when hex_in = "1001" else '1' when hex_in = "1011" else '1'
when hex_in = "1100" else '1' when hex_in = "1101" else
'1' when hex_in = "1110" else '0';
  
E <= '1' when hex_in = "0000" else '1' when hex_in = "0010" else '1' when hex_in = "0110" else
'1' when hex_in = "1000" else '1' when hex_in = "1010" else
'1' when hex_in = "1011" else '1' when hex_in = "1100" else '1' when hex_in = "1101" else '1'
when hex_in = "1110" else
'1' when hex_in = "1111" else '0';
  
F <= '1' when hex_in = "0000" else '1' when hex_in = "0100" else '1' when hex_in = "0101" else
'1' when hex_in = "0110" else '1' when hex_in = "1000" else
'1' when hex_in = "1001" else '1' when hex_in = "1010" else '1' when hex_in = "1011" else '1'
when hex_in = "1100" else '1' when hex_in = "1110" else
'1' when hex_in = "1111" else '0';
  
G <= '1' when hex_in = "0010" else '1' when hex_in = "0011" else '1' when hex_in = "0100" else
'1' when hex_in = "0101" else '1' when hex_in = "0110" else
'1' when hex_in = "1000" else '1' when hex_in = "1001" else '1' when hex_in = "1011" else '1'
when hex_in = "1101" else '1' when hex_in = "1110" else
'1' when hex_in = "1111" else '0';
end Behavioral;
