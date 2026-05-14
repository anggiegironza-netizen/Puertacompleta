library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_horario_180s is
    port(
        clk        : in  std_logic;
        rst        : in  std_logic;
        tick_1s    : in  std_logic;

        segundos   : out integer range 0 to 180;
        horario    : out std_logic_vector(1 downto 0);
        vuelta_cero: out std_logic;

        led_manana : out std_logic;
        led_tarde  : out std_logic;
        led_noche  : out std_logic;
        led_fin    : out std_logic
    );
end contador_horario_180s;

architecture rtl of contador_horario_180s is

    signal contador : integer range 0 to 180 := 0;
    signal horario_i : std_logic_vector(1 downto 0) := "00";

begin

    process(clk, rst)
    begin
        if rst = '1' then
            contador <= 0;
            vuelta_cero <= '0';

        elsif rising_edge(clk) then
            vuelta_cero <= '0';

            if tick_1s = '1' then
                if contador = 180 then
                    contador <= 0;
                    vuelta_cero <= '1';
                else
                    contador <= contador + 1;
                end if;
            end if;
        end if;
    end process;

    process(contador)
    begin
        if contador < 60 then
            horario_i <= "00"; -- mañana
        elsif contador < 120 then
            horario_i <= "01"; -- tarde
        elsif contador < 150 then
            horario_i <= "10"; -- noche
        else
            horario_i <= "11"; -- fin de semana
        end if;
    end process;

    segundos <= contador;
    horario  <= horario_i;

    led_manana <= '1' when horario_i = "00" else '0';
    led_tarde  <= '1' when horario_i = "01" else '0';
    led_noche  <= '1' when horario_i = "10" else '0';
    led_fin    <= '1' when horario_i = "11" else '0';

end rtl;