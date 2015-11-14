module enabledDecoder1_32 (out, sel4, sel3, sel2, sel1, sel0, en);
	output [31:0] out;
	input sel4, sel3, sel2, sel1, sel0, en;
	
	wire x1, x0;
	
	enabledDecoder1_2 d0 (x1, x0, sel4, en);
	enabledDecoder1_16 d1 (out[15:0], sel3, sel2, sel1, sel0, x0);
	enabledDecoder1_16 ds (out[31:16], sel3, sel2, sel1, sel0, x1);
	
endmodule

module enabledDecoder1_32_testbench();     
      reg sel4, sel3, sel2, sel1, sel0, en, clk;   
      wire [31:0] out;    
      enabledDecoder1_32 dut (.out, .sel4, .sel3, .sel2, .sel1, .sel0, .en);   
		initial clk = 1;
		always #5000 clk = ~clk;
 initial begin  
            en=0; sel4=0; sel3=0; sel2=0; sel1=0; sel0=0; @(posedge clk);        
            en=0; sel4=0; sel3=0; sel2=0; sel1=0; sel0=1; @(posedge clk);        
            en=0; sel4=0; sel3=0; sel2=0; sel1=1; sel0=0; @(posedge clk);
            en=0; sel4=0; sel3=0; sel2=0; sel1=1; sel0=1; @(posedge clk);
            en=0; sel4=0; sel3=0; sel2=1; sel1=0; sel0=0; @(posedge clk);
            en=0; sel4=0; sel3=0; sel2=1; sel1=0; sel0=1; @(posedge clk);
            en=0; sel4=0; sel3=0; sel2=1; sel1=1; sel0=0; @(posedge clk);
            en=0; sel4=0; sel3=0; sel2=1; sel1=1; sel0=1; @(posedge clk);
				en=0; sel4=0; sel3=1; sel2=0; sel1=0; sel0=0; @(posedge clk);        
            en=0; sel4=0; sel3=1; sel2=0; sel1=0; sel0=1; @(posedge clk);        
            en=0; sel4=0; sel3=1; sel2=0; sel1=1; sel0=0; @(posedge clk);
            en=0; sel4=0; sel3=1; sel2=0; sel1=1; sel0=1; @(posedge clk);
            en=0; sel4=0; sel3=1; sel2=1; sel1=0; sel0=0; @(posedge clk);
            en=0; sel4=0; sel3=1; sel2=1; sel1=0; sel0=1; @(posedge clk);
            en=0; sel4=0; sel3=1; sel2=1; sel1=1; sel0=0; @(posedge clk);
            en=0; sel4=0; sel3=1; sel2=1; sel1=1; sel0=1; @(posedge clk);
				en=0; sel4=1; sel3=0; sel2=0; sel1=0; sel0=0; @(posedge clk);        
            en=0; sel4=1; sel3=0; sel2=0; sel1=0; sel0=1; @(posedge clk);        
            en=0; sel4=1; sel3=0; sel2=0; sel1=1; sel0=0; @(posedge clk);
            en=0; sel4=1; sel3=0; sel2=0; sel1=1; sel0=1; @(posedge clk);
            en=0; sel4=1; sel3=0; sel2=1; sel1=0; sel0=0; @(posedge clk);
            en=0; sel4=1; sel3=0; sel2=1; sel1=0; sel0=1; @(posedge clk);
            en=0; sel4=1; sel3=0; sel2=1; sel1=1; sel0=0; @(posedge clk);
            en=0; sel4=1; sel3=0; sel2=1; sel1=1; sel0=1; @(posedge clk);
				en=0; sel4=1; sel3=1; sel2=0; sel1=0; sel0=0; @(posedge clk);        
            en=0; sel4=1; sel3=1; sel2=0; sel1=0; sel0=1; @(posedge clk);        
            en=0; sel4=1; sel3=1; sel2=0; sel1=1; sel0=0; @(posedge clk);
            en=0; sel4=1; sel3=1; sel2=0; sel1=1; sel0=1; @(posedge clk);
            en=0; sel4=1; sel3=1; sel2=1; sel1=0; sel0=0; @(posedge clk);
            en=0; sel4=1; sel3=1; sel2=1; sel1=0; sel0=1; @(posedge clk);
            en=0; sel4=1; sel3=1; sel2=1; sel1=1; sel0=0; @(posedge clk);
            en=0; sel4=1; sel3=1; sel2=1; sel1=1; sel0=1; @(posedge clk);
				en=1; sel4=0; sel3=0; sel2=0; sel1=0; sel0=0; @(posedge clk);        
            en=1; sel4=0; sel3=0; sel2=0; sel1=0; sel0=1; @(posedge clk);        
            en=1; sel4=0; sel3=0; sel2=0; sel1=1; sel0=0; @(posedge clk);
            en=1; sel4=0; sel3=0; sel2=0; sel1=1; sel0=1; @(posedge clk);
            en=1; sel4=0; sel3=0; sel2=1; sel1=0; sel0=0; @(posedge clk);
            en=1; sel4=0; sel3=0; sel2=1; sel1=0; sel0=1; @(posedge clk);
            en=1; sel4=0; sel3=0; sel2=1; sel1=1; sel0=0; @(posedge clk);
            en=1; sel4=0; sel3=0; sel2=1; sel1=1; sel0=1; @(posedge clk);
				en=1; sel4=0; sel3=1; sel2=0; sel1=0; sel0=0; @(posedge clk);        
            en=1; sel4=0; sel3=1; sel2=0; sel1=0; sel0=1; @(posedge clk);        
            en=1; sel4=0; sel3=1; sel2=0; sel1=1; sel0=0; @(posedge clk);
            en=1; sel4=0; sel3=1; sel2=0; sel1=1; sel0=1; @(posedge clk);
            en=1; sel4=0; sel3=1; sel2=1; sel1=0; sel0=0; @(posedge clk);
            en=1; sel4=0; sel3=1; sel2=1; sel1=0; sel0=1; @(posedge clk);
            en=1; sel4=0; sel3=1; sel2=1; sel1=1; sel0=0; @(posedge clk);
            en=1; sel4=0; sel3=1; sel2=1; sel1=1; sel0=1; @(posedge clk);
				en=1; sel4=1; sel3=0; sel2=0; sel1=0; sel0=0; @(posedge clk);        
            en=1; sel4=1; sel3=0; sel2=0; sel1=0; sel0=1; @(posedge clk);        
            en=1; sel4=1; sel3=0; sel2=0; sel1=1; sel0=0; @(posedge clk);
            en=1; sel4=1; sel3=0; sel2=0; sel1=1; sel0=1; @(posedge clk);
            en=1; sel4=1; sel3=0; sel2=1; sel1=0; sel0=0; @(posedge clk);
            en=1; sel4=1; sel3=0; sel2=1; sel1=0; sel0=1; @(posedge clk);
            en=1; sel4=1; sel3=0; sel2=1; sel1=1; sel0=0; @(posedge clk);
            en=1; sel4=1; sel3=0; sel2=1; sel1=1; sel0=1; @(posedge clk);
				en=1; sel4=1; sel3=1; sel2=0; sel1=0; sel0=0; @(posedge clk);        
            en=1; sel4=1; sel3=1; sel2=0; sel1=0; sel0=1; @(posedge clk);        
            en=1; sel4=1; sel3=1; sel2=0; sel1=1; sel0=0; @(posedge clk);
            en=1; sel4=1; sel3=1; sel2=0; sel1=1; sel0=1; @(posedge clk);
            en=1; sel4=1; sel3=1; sel2=1; sel1=0; sel0=0; @(posedge clk);
            en=1; sel4=1; sel3=1; sel2=1; sel1=0; sel0=1; @(posedge clk);
            en=1; sel4=1; sel3=1; sel2=1; sel1=1; sel0=0; @(posedge clk);
            en=1; sel4=1; sel3=1; sel2=1; sel1=1; sel0=1; @(posedge clk);
				
				$stop;
 end  
endmodule 
