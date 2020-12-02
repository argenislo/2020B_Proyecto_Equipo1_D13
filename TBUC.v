`timescale 1ns/1ns

//1 - Declaracion del modulo
module TBUC();

//2 - Declaracion de cables y registros
reg [5:0]TOpcode;
wire TMemToReg, TRegisterWrite, TMemToWrite, TBranch, TALUSrc, TMemRead, TRegDst;
wire [2:0]TALUOp;

//3 - Cuerpo del modulo

//Instancias
UnidadDeControl test(
	.Opcode(TOpcode),
	.MemToReg(TMemToReg),
	.RegisterWrite(TRegisterWrite),
	.MemToWrite(TMemToWrite),
	.Branch(Branch),
	.ALUSrc(ALUSrc),
	.MemRead(TMemRead),
	.RegDst(TRegDst),
	.ALUOp(TALUOp)
);

initial
begin
	TOpcode = 6'b000000;
	#100;
	TOpcode = 6'b011100;
	#100;
	TOpcode = 6'b000001;
	#100;
end

endmodule
