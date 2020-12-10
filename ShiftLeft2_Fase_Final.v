//1 - Declaracion del modulo
module ShiftLeft2_Fase_Final(
	input [25:0]Instruction,
	input [3:0]AddPC,
	output [31:0]JAddress
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo
assign JAddress = {Instruction, AddPC};

endmodule
