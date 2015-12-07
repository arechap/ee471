module Register5_bit(dataIn, dataOut, enable, reset, clk);
	input wire [4:0] dataIn; 
	input wire enable, reset, clk;
	output wire [4:0] dataOut;	
	
	wire [4:0] enabledData;
	
	genvar i;
	
	generate
		for(i=0; i<5; i=i+1) begin: DFFs
			EnabledDFF U (enable, reset, clk, dataIn[i], dataOut[i]);
		end
	endgenerate

endmodule

module Register32_bit (dataIn, dataOut, enable, reset, clk);
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

module Register10_bit (dataIn, dataOut, enable, reset, clk);
	input wire [9:0] dataIn; 
	input wire enable, reset, clk;
	output wire [9:0] dataOut;	
	
	wire [9:0] enabledData;
	
	genvar i;
	
	generate
		for(i=0; i<10; i=i+1) begin: DFFs
			EnabledDFF U (enable, reset, clk, dataIn[i], dataOut[i]);
		end
	endgenerate

endmodule

module Register26_bit (dataIn, dataOut, enable, reset, clk);
	input wire [25:0] dataIn; 
	input wire enable, reset, clk;
	output wire [25:0] dataOut;	
	
	wire [25:0] enabledData;
	
	genvar i;
	
	generate
		for(i=0; i<26; i=i+1) begin: DFFs
			EnabledDFF U (enable, reset, clk, dataIn[i], dataOut[i]);
		end
	endgenerate

endmodule

module Register6_bit (dataIn, dataOut, enable, reset, clk);
	input wire [5:0] dataIn; 
	input wire enable, reset, clk;
	output wire [5:0] dataOut;	
	
	wire [5:0] enabledData;
	
	genvar i;
	
	generate
		for(i=0; i<6; i=i+1) begin: DFFs
			EnabledDFF U (enable, reset, clk, dataIn[i], dataOut[i]);
		end
	endgenerate

endmodule