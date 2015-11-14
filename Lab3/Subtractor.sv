`timescale 1ps/100fs

module Subtractor (A, B, Sum, LastCout, Overflow);
	input [31:0] A, B;
	output [31:0] Sum;
	output LastCout, Overflow;
	
	wire [31:0] invertedB;
	wire Carry;
	
	genvar i;
	generate
	for(i=0; i<32; i=i+1) begin: inverting
		not #50 b(invertedB[i], B[i]);
	end
	endgenerate
	
	OneBitAdd start (A[0], invertedB[0], 1'b1, Sum[0], Carry);
	
	Adding32 finish (A[31:1], invertedB[31:1], Sum[31:1], Carry, LastCout, Overflow);

endmodule

module Subtractor_testbench();	 
  	reg [31:0] A, B;    
  	wire[31:0] Sum; 
	wire LastCout, Overflow;    
  	Subtractor dut (.A, .B, .Sum, .LastCout, .Overflow);   
 initial begin  
        	A=32'h00000000; B=32'h00000001; #5000;   	 
        	A=32'hFFFFFFFF; B=32'h00000001; #5000;   	 
        	A=32'h01010101; B=32'hAB9034C0; #5000;   	 
        	A=32'h427D316E; B=32'h825F910A; #5000;   	   	 
 end     
endmodule