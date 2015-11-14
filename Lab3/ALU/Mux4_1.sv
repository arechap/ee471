module Mux4_1(out, in, sel);
	input [3:0][31:0] in;
	input [1:0] sel;
	output [31:0]out;
	
	wire [31:0] outMuxTop, outMuxBottom;
	
	Mux2_1 top (outMuxTop, in[3], in[2], sel[0]);
	Mux2_1 bottom (outMuxBottom, in[1], in[0], sel[0]);
	Mux2_1 last (out, outMuxTop, outMuxBottom, sel[1]);

endmodule

module Mux4_1_testbench();	 
	reg [3:0][31:0] in;
	reg [1:0] sel;
  	wire [31:0] out;
	
  	Mux4_1 dut (.out, .in, .sel);   
 initial begin
			in[0]=32'h00000000;
			in[1]=32'h00000000;
			in[2]=32'h00000000;
			in[3]=32'h00000000; #5000;
        	sel=2'b00; in[0]=32'h01000000; #5000;   	 
        	sel=2'b00; in[0]=32'h01000FF0; #5000;   	 
        	sel=2'b01; in[1]=32'hAA0ED000; #5000; 	 
        	sel=2'b01; in[1]=32'h002345C0; #5000; 	 
        	sel=2'b10; in[2]=32'h0A09030A; #5000; 	 
        	sel=2'b10; in[2]=32'hA000000F; #5000;  	 
        	sel=2'b11; in[3]=32'h0072900B; #5000;  	 
        	sel=2'b11; in[4]=32'hAAAAAAAA; #5000;  	 
 end  
endmodule