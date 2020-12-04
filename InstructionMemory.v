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
	Instruction = {inMem[readAddress], inMem[readAddress + 1], inMem[readAddress + 2], inMem[readAddress + 3]};
end

//Inicializacion
initial
begin
	inMem[0] = 8'b00000001;		//ADD
	inMem[1] = 8'b11001010;
	inMem[2] = 8'b10110000;
	inMem[3] = 8'b00100000;
	inMem[4] = 8'b00000001;		//SUB
	inMem[5] = 8'b11001010;
	inMem[6] = 8'b10110000;
	inMem[7] = 8'b00100010;
	inMem[8] = 8'b01110001;		//MUL
	inMem[9] = 8'b11001010;
	inMem[10] = 8'b10110000;
	inMem[11] = 8'b00000010;
	inMem[12] = 8'b00000001;	//DIV
	inMem[13] = 8'b11001010;
	inMem[14] = 8'b10110000;
	inMem[15] = 8'b00011010;
	inMem[16] = 8'b00000001;	//OR
	inMem[17] = 8'b11001010;
	inMem[18] = 8'b10110000;
	inMem[19] = 8'b00100101;
	inMem[20] = 8'b00000001;	//AND
	inMem[21] = 8'b11001010;
	inMem[22] = 8'b10110000;
	inMem[23] = 8'b00100100;
	inMem[24] = 8'b00000001;	//SLT
	inMem[25] = 8'b11001010;
	inMem[26] = 8'b10110000;
	inMem[27] = 8'b00101010;
	inMem[28] = 8'b00000001;	//NOP
	inMem[29] = 8'b11001010;
	inMem[30] = 8'b10110000;
	inMem[31] = 8'b00000000;
end

endmodule
