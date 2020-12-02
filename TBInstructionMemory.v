`timescale 1ns/1ns

//1 - Declaracion del modulo
module TBInstructionMemory();

//2 - Declaracion de cables y registros
reg [31:0]TreadAddress;
wire [31:0] TInstruction;

//3 - Cuerpo del modulo

//Instancias
InstructionMemory test(
	.readAddress(TreadAddress),
	.Instruction(TInstruction)
);

initial
begin
	TreadAddress = 32'd1;
	#100;
	TreadAddress = 32'd10;
	#100;
end

endmodule
