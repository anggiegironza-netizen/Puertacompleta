library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gestor_admin is
    port(
        clk          : in  std_logic;
        rst          : in  std_logic;
        tecla        : in  std_logic_vector(3 downto 0);
        tecla_valida : in  std_logic;
        salir_admin  : in  std_logic;

        mem_address  : out std_logic_vector(5 downto 0);
        mem_dato_in  : out std_logic_vector(7 downto 0);
        mem_we       : out std_logic;

        modo_admin        : out std_logic;

        admin_hex3        : out std_logic_vector(3 downto 0);
        admin_hex2        : out std_logic_vector(3 downto 0);
        admin_hex1        : out std_logic_vector(3 downto 0);
        admin_hex0_cod    : out std_logic_vector(3 downto 0);
        admin_hex0_num    : out std_logic_vector(3 downto 0);
        admin_hex0_es_num : out std_logic
    );
end gestor_admin;

architecture rtl of gestor_admin is

    type estado_admin_t is (
        ESPERA,
        CLAVE_ADMIN,
        ADMIN_OK,
        OP_AGREGAR_USR,
        OP_AGREGAR_CLV,
        OP_AGREGAR_HOR,
        OP_ELIMINAR_USR,
        ESCRIBIENDO
    );

    signal estado : estado_admin_t := ESPERA;

    type tipo_clave is array (0 to 3) of std_logic_vector(3 downto 0);
    constant DIGITOS_ADMIN : tipo_clave := (x"2", x"3", x"0", x"8");

    signal digito_admin      : integer range 0 to 3 := 0;
    signal usuario_sel       : integer range 0 to 3 := 0;
    signal clave_buf         : tipo_clave := (others => x"0");
    signal digito_clave      : integer range 0 to 3 := 0;
    signal horario_buf       : std_logic_vector(7 downto 0) := (others => '0');
    signal ultimo_digito     : std_logic_vector(3 downto 0) := x"0";
    signal ultimo_horario    : std_logic_vector(3 downto 0) := x"0";
    signal horario_ingresado : std_logic := '0';

    signal write_step        : integer range 0 to 5 := 0;

    signal we_i              : std_logic := '0';
    signal addr_i            : std_logic_vector(5 downto 0) := (others => '0');
    signal dato_i            : std_logic_vector(7 downto 0) := (others => '0');

    signal base_addr         : integer range 0 to 63 := 0;

    constant COD_BLANCO : std_logic_vector(3 downto 0) := "0000";
    constant COD_A      : std_logic_vector(3 downto 0) := "0001";
    constant COD_B      : std_logic_vector(3 downto 0) := "0010";
    constant COD_C      : std_logic_vector(3 downto 0) := "1000";
    constant COD_D      : std_logic_vector(3 downto 0) := "0111";
    constant COD_GUION  : std_logic_vector(3 downto 0) := "1001";

