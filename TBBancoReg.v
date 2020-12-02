`timescale 1ns/1ns

//1 - Declaracion del modulo
module TBBancoReg();

//2 - Declaracion de cables y registros
reg [4:0]TRA1, TRA2, TAW;
reg [31:0]TDi;
reg TRegWrite;
wire [31:0]TDR1, TDR2;

//3 - Cuerpo del modulo

//Instancias
BancoReg testban(
	.RA1(TRA1),
	.RA2(TRA2),
	.AW(TAW),
	.Di(TDi),
	.RegWrite(TRegWrite),
	.DR1(TDR1),
	.DR2(TDR2)
);

initial
begin
	TRegWrite = 1'b0;
	TRA1 = 5'd0;
	#100;
	TRegWrite = 1'b0;
	TRA2 = 5'd1;
	#100;
	TRegWrite = 1'b0;
	TRA1 = 5'd2;
	#100;
	TRegWrite = 1'b0;
	TRA2 = 5'd3;
	#100;
	TRegWrite = 1'b0;
	TRA1 = 5'd4;
	#100;
	TRegWrite = 1'b0;
	TRA2 = 5'd5;
	#100;
	TRegWrite = 1'b0;
	TRA1 = 5'd6;
	#100;
	TRegWrite = 1'b0;
	TRA2 = 5'd7;
	#100;
	TRegWrite = 1'b0;
	TRA1 = 5'd8;
	#100;
	TRegWrite = 1'b0;
	TRA2 = 5'd9;
	#100;
	TRegWrite = 1'b0;
	TRA1 = 5'd10;
	#100;
	TRegWrite = 1'b0;
	TRA2 = 5'd11;
	#100;
	TRegWrite = 1'b0;
	TRA1 = 5'd12;
	#100;
	TRegWrite = 1'b0;
	TRA2 = 5'd13;
	#100;
	TRegWrite = 1'b0;
	TRA1 = 5'd14;
	#100;
	TRegWrite = 1'b0;
	TRA2 = 5'd15;
	#100;
	TRegWrite = 1'b0;
	TRA1 = 5'd16;
	#100;
	TRegWrite = 1'b0;
	TRA2 = 5'd17;
	#100;
	TRegWrite = 1'b0;
	TRA1 = 5'd18;
	#100;
	TRegWrite = 1'b0;
	TRA2 = 5'd19;
	#100;
	TRegWrite = 1'b1;
	TAW = 5'd29;
	TDi = 32'd236;
	TRA1 = 5'd29;
	#100;
	TRegWrite = 1'b1;
	TAW = 5'd30;
	TDi = 32'd310;
	TRA2 = 5'd30;
	#100;
	TRegWrite = 1'b1;
	TAW = 5'd31;
	TDi = 32'd189;
	TRA1 = 5'd31;
	#100;
end

endmodule
