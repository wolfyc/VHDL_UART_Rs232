library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity pilot is

    port(
        clk              : in  std_logic;
        reset_n            : in  std_logic;
        tx_enable        : in  std_logic;

        tx_data_in          : in  std_logic_vector (7 downto 0);
        rx_data_out         : out std_logic_vector (7 downto 0);

        rx               : in  std_logic;
        tx               : out std_logic
        );
end pilot;


architecture Behavioral of pilot is

    signal t_launched : std_logic;
	 signal rst : std_logic;
begin
		rst <= not reset_n;
    tx_button_controller: entity work.anti_rebond
    port map(
            clk            => clk,
            bouton_in      => tx_enable,
            bouton_out     => t_launched
            );

    UART_transceiver: entity work.UART
    port map(
            clk            => clk,
            rst          => rst,
            t_launch       => t_launched,
            data_in        => tx_data_in,
            data_out       => rx_data_out,
            rx             => rx,
            tx             => tx
            );
				
end Behavioral;