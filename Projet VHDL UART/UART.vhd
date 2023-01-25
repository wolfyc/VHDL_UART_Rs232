library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity UART is

    port(
        clk            : in  std_logic;
        rst          : in  std_logic;
        t_launch       : in  std_logic;

        data_in        : in  std_logic_vector (7 downto 0);
        data_out       : out std_logic_vector (7 downto 0);

        rx             : in  std_logic;
        tx             : out std_logic
    );
end UART;


architecture arch of UART is
    
    signal br_X1_tick ,tickx16	: std_logic; 
begin

    B_rate: entity work.Baude_rate 
        Generic map (  DE10_clock => 50E6,
                        baudeRate => 9600)
        port map(	
            rst=>rst,
            clk=>clk,
            br_X1_tick=>br_X1_tick,
            br_X16_tick=>tickx16);

    tx_module: entity work.transmission
    port map(
            clk            => clk,
            rst          => rst,
            t_launch       => t_launch,
            tx_in     => data_in,
            tx_out    => tx,
            br_X1_tick => br_X1_tick
            );

    rx_module: entity work.reception
    port map(
            clk            => clk,
            rst          => rst,
            rx_in     => rx,
            rx_out    => data_out,
            tickx16 => tickx16
            );
end arch;