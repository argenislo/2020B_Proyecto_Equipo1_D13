//1 - Declaracion del modulo
module UnidadDeControl(
	input [5:0]Opcode,
	output reg MemToReg, RegisterWrite, MemToWrite, Branch, ALUSrc, MemRead, RegDst,
	output reg [2:0]ALUOp
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo

//Bloque secuencial
always @*
begin
	case(Opcode)
	6'b000000:	//Opcode de ADD, SUB, AND, OR, DIV y SLT
		begin
			ALUOp = 3'b010;
			MemToReg = 1'b0;
			RegisterWrite = 1'b1;
			MemToWrite = 1'b0;
			Branch = 1'b0;
			ALUSrc = 1'b0;
			MemRead = 1'b0;
			RegDst = 1'b1;
		end
	6'b011100:	//Opcode de MUL
		begin
			ALUOp = 3'b010;
			MemToReg = 1'b0;
			RegisterWrite = 1'b1;
			MemToWrite = 1'b0;
			Branch = 1'b0;
			ALUSrc = 1'b0;
			MemRead = 1'b0;
			RegDst = 1'b1;
		end
	default:
		begin
			MemToReg = 1'bz;
			RegisterWrite = 1'bz;
			MemToWrite = 1'bz;
			Branch = 1'bz;
			ALUSrc = 1'bz;
			MemRead = 1'bz;
			RegDst = 1'bz;
			ALUOp = 3'bz;
		end
	endcase
end

endmodule
