`timescale 1ps/100fs

module SingleMux2_1(out, i1, i0, sel);     
      output out;        
      input i1, i0, sel;       
      
		wire notSel, i0AndNotSel, i1AndSel;
		
		not #50 n0 (notSel, sel);
		and #50 a0 (i0AndNotSel, i0, notSel);
		and #50 a1 (i1AndSel, i1, sel);
		or #50 or1 (out, i0AndNotSel, i1AndSel);
endmodule


module SingleMux2_1_testbench();     
      reg i0, i1, sel;   
      wire out;    
      SingleMux2_1 dut (.out, .i1, .i0, .sel);   
 initial begin  
            sel=0; i0=0; i1=0; #5000;        
            sel=0; i0=0; i1=1; #5000;        
            sel=0; i0=1; i1=0; #5000;        
            sel=0; i0=1; i1=1; #5000;        
            sel=1; i0=0; i1=0; #5000;        
            sel=1; i0=0; i1=1; #5000;        
            sel=1; i0=1; i1=0; #5000;        
            sel=1; i0=1; i1=1; #5000;        
 end  
endmodule 