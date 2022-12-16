library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity transmission is 
   port( 
     clk,rst,tx_strat: in  std_logic;
     tx_data_out    : out std_logic
     tx_data_in     : in  std_logic_vector (7 downto 0));
  end entity;
    
 architecture arch of transmission is 
   
   type tx_states_t is (Idle, start, data, stop);
   signal tx_state  : tx_states_t := Idle;
   signal start_detected,start_reset     : std_logic := '0';

   signal data_index        : integer range 0 to 7 := 0;
   signal data_index_reset  : std_logic := '1';
   signal stored_data       : std_logic_vector(7 downto 0) := (others=>'0');
   
begin
  rx_data_in<=stored_data
   machineAetat:  process(clk)
   begin
        if rising_edge(clk) then
            if rst = '1' then
                tx_state <= Idle;           
                tx_data_out <= '1';
                start_reset <= '1';
                data_index_reset <= '1';
            else
                if (baud_rate_clk = '1') then   
                    case tx_state is
                        when IDLE =>
                            data_index_reset <= '1';    
                            start_reset <= '0';         
                            tx_data_out <= '1';         
                            if start_detected = '1' then
                                tx_state <= START;
                            end if;
                        when START =>
                            data_index_reset <= '0';  
                            tx_data_out <= '0';       
                            tx_state <= DATA;
                        when DATA =>
                            tx_data_out <= stored_data(data_index);   
                            if data_index = 7 then
                                data_index_reset <= '1';              
                                tx_state <= STOP;
                            end if;
                        when STOP =>
                            tx_data_out <= '1';     
                            start_reset <= '1';     
                            tx_state <= IDLE;
                        when others =>
                            tx_state <= IDLE;
                    end case;
                end if;
            end if;
        end if;
    end process;
 end transmission;
