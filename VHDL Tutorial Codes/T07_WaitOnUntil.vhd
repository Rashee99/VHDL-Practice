entity T07_WaitOnUntil is
end entity;

architecture sim of T07_WaitOnUntil is
	signal CountUp : integer := 0;
	signal CountDown : integer := 10;
	
begin
	
	process is
	begin
		CountUp <= CountUp + 1;
		CountDown <= CountDown - 1;
		
		wait for 10 ns;
	end process;
	
	process is
	begin
		wait on CountUp ,CountDown ; -- run if there any change in CountDown and CountUp
		report "CountUp = " & integer'image(CountUp) &
		" CountDown = " & integer'image(CountDown);		
	end process;
	
	process is
	begin
		wait until CountUp = CountDown ; -- Run if this statatmnet true
		report "Both are same !!!";
	end process;
		

end architecture;