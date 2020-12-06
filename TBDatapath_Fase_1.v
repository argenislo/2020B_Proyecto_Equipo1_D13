`timescale 1ns/1ns

//1 - Declaracion del modulo
module TBDatapath_Fase_1();

//2 - Declaracion de cables y registros
reg TclkFase;

//3 - Cuerpo del modulo

//Instancias
Datapath_Fase_1 test(
	.clkFase(TclkFase)
);

initial
begin
	TclkFase = 1'b0;
	#100;
	TclkFase = 1'b1;
	#100;
	TclkFase = 1'b0;
	#100;
	TclkFase = 1'b1;
	#100;
	TclkFase = 1'b0;
	#100;
	TclkFase = 1'b1;
	#100;
	TclkFase = 1'b0;
	#100;
	TclkFase = 1'b1;
	#100;
	TclkFase = 1'b0;
	#100;
	TclkFase = 1'b1;
	#100;
	TclkFase = 1'b0;
	#100;
	TclkFase = 1'b1;
	#100;
	TclkFase = 1'b0;
	#100;
	TclkFase = 1'b1;
	#100;
end

endmodule

