library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reception is
    port(
        clk, rst, tickx16, rx_in: in std_logic;
        rx_out             : out std_logic_vector(7 downto 0));
end entity;

architecture arch of reception is

    type rx_etats is (Idle,start,data,stop);
    signal rx_etat : rx_etats := Idle;

    signal rx_out_temp  : std_logic_vector(7 downto 0):= (others => '0');

begin


    machineAetat: process(clk)

        variable bit_counter: integer range 0 to 7      := 0;
        variable bit_duration: integer range 0 to 15  := 0;

    begin
        if rising_edge(clk) then
            if rst = '1' then
                rx_etat <= idle;
                bit_duration := 0;
                bit_counter := 7;
                rx_out_temp <= (others => '0');
                rx_out <= (others => '0');
            else
                if (tickx16 = '1') then 
                    case rx_etat is 
                        when Idle =>
                            rx_out_temp <= (others => '0');
                            bit_duration := 0;
                            bit_counter := 7;

                            if (rx_in = '0') then 
                                rx_etat <= start;
				report "here we go";
                            end if;

                         when start =>
				report "counting 'bit_duration' is " & integer'image(bit_duration);
                            if (rx_in = '0') then             -- verify that the start bit is preset
                                if (bit_duration = 10) then   -- wait a half of the baud rate cycle
                                    report "going live at 'bit_duration' ticks " & integer'image(bit_duration);
					                rx_etat <= data;              -- (it puts the capture point at the middle of duration of the receiving bit)
                                    bit_duration := 0;
                                else
                                    bit_duration := bit_duration + 1;
                                end if;
                            else
                            
                                rx_etat <= IDLE; 
                                                 -- the start bit is not preset (false alarm)
                            end if;
                            
                        when data =>
                        
                                    if bit_duration = 15 then 
                                    report "DATA inside";
                                        rx_out_temp(bit_counter) <= rx_in;
                                        bit_duration := 0;
                                        if bit_counter = 0 then 
                                            rx_etat <= stop;
                                            
                                            bit_duration := 0;
                                        else
                                            bit_counter := bit_counter - 1;
                                            report "counting 'bit_counter' is " & integer'image(bit_counter);
                                        end if;
                                    else
                                        bit_duration := bit_duration + 1;
                                    end if;
                        when stop =>
                                    if bit_duration = 15   then --
						report "stopingg";
					    if rx_in = '1' then  
                                            rx_out <= rx_out_temp;
                                            rx_etat <= Idle;
						 report "IDELING BACK !";
                                        else
                                            rx_etat <= Idle;
                                            report "IDELING BACK !";
                                        end if;
                                    else
                                        bit_duration := bit_duration + 1;
                                    end if;
                        when others =>
                                        rx_etat <= idle;
                    end case;
                end if;
            end if;
        end if;                    
    end process;
end arch;
