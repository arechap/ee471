`timescale 1ps/100fs

module Adder (A, B, Sum, LastCout, Overflow);
	input [31:0] A, B;
	output [31:0] Sum;
	output LastCout, Overflow;
	
	wire Carry;
	
	OneBitAdd start (A[0], B[0], 1'b0, Sum[0], Carry);
	
	Adding32 finish (A[31:1], B[31:1], Sum[31:1], Carry, LastCout, Overflow);


	
endmodule

module Adder_testbench();	 
  	reg [31:0] A, B;    
  	wire[31:0] Sum; 
	wire LastCout, Overflow;    
  	Adder dut (.A, .B, .Sum, .LastCout,.Overflow);   
 initial begin  
        	A=32'h00000000; B=32'h00000001; #5000;   	 
        	A=32'hFFFFFFFF; B=32'h00000001; #5000;   	 
        	A=32'h01010101; B=32'hAB9034C0; #5000;   	 
        	A=32'h427D316E; B=32'h825F910A; #5000;
        	A=32'h00000000; B=32'h00000001; #5000;   	 
        	A=32'h7FFFFFFF; B=32'h00000001; #5000;   	 
        	A=32'h80000001; B=32'h00000002; #5000;   	 
        	A=32'h80000001; B=32'h80000003; #5000;			
 end     
endmodule