library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab7_1 is
    port (
        clk   : in  std_logic;
        rst   : in  std_logic;
        start : in  std_logic; -- сигнал запуску обчислення
        -- Вектор X (3x1) розрядністю 8 біт
        x1    : in  signed(7 downto 0);
        x2    : in  signed(7 downto 0);
        x3    : in  signed(7 downto 0);
        -- Матриця A (3x3) розрядністю 8 біт
        a11   : in  signed(7 downto 0);
        a12   : in  signed(7 downto 0);
        a13   : in  signed(7 downto 0);
        a21   : in  signed(7 downto 0);
        a22   : in  signed(7 downto 0);
        a23   : in  signed(7 downto 0);
        a31   : in  signed(7 downto 0);
        a32   : in  signed(7 downto 0);
        a33   : in  signed(7 downto 0);
        -- Вихідний вектор Y (3x1) розрядністю 16 біт
        y1    : out signed(15 downto 0);
        y2    : out signed(15 downto 0);
        y3    : out signed(15 downto 0);
        done  : out std_logic  -- сигнал завершення
    );
end entity;

architecture Behavioral of lab7_1 is
    signal temp_y1, temp_y2, temp_y3 : signed(15 downto 0);
    signal start_prev : std_logic; -- для детекції фронту start
begin
    process(clk, rst)
    begin
        if rst = '1' then
            temp_y1    <= (others => '0');
            temp_y2    <= (others => '0');
            temp_y3    <= (others => '0');
            done       <= '0';
            start_prev <= '0';
        elsif rising_edge(clk) then
            start_prev <= start;
            -- Виконуємо обчислення по фронту start (start = '1' і start_prev = '0')
            if start = '1' and start_prev = '0' then
                temp_y1 <= resize(a11 * x1, 16) + resize(a12 * x2, 16) + resize(a13 * x3, 16);
                temp_y2 <= resize(a21 * x1, 16) + resize(a22 * x2, 16) + resize(a23 * x3, 16);
                temp_y3 <= resize(a31 * x1, 16) + resize(a32 * x2, 16) + resize(a33 * x3, 16);
                done <= '1';
            else
                done <= '0';
            end if;
        end if;
    end process;

    -- Присвоєння виходів
    y1 <= temp_y1;
    y2 <= temp_y2;
    y3 <= temp_y3;
end architecture;
