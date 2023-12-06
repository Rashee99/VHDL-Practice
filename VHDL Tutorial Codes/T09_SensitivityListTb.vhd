entity T09_SensitivityListTb is
end entity;

architecture sim of T09_SensitivityListTb is
	signal CountUp : integer := 0;
	signal CountDown : integer := 10;
	
begin
	
	process is
	begin
		CountUp <= CountUp + 1;
		CountDown <= CountDown - 1;
		
		wait for 10 ns;
	end process;
	
	-- This is a process using wait on command
	process is
	begin
		if CountUp = CountDown then
			report "Process A: They are equal!";
		end if;
		
		wait on CountUp ,CountDown ; -- run if there any change in CountDown and CountUp
				
	end process;
	
	-- This also equal process to previous on 
	process(CountDown,CountUp) is
	begin
		if CountUp = CountDown then
			report "Process B: They are equal!";
		end if;
	end process;
	

end architecture;

-- For both processes are taken same time