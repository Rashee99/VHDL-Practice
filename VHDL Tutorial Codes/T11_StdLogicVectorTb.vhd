library ieee;
use ieee.std_logic_1164.ALL; -- This two lines are included because st_logic type is used.

entity T11_StdLogicVectorTb is
end entity;

architecture sim of T11_StdLogicVectorTb is

	signal s1v1 : std_logic_vector(7 downto 0);
	signal s1v2 : std_logic_vector(7 downto 0) := (others => '0');
	signal s1v3 : std_logic_vector(7 downto 0) := (others => '1');
	signal s1v3 : std_logic_vector(7 downto 0) := X"AA";  			-- Format of Hexadecimal 
	--signal s1v3 : std_logic_vector(0 to 7) := "10101010";			-- Binary format 
	signal s1v3 : std_logic_vector(7 downto 0) := "00000001";
	
begin
	process is
	begin
		
		wait for 10 ns;
		
	end process;
	
end architecture;

