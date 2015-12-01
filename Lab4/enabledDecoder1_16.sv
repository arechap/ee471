module enabledDecoder1_16 (out, sel3, sel2, sel1, sel0, en);
	output [15:0]out;
	input sel3, sel2, sel1, sel0, en;
	
	wire x1, x0;
	
	enabledDecoder1_2 d0 (x1, x0, sel3, en);
	enabledDecoder1_8 d1 (out[7:0], sel2, sel1, sel0, x0);
	enabledDecoder1_8 ds (out[15:8], sel2, sel1, sel0, x1);
	
endmodule

module enabledDecoder1_16_testbench();     
      reg sel3, sel2, sel1, sel0, en, clk;   
      wire [15:0]out;    
      enabledDecoder1_16 dut (.out, .sel3, .sel2, .sel1, .sel0, .en);   
		initial clk = 1;
		always #5000 clk = ~clk;
 initial begin  
            en=0; sel3=0; sel2=0; sel1=0; sel0=0; @(posedge clk);        
            en=0; sel3=0; sel2=0; sel1=0; sel0=1; @(posedge clk);        
            en=0; sel3=0; sel2=0; sel1=1; sel0=0; @(posedge clk);
            en=0; sel3=0; sel2=0; sel1=1; sel0=1; @(posedge clk);
            en=0; sel3=0; sel2=1; sel1=0; sel0=0; @(posedge clk);
            en=0; sel3=0; sel2=1; sel1=0; sel0=1; @(posedge clk);
            en=0; sel3=0; sel2=1; sel1=1; sel0=0; @(posedge clk);
            en=0; sel3=0; sel2=1; sel1=1; sel0=1; @(posedge clk);
				en=0; sel3=1; sel2=0; sel1=0; sel0=0; @(posedge clk);        
            en=0; sel3=1; sel2=0; sel1=0; sel0=1; @(posedge clk);        
            en=0; sel3=1; sel2=0; sel1=1; sel0=0; @(posedge clk);
            en=0; sel3=1; sel2=0; sel1=1; sel0=1; @(posedge clk);
            en=0; sel3=1; sel2=1; sel1=0; sel0=0; @(posedge clk);
            en=0; sel3=1; sel2=1; sel1=0; sel0=1; @(posedge clk);
            en=0; sel3=1; sel2=1; sel1=1; sel0=0; @(posedge clk);
            en=0; sel3=1; sel2=1; sel1=1; sel0=1; @(posedge clk);
				en=1; sel3=0; sel2=0; sel1=0; sel0=0; @(posedge clk);        
            en=1; sel3=0; sel2=0; sel1=0; sel0=1; @(posedge clk);        
            en=1; sel3=0; sel2=0; sel1=1; sel0=0; @(posedge clk);
            en=1; sel3=0; sel2=0; sel1=1; sel0=1; @(posedge clk);
            en=1; sel3=0; sel2=1; sel1=0; sel0=0; @(posedge clk);
            en=1; sel3=0; sel2=1; sel1=0; sel0=1; @(posedge clk);
            en=1; sel3=0; sel2=1; sel1=1; sel0=0; @(posedge clk);
            en=1; sel3=0; sel2=1; sel1=1; sel0=1; @(posedge clk);
				en=1; sel3=1; sel2=0; sel1=0; sel0=0; @(posedge clk);        
            en=1; sel3=1; sel2=0; sel1=0; sel0=1; @(posedge clk);        
            en=1; sel3=1; sel2=0; sel1=1; sel0=0; @(posedge clk);
            en=1; sel3=1; sel2=0; sel1=1; sel0=1; @(posedge clk);
            en=1; sel3=1; sel2=1; sel1=0; sel0=0; @(posedge clk);
            en=1; sel3=1; sel2=1; sel1=0; sel0=1; @(posedge clk);
            en=1; sel3=1; sel2=1; sel1=1; sel0=0; @(posedge clk);
            en=1; sel3=1; sel2=1; sel1=1; sel0=1; @(posedge clk);
				
				$stop;
 end  
endmodule 
