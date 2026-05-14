library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM is
    port(
        clock    : in  std_logic;
        we       : in  std_logic;
        address  : in  std_logic_vector(5 downto 0);
        data_in  : in  std_logic_vector(7 downto 0);
        data_out : out std_logic_vector(7 downto 0)
    );
end RAM;

architecture arch_ram of RAM is

    type memoria_ram is array (6 to 29) of std_logic_vector(7 downto 0);

    signal mem : memoria_ram := (
        -- Usuario A: ID=0, horario=0, clave=1234
        6  => x"00",  -- ID usuario A
        7  => x"00",  -- horario 0 = mañana
        8  => x"01",  -- dígito 1 = 1
        9  => x"02",  -- dígito 2 = 2
        10 => x"03",  -- dígito 3 = 3
        11 => x"04",  -- dígito 4 = 4

        -- Usuario B: ID=1, horario=1, clave=1111
        12 => x"01",  -- ID usuario B
        13 => x"01",  -- horario 1 = tarde
        14 => x"01",  -- dígito 1 = 1
        15 => x"01",  -- dígito 2 = 1
        16 => x"01",  -- dígito 3 = 1
        17 => x"01",  -- dígito 4 = 1

        -- Usuario C: ID=2, horario=2, clave=2222
        18 => x"02",  -- ID usuario C
        19 => x"02",  -- horario 2 = noche
        20 => x"02",  -- dígito 1 = 2
        21 => x"02",  -- dígito 2 = 2
        22 => x"02",  -- dígito 3 = 2
        23 => x"02",  -- dígito 4 = 2

        -- Usuario D: ID=3, horario=3, clave=3333
        24 => x"03",  -- ID usuario D
        25 => x"03",  -- horario 3 = fin de semana
        26 => x"03",  -- dígito 1 = 3
        27 => x"03",  -- dígito 2 = 3
        28 => x"03",  -- dígito 3 = 3
        29 => x"03",  -- dígito 4 = 3

        others => x"FF"
    );

begin

    -- lectura asíncrona
    data_out <= mem(to_integer(unsigned(address)))
                when to_integer(unsigned(address)) >= 6 and
                     to_integer(unsigned(address)) <= 29
                else x"FF";

    -- escritura síncrona
    process(clock)
    begin
        if rising_edge(clock) then
            if we = '1' then
                if to_integer(unsigned(address)) >= 6 and
                   to_integer(unsigned(address)) <= 29 then
                    mem(to_integer(unsigned(address))) <= data_in;
                end if;
            end if;
        end if;
    end process;

end arch_ram;