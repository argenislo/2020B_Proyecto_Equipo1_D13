//1 - Declaracion del modulo
module InstructionMem_Fase_1(
	input [31:0]readAddress,
	output reg [31:0]Instruction
);

//2 - Declaracion de cables y registros
reg [7:0]inMem [0:255];

//3 - Cuerpo del modulo

//Bloque secuencial
always @(readAddress)
begin
	Instruction = {inMem[readAddress], inMem[readAddress + 1], inMem[readAddress + 2], inMem[readAddress + 3]};
end

//Datos
initial
begin
	$readmemb("D:\\TestF1_MemInst.mem", inMem);
end

endmodule
