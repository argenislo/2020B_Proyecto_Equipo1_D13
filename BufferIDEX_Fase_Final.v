//1 - Declaracion del modulo
module BufferIDEX_Fase_Final(
	input inJump1, inRegW1, inMemReg1, inMemW1, inMemR1, inBranch1, inALUSrc, inRegD, clk,
	input [2:0]inALUOp,
	input [31:0]inAdd, inDR1, inDR2, inSignE, inJAddress1,
	input [4:0]inIns1, inIns2,
	output reg outJump1, outRegW1, outMemReg1, outMemW1, outMemR1, outBranch1, outALUSrc, outRegD,
	output reg [2:0]outALUOp,
	output reg [31:0]outAdd, outDR1, outDR2, outSignE, outJAddress1,
	output reg [4:0]outIns1, outIns2
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo

//Bloque secuencial
always @(posedge clk)
begin
	outJump1 = inJump1;
	outRegW1 = inRegW1;
	outMemReg1 = inMemReg1;
	outMemW1 = inMemW1;
	outMemR1 = inMemR1;
	outBranch1 = inBranch1;
	outALUSrc = inALUSrc;
	outRegD = inRegD;
	outALUOp = inALUOp;
	outAdd = inAdd;
	outDR1 = inDR1;
	outDR2 = inDR2;
	outSignE = inSignE;
	outIns1 = inIns1;
	outIns2 = inIns2;
	outJAddress1 = inJAddress1;
end

endmodule

