library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM is
    port(
        address  : in  std_logic_vector(5 downto 0);
        clock    : in  std_logic;
        data_out : out std_logic_vector(7 downto 0)
    );
end ROM;

architecture arch_rom of ROM is

    type memoria_rom is array (0 to 5) of std_logic_vector(7 downto 0);

    constant CONTENIDO : memoria_rom := (
        0 => x"FF",  -- ID admin
        1 => x"FF",  -- horario (cualquiera)
        2 => x"02",  -- dígito 1 = 2
        3 => x"03",  -- dígito 2 = 3
        4 => x"00",  -- dígito 3 = 0
        5 => x"08"   -- dígito 4 = 8
    );

begin
    -- lectura asíncrona: dato disponible en el mismo ciclo
    data_out <= CONTENIDO(to_integer(unsigned(address)))
                when to_integer(unsigned(address)) <= 5
                else x"00";

end arch_rom;