entity T02_WaitForTb is
end entity;

architecture sim of T02_WaitForTb is
begin

	process is
	begin
		
		report "I'm Rashee!";
		wait for 10 ns;
	
	end process;


end architecture;