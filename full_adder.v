//module: button 0 lights up 2 leds, button 0 and 1 light three
module ful1_adder (

	//inputs
	input	[2:0]	pmod,
	
	//output
	output	[1:0]	led
	
);

	//wire declarations
	wire not_pmod_0;
	wire not_pmod_1;
	wire not_pmod_2;
	wire xor_1_out;
	wire and_1_out;
	wire and_2_out;
	
	
	//continous assignment
	assign not_pmod_0 = ~pmod[0];
	assign not_pmod_1 = ~pmod[1];
	assign not_pmod_2 = ~pmod[2];
	assign xor_1_out = not_pmod_0 ^ not_pmod_1;
	assign led[0] = xor_1_out ^ not_pmod_2;
	assign and_1_out = xor_1_out & not_pmod_2;
	assign and_2_out = not_pmod_0 & not_pmod_1;
	assign led[1] = and_1_out | and_2_out;
	
endmodule