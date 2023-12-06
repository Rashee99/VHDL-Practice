entity T05_WhileLoopTb is
end entity;

architecture sim of T05_WhileLoopTb is
begin

	process is
		variable i : integer := 0; -- Must have to include
	begin

		while i < 10 loop
			report "i=" & integer'image(i);
			i := i + 1; -- := must use istead of =
		end loop;
		
		wait;
		
	end process;

end architecture;