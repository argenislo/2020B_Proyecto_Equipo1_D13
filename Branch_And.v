//1 - Declaracion del modulo
module Branch_And(
	input bIn1, bIn2,
	output bOut
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo
assign bOut = bIn1 & bIn2;

endmodule
