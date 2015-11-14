module EnabledDFF(enable, reset, clk, dataIn, dataOut);
	input enable, reset, clk, dataIn;
	output dataOut;
	
	wire filteredIn;
	
	SingleMux2_1 control (filteredIn, dataIn, dataOut, enable);
	
	D_FF mem (dataOut, filteredIn, reset, clk);
	
endmodule