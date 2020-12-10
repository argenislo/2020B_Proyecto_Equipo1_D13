//1 - Declaracion del modulo
module TBDatapath_Fase_Final();

//2 - Declaracion de cables y registros
reg TclkFaseF;

//3 - Cuerpo del modulo

//Instancias
Datapath_Fase_Final test(
	.clkFaseF(TclkFaseF)
);

initial
begin
	TclkFaseF = 1'b0;
	#100;
	TclkFaseF = 1'b1;
	#100;
	TclkFaseF = 1'b0;
	#100;
	TclkFaseF = 1'b1;
	#100;
	TclkFaseF = 1'b0;
	#100;
	TclkFaseF = 1'b1;
	#100;
	TclkFaseF = 1'b0;
	#100;
	TclkFaseF = 1'b1;
	#100;
	TclkFaseF = 1'b0;
	#100;
	TclkFaseF = 1'b1;
	#100;
	TclkFaseF = 1'b0;
	#100;
	TclkFaseF = 1'b1;
	#100;
	TclkFaseF = 1'b0;
	#100;
	TclkFaseF = 1'b1;
	#100;
end

endmodule
