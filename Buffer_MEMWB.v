//1 - Declaracion del modulo
module Buffer_MEMWB(
	input inRegW3, inMemReg3, clk,
	input [31:0]inMemRes, inALURes2,
	input [4:0]inRegMux2,
	output reg outRegW3, outMemReg3,
	output reg [31:0]outMemRes, outALURes2,
	output reg [4:0]outRegMux2
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo

//Bloque secuencial
always @(posedge clk)
begin
	outRegW3 = inRegW3;
	outMemReg3 = inMemReg3;
	outMemRes = inMemRes;
	outALURes2 = inALURes2;
	outRegMux2 = inRegMux2;
end

endmodule
