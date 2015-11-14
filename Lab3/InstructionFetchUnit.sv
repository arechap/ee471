`timescale 1 ps/100 fs


module InstructionFetchUnit (instruction, imm16, target, branch, jump, LTZ, clk);
	output [31:0] instruction;
	
	input [15:0] imm16;
	input [25:0] target;
	input branch, jump, LTZ, clk;
	
	wire [29:0] programCount, newPC, jumpTarget, sum, delta, imm30;
	wire branchControl, carryOut;
	
	
	ProgramCounter PC (ProgramCount, newPC, clk, overflow);
	
	

	// branch logic	
	SignExtend30 se30 (imm30, imm16);
	
	and #50 a0 (branchControl, branch, LTZ);
	Mux30Bit2_1 m0 (delta, imm30, 30'b0, branchControl);
	
	// program counter update logic
	Adder30Bit adder0 (ProgramCount, delta, sum, 1'b1, carryOut, overflow);
	
	// jump logic
	assign jumpTarget = {programCount[29:26], target};
	Mux30Bit2_1 m1 (newPC, jumpTarget, sum, jump);
	
	// instuctions
	InstructionMem IM (instruction, {programCount, 2'b0});

endmodule
