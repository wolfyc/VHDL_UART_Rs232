library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity pilot is

    port(
        clk              : in  std_logic;
        rst            : in  std_logic;
        tx_enable        : in  std_logic;

        data_in          : in  std_logic_vector (7 downto 0);
        data_out         : out std_logic_vector (7 downto 0);

        rx               : in  std_logic;
        tx               : out std_logic
        );
end pilot;


architecture Behavioral of pilot is

    signal bouton_appuye : std_logic;

begin

    tx_button_controller: entity work.anti_rebond
    port map(
            clk            => clk,
            --reset          => rst,
            bouton_in      => tx_enable,
            bouton_out     => bouton_appuye
            );

    UART_transceiver: entity work.UART
    port map(
            clk            => clk,
            rst          => rst,
            t_launch       => bouton_appuye,
            data_in        => data_in,
            data_out       => data_out,
            rx             => rx,
            tx             => tx
            );

end Behavioral;