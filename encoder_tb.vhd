library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity encoder_tb is
end encoder_tb;
architecture Behavioral of encoder_tb is
component task3
port (
hex_in : in std_logic_vector(3 downto 0);
A, B, C, D, E, F, G : out std_logic);
end component;
signal hex_in: std_logic_vector(3 downto 0);
signal A, B, C, D, F, E, G : std_logic ;
signal counter: unsigned(3 downto 0) := "0000";
begin
uut: Task3 port map(hex_in => hex_in, A => A, B => B, C => C, D => D, E => E, F => F, G =>
G);
hex_in <= std_logic_vector(counter);
test : Process
Begin
hex_in <= "0000"; wait For 20ns;
hex_in <= "0001"; wait For 20ns;
hex_in <= "0010"; wait For 20ns;
hex_in <= "0011"; wait For 20ns;
hex_in <= "0100"; wait For 20ns;
hex_in <= "0101"; wait For 20ns;
hex_in <= "0110"; wait For 20ns;
hex_in <= "0111"; wait For 20ns;
hex_in <= "1000"; wait For 20ns;
hex_in <= "1001"; wait For 20ns;
hex_in <= "1010"; wait For 20ns;
hex_in <= "1011"; wait For 20ns;
hex_in <= "1100"; wait For 20ns;
hex_in <= "1101"; wait For 20ns;
hex_in <= "1110"; wait For 20ns;
hex_in <= "1111"; wait For 20ns;
End Process test;
tb: process
begin
wait for 20ns;
counter <= counter + 1;
end process tb;
end Behavioral;
