library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity transmission is
    port(
        clk            : in  std_logic;
        rst          : in  std_logic;
        t_launch       : in  std_logic;
	    br_X1_tick	: in  std_logic;
        tx_in     : in  std_logic_vector (7 downto 0);
        tx_out    : out std_logic
        );
end transmission;


architecture Behavioral of transmission is

    type tx_etats is (Idle, start, data, stop);
    signal tx_etat  : tx_etats := Idle;


    --signal br_X1_tick     : std_logic:= '0';

    signal bit_counter        : integer range 0 to 8 := 0;
    signal bit_counter_rst  : std_logic := '1';
    signal stored_data       : std_logic_vector(7 downto 0) := (others=>'0');

    signal t_launch_detected    : std_logic := '0';
    signal start_rst       : std_logic := '0';

begin


-- The br_X1_tick_generator process generates the UART baud rate clock by
-- setting the br_X1_tick signal when the counter counts BAUD_CLK_TICKS
-- ticks of the master clk. The BAUD_CLK_TICKS constant is specified in
-- the package and reflects the ratio between the master clk and the baud rate.


-- The t_launch_detector process works on the master clk frequency and catches
-- short (one clk cycle long) impulses in the t_launch signal and keeps it for
-- the transmission_FSM. t_launch_detector is needed because the transmission_FSM works on
-- the baud rate frequency, but the button_debounce module generates one master clk
-- cycle long impulse per one button push. t_launch_detected keeps the information that
-- such event has occurred.
-- The second purpose of t_launch_detector is to secure the transmitting data.
-- stored_data keeps the transmitting data saved during the transmission.

    t_launch_detector: process(clk)
    begin
        if rising_edge(clk) then
            if (rst ='1') or (start_rst = '1') then
                t_launch_detected <= '0';
            else
                if (t_launch = '1') and (t_launch_detected = '0') then
                    t_launch_detected <= '1';
report "start detected";
                    stored_data <= tx_in;
                end if;
            end if;
        end if;
    end process t_launch_detector;


-- The bit_counter_counter process is a simple counter from 0 to 7 working on the baud
-- rate frequency. It is used to perform transformation between the parallel
-- data (stored_data) and the serial output (tx_out).
-- The bit_counter signal is used in transmission_FSM to go over the stored_data vector
-- and send the bits one by one.

    bit_counter_counter: process(clk)
    begin
        if rising_edge(clk) then
            if (rst = '1') or (bit_counter_rst = '1') then
                bit_counter <= 0;
            elsif (br_X1_tick = '1' and bit_counter < 8) then
                bit_counter <= bit_counter + 1;
report " endex counting // 'bit_counter' is " & integer'image(bit_counter);
            end if;
        end if;
    end process bit_counter_counter;


-- The UART_FSM_tx process represents a Finite etat Machine which has
-- four etats (Idle, start, data, stop). See inline comments for more details.

    transmission_FSM: process(clk)
    begin
        if rising_edge(clk) then
            if (rst = '1') then
                tx_etat <= Idle;
                bit_counter_rst <= '1';   -- keep bit_counter_counter on hold
                start_rst <= '1';        -- keep t_launch_detector on hold
                tx_out <= '1';        -- keep tx line set along the standard
            else
                if (br_X1_tick = '1') then   -- the FSM works on the baud rate frequency
                    case tx_etat is

                        when Idle =>
			report "Idling";
                            bit_counter_rst <= '1';    -- keep bit_counter_counter on hold
                            start_rst <= '0';         -- enable t_launch_detector to wait for starting impulses
                            tx_out <= '1';         -- keep tx line set along the standard

                            if (t_launch_detected = '1') then
                                tx_etat <= start;
report "starting";
                            end if;

                        when start =>
report "started";
                            bit_counter_rst <= '0';   -- enable bit_counter_counter for data etat
                            tx_out <= '0';        -- send '0' as a start bit

                            tx_etat <= data;

                        when data =>

                            tx_out <= stored_data(bit_counter);   -- send one bit per one baud clock cycle 8 times
report "counting 'bit_counter' is " & integer'image(bit_counter);
                            if (bit_counter = 7) then
report "rest 'bit_counter' at " & integer'image(bit_counter);
                                bit_counter_rst <= '1';              -- disable bit_counter_counter when it has reached 8
                                tx_etat <= stop;
                            end if;

                        when stop =>
report "stopped";
                            tx_out <= '1';     -- send '1' as a stop bit
                            start_rst <= '1';     -- prepare t_launch_detector to be ready detecting the next impuls in Idle

                            tx_etat <= Idle;

                        when others =>
                            tx_etat <= Idle;
                    end case;
                end if;
            end if;
        end if;
    end process transmission_FSM;


end Behavioral;