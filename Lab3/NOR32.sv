`timescale 1 ps/100 fs

module NOR32 (dataOut, dataA, dataB);
	output [31:0] dataOut;
	input [31:0] dataA, dataB;

	genvar i;
	generate
		for (i = 0; i < 32; i++) begin : eachNOR
			nor #50 NOR (dataOut[i], dataA[i], dataB[i]);
		end
	endgenerate

endmodule

module NOR32_testbench();
	reg [31:0] dataA, dataB;
	wire [31:0] dataOut;
	
	NOR32 n (.dataOut, .dataA, .dataB);
	
	initial begin
		dataA = 32'h11111111; dataB = 32'h00000000; #5000;
		dataA = 32'h00000000; dataB = 32'h00000000; #5000;
		dataA = 32'h10101010; dataB = 32'h01010101; #5000;
		dataA = 32'h10101010; dataB = 32'h10101010; #5000;
	end
	
endmodule
