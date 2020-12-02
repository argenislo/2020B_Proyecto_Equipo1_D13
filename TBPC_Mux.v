`timescale 1ns/1ns

//1 - Declaracion del modulo
module TBPC_Mux();

//2 - Declaracion de cables y registros
reg TmPCSel;
reg [31:0]TpResult, TbResult;
wire [31:0]TpSource;

//3 - Cuerpo del modulo

//Instancias
PC_Src_Mux test(
	.mPCSel(TmPCSel),
	.pResult(TpResult),
	.bResult(TbResult),
	.pSource(TpSource)
);

initial
begin
	TpResult = 32'd500;
	TbResult = 32'd400;
	TmPCSel = 1'b0;
	#100;
	TpResult = 32'd500;
	TbResult = 32'd400;
	TmPCSel = 1'b1;
	#100;
end

endmodule
