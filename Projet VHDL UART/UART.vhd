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

    component transmission
        port(
            clk            : in  std_logic;
            rst          : in  std_logic;
            t_launch       : in  std_logic;
            br_X1_tick	: in  std_logic;
            tx_in     : in  std_logic_vector (7 downto 0);
            tx_out    : out std_logic
            );
    end component;


    component reception
        port(
            clk, rst, tickx16, rx_in: in std_logic;
            rx_out             : out std_logic_vector(7 downto 0)
            );
    end component;

    component baude_rate
        port(
            rst,clk: in std_logic;
		    br_X1_tick : out std_logic;
		    br_X16_tick: out std_logic
            );
    end component;
    
    signal br_X1_tick ,tickx16	: std_logic; 
begin

    B_rate: Baude_rate 
        Generic map (  DE10_clock => 50E6,
                        baudeRate => 9600)
        port map(	
            rst=>rst,
            clk=>clk,
            br_X1_tick=>br_X1_tick,
            br_X16_tick=>tickx16);

    transmitter: transmission
    port map(
            clk            => clk,
            rst          => rst,
            t_launch       => t_launch,
            tx_in     => data_in,
            tx_out    => tx,
            br_X1_tick => br_X1_tick
            );


    receiver: reception
    port map(
            clk            => clk,
            rst          => rst,
            rx_in     => rx,
            rx_out    => data_out,
            tickx16 => tickx16
            );


end arch;