library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity emission is
generic (N: integer:=9600);
 port(
	emission:out std_logic,
	p_date_Emission: unsigned (7 downto 0));
end entity;

architecture arch of reception is
signal counteur_Emission: integer := 10;
