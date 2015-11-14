`timescale 1 ps/100 fs
/*
*	takes a 16 bit number as input and copies the top
*	bit to make the output a 30 bit number
*/


module SignExtend30 (out, in);
	output [29:0] out;
	input [15:0] in;
	
	// replication operator {n{m}} 
	// replicate value m, n times. Then concatinate it onto in.
	assign out = {{14{in[15]}}, in};
endmodule


module SignExtend32_testbench();
	reg [15:0] in;   
	wire [29:0] out;    
	SignExtend32 dut (.out, .in);   
	initial begin
		in = 16'h0000; #5000;
		in = 16'h0001; #5000;
		in = 16'hF001; #5000;
		in = 16'h000F; #5000;
		in = 16'hFFFF; #5000;
	end  
endmodule 
