library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reception is
    port(
        clk, rst, tickx16, rx_in: in std_logic;
        rx_data_out             : out std_logic_vector(7 downto 0));
end entity;

architecture arch of reception is

    type rx_etats is (Idle,start,data,stop);
    signal rx_etat : rx_etats;

    signal rx_data_temp  : std_logic_vector(7 downto 0):= (others => '0');

begin

    rx_data_out <= rx_data_temp;

    machineAetat: process(clk)

        variable bit_count: integer range 0 to 7      := 0;
        variable bit_duration: integer range 0 to 15  := 0;

    begin
        if rising_edge(clk) then
            if rst = '1' then
                rx_etat <= idle;
                bit_duration := 0;
                bit_count := 0;
                rx_data_temp <= (others => '0');
            else
                if (tickx16 = '1') then 
                    case rx_etat is 
                        when Idle =>
                            rx_data_temp <= (others => '0');
                            bit_duration := 0;
                            bit_count := 0;
                            if (rx_in = '0') then 
                                rx_etat <= start;
                                if (bit_duration = 7) then
                                    rx_etat <= data;
                                    bit_duration := 0;
                                else
                                    bit_duration := bit_duration +1;
                                end if;
                            else
                                rx_etat <= Idle;
                            end if;

                        when data =>
                                    if bit_duration = 10 then 
                                        rx_data_temp(bit_count) <= rx_in;
                                        bit_duration := 0;
                                        if bit_count = 7 then 
                                            rx_etat <= stop;
                                            bit_duration := 0;
                                        else
                                            bit_count := bit_count + 1;
                                        end if;
                                    else
                                        bit_duration := bit_duration + 1;
                                    end if;
                        when stop =>
                                    if bit_duration = 15 then
                                        rx_etat <= idle;
                                        bit_duration := 0;
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
