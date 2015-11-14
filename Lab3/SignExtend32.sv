`timescale 1 ps/100 fs

module SignExtend32 (out, in);
	output [31:0] out;
	input [15:0] in;
	
	assign out = {{16{in[15]}}, in}
endmodule


module SignExtend32_testbench();
	reg in;   
	wire out;    
	SignExtend32 dut (.out, .in);   
	initial begin
		in = 4'h0000; #5000;
		in = 4'h0001; #5000;
		in = 4'hf001; #5000;
		in = 4'h000f; #5000;
		in = 4'hffff; #5000;
	end  
endmodule 
