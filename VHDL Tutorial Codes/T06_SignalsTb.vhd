entity T06_SignalTb is
end entity;

architecture sim of T06_SignalTb is

	signal MySingal : integer := 0;
	
begin

	process is
		variable MyVariable : integer := 0; -- Must have to include
	begin
		
		report "New iteration ***************************";
	
		MyVariable := MyVariable + 1;
		MySingal <= MySingal + 1;  -- to a signal it must be <=
		
		report "MyVariable=" & integer'image(MyVariable) 
		& ", MySingal=" & integer'image(MySingal);
		
		MyVariable := MyVariable + 1;
		MySingal <= MySingal + 1;  -- to a signal it must be <=
		
		report "MyVariable=" & integer'image(MyVariable) 
		& ", MySingal=" & integer'image(MySingal);
		
		wait for 10 ns;
		
		report "MyVariable=" & integer'image(MyVariable) 
		& ", MySingal=" & integer'image(MySingal);
		
	end process;

end architecture;