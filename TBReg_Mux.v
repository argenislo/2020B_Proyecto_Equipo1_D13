`timescale 1ns/1ns

//1 - Declaracion del modulo
module TBReg_Mux();

//2 - Declaracion de cables y registros
reg [4:0]Tins1, Tins2;
reg TmRegSel;
wire [4:0]TinsAddress;

//3 - Cuerpo del modulo

//Instancias
Reg_Dst_Mux test(
	.ins1(Tins1),
	.ins2(Tins2),
	.mRegSel(TmRegSel),
	.insAddress(TinsAddress)
);

initial
begin
	Tins1 = 5'd3;
	Tins2 = 5'd7;
	TmRegSel = 1'b0;
	#100;
	Tins1 = 5'd3;
	Tins2 = 5'd7;
	TmRegSel = 1'b1;
	#100;
end

endmodule
