module Mux32_1 (out, in, sel);
	input [31:0][31:0] in;
	input [4:0] sel;
	output [31:0] out;
	
	wire [31:0] outTopTopEight, outTopMidEight, outBottomMidEight, outBottomBottomEight;
	
	Mux8_1 toptop (outTopTopEight, in[31:24], sel[2:0]);
	Mux8_1 topmid (outTopMidEight, in[23:16], sel[2:0]);
	Mux8_1 bottommid (outBottomMidEight, in[15:8], sel[2:0]);
	Mux8_1 bottombottom (outBottomBottomEight, in[7:0], sel[2:0]);
	
	Mux4_1 theend (out, {outTopTopEight, outTopMidEight, outBottomMidEight, outBottomBottomEight}, sel[4:3]);
	
endmodule

module Mux32_1_testbench();	 
	reg [31:0][31:0] in;
	reg [4:0] sel;
  	wire [31:0]out;
	
  	Mux32_1 dut (.out, .in, .sel);   
 
 integer i;

 initial begin 
			sel = 0;
			for(i=0; i<32; i=i+1) begin
				in[i][31:0] = 0;
			end
			for(i=0; i<32; i=i+1) begin
				in[i][i] = i;
			end
			for(i=0; i<32; i=i+1) begin
				sel = sel + 1;
				#5000;
			end
//			in[0]=32'h00000000;
//			in[1]=32'h00000000;
//			in[2]=32'h00000000;
//			in[3]=32'h00000000; #5000;
//        	sel=2'b00; in[0]=32'h01000000; #5000;   	 
//        	sel=2'b00; in[0]=32'h01000FF0; #5000;   	 
//        	sel=2'b01; in[1]=32'hAA0ED000; #5000; 	 
//        	sel=2'b01; in[1]=32'h002345C0; #5000; 	 
//        	sel=2'b10; in[2]=32'h0A09030A; #5000; 	 
//        	sel=2'b10; in[2]=32'hA000000F; #5000;  	 
//        	sel=2'b11; in[3]=32'h0072900B; #5000;  	 
//        	sel=2'b11; in[4]=32'hAAAAAAAA; #5000;  	 
 end  
endmodule