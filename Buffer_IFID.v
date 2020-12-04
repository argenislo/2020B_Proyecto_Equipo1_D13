//1 - Declaracion del modulo
module Buffer_IFID(
	input [31:0]inPC, inInsMem,
	input clk,
	output reg [31:0]outPC, outInsMem
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo

//Bloque secuencial
always @(posedge clk)
begin
	outPC = inPC;
	outInsMem = inInsMem;
end

endmodule
