`timescale 1 ps/100 fs

module Pipelined_CPU(reset, clk);
	input reset, clk;
	
	// control signals
	reg cRegWr, cRegDst, cALUSrc, cMemWr, cMemToReg, cBranch, cJump, cJumpReg;
	reg [1:0] cALUCtrl;
	
	// data signals
	wire carryOut, overFlow, zero, negative;
	wire [4:0] Rs0, Rt0, Rd0, Rs1, Rt1, Rd1, Rs2, Rt2, Rd2, Rs3, Rt3, Rd3, Rs4, Rt4, Rd4, RegWriteAddress;
	wire [15:0] imm160;
	wire [25:0] target0, target1, target2, target3, target4;
	wire [31:0] instruction, ALUArg2, ALUResult, ALUResult3, ALUResult4, MemDataOut, RegDataIn, RegDataIn4;
	wire [31:0] DataA, DataB, DataA1, DataB1, DataA2, DataB2, DataA3, DataB3, DataA4, DataB4;
	wire [31:0] imm0, imm1, imm2, imm3, imm4;
	wire [5:0] op0, func0, op1, func1, op2, func2, op3, func3, op4, func4;
	wire [9:0] ctrl0, ctrl1, ctrl2, ctrl3, ctrl4;

/*
*
*	Stage Zero
*	Instruction Fetch
*
*/	
	// Instruction Fetch Module
	InstructionFetchUnit IFU (instruction, imm1[29:0], target1, DataA, ctrl1[7], ctrl1[8], ctrl1[9], DataA[31], reset, clk);
	
	// determine instruction components
	assign Rs0 = instruction[25:21];
	assign Rt0 = instruction[20:16];
	assign Rd0 = instruction[15:11];
	assign imm160 = instruction[15:0];
	assign target0 = instruction[25:0];
	assign op0 = instruction[31:26];
	assign func0 = instruction[5:0];
	
	//turns 16 bit immediate value into 32 bit number
	SignExtend32 SE (imm0, imm160);
	
	//Control logic module
	DataPathControlLogic ctrlSet(op0, op1, ctrl0);
	
	Register5_bit RegRs0 (Rs0, Rs1, 1'b1, reset, clk);
	Register5_bit RegRt0 (Rt0, Rt1, 1'b1, reset, clk);
	Register5_bit RegRd0 (Rd0, Rd1, 1'b1, reset, clk);
	Register32_bit RegImm0 (imm0, imm1, 1'b1, reset, clk);
	Register26_bit RegTarget0 (target0, target1, 1'b1, reset, clk);
	Register6_bit RegOp0 (op0, op1, 1'b1, reset, clk);
	Register6_bit RegFunc0 (func0, func1, 1'b1, reset, clk);
	Register10_bit RegCtrl0 (ctrl0, ctrl1, 1'b1, reset, clk);
	
/*
*
*	Stage One
*	Register Decode
*
*/	
	//Register File
	regfile RF (DataA, DataB, RegDataIn4, Rs1, Rt1, RegWriteAddress, ctrl4[6], clk);
	
	Register5_bit RegRs1 (Rs1, Rs2, 1'b1, reset, clk);
	Register5_bit RegRt1 (Rt1, Rt2, 1'b1, reset, clk);
	Register5_bit RegRd1 (Rd1, Rd2, 1'b1, reset, clk);
	Register32_bit RegImm1 (imm1, imm2, 1'b1, reset, clk);
	Register26_bit RegTarget1 (target1, target2, 1'b1, reset, clk);
	Register32_bit RegDataA1 (DataA, DataA2, 1'b1, reset, clk);
	Register32_bit RegDataB1 (DataB, DataB2, 1'b1, reset, clk);
	Register6_bit RegOp1 (op1, op2, 1'b1, reset, clk);
	Register6_bit RegFunc1 (func1, func2, 1'b1, reset, clk);
	Register10_bit RegCtrl1 (ctrl1, ctrl2, 1'b1, reset, clk);
	
/*
*
*	Stage Two
*	Execute
*
*/	
	//Mux selecting argument for ALU, either immediate value or register value
	Mux2_1 m1 (ALUArg2, imm2, DataB2, ctrl2[0]);
	
	//ALU
	ALU alu0 (ALUResult, carryOut, zero, overFlow, negative, DataA2, ALUArg2, ctrl2[2:1]);
	
	Register5_bit RegRs2 (Rs2, Rs3, 1'b1, reset, clk);
	Register5_bit RegRt2 (Rt2, Rt3, 1'b1, reset, clk);
	Register5_bit RegRd2 (Rd2, Rd3, 1'b1, reset, clk);
	Register32_bit RegImm2 (imm2, imm3, 1'b1, reset, clk);
	Register26_bit RegTarget2 (target2, target3, 1'b1, reset, clk);
	Register32_bit RegDataA2 (DataA2, DataA3, 1'b1, reset, clk);
	Register32_bit RegDataB2 (DataB2, DataB3, 1'b1, reset, clk);
	Register32_bit RegALUResult2 (ALUResult, ALUResult3, 1'b1, reset, clk);
	Register6_bit RegOp2 (op2, op3, 1'b1, reset, clk);
	Register6_bit RegFunc2 (func2, func3, 1'b1, reset, clk);
	Register10_bit RegCtr2 (ctrl2, ctrl3, 1'b1, reset, clk);
	
/*
*
*	Stage Three
*	Memory
*
*/	
	// Data Memory Module
	dataMem DM (MemDataOut, ALUResult3, DataB3, ctrl3[3], clk);
	
	// Mux selecting if data from memory or data from ALU is written back to Register File
	Mux2_1 m2 (RegDataIn, MemDataOut, ALUResult3, ctrl3[4]);
	
	Register5_bit RegRs3 (Rs3, Rs4, 1'b1, reset, clk);
	Register5_bit RegRt3 (Rt3, Rt4, 1'b1, reset, clk);
	Register5_bit RegRd3 (Rd3, Rd4, 1'b1, reset, clk);
	Register32_bit RegImm3 (imm3, imm4, 1'b1, reset, clk);
	Register26_bit RegTarget3 (target3, target4, 1'b1, reset, clk);
	Register32_bit RegDataA3 (DataA3, DataA4, 1'b1, reset, clk);
	Register32_bit RegDataB3 (DataB3, DataB4, 1'b1, reset, clk);
	Register32_bit RegALUResult3 (ALUResult3, ALUResult4, 1'b1, reset, clk);
	Register32_bit RegDataIn3 (RegDataIn, RegDataIn4, 1'b1, reset, clk);
	Register6_bit RegOp3 (op3, op4, 1'b1, reset, clk);
	Register6_bit RegFunc3 (func3, func4, 1'b1, reset, clk);
	Register10_bit RegCtr3 (ctrl3, ctrl4, 1'b1, reset, clk);

/*
*
*	Stage 4
*	Write Back
*
*/	
	// Mux to Decide if Rt or Rd gets written back into the Register File
	Mux5Bit2_1 m0 (RegWriteAddress, Rt4, Rd4, ctrl4[5]);
	
endmodule