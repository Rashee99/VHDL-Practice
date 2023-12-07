library ieee;
use ieee.std_logic_1164.all; -- This two lines are included because st_logic type is used.

entity T11_StdLogicVectorTb is
end entity;

architecture sim of T11_StdLogicVectorTb is

	signal s1v1 : std_logic_vector(7 downto 0);
	signal s1v2 : std_logic_vector(7 downto 0) := (others => '0');
	signal s1v3 : std_logic_vector(7 downto 0) := (others => '1');
	
begin
	process is
	begin
		
		wait for 10 ns;
		
	end process;
	
end architecture;

