`timescale 1 ps/100 fs

module alu (Output, CarryOut, zero, overflow, negative, BussA, BussB, ALUControl);
	output [31:0] Output;
	output zero, overflow, CarryOut, negative;
	input [31:0] BussA, BussB;
	input [1:0] ALUControl;
	
	wire [3:0][31:0] outputBus;
	
	wire [31:0] adderOut, subOut, norOut;
	wire adderOverflow, adderCarryOut, subOverflow, subCarryOut, notSubCarryOut, nor0, nor1, nor2, nor3, nor4, nor5, nor6, nor7, and0, and1;
	
	Adder a (BussA, BussB, adderOut, adderCarryOut, adderOverflow);
	
	Subtractor s (BussA, BussB, subOut, subCarryOut, subOverflow);
	
	NOR32 n32 (norOut, BussA, BussB);
	
	not #50 n (notSubCarryOut, subCarryOut);
	
	assign outputBus[0] = adderOut;
	assign outputBus[1] = subOut;
	assign outputBus[2] = norOut;
	assign outputBus[3] = {31'b0, notSubCarryOut};
	
	Mux4_1 m1 (Output, outputBus, ALUControl);
	
	SingleMux4_1 overflowMux (overflow, adderOverflow, subOverflow, 1'b0, 1'b0, ALUControl);
	
	SingleMux4_1 CarryOutMux (CarryOut, adderCarryOut, subCarryOut, 1'b0, 1'b0, ALUControl);
	
	assign negative = Output[31];
	
	
	nor #50 n7 (nor7, Output[31], Output[30], Output[29], Output[28]);
	nor #50 n6 (nor6, Output[27], Output[26], Output[25], Output[24]);
	nor #50 n5 (nor5, Output[23], Output[22], Output[21], Output[20]);
	nor #50 n4 (nor4, Output[19], Output[18], Output[17], Output[16]);
	nor #50 n3 (nor3, Output[15], Output[14], Output[13], Output[12]);
	nor #50 n2 (nor2, Output[11], Output[10], Output[9], Output[8]);
	nor #50 n1 (nor1, Output[7], Output[6], Output[5], Output[4]);
	nor #50 n0 (nor0, Output[3], Output[2], Output[2], Output[0]);
	
	and #50 a2 (and1, nor7, nor6, nor5, nor4);
	and #50 a1 (and0, nor3, nor2, nor1, nor0);
	
	and #50 a0 (zero, and0, and1);
	
endmodule


module ALUStimulus();

	parameter ClockDelay = 100000;

	reg [31:0] BussA, BussB;
	reg [1:0] ALUControl;

	wire [31:0] Output;
	wire zero, overflow, CarryOut, negative;

	integer i;

	// If your register file module is not named "alu" then you will
	// have to change the following line in order to create an instance of
	// your register file.  Also you must make sure that the port declarations
	// match up with the module instance in this stimulus file.
	alu alu1(Output, CarryOut, zero, overflow, negative, BussA, BussB, ALUControl);

	initial begin

		/* Addition unit testing */
		ALUControl=00; 
		BussA=32'h00000DEF; BussB=32'h00000ABC; #(ClockDelay); // Should output 000018AB 
		BussA=32'h00001234; BussB=32'h00000105; #(ClockDelay); // Should output 00001339
		BussA=32'h7FFFFFFF; BussB=32'h00000001; #(ClockDelay); // Should output 80000000, overflow, negative
		
		/* Subtraction unit testing */
		ALUControl=01; 
		BussA=32'h00000DEF; BussB=32'h00000ABC; #(ClockDelay); // Should output 00000333
		BussA=32'h00001234; BussB=32'h00000105; #(ClockDelay); // Should output 0000112F
		BussA=32'h80000000; BussB=32'h00000001; #(ClockDelay); // Should output 7FFFFFFF, overflow

		/* You should test your units EXTENSIVELY here.  We just gave a few ideas
         above to get you started.  Make sure you've checked all outputs for
         all "interesting" cases. */
			
		/* NOR unit testing */
		ALUControl=10; 
		BussA=32'h00000DEF; BussB=32'h00000ABC; #(ClockDelay); // Should output 00000333
		BussA=32'h00001234; BussB=32'h00000105; #(ClockDelay); // Should output 0000112F
		BussA=32'h80000000; BussB=32'h00000001; #(ClockDelay); // Should output 7FFFFFFF, overflow
		
		/* SetLessThan unit testing */
		ALUControl=11; 
		BussA=32'h00000DEF; BussB=32'h00000ABC; #(ClockDelay); // Should output 00000000
		BussA=32'h00000105; BussB=32'h00001234; #(ClockDelay); // Should output 00000001
		BussA=32'h80000000; BussB=32'h00000001; #(ClockDelay); // Should output 00000000
	end
endmodule
