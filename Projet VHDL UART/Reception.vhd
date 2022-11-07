library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity reception is
port ( recept: in std_logic;
	tram_recu: unsigned (7 downto 0));
end entity;

architecture arch of reception is
signal count: integer := 10;
signal tram_r: unsigned (7 downto 0):= (others =>'0');
signal parity_bit_R : std_logic := '0';
begin


process(recept)
begin
	if count = 10 and tram_r = x"00" then
		if recept = '1' then
			count <= count -1;
		elsif count < 10 and count > 1 then 
			tram_r (count-2) <= to_unsigned(recept);
			parity_bit_R <= parity_bit_R xor recept;
			count <= count - 1;
		elsif count < 2 then
			if count == 1 and recept /= parity_bit_R then
				count <= 10; --reset
				tram_r<= (others =>'0');
			end if;
			if count ==0 and reception <='0' then
				count <= 10; --reset
				tram_r<= (others =>'0');
			end if;
		end if;
	end if;
end process;
if tram_r /= x"00" then
	tram_recu <= tram_r;
end if;
end arch;