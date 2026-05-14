library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparador_clave_4_digitos is
    port(
        clk                 : in  std_logic;
        rst                 : in  std_logic;

        tecla               : in  std_logic_vector(3 downto 0);
        tecla_valida        : in  std_logic;

        limpiar_seleccion   : in  std_logic;
        vuelta_horario_cero : in  std_logic;

        horario_actual      : in  std_logic_vector(1 downto 0);
        clave_ingresada     : in  std_logic_vector(15 downto 0);

        mem_dato_out        : in  std_logic_vector(7 downto 0);
        mem_address         : out std_logic_vector(5 downto 0);

        lectura_lista       : out std_logic;

        usuario_seleccionado: out std_logic;
        usuario_habilitado  : out std_logic;
        horario_correcto    : out std_logic;
        clave_correcta      : out std_logic;
        acceso_permitido    : out std_logic;
        usuario_actual      : out std_logic_vector(1 downto 0)
    );
end comparador_clave_4_digitos;

architecture arch_comparador_clave_4_digitos of comparador_clave_4_digitos is

    type estado_lectura_t is (
        ESPERA_SELECCION,
        LEE_ID,
        LEE_HOR,
        LEE_D0,
        LEE_D1,
        LEE_D2,
        LEE_D3,
        LISTO
    );

    signal estado_rd     : estado_lectura_t := ESPERA_SELECCION;

    signal usuario_sel   : integer range 0 to 3 := 0;
    signal hay_usuario   : std_logic := '0';
    signal es_admin      : std_logic := '0';

    signal id_ram        : std_logic_vector(7 downto 0) := x"FF";
    signal horario_ram   : std_logic_vector(7 downto 0) := x"FF";
    signal d0_ram        : std_logic_vector(7 downto 0) := (others => '0');
    signal d1_ram        : std_logic_vector(7 downto 0) := (others => '0');
    signal d2_ram        : std_logic_vector(7 downto 0) := (others => '0');
    signal d3_ram        : std_logic_vector(7 downto 0) := (others => '0');

    signal addr_rd       : std_logic_vector(5 downto 0) := (others => '0');
    signal base_addr_reg : integer range 0 to 63 := 6;

    signal usuario_ok_i  : std_logic;
    signal horario_ok_i  : std_logic;
    signal clave_ok_i    : std_logic;

    constant CLAVE_ADMIN : std_logic_vector(15 downto 0) := x"2308";

begin

    -- selección de usuario
    process(clk, rst)
    begin
        if rst = '1' then
            usuario_sel   <= 0;
            hay_usuario   <= '0';
            es_admin      <= '0';
            base_addr_reg <= 6;

        elsif rising_edge(clk) then

            if limpiar_seleccion = '1' then
                hay_usuario   <= '0';
                es_admin      <= '0';
                usuario_sel   <= 0;
                base_addr_reg <= 6;

            elsif tecla_valida = '1' then

                if tecla = x"F" then
                    hay_usuario   <= '1';
                    es_admin      <= '1';
                    usuario_sel   <= 0;
                    base_addr_reg <= 6;

                elsif tecla = x"A" or tecla = x"B" or
                      tecla = x"C" or tecla = x"D" then
                    es_admin    <= '0';
                    hay_usuario <= '1';
                    case tecla is
                        when x"A" =>
                            usuario_sel   <= 0;
                            base_addr_reg <= 6;
                        when x"B" =>
                            usuario_sel   <= 1;
                            base_addr_reg <= 12;
                        when x"C" =>
                            usuario_sel   <= 2;
                            base_addr_reg <= 18;
                        when others =>
                            usuario_sel   <= 3;
                            base_addr_reg <= 24;
                    end case;
                end if;
            end if;
        end if;
    end process;

    -- lectura de memoria solo para usuarios normales
    process(clk, rst)
    begin
        if rst = '1' then
            estado_rd   <= ESPERA_SELECCION;
            addr_rd     <= (others => '0');
            id_ram      <= x"FF";
            horario_ram <= x"FF";
            d0_ram      <= (others => '0');
            d1_ram      <= (others => '0');
            d2_ram      <= (others => '0');
            d3_ram      <= (others => '0');

        elsif rising_edge(clk) then

            if limpiar_seleccion = '1' then
                estado_rd <= ESPERA_SELECCION;
                addr_rd   <= (others => '0');

            else
                case estado_rd is

                    when ESPERA_SELECCION =>
                        if hay_usuario = '1' and es_admin = '0' then
                            addr_rd   <= std_logic_vector(
                                         to_unsigned(base_addr_reg, 6));
                            estado_rd <= LEE_ID;
                        end if;

                    when LEE_ID =>
                        id_ram    <= mem_dato_out;
                        addr_rd   <= std_logic_vector(
                                     to_unsigned(base_addr_reg + 1, 6));
                        estado_rd <= LEE_HOR;

                    when LEE_HOR =>
                        horario_ram <= mem_dato_out;
                        addr_rd     <= std_logic_vector(
                                       to_unsigned(base_addr_reg + 2, 6));
                        estado_rd   <= LEE_D0;

                    when LEE_D0 =>
                        d0_ram    <= mem_dato_out;
                        addr_rd   <= std_logic_vector(
                                     to_unsigned(base_addr_reg + 3, 6));
                        estado_rd <= LEE_D1;

                    when LEE_D1 =>
                        d1_ram    <= mem_dato_out;
                        addr_rd   <= std_logic_vector(
                                     to_unsigned(base_addr_reg + 4, 6));
                        estado_rd <= LEE_D2;

                    when LEE_D2 =>
                        d2_ram    <= mem_dato_out;
                        addr_rd   <= std_logic_vector(
                                     to_unsigned(base_addr_reg + 5, 6));
                        estado_rd <= LEE_D3;

                    when LEE_D3 =>
                        d3_ram    <= mem_dato_out;
                        estado_rd <= LISTO;

                    when LISTO =>
                        null;

                    when others =>
                        estado_rd <= ESPERA_SELECCION;

                end case;
            end if;
        end if;
    end process;

    mem_address   <= addr_rd;
    lectura_lista <= '1' when es_admin = '1' else
                     '1' when estado_rd = LISTO else
                     '0';

    usuario_ok_i <= '1' when es_admin = '1' else
                    '0' when id_ram = x"FF" else
                    '1';

    horario_ok_i <= '1' when es_admin = '1' else
                    '1' when horario_ram(1 downto 0) = horario_actual else
                    '0';

    -- FIX: d0_ram es el primer dígito ingresado → va en la posición más alta
    clave_ok_i <= '1' when es_admin = '1' and
                           clave_ingresada = CLAVE_ADMIN else
                  '1' when es_admin = '0' and
                           clave_ingresada(15 downto 12) = d0_ram(3 downto 0) and
                           clave_ingresada(11 downto  8) = d1_ram(3 downto 0) and
                           clave_ingresada( 7 downto  4) = d2_ram(3 downto 0) and
                           clave_ingresada( 3 downto  0) = d3_ram(3 downto 0)
                  else '0';

    usuario_seleccionado <= hay_usuario;
    usuario_habilitado   <= usuario_ok_i;
    horario_correcto     <= horario_ok_i;
    clave_correcta       <= clave_ok_i;

    acceso_permitido <= '1' when hay_usuario  = '1' and
                                 usuario_ok_i = '1' and
                                 horario_ok_i = '1' and
                                 clave_ok_i   = '1'
                        else '0';

    usuario_actual <= "11" when es_admin = '1' else
                      std_logic_vector(to_unsigned(usuario_sel, 2));

end arch_comparador_clave_4_digitos;