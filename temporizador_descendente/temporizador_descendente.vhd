library ieee;                              
use ieee.std_logic_1164.all;               
use ieee.numeric_std.all;                   

entity temporizador_descendente is         
    generic(
        MAX_VALUE : integer := 59           -- Maximo valor que puede tomar el temporizador
    );
    port(
        clk        : in  std_logic;         -- Reloj principal
        rst        : in  std_logic;         -- Reset del sistema
        iniciar    : in  std_logic;         -- Carga el preset y arranca
        tick_1s    : in  std_logic;         -- Pulso de 1 segundo
        preset     : in  integer range 0 to MAX_VALUE; -- Tiempo inicial
        corriendo  : out std_logic;         -- Indica si esta activo
        terminado  : out std_logic;         -- Pulso cuando termina
        valor_out  : out integer range 0 to MAX_VALUE -- Valor actual de la cuenta
    );
end temporizador_descendente;

architecture arquitectura_temporizador_descendente of temporizador_descendente is

    signal contador  : integer range 0 to MAX_VALUE := 0; -- Valor interno de la cuenta
    signal en_marcha : std_logic := '0';                  -- Indica si esta contando
    signal fin       : std_logic := '0';                  -- Pulso al finalizar

begin

    process(clk, rst)                         -- Proceso secuencial
    begin
        if rst = '1' then                     -- Si reset activo
            contador  <= 0;                   -- Borra el contador
            en_marcha <= '0';                 -- Lo deja detenido
            fin       <= '0';                 -- Sin fin de cuenta

        elsif rising_edge(clk) then           -- En cada flanco de subida
            fin <= '0';                       -- Por defecto terminado vale 0

            if iniciar = '1' then             -- Si se da la orden de iniciar
                contador  <= preset;          -- Carga el tiempo inicial
                en_marcha <= '1';             -- Empieza a correr

            elsif en_marcha = '1' and tick_1s = '1' then -- Si esta corriendo y paso 1 segundo
                if contador > 0 then          -- Si aun falta tiempo
                    contador <= contador - 1; -- Descuenta 1 segundo
                else
                    en_marcha <= '0';         -- Detiene el temporizador
                    fin <= '1';               -- Avisa que termino
                end if;
            end if;
        end if;
    end process;

    corriendo <= en_marcha;                   -- Entrega si esta corriendo
    terminado <= fin;                         -- Entrega pulso de finalizacion
    valor_out <= contador;                    -- Entrega valor actual

end arquitectura_temporizador_descendente;