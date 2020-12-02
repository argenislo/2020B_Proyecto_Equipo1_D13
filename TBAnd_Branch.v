`timescale 1ns/1ns

//1 - Declaracion del modulo
module TBAnd_Branch();

//2 - Declaracion de cables y registros
reg TbIn1, TbIn2;
wire TbOut;

//3 - Cuerpo del modulo

//Instancias
Branch_And test(
	.bIn1(TbIn1),
	.bIn2(TbIn2),
	.bOut(TbOut)
);

initial
begin
	TbIn1 = 1'b0;
	TbIn2 = 1'b1;
	#100;
	TbIn1 = 1'b1;
	TbIn2 = 1'b0;
	#100;
end

endmodule
