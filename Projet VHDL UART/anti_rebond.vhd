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
 
  -- Set for 250 000 clock ticks of 50 MHz clock (5 ms)
  constant c_DEBOUNCE_LIMIT : integer := 250000;
 
  signal r_Count : integer range 0 to c_DEBOUNCE_LIMIT := 0;
  signal r_State : std_logic := '0';
 
begin
 
  p_Debounce : process (clk) is
  begin
    if rising_edge(clk) then
 
      -- Switch input is different than internal switch value, so an input is
      -- changing.  Increase counter until it is stable for c_DEBOUNCE_LIMIT.
      if (bouton_in /= r_State and r_Count < c_DEBOUNCE_LIMIT) then
        r_Count <= r_Count + 1;
 
      -- End of counter reached, switch is stable, register it, reset counter
      elsif r_Count = c_DEBOUNCE_LIMIT then
        r_State <= bouton_in;
        r_Count <= 0;
 
      -- Switches are the same state, reset the counter
      else
        r_Count <= 0;
 
      end if;
    end if;
  end process p_Debounce;
 
  -- Assign internal register to output (debounced!)
  bouton_out <= r_State;
 
end architecture arch;