library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reception_tb is
end entity;


architecture arch of reception_tb is
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


transmission: process(br_X1_tick_tb)
variable value_changer: integer := 0;
begin
    if (rst_tb = '1') then
        bit_index <= 0;
    elsif rising_edge(br_X1_tick_tb) then
	if bit_index < 16 then
        	bit_index <= bit_index +1;
	end if;
	if bit_index > 12 then
		rx_in_tb <= '1';
		bit_index <= 0;
		value_changer := value_changer +1;
		if value_changer < 1 then
            valeur <=  "0101111000" ;
            report "Stop bit test";
		elsif value_changer = 1 then
			valeur <=  "1101111001" ;
		    report "Start bit test";
		else
            valeur <= "1100000001";
            value_changer := 0; 
            report "other values test";
		end if;
	end if;
	if (bit_index > 2) and (bit_index < 13)  then
		rx_in_tb <= valeur(bit_index - 3);
	end if;
    end if;
	
end process;

end arch;


