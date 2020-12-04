//1 - Declaracion del modulo
module Shift_Left2(
	input [31:0]inShift,
	output [31:0]outShift
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo
assign outShift = inShift << 2;

endmodule
