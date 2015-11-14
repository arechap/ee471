module enabledDecoder1_8 (out, sel2, sel1, sel0, en);
	output [7:0] out;
	input sel2, sel1, sel0, en;
	
	wire x1, x0;
	
	enabledDecoder1_2 d0 (x1, x0, sel2, en);
	enabledDecoder1_4 d1 (out[3], out[2], out[1], out[0], sel1, sel0, x0);
	enabledDecoder1_4 ds (out[7], out[6], out[5], out[4], sel1, sel0, x1);
	
endmodule

module enabledDecoder1_8_testbench();     
      reg sel2, sel1, sel0, en, clk;   
      wire [7:0]out;    
      enabledDecoder1_8 dut (.out, .sel2, .sel1, .sel0, .en);   
		initial clk = 1;
		always #5000 clk = ~clk;
 initial begin  
            en=0; sel2=0; sel1=0; sel0=0; @(posedge clk);        
            en=0; sel2=0; sel1=0; sel0=1; @(posedge clk);        
            en=0; sel2=0; sel1=1; sel0=0; @(posedge clk);
            en=0; sel2=0; sel1=1; sel0=1; @(posedge clk);
            en=0; sel2=1; sel1=0; sel0=0; @(posedge clk);
            en=0; sel2=1; sel1=0; sel0=1; @(posedge clk);
            en=0; sel2=1; sel1=1; sel0=0; @(posedge clk);
            en=0; sel2=1; sel1=1; sel0=1; @(posedge clk);
				en=1; sel2=0; sel1=0; sel0=0; @(posedge clk);        
            en=1; sel2=0; sel1=0; sel0=1; @(posedge clk);        
            en=1; sel2=0; sel1=1; sel0=0; @(posedge clk);
            en=1; sel2=0; sel1=1; sel0=1; @(posedge clk);
            en=1; sel2=1; sel1=0; sel0=0; @(posedge clk);
            en=1; sel2=1; sel1=0; sel0=1; @(posedge clk);
            en=1; sel2=1; sel1=1; sel0=0; @(posedge clk);
            en=1; sel2=1; sel1=1; sel0=1; @(posedge clk);
				
				$stop;
 end  
endmodule 
