//1 - Declaracion del modulo
module PC(
	input [31:0]muxSource,
	input clk,
	output reg [31:0]Address
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo

//Inicializacion
initial
begin
	Address = 0;
end

//Bloque secuencial
	always @(posedge clk)
begin
	Address = muxSource;
end

endmodule
