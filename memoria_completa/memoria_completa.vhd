library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria_completa is
    port(
        clk      : in  std_logic;
        rst      : in  std_logic;
        address  : in  std_logic_vector(5 downto 0);
        data_in  : in  std_logic_vector(7 downto 0);
        we       : in  std_logic;
        data_out : out std_logic_vector(7 downto 0)
    );
end memoria_completa;

architecture arch_memoria_completa of memoria_completa is

    signal data_rom : std_logic_vector(7 downto 0);
    signal data_ram : std_logic_vector(7 downto 0);
    signal addr_int : integer range 0 to 63;

begin

    addr_int <= to_integer(unsigned(address));

    U_ROM : entity work.ROM
        port map(
            address  => address,
            clock    => clk,
            data_out => data_rom
        );

    U_RAM : entity work.RAM
        port map(
            clock    => clk,
            we       => we,
            address  => address,
            data_in  => data_in,
            data_out => data_ram
        );

    -- Mux: addr 0-5 → ROM (admin), addr 6-29 → RAM (usuarios)
    process(addr_int, data_rom, data_ram)
    begin
        if addr_int <= 5 then
            data_out <= data_rom;
        elsif addr_int <= 29 then
            data_out <= data_ram;
        else
            data_out <= x"00";
        end if;
    end process;

end arch_memoria_completa;