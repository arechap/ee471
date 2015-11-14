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

module ProgramCounter_testbench();
	parameter clockDelay = 5000;
	
	reg [29:0] in;
	reg clk;
	wire [29:0] out;    
	ProgramCounter dut (.out, .in, .clk);  

	integer i;
	
	initial clk = 0;
	always begin
		#(clockDelay / 2);
		clk = ~clk;
	end
	
	initial begin
		for (i = 0; i < 536870912; i = i + 100) begin
			in = i; @(posedge clk);
		end
		$stop;
	end  
endmodule 