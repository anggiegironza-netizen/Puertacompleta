library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registro_clave_teclado is
    port(
        clk             : in  std_logic;
        rst             : in  std_logic;
        limpiar         : in  std_logic;
        cargar_digito   : in  std_logic;
        digito_in       : in  std_logic_vector(3 downto 0);

        hex0_out        : out std_logic_vector(3 downto 0);
        hex1_out        : out std_logic_vector(3 downto 0);
        hex2_out        : out std_logic_vector(3 downto 0);
        hex3_out        : out std_logic_vector(3 downto 0);

        clave_out       : out std_logic_vector(15 downto 0);
        cuenta_digitos  : out integer range 0 to 4;
        completo        : out std_logic
    );
end registro_clave_teclado;

architecture rtl of registro_clave_teclado is

    signal d0 : std_logic_vector(3 downto 0) := (others => '0');
    signal d1 : std_logic_vector(3 downto 0) := (others => '0');
    signal d2 : std_logic_vector(3 downto 0) := (others => '0');
    signal d3 : std_logic_vector(3 downto 0) := (others => '0');

    signal contador : integer range 0 to 4 := 0;

begin

    process(clk, rst)
    begin
        if rst = '1' then
            d0 <= (others => '0');
            d1 <= (others => '0');
            d2 <= (others => '0');
            d3 <= (others => '0');
            contador <= 0;

        elsif rising_edge(clk) then
            if limpiar = '1' then
                d0 <= (others => '0');
                d1 <= (others => '0');
                d2 <= (others => '0');
                d3 <= (others => '0');
                contador <= 0;

            elsif cargar_digito = '1' then
                if contador < 4 then
                    d3 <= d2;
                    d2 <= d1;
                    d1 <= d0;
                    d0 <= digito_in;
                    contador <= contador + 1;
                end if;
            end if;
        end if;
    end process;

    hex0_out <= d0;
    hex1_out <= d1;
    hex2_out <= d2;
    hex3_out <= d3;

    clave_out <= d3 & d2 & d1 & d0;

    cuenta_digitos <= contador;
    completo <= '1' when contador = 4 else '0';

end rtl;