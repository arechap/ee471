module NegCLKD_FF (q, d, reset, clk);
	output reg q;
	input d, reset, clk;
	
	always @(posedge clk or negedge clk)
	if (reset)
		q <= 0; //On reset, set to 0
	else
		q <= d; //Otherwise out = d		
endmodule