library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity anti_rebond is
  port (
    clk    : in  std_logic;
    bouton_in : in  std_logic;
    bouton_out : out std_logic
    );
end entity anti_rebond;
 
architecture arch of anti_rebond is
 
  -- Set for 50 000 clock ticks of 50 MHz clock (1 ms)
  constant AR_ticks_counter : integer := 50000;
 
  signal stabil_counter : integer range 0 to AR_ticks_counter := 0;
  signal etat_courant : std_logic := '0';
 
begin
 
  p_Debounce : process (clk) is
  begin
    if rising_edge(clk) then
 
      -- Switch input is different than internal switch value, so an input is
      -- changing.  Increase counter until it is stable for AR_ticks_counter.
      if (bouton_in /= etat_courant and stabil_counter < AR_ticks_counter) then
        stabil_counter <= stabil_counter + 1;
 
      -- End of counter reached, switch is stable, register it, reset counter
      elsif stabil_counter = AR_ticks_counter then
        etat_courant <= bouton_in;
        stabil_counter <= 0;
 
      -- Switches are the same state, reset the counter
      else
        stabil_counter <= 0;
 
      end if;
    end if;
  end process p_Debounce;
 
  -- Assign internal register to output (debounced!)
  bouton_out <= etat_courant;
 
end architecture arch;