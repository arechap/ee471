module enabledDecoder1_2(out1, out0, sel, en);
	output out1, out0;
	input sel, en;
	
	wire notSel;
	
	not #50 n0 (notSel, sel);
	and #50 a1 (out1, en, sel);
	and #50 ao (out0, en, notSel);

endmodule

module enabledDecoder1_2_testbench();     
      reg sel, en;   
      wire out0, out1;    
      enabledDecoder1_2 dut (.out1, .out0, .sel, .en);   
 initial begin  
            sel=0; en=0; #5000;        
            sel=0; en=1; #5000;        
            sel=1; en=0; #5000;        
            sel=1; en=1; #5000;            
 end  
endmodule 