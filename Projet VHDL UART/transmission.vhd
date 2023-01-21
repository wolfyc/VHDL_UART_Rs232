library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity transmission is
    port(
        clk            : in  std_logic;
        rst          : in  std_logic;
        launch       : in  std_logic;
	    br_X1_tick	: in  std_logic;
        tx_data_in     : in  std_logic_vector (7 downto 0);
        tx_data_out    : out std_logic
        );
end transmission;


architecture Behavioral of transmission is

    type tx_etats is (Idle, start, data, stop);
    signal tx_etat  : tx_etats := Idle;


    --signal br_X1_tick     : std_logic:= '0';

    signal data_index        : integer range 0 to 8 := 0;
    signal data_index_rst  : std_logic := '1';
    signal stored_data       : std_logic_vector(7 downto 0) := (others=>'0');

    signal launch_detected    : std_logic := '0';
    signal start_rst       : std_logic := '0';

begin


-- The br_X1_tick_generator process generates the UART baud rate clock by
-- setting the br_X1_tick signal when the counter counts BAUD_CLK_TICKS
-- ticks of the master clk. The BAUD_CLK_TICKS constant is specified in
-- the package and reflects the ratio between the master clk and the baud rate.


-- The launch_detector process works on the master clk frequency and catches
-- short (one clk cycle long) impulses in the launch signal and keeps it for
-- the transmission_FSM. launch_detector is needed because the transmission_FSM works on
-- the baud rate frequency, but the button_debounce module generates one master clk
-- cycle long impulse per one button push. launch_detected keeps the information that
-- such event has occurred.
-- The second purpose of launch_detector is to secure the transmitting data.
-- stored_data keeps the transmitting data saved during the transmission.

    launch_detector: process(clk)
    begin
        if rising_edge(clk) then
            if (rst ='1') or (start_rst = '1') then
                launch_detected <= '0';
            else
                if (launch = '1') and (launch_detected = '0') then
                    launch_detected <= '1';
report "start detected";
                    stored_data <= tx_data_in;
                end if;
            end if;
        end if;
    end process launch_detector;


-- The data_index_counter process is a simple counter from 0 to 7 working on the baud
-- rate frequency. It is used to perform transformation between the parallel
-- data (stored_data) and the serial output (tx_data_out).
-- The data_index signal is used in transmission_FSM to go over the stored_data vector
-- and send the bits one by one.

    data_index_counter: process(clk)
    begin
        if rising_edge(clk) then
            if (rst = '1') or (data_index_rst = '1') then
                data_index <= 0;
            elsif (br_X1_tick = '1' and data_index < 8) then
                data_index <= data_index + 1;
report " endex counting // 'data_index' is " & integer'image(data_index);
            end if;
        end if;
    end process data_index_counter;


-- The UART_FSM_tx process represents a Finite etat Machine which has
-- four etats (Idle, start, data, stop). See inline comments for more details.

    transmission_FSM: process(clk)
    begin
        if rising_edge(clk) then
            if (rst = '1') then
                tx_etat <= Idle;
                data_index_rst <= '1';   -- keep data_index_counter on hold
                start_rst <= '1';        -- keep launch_detector on hold
                tx_data_out <= '1';        -- keep tx line set along the standard
            else
                if (br_X1_tick = '1') then   -- the FSM works on the baud rate frequency
                    case tx_etat is

                        when Idle =>
			report "Idling";
                            data_index_rst <= '1';    -- keep data_index_counter on hold
                            start_rst <= '0';         -- enable launch_detector to wait for starting impulses
                            tx_data_out <= '1';         -- keep tx line set along the standard

                            if (launch_detected = '1') then
                                tx_etat <= start;
report "starting";
                            end if;

                        when start =>
report "started";
                            data_index_rst <= '0';   -- enable data_index_counter for data etat
                            tx_data_out <= '0';        -- send '0' as a start bit

                            tx_etat <= data;

                        when data =>

                            tx_data_out <= stored_data(data_index);   -- send one bit per one baud clock cycle 8 times
report "counting 'data_index' is " & integer'image(data_index);
                            if (data_index = 7) then
report "rest 'data_index' at " & integer'image(data_index);
                                data_index_rst <= '1';              -- disable data_index_counter when it has reached 8
                                tx_etat <= stop;
                            end if;

                        when stop =>
report "stopped";
                            tx_data_out <= '1';     -- send '1' as a stop bit
                            start_rst <= '1';     -- prepare launch_detector to be ready detecting the next impuls in Idle

                            tx_etat <= Idle;

                        when others =>
                            tx_etat <= Idle;
                    end case;
                end if;
            end if;
        end if;
    end process transmission_FSM;


end Behavioral;