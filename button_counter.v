//count up on each button press and display on leds
module button_counter (

	//inputs
	input	[1:0]	pmod,
	
	//output
	output	reg	[3:0]	led		//needs tab for reg pins
	
);

	wire rst;
	wire clk;
	
	//reset is inverse of button 0
	assign rst = ~pmod[0];
	
	//clk is inverse of button 1
	assign clk = ~pmod[1];
	
	//count up of clk rising edge or reset on button push
	always @ (posedge clk or posedge rst) begin
		if (rst == 1'b1) begin
			led <= 4'b0;		// <= means bus <= this number loaded into, b0 could also be written as b0000
		end else begin
			led <= led + 1'b1;	// synthesis tool knows (supports)plus
		end
	end
	
endmodule
		