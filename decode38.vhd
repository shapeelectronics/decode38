library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity decode38 is 
	port( 
			a: in STD_LOGIC_VECTOR(2 downto 0);
			y: out STD_LOGIC_VECTOR(7 downto 0)
			);
end decode38;

architecture decode38 of decode38 is 
begin 
	process(a)
	variable j: integer;
	begin 
			j :=conv_integer(a);
			for i in 0 to 7 loop
				if (i = j) then
						y(i)<='1';
				else
						y(i)<='0';
				end if;
			end loop;
	end process;
end decode38;