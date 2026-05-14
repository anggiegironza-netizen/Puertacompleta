library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity controlador_buzzer is
    port(
        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        BEEP  : out STD_LOGIC
    );
end controlador_buzzer;

architecture arch_controlador_buzzer of controlador_buzzer is

    signal contador : integer range 0 to 37940 := 0;
    signal beep_i   : std_logic := '0';

begin

    process(CLK, RESET)
    begin
        if RESET = '1' then
            contador <= 0;
            beep_i <= '0';

        elsif rising_edge(CLK) then

            if contador = 37940 then
                contador <= 0;
                beep_i <= not beep_i;
            else
                contador <= contador + 1;
            end if;
        end if;
    end process;

    BEEP <= beep_i;

end arch_controlador_buzzer;