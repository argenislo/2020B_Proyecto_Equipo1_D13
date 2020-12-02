`timescale 1ns/1ns

//1 - Declaracion del modulo
module TBALUControl();

//2 - Declaracion de cables y registros
reg [5:0]TFunction;
reg [2:0]TdataUC;
wire [2:0]TOperacion;

//3 - Cuerpo del modulo

//Instancias
ALUControl test(
	.Function(TFunction),
	.dataUC(TdataUC),
	.Operacion(TOperacion)
);

initial
begin
	TFunction = 6'b100000;
	TdataUC = 3'b010;
	#100;
	TFunction = 6'b100010;
	TdataUC = 3'b010;
	#100;
	TFunction = 6'b101010;
	TdataUC = 3'b001;
	#100;
end

endmodule
