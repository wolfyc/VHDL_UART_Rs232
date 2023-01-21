library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rec_tran_tb is
end entity;


architecture arch of rec_tran_tb is
    signal clk_tb,tickx16_tb,br_X1_tick_tb: std_logic;
    signal rst_tb: std_logic := '0';
    signal rx_in_tb: std_logic := '1';
    signal rx_data_out_tb: std_logic_vector (7 downto 0);
    signal valeur :std_logic_vector(0 to 9):="0101111001";
    signal bit_index: integer range 0 to 16:=0;
    signal tram_end : integer := 9;
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
                                    rx_in=>rx_in_tb, 
                                    rx_out=>rx_data_out_tb);

Horloge: process
begin
    clk_tb <= '1';
    wait for 10 NS;
    clk_tb <= '0';
    wait for 10 NS;
end process;

transmission: entity work.transmission port map(
        clk   =>  clk_tb,       
        rst    =>   rst_tb,   
        t_launch =>   tx_start_tb,   
	    br_X1_tick	=>  br_X1_tick_tb, 
        tx_data_in  =>  tx_data_in_tb,
        tx_data_out  =>  tx_data_out_tb);

end arch;


