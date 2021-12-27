//module: when both buttons pressed, turn on led
module and_gate1 (

	//inputs
	input	pmod_0,
	input	pmod_1,
	
	//output
	output	led_0
	
);

	//continous assignment
	assign led_0 = ~pmod_0 & ~pmod_1;

endmodule