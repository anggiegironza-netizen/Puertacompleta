library ieee;
use ieee.std_logic_1164.all;

entity decodificador_7seg_alfanumerico is
    port(
        codigo : in  std_logic_vector(3 downto 0);
        seg    : out std_logic_vector(6 downto 0)
    );
end decodificador_7seg_alfanumerico;

architecture arquitectura_decodificador_7seg_alfanumerico of decodificador_7seg_alfanumerico is
begin
    with codigo select
    seg <=
        "1111111" when "0000", -- blanco
        "0001000" when "0001", -- A
        "0000011" when "0010", -- b
        "0101111" when "0011", -- r
        "1000111" when "0100", -- L
        "0000110" when "0101", -- E
        "1111001" when "0110", -- I
        "0100001" when "0111", -- d
        "1000110" when "1000", -- C
        "0111111" when "1001", -- -
        "1000000" when "1010", -- O
        "0001100" when "1011", -- P
        "1111111" when others;
end arquitectura_decodificador_7seg_alfanumerico;