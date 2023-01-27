library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity pilot_tb is
--  Port ( );
end pilot_tb;

architecture Behavioral of pilot_tb is


    signal clk            : std_logic := '0';
    signal rst          : std_logic := '0';
    signal t_launch       : std_logic := '0';

    signal tx_data_in     : std_logic_vector (7 downto 0) := (others => '0');
    signal rx_data_out    : std_logic_vector (7 downto 0) := (others => '0');

    signal tx_serial_out  : std_logic := '1';
    signal rx_serial_in   : std_logic := '1';


    constant clock_cycle : time := 20 ns;    -- 1/clk (1 / 50 000 000)

begin

    uut: entity work.pilot
    port map(
            clk       => clk,
            rst     => rst,
            tx_enable => t_launch,

            data_in   => tx_data_in,
            data_out  => rx_data_out,

            tx        => tx_serial_out,
            rx        => rx_serial_in
            );


    rx_serial_in <= tx_serial_out;


    clk_generator: process
    begin
            wait for clock_cycle/2;
                clk <= '1';
            wait for clock_cycle/2;
                clk <= '0';
    end process clk_generator;


    signal_generator: process
    begin
            tx_data_in <= X"55";
            
        wait for 1.5 ms;

        tx_data_in <= X"FF";

        wait for 1.5 ms;
    end process;

	bouton_sim_generator: process
   	 begin
            t_launch <= '0';
        wait for 25 ns;
            t_launch <= '1';
        wait for 50 ns;    -- test the button_debounce module
            t_launch <= '0';
        wait for 20 ns;
            t_launch <= '1';
	    wait for 101 us;
 	        t_launch <= '0';
        wait for 1.4 ms;
    end process;


end Behavioral;