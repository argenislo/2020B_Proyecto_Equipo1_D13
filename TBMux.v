`timescale 1ns/1ns

//1 - Declaracion del modulo
module TBMux();

//2 - Declaracion de cablesy registros
reg [31:0]TinMem, TinRes;
reg TmMemSel;
wire [31:0]TmWrite;

//3 - Cuerpo del modulo

//Instancias
Mux2_1_32 test(
	.inMem(TinMem),
	.inRes(TinRes),
	.mMemSel(TmMemSel),
	.mWrite(TmWrite)
);

initial
begin
	TinMem = 32'd500;
	TinRes = 32'd400;
	TmMemSel = 1'b0;
	#100;
	TinMem = 32'd500;
	TinRes = 32'd400;
	TmMemSel = 1'b1;
	#100;
end

endmodule
