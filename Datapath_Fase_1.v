//1 - Declaracion del modulo
module Datapath_Fase_1(
	input clkFase
);

//2 - Declaracion de cables y registros
wire [31:0]c1, c2, c3, c4, c12, c13, c14, c16, c19;
wire c5, c6, c7, c8, c9, c17, c18;
wire [2:0]c10, c15;
wire [4:0]c11;

//3 - Cuerpo del modulo

//Instancias
PC_Fase_1 pc1(
	.muxSource(c1),
	.clk(clkFase),
	.Address(c2)
);

InstructionMem_Fase_1 insmem1(
	.readAddress(c2),
	.Instruction(c3)
);

AddPC_Fase_1 addpc1(
	.pInfo(c2),
	.pAddRes(c4)
);

PCSrcMux_Fase_1 pcmux1(
	.pResult(c4),
	.mPCSel(c18),
	.pSource(c1)
);

UnidadControl_Fase_1 uc1(
	.Opcode(c3[31:26]),
	.RegDst(c5),
	.Branch(c6),
	.MemToReg(c7),
	.ALUOp(c10),
	.ALUSrc(c8),
	.RegisterWrite(c9)
);

RegDstMux_Fase_1 regmux1(
	.mRegSel(c5),
	.ins2(c3[15:11]),
	.insAddress(c11)
);

BancoReg_Fase_1 banreg1(
	.RA1(c3[25:21]),
	.RA2(c3[20:16]),
	.AW(c11),
	.Di(c19),
	.RegWrite(c9),
	.DR1(c12),
	.DR2(c13)
);

ALUSrcMux_Fase_1 alumux1(
	.regData(c13),
	.mALUSel(c8),
	.dataALU(c14)
);

ALUControl_Fase_1 alucon1(
	.Function(c3[5:0]),
	.dataUC(c10),
	.Operacion(c15)
);

ALU_Fase_1 alu1(
	.OP1(c12),
	.OP2(c14),
	.ALUSel(c15),
	.Res(c16),
	.Z(c17)
);

AndBranch_Fase_1 andbra1(
	.bIn1(c6),
	.bIn2(c17),
	.bOut(c18)
);

MemRegMux_Fase_1 memmux1(
	.inRes(c16),
	.mMemSel(c7),
	.mWrite(c19)
);

endmodule

