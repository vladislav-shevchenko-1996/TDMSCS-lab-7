library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity lab7_2 is
    generic (
        MATRIX_ROWS  : integer := 3;  -- Кількість рядків матриці
        MATRIX_COLS  : integer := 3;  -- Кількість стовпців матриці
        DATA_WIDTH   : integer := 8;  -- Розрядність вхідних даних
        RESULT_WIDTH : integer := 16; -- Розрядність результату
        ADDR_WIDTH   : integer := 8   -- Розрядність адреси
    );
    port (
        clk          : in  std_logic;
        rst          : in  std_logic;
        -- Інтерфейс завантаження даних
        load_enable  : in  std_logic; -- Дозвіл завантаження
        load_matrix  : in  std_logic; -- 1 = матриця, 0 = вектор
        load_addr    : in  unsigned(ADDR_WIDTH-1 downto 0);
        load_data    : in  signed(DATA_WIDTH-1 downto 0);
        -- Інтерфейс обчислення
        start_calc   : in  std_logic; -- Запуск обчислення
        calc_done    : out std_logic; -- Завершення обчислення
        -- Інтерфейс результату
        result_addr  : in  unsigned(ADDR_WIDTH-1 downto 0);
        result_data  : out signed(RESULT_WIDTH-1 downto 0);
        result_valid : out std_logic;
        -- Статус
        error        : out std_logic  -- Помилка розмірності
    );
end entity;

architecture Behavioral of lab7_2 is
    -- Обчислення розмірів пам'яті
    constant MATRIX_SIZE       : integer := MATRIX_ROWS * MATRIX_COLS;
    constant VECTOR_SIZE       : integer := MATRIX_COLS;
    constant RESULT_SIZE       : integer := MATRIX_ROWS;
    constant TOTAL_MATRIX_ADDR : integer := MATRIX_SIZE - 1;
    constant TOTAL_VECTOR_ADDR : integer := VECTOR_SIZE - 1;
    constant TOTAL_RESULT_ADDR : integer := RESULT_SIZE - 1;

    -- Типи пам'яті
    type matrix_ram_type is array (0 to MATRIX_SIZE-1) of signed(DATA_WIDTH-1 downto 0);
    type vector_ram_type is array (0 to VECTOR_SIZE-1) of signed(DATA_WIDTH-1 downto 0);
    type result_ram_type is array (0 to RESULT_SIZE-1) of signed(RESULT_WIDTH-1 downto 0);

    -- Сигнали пам'яті
    signal matrix_ram : matrix_ram_type := (others => (others => '0'));
    signal vector_ram : vector_ram_type := (others => (others => '0'));
    signal result_ram : result_ram_type := (others => (others => '0'));

    -- FSM
    type state_type is (IDLE, CALCULATING, DONE_STATE);
    signal state : state_type := IDLE;

    -- Лічильники для обчислення
    signal row_counter : integer range 0 to MATRIX_ROWS-1 := 0;
    signal col_counter : integer range 0 to MATRIX_COLS-1 := 0;
    signal calc_step   : integer range 0 to 2 := 0; -- 0=init, 1=accumulate, 2=store

    -- Регістри для обчислення
    signal accumulator : signed(RESULT_WIDTH-1 downto 0) := (others => '0');
    signal mult_result : signed(RESULT_WIDTH-1 downto 0) := (others => '0');

    -- Допоміжні сигнали
    signal matrix_addr     : integer range 0 to MATRIX_SIZE-1;
    signal load_addr_int   : integer;
    signal result_addr_int : integer;
    signal error_internal  : std_logic := '0';

    -- Додаткові сигнали для детекції фронтів
    signal load_enable_prev : std_logic := '0';
    signal start_calc_prev  : std_logic := '0';
