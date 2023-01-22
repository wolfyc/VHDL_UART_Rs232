library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity anti_rebond_tb is
 
end entity anti_rebond_tb;
 
architecture arch of anti_rebond_tb is
    signal bouton_out_tb: std_logic;
    signal bouton_in_tb: std_logic := '0';
    signal clk_tb: std_logic;
begin
    uut: entity work.anti_rebond port map(
        clk   => clk_tb,
        bouton_in => bouton_in_tb,
        bouton_out =>bouton_out_tb
    );
    Horloge: process
        begin
            clk_tb <= '1';
            wait for 10 NS;
            clk_tb <= '0';
            wait for 10 NS;
    end process;


              bouton_in_tb<='0', '1' after 25 us, '0' after 110 us, '1' after 205 us;

end arch;
