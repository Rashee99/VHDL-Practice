entity T04_ForLoopTb is
end entity;

architecture sim of T04_ForLoopTb is
begin

	process is
	begin
		
		report "Start!";
		
		for i in 1 to 10 loop
			report "i=" & integer'image(i);
		end loop;
		report "End!";
		wait;
		
		
	end process;

end architecture;