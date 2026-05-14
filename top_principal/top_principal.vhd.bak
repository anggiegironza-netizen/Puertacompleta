library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

 entity sistema_control_acceso_top is
    port(
        CLOCK_50      : in  std_logic;
        RESET         : in  std_logic;

        FILA          : in  std_logic_vector(3 downto 0);
        COLUMNA       : out std_logic_vector(3 downto 0);

        INTRUSION_SW  : in  std_logic;
        SENSOR_PUERTA : in  std_logic;

        HEX0          : out std_logic_vector(6 downto 0);
        HEX1          : out std_logic_vector(6 downto 0);
        HEX2          : out std_logic_vector(6 downto 0);
        HEX3          : out std_logic_vector(6 downto 0);

        SERVO_PWM     : out std_logic;
        BUZZER_OUT    : out std_logic;

        LED_ABRIR     : out std_logic;
        LED_ALARMA    : out std_logic;
        LED_BLOQUEO   : out std_logic;

        LED_MANANA    : out std_logic;
        LED_TARDE     : out std_logic;
        LED_NOCHE     : out std_logic;
        LED_FIN       : out std_logic
    );
end sistema_control_acceso_top;

architecture arch_sistema_control_acceso_top of sistema_control_acceso_top is

    signal tecla_s        : std_logic_vector(3 downto 0);
    signal tecla_valida_s : std_logic;

    signal tick_1s        : std_logic;

    signal horario_s      : std_logic_vector(1 downto 0);
    signal segundos_horario : integer range 0 to 180;
    signal vuelta_cero_s  : std_logic;

    signal usuario_sel_s  : std_logic;
    signal usuario_hab_s  : std_logic;
    signal horario_ok_s   : std_logic;
    signal clave_ok_s     : std_logic;
    signal acceso_ok_s    : std_logic;
    signal usuario_actual_s : std_logic_vector(1 downto 0);

    signal dig_hex0       : std_logic_vector(3 downto 0);
    signal dig_hex1       : std_logic_vector(3 downto 0);
    signal dig_hex2       : std_logic_vector(3 downto 0);
    signal dig_hex3       : std_logic_vector(3 downto 0);

    signal clave_ingresada : std_logic_vector(15 downto 0);
    signal clave_completa  : std_logic;
    signal cantidad_digitos: integer range 0 to 4;

    signal cargar_digito_s : std_logic;
    signal limpiar_clave_s : std_logic;

    signal estado_sistema  : std_logic_vector(2 downto 0);

    signal iniciar_apertura_s : std_logic;
    signal iniciar_bloqueo_s  : std_logic;
    signal iniciar_error_s    : std_logic;

    signal apertura_fin_s  : std_logic;
    signal bloqueo_fin_s   : std_logic;
    signal error_fin_s     : std_logic;

    signal apertura_valor  : integer range 0 to 59;
    signal bloqueo_valor   : integer range 0 to 59;
    signal error_valor     : integer range 0 to 59;

    signal dummy_apertura  : std_logic;
    signal dummy_bloqueo   : std_logic;
    signal dummy_error     : std_logic;

    signal alarma_s        : std_logic;
    signal abrir_s         : std_logic;
    signal limpiar_intentos_s : std_logic;
    signal intentos_s      : integer range 0 to 3;

    signal intrusion_total_s : std_logic;

    signal seg_h0_num      : std_logic_vector(6 downto 0);
    signal seg_h1_num      : std_logic_vector(6 downto 0);
    signal seg_h2_num      : std_logic_vector(6 downto 0);
    signal seg_h3_num      : std_logic_vector(6 downto 0);

    signal seg_a, seg_b, seg_r, seg_l : std_logic_vector(6 downto 0);
    signal seg_e, seg_i, seg_d, seg_blanco : std_logic_vector(6 downto 0);

    signal unidad_temp     : std_logic_vector(3 downto 0);
    signal seg_unidad      : std_logic_vector(6 downto 0);

    signal reset_buzzer_s  : std_logic;

    constant TIEMPO_APERTURA : integer := 5;
    constant TIEMPO_BLOQUEO  : integer := 10;
    constant TIEMPO_ERROR    : integer := 2;

