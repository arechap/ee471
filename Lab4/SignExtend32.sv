`timescale 1 ps/100 fs

module SignExtend32 (out, in);
	output [31:0] out;
	input [15:0] in;
	
	assign out = {{16{in[15]}}, in};
endmodule


module SignExtend32_testbench();
	reg [15:0] in;   
	wire [31:0] out;    
	SignExtend32 dut (.out, .in);   
	initial begin
		in = 16'h0000; #5000;
		in = 16'h0001; #5000;
		in = 16'hF001; #5000;
		in = 16'h000F; #5000;
		in = 16'hFFFF; #5000;
	end  
endmodule 
