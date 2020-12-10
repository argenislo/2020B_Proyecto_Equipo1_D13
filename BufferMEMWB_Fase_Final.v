//1 - Declaracion del modulo
module BufferMEMWB_Fase_Final(
	input inJump3, inRegW3, inMemReg3, clk,
	input [31:0]inMemRes, inALURes2, inJAddress3,
	input [4:0]inRegMux2,
	output reg outJump3, outRegW3, outMemReg3,
	output reg [31:0]outMemRes, outALURes2, outJAddress3,
	output reg [4:0]outRegMux2
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo

//Bloque secuencial
always @(posedge clk)
begin
	outJump3 = inJump3;
	outRegW3 = inRegW3;
	outMemReg3 = inMemReg3;
	outMemRes = inMemRes;
	outALURes2 = inALURes2;
	outRegMux2 = inRegMux2;
	outJAddress3 = inJAddress3;
end

endmodule