begin

    base_addr <= 6 + usuario_sel * 6;

    process(clk, rst)
    begin
        if rst = '1' then
            estado            <= ESPERA;
            digito_admin      <= 0;
            digito_clave      <= 0;
            usuario_sel       <= 0;
            write_step        <= 0;
            we_i              <= '0';
            addr_i            <= (others => '0');
            dato_i            <= (others => '0');
            ultimo_digito     <= x"0";
            ultimo_horario    <= x"0";
            horario_ingresado <= '0';

        elsif rising_edge(clk) then
            we_i <= '0';

            -- prioridad: switch físico regresa a ESPERA desde cualquier estado
            if salir_admin = '1' then
                estado            <= ESPERA;
                digito_admin      <= 0;
                digito_clave      <= 0;
                write_step        <= 0;
                horario_ingresado <= '0';
                ultimo_digito     <= x"0";
                ultimo_horario    <= x"0";

            else
                case estado is

                    when ESPERA =>
                        if tecla_valida = '1' and tecla = x"E" then
                            estado       <= CLAVE_ADMIN;
                            digito_admin <= 0;
                        end if;

                    when CLAVE_ADMIN =>
                        if tecla_valida = '1' then
                            if tecla = x"E" then
                                estado <= ESPERA;
                            elsif tecla <= x"9" then
                                if tecla = DIGITOS_ADMIN(digito_admin) then
                                    if digito_admin = 3 then
                                        estado       <= ADMIN_OK;
                                        digito_admin <= 0;
                                    else
                                        digito_admin <= digito_admin + 1;
                                    end if;
                                else
                                    estado       <= ESPERA;
                                    digito_admin <= 0;
                                end if;
                            end if;
                        end if;

                    when ADMIN_OK =>
                        horario_ingresado <= '0';
                        if tecla_valida = '1' then
                            if tecla = x"E" then
                                estado <= ESPERA;
                            elsif tecla = x"A" or tecla = x"B" or
                                  tecla = x"C" or tecla = x"D" then
                                case tecla is
                                    when x"A" => usuario_sel <= 0;
                                    when x"B" => usuario_sel <= 1;
                                    when x"C" => usuario_sel <= 2;
                                    when others => usuario_sel <= 3;
                                end case;
                                digito_clave  <= 0;
                                ultimo_digito <= x"0";
                                estado        <= OP_AGREGAR_USR;
                            elsif tecla = x"F" then
                                estado <= OP_ELIMINAR_USR;
                            end if;
                        end if;

                    when OP_AGREGAR_USR =>
                        if tecla_valida = '1' then
                            if tecla = x"E" then
                                estado <= ADMIN_OK;
                            elsif tecla <= x"9" then
                                clave_buf(0)  <= tecla;
                                ultimo_digito <= tecla;
                                digito_clave  <= 1;
                                estado        <= OP_AGREGAR_CLV;
                            end if;
                        end if;

                    when OP_AGREGAR_CLV =>
                        if tecla_valida = '1' then
                            if tecla = x"E" then
                                estado <= ADMIN_OK;
                            elsif tecla <= x"9" then
                                clave_buf(digito_clave) <= tecla;
                                ultimo_digito           <= tecla;
                                if digito_clave = 3 then
                                    ultimo_digito <= x"0";
                                    estado        <= OP_AGREGAR_HOR;
                                else
                                    digito_clave <= digito_clave + 1;
                                end if;
                            end if;
                        end if;

                    when OP_AGREGAR_HOR =>
                        if tecla_valida = '1' then
                            if tecla = x"E" then
                                estado            <= ADMIN_OK;
                                horario_ingresado <= '0';
                            elsif tecla <= x"3" then
                                horario_buf       <= x"0" & tecla;
                                ultimo_horario    <= tecla;
                                horario_ingresado <= '1';
                                write_step        <= 0;
                                estado            <= ESCRIBIENDO;
                            end if;
                        end if;

                    when ESCRIBIENDO =>
                        case write_step is
                            when 0 =>
                                addr_i     <= std_logic_vector(to_unsigned(base_addr, 6));
                                dato_i     <= std_logic_vector(to_unsigned(usuario_sel, 8));
                                we_i       <= '1';
                                write_step <= 1;
                            when 1 =>
                                addr_i     <= std_logic_vector(to_unsigned(base_addr + 1, 6));
                                dato_i     <= horario_buf;
                                we_i       <= '1';
                                write_step <= 2;
                            when 2 =>
                                addr_i     <= std_logic_vector(to_unsigned(base_addr + 2, 6));
                                dato_i     <= x"0" & clave_buf(0);
                                we_i       <= '1';
                                write_step <= 3;
                            when 3 =>
                                addr_i     <= std_logic_vector(to_unsigned(base_addr + 3, 6));
                                dato_i     <= x"0" & clave_buf(1);
                                we_i       <= '1';
                                write_step <= 4;
                            when 4 =>
                                addr_i     <= std_logic_vector(to_unsigned(base_addr + 4, 6));
                                dato_i     <= x"0" & clave_buf(2);
                                we_i       <= '1';
                                write_step <= 5;
                            when 5 =>
                                addr_i     <= std_logic_vector(to_unsigned(base_addr + 5, 6));
                                dato_i     <= x"0" & clave_buf(3);
                                we_i       <= '1';
                                write_step <= 0;
                                estado     <= ADMIN_OK;
                        end case;

                    when OP_ELIMINAR_USR =>
                        if tecla_valida = '1' then
                            if tecla = x"E" then
                                estado <= ADMIN_OK;
                            elsif tecla = x"A" or tecla = x"B" or
                                  tecla = x"C" or tecla = x"D" then
                                case tecla is
                                    when x"A" => usuario_sel <= 0;
                                    when x"B" => usuario_sel <= 1;
                                    when x"C" => usuario_sel <= 2;
                                    when others => usuario_sel <= 3;
                                end case;
                                addr_i  <= std_logic_vector(to_unsigned(base_addr, 6));
                                dato_i  <= x"FF";
                                we_i    <= '1';
                                estado  <= ADMIN_OK;
                            end if;
                        end if;

                    when others =>
                        estado <= ESPERA;

                end case;
            end if; -- salir_admin
        end if;
    end process;

    mem_address <= addr_i;
    mem_dato_in <= dato_i;
    mem_we      <= we_i;

    modo_admin <= '0' when estado = ESPERA else '1';

    admin_hex3 <= COD_A;
    admin_hex2 <= COD_D;

    admin_hex1 <= COD_GUION when estado = ADMIN_OK or estado = CLAVE_ADMIN else
                  COD_A when (estado = OP_AGREGAR_USR or estado = OP_AGREGAR_CLV or
                              estado = OP_AGREGAR_HOR or estado = OP_ELIMINAR_USR or
                              estado = ESCRIBIENDO) and usuario_sel = 0 else
                  COD_B when (estado = OP_AGREGAR_USR or estado = OP_AGREGAR_CLV or
                              estado = OP_AGREGAR_HOR or estado = OP_ELIMINAR_USR or
                              estado = ESCRIBIENDO) and usuario_sel = 1 else
                  COD_C when (estado = OP_AGREGAR_USR or estado = OP_AGREGAR_CLV or
                              estado = OP_AGREGAR_HOR or estado = OP_ELIMINAR_USR or
                              estado = ESCRIBIENDO) and usuario_sel = 2 else
                  COD_D when (estado = OP_AGREGAR_USR or estado = OP_AGREGAR_CLV or
                              estado = OP_AGREGAR_HOR or estado = OP_ELIMINAR_USR or
                              estado = ESCRIBIENDO) and usuario_sel = 3 else
                  COD_GUION;

    admin_hex0_cod <= COD_GUION when estado = ADMIN_OK or estado = CLAVE_ADMIN else
                      COD_A     when estado = OP_AGREGAR_USR and usuario_sel = 0 else
                      COD_B     when estado = OP_AGREGAR_USR and usuario_sel = 1 else
                      COD_C     when estado = OP_AGREGAR_USR and usuario_sel = 2 else
                      COD_D     when estado = OP_AGREGAR_USR and usuario_sel = 3 else
                      COD_A     when estado = OP_ELIMINAR_USR and usuario_sel = 0 else
                      COD_B     when estado = OP_ELIMINAR_USR and usuario_sel = 1 else
                      COD_C     when estado = OP_ELIMINAR_USR and usuario_sel = 2 else
                      COD_D     when estado = OP_ELIMINAR_USR and usuario_sel = 3 else
                      COD_GUION when estado = ESCRIBIENDO else
                      COD_GUION;

    admin_hex0_num <= ultimo_digito  when estado = OP_AGREGAR_CLV else
                      ultimo_horario when estado = OP_AGREGAR_HOR else
                      x"0";

    admin_hex0_es_num <= '1' when estado = OP_AGREGAR_CLV else
                         '1' when estado = OP_AGREGAR_HOR and
                                  horario_ingresado = '1' else
                         '0';

end rtl;