library ieee;
use ieee.std_logic_1164.ALL; -- This two lines are included because st_logic type is used.
use ieee.numeric_std.ALL; 

entity T12_SignedUnsignedTb is
end entity;

architecture sim of T12_SignedUnsignedTb is

	signal UnsCnt : Unsigned (7 downto 0) := (others => '0');
	signal SigCnt : signed (7 downto 0) := (others => '0');
	
begin
	process is
	begin
		
		wait for 10 ns;
		
		-- Wripping Counter
		UnsCnt => UnsCnt + 1;
		SigCnt => SigCnt + 1;
		
	end process;
	
end architecture;

