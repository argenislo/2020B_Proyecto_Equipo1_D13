`timescale 1ns/1ns

//1 - Declaracion del modulo
module TBALU_Mux();

//2 - Declaracion de cables y registros
reg [31:0]TregData, TsignData;
reg TmALUSel;
wire [31:0]TdataALU;

//3 - Cuerpo del modulo

//Instancias
ALU_Src_Mux test(
	.regData(TregData),
	.signData(TsignData),
	.mALUSel(TmALUSel),
	.dataALU(TdataALU)
);

initial
begin
	TregData = 32'd5000;
	TsignData = 32'd4000;
	TmALUSel = 1'b0;
	#100;
	TregData = 32'd5000;
	TsignData = 32'd4000;
	TmALUSel = 1'b1;
	#100;
end

endmodule
