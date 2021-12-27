//module: button 0 lights up 2 leds, button 0 and 1 light three
module and_gate1 (

	//inputs
	input	[1:0]	pmod,
	
	//output
	output	[2:0]	led
	
);

	//wire declarations
	wire not_pmod_0;
	
	//continous assignmentassign led_0 = ~pmod_0 & ~pmod_1;
	assign not_pmod_0 = ~pmod[0];
	assign led[1:0] = {2{not_pmod_0}};
	assign led[2] = not_pmod_0 & ~pmod[1];
	

endmodule