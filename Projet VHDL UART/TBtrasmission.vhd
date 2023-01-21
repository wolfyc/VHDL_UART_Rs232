
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb2 is
end entity;


architecture arch of tb2 is
   signal clk_tb   : std_logic;         
   signal rst_tb   : std_logic:='0';     
   signal tx_start_tb: std_logic;      
   signal br_X1_tick_tb,tickx16_tb	: std_logic; 
   signal tx_data_in_tb  : std_logic_vector(7 downto 0):="10101010" ;  
	signal tx_data_out_tb  : std_logic;
begin
baude_rate: entity work.Baude_rate 
    Generic map (  DE10_clock => 50E6,
                    baudeRate => 9600)
    port map(	
        rst=>rst_tb,
        clk=>clk_tb,
        br_X1_tick=>br_X1_tick_tb,
        br_X16_tick=>tickx16_tb);

uut: entity work.UART_tx port map(
        clk   =>  clk_tb,       
        reset    =>   rst_tb,   
        tx_start =>   tx_start_tb,   
	    br_X1_tick	=>  br_X1_tick_tb, 
        tx_data_in  =>  tx_data_in_tb,
        tx_data_out  =>  tx_data_out_tb);

Horloge: process
    begin
        clk_tb <= '1';
        wait for 10 NS;
        clk_tb <= '0';
        wait for 10 NS;
end process;

Starting: process
begin	
	tx_start_tb <= '1';
	wait for 30 NS;
	tx_start_tb <= '0';
	wait for 2 MS;
end process;

--transmission: process(br_X1_tick_tb,clk_tb)
--begin
--    if (rst_tb = '1') then
--        bit_index <= 0;
--    elsif rising_edge(br_X1_tick_tb) then
--	if bit_index < 16 then
--        bit_index <= bit_index +1;
--	end if;
--	if bit_index > 14 then
--		rx_in_tb <= '1';
--		bit_index <= 0;
--	end if;
--        if (bit_index > 4) and (bit_index < 15)  then
--            rx_in_tb <= valeur(bit_index-5);
--        end if;
--    end if;
--	
--end process;

end arch;
