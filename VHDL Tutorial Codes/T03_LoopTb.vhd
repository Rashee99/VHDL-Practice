entity T03_LoopTb is
end entity;

architecture sim of T03_LoopTb is
begin

	process is
	begin
		
		report "Start!";
		
		loop
			report "Hello";
			exit;
			-- If we don't use this exit it will be not exit from the loop End! will not be printed.	
		end loop;
		
		report "End!";
		wait;
		
		
	end process;

end architecture;