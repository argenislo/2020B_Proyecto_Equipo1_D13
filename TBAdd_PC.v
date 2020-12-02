`timescale 1ns/1ns

//1 - Declaracion del modulo
module TBAdd_PC();

//2 - Declaracion de cables y registros
reg [31:0]TpInfo;
wire [31:0]TpAddRes;

//3 - Cuerpo del modulo

//Instancias
Add_PC test(
	.pInfo(TpInfo),
	.pAddRes(TpAddRes)
);

initial
begin
	TpInfo = 32'd0;
	#100;
	TpInfo = 32'd10;
	#100;
end

endmodule
