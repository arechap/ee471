`timescale 1 ps/100 fs

module Mux2_1(out, i1, i0, sel);	 
  	output [31:0] out;   	 
  	input [31:0] i0, i1; 
	input sel;  	 
 	 
	wire notSel; 
	wire [31:0] i0AndNotSel, i1AndSel;
   	 
   not #50 n0 (notSel, sel);
	
	genvar i;
	generate 
		for(i=0; i<32; i=i+1) begin: simple
			and #50 a0 (i0AndNotSel[i], i0[i], notSel);
			and #50 a1 (i1AndSel[i], i1[i], sel);
			or #50 or1 (out[i], i0AndNotSel[i], i1AndSel[i]);
		end
	endgenerate
	
endmodule


 
module Mux2_1_testbench();	 
  	reg [31:0] i0, i1; 
	reg sel;   
  	wire [31:0] out;    
  	Mux2_1 dut (.out, .i1, .i0, .sel);   
 initial begin  
        	sel=0; i0=32'h00AA00BB; i1=32'h11111111; #5000;   	 
        	sel=0; i0=32'hFEDFED33; i1=32'h00110011; #5000;   	 
        	sel=1; i0=32'hFEDCBA98; i1=32'h12345678; #5000; 	 
        	sel=1; i0=32'h11AA11BB; i1=32'h11CCCC11; #5000;   	 	 
 end  
endmodule