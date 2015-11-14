module enabledDecoder1_4 (out3, out2, out1, out0, sel1, sel0, en);
	output out3, out2, out1, out0;
	input sel1, sel0, en;
	
	wire x1, x0;
	
	enabledDecoder1_2 d0 (x1, x0, sel1, en);
	enabledDecoder1_2 d1 (out1, out0, sel0, x0);
	enabledDecoder1_2 d2 (out3, out2, sel0, x1);
	
endmodule

module enabledDecoder1_4_testbench();     
      reg sel1, sel0, en, clk;   
      wire out3, out2, out1, out0;    
      enabledDecoder1_4 dut (.out3, .out2, .out1, .out0, .sel1, .sel0, .en);   
		initial clk = 1;
		always #5000 clk = ~clk;
 initial begin  
            en=0; sel1=0; sel0=0; @(posedge clk);        
            en=0; sel1=0; sel0=1; @(posedge clk);        
            en=0; sel1=1; sel0=0; @(posedge clk);
            en=0; sel1=1; sel0=1; @(posedge clk);
            en=1; sel1=0; sel0=0; @(posedge clk);
            en=1; sel1=0; sel0=1; @(posedge clk);
            en=1; sel1=1; sel0=0; @(posedge clk);
            en=1; sel1=1; sel0=1; @(posedge clk);
				
				$stop;
 end  
endmodule 
