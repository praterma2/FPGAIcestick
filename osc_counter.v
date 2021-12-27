//count up on each button press and display on leds
module osc_counter (

	//inputs
	input	pmod_0,
	input 	clk,
	
	//output
	output	reg	[3:0]	led		//needs tab for reg pins
	
);

	wire rst;
	reg	[23:0]	osc_count;
	
	//reset is inverse of button 0
	assign rst = ~pmod[0];
	
	
	
	//count up of clk rising edge or reset on button push
	always @ (posedge clk) begin
		osc_count <= osc_count + 1'b1;
		if (osc_count == 24'b101101110001101100000000) begin
				led <= led + 1'b1;
				osc_count <= 24'b0;
		end
	end
	
	/*always @ (posedge rst) begin
		if (rst == 1'b1) begin
			led <= 4'b0;		// <= means bus <= this number loaded into, b0 could also be written as b0000
		end
	end*/
	
endmodule
		