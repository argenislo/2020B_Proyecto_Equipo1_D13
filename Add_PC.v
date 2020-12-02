//1 - Declaracion del modulo
module Add_PC(
	input [31:0]pInfo,
	output [31:0]pAddRes
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo
assign pAddRes = pInfo + 4;

endmodule
