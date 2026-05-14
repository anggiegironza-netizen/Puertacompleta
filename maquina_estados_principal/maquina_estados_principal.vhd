library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity maquina_estados_principal is
    port(
        clk                 : in  std_logic;
        rst                 : in  std_logic;

        tecla               : in  std_logic_vector(3 downto 0);
        tecla_valida        : in  std_logic;
        forzar_idle         : in  std_logic;

        usuario_seleccionado: in  std_logic;
        clave_completa      : in  std_logic;
        clave_correcta      : in  std_logic;
        usuario_habilitado  : in  std_logic;
        horario_correcto    : in  std_logic;
        lectura_lista       : in  std_logic;

        intrusion           : in  std_logic;

        tiempo_apertura_fin : in  std_logic;
        tiempo_bloqueo_fin  : in  std_logic;
        tiempo_error_fin    : in  std_logic;

        estado_out          : out std_logic_vector(2 downto 0);

        limpiar_clave       : out std_logic;
        limpiar_intentos    : out std_logic;

        iniciar_apertura    : out std_logic;
        iniciar_bloqueo     : out std_logic;
        iniciar_error       : out std_logic;

        activar_alarma      : out std_logic;
        abrir_puerta        : out std_logic;

        intentos_out        : out integer range 0 to 3
    );
end maquina_estados_principal;

architecture rtl of maquina_estados_principal is

    type tipo_estado is (IDLE, INGRESO, ABRIR, ERROR_CLAVE, BLOQUEO);

    signal estado_actual    : tipo_estado := IDLE;
    signal estado_siguiente : tipo_estado := IDLE;

    signal intentos           : integer range 0 to 3 := 0;
    signal limpiar_intentos_i : std_logic := '0';
    signal volver_idle        : std_logic;

begin

    -- * presionado fuera de IDLE y fuera de BLOQUEO
    -- O forzar_idle activo (salida del modo admin)
    volver_idle <= '1' when forzar_idle = '1' else
                   '1' when tecla_valida = '1' and
                             tecla = x"E" and
                             estado_actual /= IDLE and
                             estado_actual /= BLOQUEO
                   else '0';

    process(clk, rst)
    begin
        if rst = '1' then
            estado_actual <= IDLE;
            intentos      <= 0;

        elsif rising_edge(clk) then
            estado_actual <= estado_siguiente;

            if limpiar_intentos_i = '1' then
                intentos <= 0;
            elsif estado_actual = INGRESO and
                  clave_completa = '1' and
                  lectura_lista = '1' then
                if usuario_habilitado = '1' and
                   horario_correcto = '1' and
                   clave_correcta = '0' then
                    if intentos < 3 then
                        intentos <= intentos + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    process(estado_actual, usuario_seleccionado, clave_completa,
            clave_correcta, usuario_habilitado, horario_correcto,
            lectura_lista, intrusion, tiempo_apertura_fin,
            tiempo_bloqueo_fin, tiempo_error_fin, intentos, volver_idle)
    begin
        estado_siguiente <= estado_actual;

        if volver_idle = '1' then
            estado_siguiente <= IDLE;

        else
            case estado_actual is

                when IDLE =>
                    if intrusion = '1' then
                        estado_siguiente <= BLOQUEO;
                    elsif usuario_seleccionado = '1' then
                        estado_siguiente <= INGRESO;
                    end if;

                when INGRESO =>
                    if intrusion = '1' then
                        estado_siguiente <= BLOQUEO;
                    elsif clave_completa = '1' and lectura_lista = '1' then
                        if usuario_habilitado = '0' then
                            estado_siguiente <= BLOQUEO;
                        elsif horario_correcto = '0' then
                            estado_siguiente <= BLOQUEO;
                        elsif clave_correcta = '1' then
                            estado_siguiente <= ABRIR;
                        else
                            if intentos >= 2 then
                                estado_siguiente <= BLOQUEO;
                            else
                                estado_siguiente <= ERROR_CLAVE;
                            end if;
                        end if;
                    end if;

                when ABRIR =>
                    if intrusion = '1' then
                        estado_siguiente <= BLOQUEO;
                    elsif tiempo_apertura_fin = '1' then
                        estado_siguiente <= IDLE;
                    end if;

                when ERROR_CLAVE =>
                    if intrusion = '1' then
                        estado_siguiente <= BLOQUEO;
                    elsif tiempo_error_fin = '1' then
                        estado_siguiente <= IDLE;
                    end if;

                when BLOQUEO =>
                    if tiempo_bloqueo_fin = '1' then
                        estado_siguiente <= IDLE;
                    end if;

                when others =>
                    estado_siguiente <= IDLE;

            end case;
        end if;
    end process;

    process(estado_actual, estado_siguiente, volver_idle)
    begin
        limpiar_clave      <= '0';
        limpiar_intentos_i <= '0';
        iniciar_apertura   <= '0';
        iniciar_bloqueo    <= '0';
        iniciar_error      <= '0';
        activar_alarma     <= '0';
        abrir_puerta       <= '0';

        if volver_idle = '1' then
            limpiar_clave      <= '1';
            limpiar_intentos_i <= '1';

        else
            case estado_actual is

                when IDLE =>
                    if estado_siguiente = BLOQUEO then
                        iniciar_bloqueo <= '1';
                    end if;

                when INGRESO =>
                    if estado_siguiente = ABRIR then
                        iniciar_apertura   <= '1';
                        limpiar_intentos_i <= '1';
                        limpiar_clave      <= '1';
                    elsif estado_siguiente = ERROR_CLAVE then
                        iniciar_error <= '1';
                        limpiar_clave <= '1';
                    elsif estado_siguiente = BLOQUEO then
                        iniciar_bloqueo <= '1';
                        limpiar_clave   <= '1';
                    end if;

                when ABRIR =>
                    abrir_puerta <= '1';
                    if estado_siguiente = IDLE then
                        limpiar_clave <= '1';
                    elsif estado_siguiente = BLOQUEO then
                        iniciar_bloqueo <= '1';
                        limpiar_clave   <= '1';
                    end if;

                when ERROR_CLAVE =>
                    if estado_siguiente = IDLE then
                        limpiar_clave <= '1';
                    elsif estado_siguiente = BLOQUEO then
                        iniciar_bloqueo <= '1';
                        limpiar_clave   <= '1';
                    end if;

                when BLOQUEO =>
                    activar_alarma <= '1';
                    if estado_siguiente = IDLE then
                        limpiar_clave      <= '1';
                        limpiar_intentos_i <= '1';
                    end if;

                when others =>
                    null;

            end case;
        end if;
    end process;

    with estado_actual select
        estado_out <=
            "000" when IDLE,
            "001" when INGRESO,
            "010" when ABRIR,
            "011" when ERROR_CLAVE,
            "100" when BLOQUEO,
            "000" when others;

    intentos_out     <= intentos;
    limpiar_intentos <= limpiar_intentos_i;

end rtl;