begin

    intrusion_total_s <= INTRUSION_SW or SENSOR_PUERTA;

    cargar_digito_s <= '1' when tecla_valida_s = '1' and
                                tecla_s <= x"9" and
                                usuario_sel_s = '1' and
                                estado_sistema = "001" and
                                cantidad_digitos < 4
                       else '0';

    U_TECLADO : entity work.teclado_matricial_4x4
        port map(
            clk          => CLOCK_50,
            rst          => RESET,
            fila         => FILA,
            columna      => COLUMNA,
            tecla        => tecla_s,
            tecla_valida => tecla_valida_s
        );

    U_TICK : entity work.generador_tick_1s
        port map(
            clk     => CLOCK_50,
            rst     => RESET,
            tick_1s => tick_1s
        );

    U_HORARIO : entity work.contador_horario_180s
        port map(
            clk         => CLOCK_50,
            rst         => RESET,
            tick_1s     => tick_1s,
            segundos    => segundos_horario,
            horario     => horario_s,
            vuelta_cero => vuelta_cero_s,
            led_manana  => LED_MANANA,
            led_tarde   => LED_TARDE,
            led_noche   => LED_NOCHE,
            led_fin     => LED_FIN
        );

    U_REGISTRO : entity work.registro_clave_teclado
        port map(
            clk            => CLOCK_50,
            rst            => RESET,
            limpiar        => limpiar_clave_s,
            cargar_digito  => cargar_digito_s,
            digito_in      => tecla_s,
            hex0_out       => dig_hex0,
            hex1_out       => dig_hex1,
            hex2_out       => dig_hex2,
            hex3_out       => dig_hex3,
            clave_out      => clave_ingresada,
            cuenta_digitos => cantidad_digitos,
            completo       => clave_completa
        );

    U_GESTOR : entity work.comparador_clave_4_digitos
        port map(
            clk                  => CLOCK_50,
            rst                  => RESET,
            tecla                => tecla_s,
            tecla_valida         => tecla_valida_s,
            limpiar_seleccion    => limpiar_clave_s,
            vuelta_horario_cero  => vuelta_cero_s,
            horario_actual       => horario_s,
            clave_ingresada      => clave_ingresada,
            usuario_seleccionado => usuario_sel_s,
            usuario_habilitado   => usuario_hab_s,
            horario_correcto     => horario_ok_s,
            clave_correcta       => clave_ok_s,
            acceso_permitido     => acceso_ok_s,
            usuario_actual       => usuario_actual_s
        );

    U_FSM : entity work.maquina_estados_principal
        port map(
            clk                  => CLOCK_50,
            rst                  => RESET,
            usuario_seleccionado => usuario_sel_s,
            clave_completa       => clave_completa,
            clave_correcta       => clave_ok_s,
            usuario_habilitado   => usuario_hab_s,
            horario_correcto     => horario_ok_s,
            intrusion            => intrusion_total_s,
            tiempo_apertura_fin  => apertura_fin_s,
            tiempo_bloqueo_fin   => bloqueo_fin_s,
            tiempo_error_fin     => error_fin_s,
            estado_out           => estado_sistema,
            limpiar_clave        => limpiar_clave_s,
            limpiar_intentos     => limpiar_intentos_s,
            iniciar_apertura     => iniciar_apertura_s,
            iniciar_bloqueo      => iniciar_bloqueo_s,
            iniciar_error        => iniciar_error_s,
            activar_alarma       => alarma_s,
            abrir_puerta         => abrir_s,
            intentos_out         => intentos_s
        );

    U_TIMER_OPEN : entity work.temporizador_descendente
        port map(
            clk       => CLOCK_50,
            rst       => RESET,
            iniciar   => iniciar_apertura_s,
            tick_1s   => tick_1s,
            preset    => TIEMPO_APERTURA,
            corriendo => dummy_apertura,
            terminado => apertura_fin_s,
            valor_out => apertura_valor
        );

    U_TIMER_BLOQUEO : entity work.temporizador_descendente
        port map(
            clk       => CLOCK_50,
            rst       => RESET,
            iniciar   => iniciar_bloqueo_s,
            tick_1s   => tick_1s,
            preset    => TIEMPO_BLOQUEO,
            corriendo => dummy_bloqueo,
            terminado => bloqueo_fin_s,
            valor_out => bloqueo_valor
        );

    U_TIMER_ERROR : entity work.temporizador_descendente
        port map(
            clk       => CLOCK_50,
            rst       => RESET,
            iniciar   => iniciar_error_s,
            tick_1s   => tick_1s,
            preset    => TIEMPO_ERROR,
            corriendo => dummy_error,
            terminado => error_fin_s,
            valor_out => error_valor
        );

    U_SERVO : entity work.controlador_servo
        port map(
            clk         => CLOCK_50,
            reset       => RESET,
            led_entrega => abrir_s,
            servo_pwm   => SERVO_PWM
        );

    reset_buzzer_s <= not alarma_s;

    U_BUZZER : entity work.controlador_buzzer
        port map(
            CLK   => CLOCK_50,
            RESET => reset_buzzer_s,
            BEEP  => BUZZER_OUT
        );

    U_HEX0_NUM : entity work.fiveb port map(entrada => dig_hex0, seg => seg_h0_num);
    U_HEX1_NUM : entity work.fiveb port map(entrada => dig_hex1, seg => seg_h1_num);
    U_HEX2_NUM : entity work.fiveb port map(entrada => dig_hex2, seg => seg_h2_num);
    U_HEX3_NUM : entity work.fiveb port map(entrada => dig_hex3, seg => seg_h3_num);

    U_LETRA_A : entity work.decodificador_7seg_alfanumerico port map(codigo => "001", seg => seg_a);
    U_LETRA_B : entity work.decodificador_7seg_alfanumerico port map(codigo => "010", seg => seg_b);
    U_LETRA_R : entity work.decodificador_7seg_alfanumerico port map(codigo => "011", seg => seg_r);
    U_LETRA_L : entity work.decodificador_7seg_alfanumerico port map(codigo => "100", seg => seg_l);
    U_LETRA_E : entity work.decodificador_7seg_alfanumerico port map(codigo => "101", seg => seg_e);
    U_LETRA_I : entity work.decodificador_7seg_alfanumerico port map(codigo => "110", seg => seg_i);
    U_LETRA_D : entity work.decodificador_7seg_alfanumerico port map(codigo => "111", seg => seg_d);
    U_BLANCO  : entity work.decodificador_7seg_alfanumerico port map(codigo => "000", seg => seg_blanco);

    process(estado_sistema, apertura_valor, bloqueo_valor)
        variable temp : integer range 0 to 9;
    begin
        if estado_sistema = "010" then
            temp := apertura_valor mod 10;
        elsif estado_sistema = "100" then
            temp := bloqueo_valor mod 10;
        else
            temp := 0;
        end if;

        unidad_temp <= std_logic_vector(to_unsigned(temp, 4));
    end process;

    U_UNIDAD : entity work.fiveb
        port map(
            entrada => unidad_temp,
            seg     => seg_unidad
        );

    process(estado_sistema, cantidad_digitos,
            seg_h0_num, seg_h1_num, seg_h2_num, seg_h3_num,
            seg_a, seg_b, seg_r, seg_l, seg_e, seg_i, seg_d,
            seg_blanco, seg_unidad)
    begin

        if estado_sistema = "001" then
            if cantidad_digitos = 0 then
                HEX3 <= seg_blanco;
                HEX2 <= seg_blanco;
                HEX1 <= seg_blanco;
                HEX0 <= seg_blanco;
            else
                HEX3 <= seg_h3_num;
                HEX2 <= seg_h2_num;
                HEX1 <= seg_h1_num;
                HEX0 <= seg_h0_num;
            end if;

        elsif estado_sistema = "010" then
            -- AbrX
            HEX3 <= seg_a;
            HEX2 <= seg_b;
            HEX1 <= seg_r;
            HEX0 <= seg_unidad;

        elsif estado_sistema = "011" then
            -- Err
            HEX3 <= seg_e;
            HEX2 <= seg_r;
            HEX1 <= seg_r;
            HEX0 <= seg_blanco;

        elsif estado_sistema = "100" then
            -- ALrX
            HEX3 <= seg_a;
            HEX2 <= seg_l;
            HEX1 <= seg_r;
            HEX0 <= seg_unidad;

        else
            -- IdLE
            HEX3 <= seg_i;
            HEX2 <= seg_d;
            HEX1 <= seg_l;
            HEX0 <= seg_e;
        end if;
    end process;

    LED_ABRIR   <= abrir_s;
    LED_ALARMA  <= alarma_s;
    LED_BLOQUEO <= '1' when estado_sistema = "100" else '0';

end arch_sistema_control_acceso_top;