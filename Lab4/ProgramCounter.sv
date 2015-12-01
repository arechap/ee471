`timescale 1 ps/100 fs

/*
*	This module holds the number of the instruction
*	we are currently doing. 
*	Every clock cycle, writes input(next instruction) 
*	to output(current instruction)
*/

module ProgramCounter (out, in, reset, clk);
	input[29:0] in;
	input reset, clk;
	output[29:0] out;
	
	genvar i;
	generate
		for (i = 0; i < 30; i++) begin : eachFlipFlop
			D_FF flipFlop (out[i], in[i], reset, clk);
		end
	endgenerate
endmodule

module ProgramCounter_testbench();
	parameter clockDelay = 5000;
	
	reg [29:0] in;
	reg reset, clk;
	wire [29:0] out;    
	ProgramCounter dut (.out, .in, .clk);  

	integer i;
	
	initial clk = 0;
	always begin
		#(clockDelay / 2);
		clk = ~clk;
	end
	
	initial begin
		reset = 1'b0;
		for (i = 0; i < 536870912; i = i + 100) begin
			in = i; @(posedge clk);
		end
		$stop;
	end  
endmodule 