`timescale 1ps/100fs

module Adding32(Reg1, Reg2, Sum, FirstCin, LastCout, Overflow);
	input [30:0] Reg1, Reg2;
	input FirstCin;
	output [30:0] Sum;
	output LastCout, Overflow;
	
	wire [29:0] Carry;
	
	OneBitAdd U0 (Reg1[0], Reg2[0], FirstCin, Sum[0], Carry[0]);
	
	genvar i;
	generate
	for(i=1; i<30; i=i+1) begin: adders
		OneBitAdd U (Reg1[i], Reg2[i], Carry[i-1], Sum[i], Carry[i]);
	end
	endgenerate

	OneBitAdd U30 (Reg1[30], Reg2[30], Carry[29], Sum[30], LastCout);
	
	xor #50 o(Overflow, LastCout, Carry[29]);

endmodule

module Adding32_testbench();	 
  	reg [30:0] Reg1, Reg2; 
	reg FirstCin;   
  	wire[30:0] Sum; 
	wire LastCout;    
  	Adding32 dut (.Reg1, .Reg2, .FirstCin, .Sum, .LastCout);   
 initial begin  
        	Reg1=31'b0; Reg2=31'b0; FirstCin=0; #5000;   	 
        	Reg1=31'b1; Reg2=31'b0; FirstCin=1; #5000;   	 
        	Reg1=31'b110000; Reg2=31'b0001; FirstCin=0; #5000;   	 
        	Reg1=31'b10101010; Reg2=32'b1111111; FirstCin=1; #5000;   	   	 
 end     
endmodule
         