module ProgramCounter (out, in, clk);
	input[29:0] in;
	input clk;
	output[29:0] out;
	
	genvar i;
	generate
		for (i = 0; i < 30; i++) begin : eachFlipFlop
			D_FF flipFlop (out[i], in[i], 1'b0, clk);
		end
	endgenerate
	
	
endmodule