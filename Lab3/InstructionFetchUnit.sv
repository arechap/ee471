`timescale 1 ps/100 fs

/*
*	This module handles all the control logic dealing with the program counter.
*	So jumps and branch control is implemented here, then the PC is sent to the
*	Instruction memory
*/
module InstructionFetchUnit (instruction, imm16, target, regData, branch, jump, jumpReg, LTZ, reset, clk);
	output [31:0] instruction;
	
	input [15:0] imm16;
	input [25:0] target;
	input [31:0] regData;
	input branch, jump, jumpReg, LTZ, reset, clk;
	
	// data buses
	wire [29:0] programCount, newPC, increment, jumpTarget, sum, delta, imm30;
	wire branchControl, carryOut, overflow;
	
	// flip flops that hold the program counter
	ProgramCounter PC (programCount, newPC, reset, clk);
	
	// branch logic	
	SignExtend30 se30 (imm30, imm16);
	
	and #50 a0 (branchControl, branch, LTZ);
	Mux30Bit2_1 m0 (delta, imm30, 30'b0, branchControl);
	
	// program counter update logic
	// carryOut and overflow are not used in this module, but
	// come out of the adder anyways
	Adder30Bit adder0 (programCount, delta, sum, 1'b1, carryOut, overflow);
	
	// jump logic
	assign jumpTarget = {programCount[29:26], target};
	Mux30Bit2_1 m1 (increment, jumpTarget, sum, jump);
	
	// jump register logic
	Mux30Bit2_1 m2 (newPC, regData[31:2], increment, jumpReg);
	
	// instuctions
	InstructionMem IM (instruction, {programCount, 2'b0});

endmodule

module InstructionFetchUnit_testbench();
	parameter clockDelay = 5000;
	
	reg [15:0] imm16;
	reg [25:0] target;
	reg branch, jump, LTZ, reset, clk;
	
	wire [31:0] instruction;    
	InstructionFetchUnit dut (.instruction, .imm16, .target, .branch, .jump, .LTZ, .reset, .clk);  

	integer i;
	
	initial clk = 0;
	always begin
		#(clockDelay / 2);
		clk = ~clk;
	end
	
	initial begin
		imm16 = 16'h0000;
		target = 26'b0;
		branch = 1'b0;
		jump = 1'b0;
		LTZ = 1'b0;
		reset = 1'b0; @(posedge clk);
		reset = 1'b1; @(posedge clk);
		reset = 1'b0; @(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		imm16 = 16'h0005; branch = 1'b1; @(posedge clk);
		LTZ = 1'b1; @(posedge clk);
		branch = 1'b0; @(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		target = 26'b00011; @(posedge clk);
		jump = 1'b1; @(posedge clk);
		jump = 1'b0; @(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		$stop;
	end  
endmodule 
