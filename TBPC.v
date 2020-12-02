`timescale 1ns/1ns

//1 - Declaracion del modulo
module TBPC();

//2 - Declaracion de cables y registros
reg [31:0]TmuxSource;
wire [31:0]TAddress;

//3 - Cuerpo del modulo

//Instancias
PC test(
	.muxSource(TmuxSource),
	.Address(TAddress)
);

initial
begin
	TmuxSource = 32'd0;
	#100;
	TmuxSource = 32'd100;
	#100;
end

endmodule