begin
    -- Перетворення адрес
    load_addr_int   <= to_integer(load_addr);
    result_addr_int <= to_integer(result_addr);
    matrix_addr     <= row_counter * MATRIX_COLS + col_counter;

    -- Перевірка помилок адресації
    error_check: process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                error_internal <= '0';
            else
                error_internal <= '0';
                if load_enable = '1' then
                    if load_matrix = '1' and load_addr_int > TOTAL_MATRIX_ADDR then
                        error_internal <= '1';
                    elsif load_matrix = '0' and load_addr_int > TOTAL_VECTOR_ADDR then
                        error_internal <= '1';
                    end if;
                end if;
                if result_addr_int > TOTAL_RESULT_ADDR then
                    error_internal <= '1';
                end if;
            end if;
        end if;
    end process;

    error <= error_internal;

    -- Процес завантаження даних
    load_process: process(clk)
    begin
        if rising_edge(clk) then
            load_enable_prev <= load_enable;
            if rst = '1' then
                matrix_ram <= (others => (others => '0'));
                vector_ram <= (others => (others => '0'));
            elsif load_enable = '1' and error_internal = '0' then
                if load_matrix = '1' and load_addr_int <= TOTAL_MATRIX_ADDR then
                    matrix_ram(load_addr_int) <= load_data;
                elsif load_matrix = '0' and load_addr_int <= TOTAL_VECTOR_ADDR then
                    vector_ram(load_addr_int) <= load_data;
                end if;
            end if;
        end if;
    end process;

    -- Обчислювальний процес (FSM)
    calc_process: process(clk, rst)
    begin
        if rst = '1' then
            state           <= IDLE;
            row_counter     <= 0;
            col_counter     <= 0;
            calc_step       <= 0;
            accumulator     <= (others => '0');
            calc_done       <= '0';
            result_ram      <= (others => (others => '0'));
            start_calc_prev <= '0';
            mult_result     <= (others => '0');
        elsif rising_edge(clk) then
            start_calc_prev <= start_calc;
            case state is
                when IDLE =>
                    calc_done <= '0';
                    -- Детектування позитивного фронту start_calc
                    if start_calc = '1' and start_calc_prev = '0' then
                        row_counter <= 0;
                        col_counter <= 0;
                        calc_step   <= 0;
                        accumulator <= (others => '0');
                        mult_result <= (others => '0');
                        state       <= CALCULATING;
                    end if;

                when CALCULATING =>
                    case calc_step is
                        when 0 => -- Ініціалізація множення
                            if matrix_addr < MATRIX_SIZE and col_counter < VECTOR_SIZE then
                                mult_result <= resize(matrix_ram(matrix_addr) * vector_ram(col_counter), RESULT_WIDTH);
                            else
                                mult_result <= (others => '0');
                            end if;
                            calc_step <= 1;

                        when 1 => -- Акумуляція
                            accumulator <= accumulator + mult_result;
                            if col_counter = MATRIX_COLS - 1 then
                                calc_step <= 2;
                            else
                                col_counter <= col_counter + 1;
                                calc_step   <= 0;
                            end if;

                        when 2 => -- Збереження результату
                            if row_counter < RESULT_SIZE then
                                result_ram(row_counter) <= accumulator;
                            end if;
                            accumulator <= (others => '0');
                            col_counter <= 0;
                            if row_counter = MATRIX_ROWS - 1 then
                                state <= DONE_STATE;
                            else
                                row_counter <= row_counter + 1;
                                calc_step   <= 0;
                            end if;

                        when others =>
                            calc_step <= 0;
                    end case;

                when DONE_STATE =>
                    calc_done <= '1';
                    if start_calc = '0' then
                        state <= IDLE;
                    end if;

                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;

    -- Вихід результату
    result_output: process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                result_data  <= (others => '0');
                result_valid <= '0';
            else
                if result_addr_int <= TOTAL_RESULT_ADDR and result_addr_int >= 0 then
                    result_data  <= result_ram(result_addr_int);
                    result_valid <= '1';
                else
                    result_data  <= (others => '0');
                    result_valid <= '0';
                end if;
            end if;
        end if;
    end process;
end architecture;
