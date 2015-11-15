module CPU(reset, clk);
	
	input reset, clk;
	
	
	parameter [5:0] ADDI = 6'b001000, SUBU = 6'b100011, NOR = 6'b100111, SLTU = 6'b101011, LW = 6'b100011, SW = 6'b101011, BLTZ = 6'b000001, J = 6'b000010, RTYPE = 6'b000000;
	parameter [1:0] ALUadd = 2'b00, ALUsub = 2'b01, ALUnor = 2'b10, ALUsltu = 2'b11;
	
	// control signals
	wire cRegWr, cRegDst, cALUSrc, cMemWr, cMemToReg, cBranch, cJump;
	wire [1:0] cALUCtrl;
	
	// data signals
	wire carryOut, overFlow, zero, negative;
	wire [4:0] Rs, Rt, Rd, writeAddress;
	wire [15:0] imm16;
	wire [25:0] target;
	wire [31:0] instruction, RegDataA, RegDataB, imm32, ALUArg2, ALUResult, MemDataOut, RegDataIn;
	
	// instruction parts
	wire [5:0] op, func;
	
	// instruction fetch
	InstructionFetchUnit IFU (instruction, imm16, target, cBranch, cJump, RegDataA[31], reset, clk);
	
	assign Rs = instruction[25:21];
	assign Rt = instruction[20:16];
	assign Rd = instruction[15:11];
	assign imm16 = instruction[15:0];
	assign target = instruction[25:0];
	
	// RegFile
	Mux2_1 m0 (writeAddress, Rt, Rd, cRegDst);
	
	regfile RF (RegDataA, RegDataB, RegDataIn, Rs, Rt, writeAddress, cRegWr, clk);
	
	// ALU
	SignExtend32 SE (imm32, imm16);
	Mux2_1 m1 (ALUArg2, imm32, RegDataB, cALUSrc);
	ALU alu0 (ALUResult, carryOut, zero, overFlow, negative, RegDataA, ALUArg2, cALUCtrl);
	
	// Memory
	dataMem DM (MemDataOut, ALUResult, RegDataB, cMemWr, clk);
	Mux2_1 m2 (RegDataIn, MemDataOut, ALUResult, cMemToReg);
	
	// Control Logic
	assign op = instruction[31:26];
	assign func = instruction[5:0];
	
	always @ (*) begin
		case (op)
			
			ADDI: begin
				cRegDst = 1'b1;
				cRegWr = 1'b1;
				cALUSrc = 1'b1;
				cALUCtrl = ALUadd;
				cMemWr = 1'b0;
				cMemToReg = 1'b0;
				cBranch = 1'b0;
				cJump = 1'b0;	
			end
			
			default: begin
				cRegDst = 1'b0;
				cRegWr = 1'b0;
				cALUSrc = 1'b0;
				cALUCtrl = ALUadd;
				cMemWr = 1'b0;
				cMemToReg = 1'b0;
				cBranch = 1'b0;
				cJump = 1'b0;	
			end
		
		endcase
	end
	
endmodule
