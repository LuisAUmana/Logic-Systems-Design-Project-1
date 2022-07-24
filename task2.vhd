library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity task2 is
Port ( A,B,C,D : in STD_LOGIC;
F,G,H : out STD_LOGIC);
end task2;
architecture Behavioral of task2 is
begin
F <= NOT
(NOT ((A AND (NOT C) AND (NOT D)) XOR
(((NOT A) AND B) OR (NOT (B AND C))))
OR (((NOT A) AND C AND D) AND ((B AND (NOT C))
OR (A AND (NOT B) AND C AND (NOT D)) OR ((NOT A) AND C AND (NOT D)))));
G <= ((NOT A) AND B) OR
((NOT A) AND (NOT B))OR ((NOT A) AND (NOT C)) OR
((NOT B) AND C) OR
((NOT C) AND D) OR
(A AND (NOT B) AND D);
H <= ((NOT A) AND B AND (NOT C) AND (NOT D)) OR
((NOT A) AND B AND (NOT C) AND D) OR
((NOT A) AND B AND C AND (NOT D)) OR
((NOT A) AND B AND C AND D) OR ((NOT A) AND (NOT B) AND (NOT C) AND (NOT D)) OR
((NOT A) AND (NOT B) AND (NOT C) AND D) OR
((NOT A) AND (NOT B) AND C AND (NOT D)) OR
((NOT A) AND (NOT B) AND C AND D) OR
((NOT A) AND B AND (NOT C) AND (NOT D)) OR
(A AND (NOT B) AND C AND (NOT D)) OR
(A AND (NOT B) AND C AND D) OR
(A AND (NOT B) AND (NOT C) AND D) OR
(A AND B AND (NOT C) AND D);
end Behavioral;
