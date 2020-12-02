//1 - Declaracion del modulo
module InstructionMemory(
	input [31:0]readAddress,
	output reg [31:0]Instruction
);

//2 - Declaracion de cables y registros
reg [31:0]inMem [0:127];

//3 - Cuerpo del modulo

//Bloque secuencial
always @(readAddress)
begin
	Instruction = inMem[readAddress];
end

//Inicializacion
initial
begin
	inMem[0] = 32'b000000_01110_01010_10110_00000_100000;	//ADD
	inMem[1] = 32'b000000_01110_01010_10110_00000_100010;	//SUB
	inMem[2] = 32'b011100_01110_01010_10110_00000_000010;	//MUL
	inMem[3] = 32'b000000_01110_01010_10110_00000_011010;	//DIV
	inMem[4] = 32'b000000_01110_01010_10110_00000_100101;	//OR
	inMem[5] = 32'b000000_01110_01010_10110_00000_100100;	//AND
	inMem[6] = 32'b000000_01110_01010_10110_00000_101010;	//SLT
	inMem[7] = 32'b000000_01110_01010_10110_00000_000000;	//NOP
end

endmodule
