library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rec_tran_tb is
end entity;


architecture arch of rec_tran_tb is
    signal clk_tb,tickx16_tb,br_X1_tick_tb: std_logic;
    signal rst_tb: std_logic := '0';
    signal rx_out_tb: std_logic_vector (7 downto 0);
    signal t_launch_tb: std_logic;
    signal tx_in_tb  : std_logic_vector(7 downto 0):="10101010" ;  
	signal tx_out_tb  : std_logic;
begin
baude_rate: entity work.Baude_rate 
    Generic map (  DE10_clock => 50E6,
	               baudeRate => 9600)
    port map(	
            rst=>rst_tb,
            clk=>clk_tb,
            br_X1_tick=>br_X1_tick_tb,
            br_X16_tick=>tickx16_tb);


uut: entity work.reception port map(
                                    clk=>clk_tb,
                                    rst=>rst_tb,
                                    tickx16=> tickx16_tb,
                                    rx_in=>tx_out_tb, 
                                    rx_out=>rx_out_tb);

Horloge: process
begin
    clk_tb <= '1';
    wait for 10 NS;
    clk_tb <= '0';
    wait for 10 NS;
end process;

t_launching: process
begin	
	t_launch_tb <= '1';
	wait for 30 NS;
	t_launch_tb <= '0';
	wait for 2 MS;
end process;

transmission: entity work.transmission port map(
        clk   =>  clk_tb,       
        rst    =>   rst_tb,   
        t_launch =>   t_launch_tb,   
	    br_X1_tick	=>  br_X1_tick_tb, 
        tx_in  =>  tx_in_tb,
        tx_out  =>  tx_out_tb);

end arch;


