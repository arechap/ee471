`timescale 1ps/100fs

module OneBitAdd (A, B, Ci, S, Co);
	input A, B, Ci;
	output S, Co;
	
	wire AandB, AandCi, BandCi;
	
	and #50 one(AandB, A, B);
	and #50 two(AandCi, A, Ci);
	and #50 three(BandCi, B, Ci);
	
	or #50 c(Co, AandB, AandCi, BandCi);
	
	xor #50 f(S, A, B, Ci);
	
endmodule

module OneBitAdd_testbench();	 
  	reg A, B, Ci;   
  	wire S, Co;    
  	OneBitAdd dut (.A, .B, .Ci, .S, .Co);   
 initial begin  
        	A=0; B=0; Ci=0; #5000;   	 
        	A=0; B=0; Ci=1; #5000;   	 
        	A=0; B=1; Ci=0; #5000;   	 
        	A=0; B=1; Ci=1; #5000;   	 
        	A=1; B=0; Ci=0; #5000;   	 
        	A=1; B=0; Ci=1; #5000;   	 
        	A=1; B=1; Ci=0; #5000;   	 
        	A=1; B=1; Ci=1; #5000;   	 
 end  
endmodule