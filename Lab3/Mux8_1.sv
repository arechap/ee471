module Mux8_1 (out, in, sel);
	input [7:0][31:0] in;
	input [2:0] sel;
	output [31:0] out;
	
	wire[31:0] outTop4, outBottom4;
	
	Mux4_1 top4 (outTop4, in[7:4], sel[1:0]);
	Mux4_1 bottom4 (outBottom4, in[3:0], sel[1:0]);
	
	Mux2_1 finish (out, outTop4,outBottom4, sel[2]);

endmodule

module Mux8_1_testbench();	 
	reg [7:0][31:0] in;
	reg [2:0] sel;
  	wire [31:0] out;
	
  	Mux8_1 dut (.out, .in, .sel);   
 initial begin  
			in[0]=32'h00000000;
			in[1]=32'h00000000;
			in[2]=32'h00000000;
			in[3]=32'h00000000;
			in[4]=32'h00000000;
			in[5]=32'h00000000;
			in[6]=32'h00000000;
			in[7]=32'h00000000;#5000;
        	sel=3'b000; in[0]=32'h01000000; #5000;   	 
        	sel=3'b001; in[1]=32'h01000FF0; #5000;   	 
        	sel=3'b010; in[2]=32'hAA0ED000; #5000; 	 
        	sel=3'b011; in[3]=32'h002345C0; #5000; 	 
        	sel=3'b100; in[4]=32'h0A09030A; #5000; 	 
        	sel=3'b101; in[5]=32'hA000000F; #5000;  	 
        	sel=3'b110; in[6]=32'h0072900B; #5000;  	 
        	sel=3'b111; in[7]=32'hAAAAAAAA; #5000; 
 end  
endmodule