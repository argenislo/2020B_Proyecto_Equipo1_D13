//1 - Declaracion del modulo
module Buffer_EXMEM(
	input inReg2, inMemReg2, inMemW2, inMemR2, inBranch2, inZFlag, clk,
	input [31:0]inBranchRes, inALURes1, inDR2V,
	input [4:0]inRegMux1,
	output reg outReg2, outMemReg2, outMemW2, outMemR2, outBranch2, outZFlag,
	output reg [31:0]outBranchRes, outALURes1, outDR2V,
	output reg [4:0]outRegMux1
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo

//Bloque secuencial
always @(posedge clk)
begin
	outReg2 = inReg2;
	outMemReg2 = inMemReg2;
	outMemW2 = inMemW2;
	outMemR2 = inMemR2;
	outBranch2 = inBranch2;
	outZFlag = inZFlag;
	outBranchRes = inBranchRes;
	outALURes1 = inALURes1;
	outDR2V = inDR2V;
	outRegMux1 = inRegMux1;
end

endmodule
