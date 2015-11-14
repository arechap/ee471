module Register (dataIn, dataOut, enable, reset, clk);
	input wire [31:0] dataIn; 
	input wire enable, reset, clk;
	output wire [31:0] dataOut;	
	
	wire [31:0] enabledData;
	
	genvar i;
	
	generate
		for(i=0; i<32; i=i+1) begin: DFFs
			EnabledDFF U (enable, reset, clk, dataIn[i], dataOut[i]);
		end
	endgenerate


endmodule