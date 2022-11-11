library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity baude_rate is 
	Generic (  DE10_clock : positive := 50E6;-- frequence de la carte FPGA 50 mHz
		    baudeRate : positive := 9600);
	port( rst,clk: in std_logic;
		br_X1_tick : out std_logic;
		br_X16_tick: out std_logic);
end entity;

architecture arch of baude_rate is

constant divisor_bd: positive:= DE10_clock / bauderate; --limit du compteur du baude rate pour la transmission
constant divisor_bdx16: positive:= DE10_clock /bauderate/16; -- limite du compteur d'echantillonage pour la reception

signal countx1: integer range 0 to divisor_bd;
signal countx16: integer range 0 to divisor_bdx16;

signal tick : std_logic;
signal tickx16 : std_logic;

begin

	br_X1_tick <= tick; --affectation signal vers sortie
	br_X16_tick <= tickx16; --affectation signal vers sortie x16

	BD_clock: process(rst,clk)
	begin

		if rst='1' then 
			tick <= '0';
			tickx16 <= '0';
			countx1 <= 0;
			countx16<= 0;
		elsif rising_edge(clk) then
			tick <= '0'; --remettre le signal a zero apres une period d'horloge
			tickx16 <= '0'; --remettre le signal a zero apres une period d'horloge

			if countx1 < divisor_bd then --compteur de transmission
				countx1 <= countx1 +1;
			else
				countx1 <= 0;
				tick <= '1';
			end if;

			if countx16 < divisor_bdx16 then --compteur de reception
				countx16 <= countx16 +1;
			else
				countx16 <= 0;
				tickx16 <= '1';
			end if;

		end if;
	end process;
end arch;