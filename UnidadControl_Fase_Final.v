//1 - Declaracion del modulo
module UnidadControl_Fase_Final(
	input [5:0]Opcode,
	output reg MemToReg, RegisterWrite, Branch, ALUSrc, RegDst, Jump, MemRead, MemWrite,
	output reg [2:0]ALUOp
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo

//Bloque secuencial
always @*
begin
	case(Opcode)
	6'b000000:	//Opcode de ADD, SUB, AND, OR, SLT y NOP
		begin
			ALUOp = 3'b010;
			MemToReg = 1'b0;
			RegisterWrite = 1'b1;
			Branch = 1'b0;
			ALUSrc = 1'b0;
			RegDst = 1'b1;
			MemRead = 1'b0;
			MemWrite = 1'b0;
			Jump = 1'b0;
		end
	6'b100011:	//Opcode de LW
		begin
			ALUOp = 3'b0;
			MemToReg = 1'b1;
			RegisterWrite = 1'b1;
			Branch = 1'b0;
			ALUSrc = 1'b1;
			RegDst = 1'b0;
			MemRead = 1'b1;
			MemWrite = 1'b0;
			Jump = 1'b0;
		end
	6'b101011:	//Opcode de SW
		begin
			ALUOp = 3'b0;
			MemToReg = 1'bz;
			RegisterWrite = 1'b0;
			Branch = 1'b0;
			ALUSrc = 1'b1;
			RegDst = 1'bz;
			MemRead = 1'b0;
			MemWrite = 1'b1;
			Jump = 1'b0;
		end
	6'b001010:	//Opcode de SLTI
		begin
			ALUOp = 3'b111;
			MemToReg = 1'b0;
			RegisterWrite = 1'b1;
			Branch = 1'b0;
			ALUSrc = 1'b1;
			RegDst = 1'b0;
			MemRead = 1'b0;
			MemWrite = 1'b0;
			Jump = 1'b0;
		end
	6'b000100:	//Opcode de BEQ
		begin
			ALUOp = 3'b001;
			MemToReg = 1'bz;
			RegisterWrite = 1'b0;
			Branch = 1'b1;
			ALUSrc = 1'b0;
			RegDst = 1'bz;
			MemRead = 1'b0;
			MemWrite = 1'b0;
			Jump = 1'b0;
		end
	6'b000010:	//Opcode de J
		begin
			ALUOp = 3'bz;
			MemToReg = 1'bz;
			RegisterWrite = 1'b0;
			Branch = 1'b0;
			ALUSrc = 1'bz;
			RegDst = 1'bz;
			MemRead = 1'b0;
			MemWrite = 1'b0;
			Jump = 1'b1;
		end
	default:
		begin
			MemToReg = 1'bz;
			RegisterWrite = 1'bz;
			Branch = 1'bz;
			ALUSrc = 1'bz;
			RegDst = 1'bz;
			ALUOp = 3'bz;
			MemRead = 1'bz;
			MemWrite = 1'bz;
			Jump = 1'bz;
		end
	endcase
end

endmodule


