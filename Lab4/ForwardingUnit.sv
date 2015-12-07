module ForwardingUnit (forwardA, forwardB, AforwardALU, BforwardALU, op1, func1, Rs1, Rt1, op2, func2, Rt2, Rd2, op3, func3, Rt3, Rd3);
	output forwardA, forwardB, AforwardALU, BforwardALU;
	
	input [5:0] op1, op2, op3, func1, func2, func3;
	input [4:0] Rs1, Rt1, Rt2, Rd2, Rt3, Rd3;
	
	parameter [5:0] ADDI = 6'b001000, SUBU = 6'b100011, NOR = 6'b100111, SLTU = 6'b101011, LW = 6'b100011, SW = 6'b101011, BLTZ = 6'b000001, J = 6'b000010, JR = 6'b001000, RTYPE = 6'b000000;
	
	always @ (*) begin
	
		if (op1 != J) begin
			// Data A forwarding Logic
			
			// no forwarding to Data A if Rs1 is ZERO
			if (Rs1 == 5'b0) begin
				forwardA = 1'b0;
				AforwardALU = 1'bx;
				
			// if stage 2 modifies Rs, forward from Stage 2 (the ALU) to Data A	
			end else if (((Rs1 == Rt2)&&(op2 == ADDI)) ||
					((Rs1 == Rd2)&&(op2==RTYPE)&&((func2 == NOR)||(func2 == SLTU)||(func2 == SUBU)))) begin
				forwardA = 1'b1;
				AforwardALU = 1'b1;
				
			// if stage 3 modifies Rs, forward from Stage 3 to Data A	
			end else if (((Rs1 == Rt3)&&((op3 == ADDI)||(op3 == LW))) ||
					((Rs1 == Rd3)&&(op3==RTYPE)&&((func3 == NOR)||(func3 == SLTU)||(func3 == SUBU)))) begin
				forwardA = 1'b1;
				AforwardALU = 1'b0;
				
			// otherwise, no forwarding to Data A
			end else begin
				forwardA = 1'b0;
				AforwardALU = 1'bx;
			end
			
			// Data B forwarding Logic
			
			// if Rt is not an operand of op1, no forwarding
			if ((op1==SW) || ((op1==RTYPE)&&((func1==NOR)||(func1==SLTU)||(func1==SUBU)))) begin
			
				// no forwarding to Data B if Rt1 is ZERO
				if (Rt1 == 5'b0) begin
					forwardB = 1'b0;
					BforwardALU = 1'bx;
					
				// if stage 2 modifies Rt, forward from Stage 2 (the ALU) to Data B	
				end else if (((Rt1 == Rt2)&&(op2 == ADDI)) ||
						((Rt1 == Rd2)&&(op2==RTYPE)&&((func2 == NOR)||(func2 == SLTU)||(func2 == SUBU)))) begin
					forwardB = 1'b1;
					BforwardALU = 1'b1;
					
				// if stage 3 modifies Rt, forward from Stage 3 to Data B	
				end else if (((Rt1 == Rt3)&&((op3 == ADDI)||(op3 == LW))) ||
						((Rt1 == Rd3)&&(op3==RTYPE)&&((func3 == NOR)||(func3 == SLTU)||(func3 == SUBU)))) begin
					forwardB = 1'b1;
					BforwardALU = 1'b0;
					
				// otherwise, no forwarding to Data B
				end else begin
					forwardB = 1'b0;
					BforwardALU = 1'bx;
				end
			
			end else begin
				forwardB = 1'b0;
				BforwardALU = 1'bx;
			end
			
		end else begin
			forwardA = 1'b0;
			forwardB = 1'b0;
			AforwardALU = 1'b0;
			BforwardALU = 1'b0;
		end
	
	end
	

endmodule
