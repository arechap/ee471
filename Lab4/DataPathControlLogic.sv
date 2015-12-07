module DataPathControlLogic (op, func, ctrl); 	
	input [5:0] op, func;
	
	/* ctrl bit assignments
		ctrl[0] = ALUSrc
		ctrl[1] = ALUctrlLSB
		ctrl[2] = ALUctrlMSB
		ctrl[3] = MemWr
		ctrl[4] = MemToReg
		ctrl[5] = RegDst
		ctrl[6] = RegWr
		ctrl[7] = Branch
		ctrl[8] = Jump
		ctrl[9] = JumpReg	
	*/
	output reg [9:0] ctrl;
	
	parameter [5:0] ADDI = 6'b001000, SUBU = 6'b100011, NOR = 6'b100111, SLTU = 6'b101011, LW = 6'b100011, SW = 6'b101011, BLTZ = 6'b000001, J = 6'b000010, JR = 6'b001000, RTYPE = 6'b000000;
	parameter [1:0] ALUadd = 2'b00, ALUsub = 2'b01, ALUnor = 2'b10, ALUsltu = 2'b11;
	
	always @ (*) begin
		case (op)
		
			// All these have an op of 0,
			// differentiated by func
			RTYPE: begin
				case (func)
					SUBU: begin
						//cRegDst = 1'b0;
						//cRegWr = 1'b1;
						//cALUSrc = 1'b0;
						//cALUCtrl = ALUsub;
						//cMemWr = 1'b0;
						//cMemToReg = 1'b0;
						//cBranch = 1'b0;
						//cJump = 1'b0;
						//cJumpReg = 1'b0;
						ctrl = 10'b0001000010;
					end
					
					NOR: begin
						//cRegDst = 1'b0;
						//cRegWr = 1'b1;
						//cALUSrc = 1'b0;
						//cALUCtrl = ALUnor;
						//cMemWr = 1'b0;
						//cMemToReg = 1'b0;
						//cBranch = 1'b0;
						//cJump = 1'b0;
						//cJumpReg = 1'b0;
						ctrl = 10'b0001000100;
					end
					
					SLTU: begin
						//cRegDst = 1'b0;
						//cRegWr = 1'b1;
						//cALUSrc = 1'b0;
						//cALUCtrl = ALUsltu;
						//cMemWr = 1'b0;
						//cMemToReg = 1'b0;
						//cBranch = 1'b0;
						//cJump = 1'b0;
						//cJumpReg = 1'b0;
						ctrl = 10'b0001000110;	
					end

					JR: begin
						//cRegDst = 1'b0;
						//cRegWr = 1'b0;
						//cALUSrc = 1'b0;
						//cALUCtrl = ALUadd;
						//cMemWr = 1'b0;
						//cMemToReg = 1'b0;
						//cBranch = 1'b0;
						//cJump = 1'b0;
						//cJumpReg = 1'b1;
						ctrl = 10'b1000000000;
					end
					
					default: begin
						//cRegDst = 1'b0;
						//cRegWr = 1'b0;
						//cALUSrc = 1'b0;
						//cALUCtrl = ALUadd;
						//cMemWr = 1'b0;
						//cMemToReg = 1'b0;
						//cBranch = 1'b0;
						//cJump = 1'b0;
						//cJumpReg = 1'b0;
						ctrl = 10'b0000000000;
					end
				endcase
			end
			
			ADDI: begin
				//cRegDst = 1'b1;
				//cRegWr = 1'b1;
				//cALUSrc = 1'b1;
				//cALUCtrl = ALUadd;
				//cMemWr = 1'b0;
				//cMemToReg = 1'b0;
				//cBranch = 1'b0;
				//cJump = 1'b0;
				//cJumpReg = 1'b0;
				ctrl = 10'b0001100001;
			end
			
			LW: begin
				//cRegDst = 1'b1;
				//cRegWr = 1'b1;
				//cALUSrc = 1'b1;
				//cALUCtrl = ALUadd;
				//cMemWr = 1'b0;
				//cMemToReg = 1'b1;
				//cBranch = 1'b0;
				//cJump = 1'b0;
				//cJumpReg = 1'b0;
				ctrl = 10'b0001110001;	
			end
			
			SW: begin
				//cRegDst = 1'bx;
				//cRegWr = 1'b0;
				//cALUSrc = 1'b1;
				//cALUCtrl = ALUadd;
				//cMemWr = 1'b1;
				//cMemToReg = 1'bx;
				//cBranch = 1'b0;
				//cJump = 1'b0;
				//cJumpReg = 1'b0;
				ctrl = 10'b0000x01001;
			end
			
			BLTZ: begin
				//cRegDst = 1'bx;
				//cRegWr = 1'b0;
				//cALUSrc = 1'bx;
				//cALUCtrl = ALUadd;
				//cMemWr = 1'b0;
				//cMemToReg = 1'bx;
				//cBranch = 1'b1;
				//cJump = 1'b0;
				//cJumpReg = 1'b0;
				ctrl = 10'b0010x0000x;				
			end
			
			J: begin
				//cRegDst = 1'bx;
				//cRegWr = 1'b0;
				//cALUSrc = 1'bx;
				//cALUCtrl = ALUadd;
				//cMemWr = 1'b0;
				//cMemToReg = 1'bx;
				//cBranch = 1'b0;
				//cJump = 1'b1;
				//cJumpReg = 1'b0;
				ctrl = 10'b0100x0000x;
			end
			
			default: begin
				//cRegDst = 1'b0;
				//cRegWr = 1'b0;
				//cALUSrc = 1'b0;
				//cALUCtrl = ALUadd;
				//cMemWr = 1'b0;
				//cMemToReg = 1'b0;
				//cBranch = 1'b0;
				//cJump = 1'b0;
				//cJumpReg = 1'b0;
				ctrl = 10'b0000000000;
			end
		
		endcase
	end
	
endmodule