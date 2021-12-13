// module when both buttons are pressed, turn on led

module and_gate (

	//Inputs
	input	[2:0]	pmod,
	
	//Outputs
	output	[1:0]	led
);	
	
	//wire internal to module
	wire not_pmod_0;
	
	
	//continuous assignment: NOT and AND operators
	assign not_pmod_0 = ~pmod[0];
	
	//2 means t connection
	assign led[1:0] = {2{not_pmod_0}};
	
	assign led[2] = not_pmod_0 & ~pmod[1];
endmodule