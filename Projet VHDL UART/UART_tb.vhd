library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity UART_tb is
end UART_tb;


architecture arch of UART_tb is
   signal clk_tb           : std_logic;
   signal rst_tb         : std_logic:= '0';
   signal t_launch_tb     : std_logic := '0';

   signal data_in_tb   :     std_logic_vector (7 downto 0) := "10111001";
   signal data_out_tb  :     std_logic_vector (7 downto 0);

   signal rx_tb     :   std_logic;     
   signal tx_tb     :   std_logic;     
begin
    Horloge: process
    begin
        clk_tb <= '1';
        wait for 10 NS;
        clk_tb <= '0';
        wait for 10 NS;
    end process;

    uut: entity work.UART port map(
        clk           => clk_tb,
        rst          => rst_tb,
        t_launch       => t_launch_tb,

        data_in        => data_in_tb,
        data_out       => data_out_tb,

        rx             => rx_tb,
        tx             => tx_tb
    );
end arch;