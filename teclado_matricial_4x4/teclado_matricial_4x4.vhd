library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity teclado_matricial_4x4 is
    port(
        clk          : in  std_logic;
        rst          : in  std_logic;
        fila         : in  std_logic_vector(3 downto 0);
        columna      : out std_logic_vector(3 downto 0);
        tecla        : out std_logic_vector(3 downto 0);
        tecla_valida : out std_logic
    );
end teclado_matricial_4x4;

architecture arch_teclado_matricial_4x4 of teclado_matricial_4x4 is

    constant SCAN_DIV_MAX      : integer := 50000;
    constant RELEASE_COUNT_MAX : integer := 20;

    signal scan_div      : integer range 0 to SCAN_DIV_MAX := 0;
    signal col_idx       : integer range 0 to 3 := 0;
    signal key_latched   : std_logic_vector(3 downto 0) := x"0";
    signal key_armed     : std_logic := '1';
    signal release_count : integer range 0 to RELEASE_COUNT_MAX := 0;

    function decode_key(row : integer; col : integer) return std_logic_vector is
    begin
        case row is
            when 0 =>
                case col is
                    when 0 => return x"1";
                    when 1 => return x"2";
                    when 2 => return x"3";
                    when others => return x"A";
                end case;
            when 1 =>
                case col is
                    when 0 => return x"4";
                    when 1 => return x"5";
                    when 2 => return x"6";
                    when others => return x"B";
                end case;
            when 2 =>
                case col is
                    when 0 => return x"7";
                    when 1 => return x"8";
                    when 2 => return x"9";
                    when others => return x"C";
                end case;
            when others =>
                case col is
                    when 0 => return x"E"; -- *
                    when 1 => return x"0";
                    when 2 => return x"F"; -- #
                    when others => return x"D";
                end case;
        end case;
    end function;

    function row_pressed(f : std_logic_vector(3 downto 0)) return boolean is
    begin
        return f /= "1111";
    end function;

    function row_index(f : std_logic_vector(3 downto 0)) return integer is
    begin
        if f(0) = '0' then
            return 0;
        elsif f(1) = '0' then
            return 1;
        elsif f(2) = '0' then
            return 2;
        else
            return 3;
        end if;
    end function;

begin

    process(col_idx)
    begin
        case col_idx is
            when 0 => columna <= "1110";
            when 1 => columna <= "1101";
            when 2 => columna <= "1011";
            when others => columna <= "0111";
        end case;
    end process;

    process(clk, rst)
        variable r : integer range 0 to 3;
    begin
        if rst = '1' then
            scan_div      <= 0;
            col_idx       <= 0;
            key_latched   <= x"0";
            key_armed     <= '1';
            release_count <= 0;
            tecla_valida  <= '0';

        elsif rising_edge(clk) then
            tecla_valida <= '0';

            if scan_div = SCAN_DIV_MAX then
                scan_div <= 0;

                if row_pressed(fila) then
                    release_count <= 0;

                    if key_armed = '1' then
                        r := row_index(fila);
                        key_latched  <= decode_key(r, col_idx);
                        tecla_valida <= '1';
                        key_armed    <= '0';
                    end if;

                else
                    if release_count = RELEASE_COUNT_MAX then
                        key_armed <= '1';
                    else
                        release_count <= release_count + 1;
                    end if;
                end if;

                if col_idx = 3 then
                    col_idx <= 0;
                else
                    col_idx <= col_idx + 1;
                end if;

            else
                scan_div <= scan_div + 1;
            end if;
        end if;
    end process;

    tecla <= key_latched;

end arch_teclado_matricial_4x4;