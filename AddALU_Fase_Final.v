//1 - Declaracion del modulo
module AddALU_Fase_Final(
	input [31:0]AddPCRes, ShiftRes,
	output [31:0]AddALURes
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo
assign AddALURes = AddPCRes + ShiftRes;

endmodule
