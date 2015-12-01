`timescale 1ps/100fs

module SingleMux4_1 (out, zero, one, two, three, sel);
	input zero, one, two, three;
	input [1:0] sel;
	output out;
	
	wire outMuxTop, outMuxBottom;
	
	SingleMux2_1 top(outMuxTop, three, two, sel[0]);
	SingleMux2_1 bottom(outMuxBottom, one, zero, sel[0]);

	SingleMux2_1 last(out, outMuxTop, outMuxBottom, sel[1]);
	
endmodule

module SingleMux4_1_testbench();	 
	reg zero, one, two, three;
	reg [1:0] sel;
  	wire out;
	
  	SingleMux4_1 dut (.out, .zero, .one, .two, .three, .sel);   
 initial begin
			zero=0;
			one=0;
			two=0;
			three=0; #5000;
        	sel=2'b00; zero=1; #5000;   	 
        	sel=2'b00; zero=0; #5000;   	 
        	sel=2'b01; one=1; #5000; 	 
        	sel=2'b01; one=0; #5000; 	 
        	sel=2'b10; two=1; #5000; 	 
        	sel=2'b10; two=0; #5000;  	 
        	sel=2'b11; three=1; #5000;  	 
        	sel=2'b11; three=0; #5000;  	 
 end  
endmodule