//1 - Declaracion del modulo
module Datapath_Fase_Final(
	input clkFaseF
);

//2 - Declaracion de cables y registros
wire c1, c8, c9, c10, c11, c12, c13, c14, c19, c20, c21, c22, c23, c24, c25, c39, c40, c41, c42, c43, c44, c45, c50, c52, c53, c59, c60, c62, c64;
wire [31:0]c2, c3, c4, c5, c6, c7, c16, c17, c18, c27, c28, c29, c30, c33, c34, c36, c38, c46, c47, c48, c51, c54, c55, c57, c58, c61, c63, c65, c66;
wire [2:0]c15, c26, c37;
wire [4:0]c31, c32, c35, c49, c56;

//3 - Cuerpo del modulo
assign c1 = clkFaseF;

//Instancias
PCSrcMux_Fase_Final pcmuxff(
	.mPCSel(c50),
	.pResult(c4),
	.bResult(c46),
	.pSource(c2)
);

PC_Fase_Final pcff(
	.muxSource(c66),
	.clk(c1),
	.Address(c3)
);

AddPC_Fase_Final addff(
	.pInfo(c3),
	.pAddRes(c4)
);

InstructionMem_Fase_Final insmemff(
	.readAddress(c3),
	.Instruction(c5)
);

BufferIFID_Fase_Final ifidff(
	.inPC(c4),
	.inInsMem(c5),
	.clk(c1),
	.outPC(c6),
	.outInsMem(c7)
);

ShiftLeft2_Fase_Final sf2ff(
	.Instruction(c7[25:0]),
	.AddPC(c6[31:28]),
	.JAddress(c58)
);

UnidadControl_Fase_Final ucff(
	.Opcode(c7[31:26]),
	.Jump(c59),
	.RegisterWrite(c8),
	.MemToReg(c9),
	.MemWrite(c10),
	.MemRead(c11),
	.Branch(c12),
	.ALUOp(c15),
	.ALUSrc(c13),
	.RegDst(c14)
);

BancoReg_Fase_Final banrff(
	.RA1(c7[25:21]),
	.RA2(c7[20:16]),
	.AW(c56),
	.Di(c57),
	.RegWrite(c52),
	.DR1(c16),
	.DR2(c17)
);

SignExtend_Fase_Final signeff(
	.inSign(c7[15:0]),
	.outSign(c18)
);

BufferIDEX_Fase_Final idexff(
	.inJump1(c59),
	.inRegW1(c8),
	.inMemReg1(c9),
	.inMemW1(c10),
	.inMemR1(c11),
	.inBranch1(c12),
	.inALUSrc(c13),
	.inRegD(c14),
	.clk(c1),
	.inALUOp(c15),
	.inAdd(c6),
	.inDR1(c16),
	.inDR2(c17),
	.inSignE(c18),
	.inIns1(c7[20:16]),
	.inIns2(c7[15:11]),
	.inJAddress1(c58),
	.outJump1(c60),
	.outRegW1(c19),
	.outMemReg1(c20),
	.outMemW1(c21),
	.outMemR1(c22),
	.outBranch1(c23),
	.outALUSrc(c24),
	.outRegD(c25),
	.outALUOp(c26),
	.outAdd(c27),
	.outDR1(c28),
	.outDR2(c29),
	.outSignE(c30),
	.outIns1(c31),
	.outIns2(c32),
	.outJAddress1(c61)
);

ShiftLeft1_Fase_Final sf1ff(
	.inShift(c30),
	.outShift(c33)
);

ALUSrcMux_Fase_Final alumuxff(
	.regData(c29),
	.signData(c30),
	.mALUSel(c24),
	.dataALU(c34)
);

RegDstMux_Fase_Final rgmuxff(
	.ins1(c31),
	.ins2(c32),
	.mRegSel(c25),
	.insAddress(c35)
);

AddALU_Fase_Final aaluff(
	.AddPCRes(c27),
	.ShiftRes(c33),
	.AddALURes(c36)
);

ALU_Fase_Final aluff(
	.OP1(c28),
	.OP2(c34),
	.ALUSel(c37),
	.Res(c38),
	.Z(c39)
);

ALUControl_Fase_Final alucff(
	.Function(c30[5:0]),
	.dataUC(c26),
	.Operacion(c37)
);

BufferEXMEM_Fase_Final exmemff(
	.inJump2(c60),
	.inReg2(c19),
	.inMemReg2(c20),
	.inMemW2(c21),
	.inMemR2(c22),
	.inBranch2(c23),
	.inZFlag(c39),
	.clk(c1),
	.inBranchRes(c36),
	.inALURes1(c38),
	.inDR2V(c29),
	.inRegMux1(c35),
	.inJAddress2(c61),
	.outJump2(c62),
	.outReg2(c40),
	.outMemReg2(c41),
	.outMemW2(c42),
	.outMemR2(c43),
	.outBranch2(c44),
	.outZFlag(c45),
	.outBranchRes(c46),
	.outALURes1(c47),
	.outDR2V(c48),
	.outRegMux1(c49),
	.outJAddress2(c63)
);

AndBranch_Fase_Final andbff(
	.bIn1(c44),
	.bIn2(c45),
	.bOut(c50)
);

Memoria_Fase_Final memff(
	.Din(c48),	
	.Dir(c47),
	.Ew(c42),
	.Er(c43),
	.Dout(c51)
);

BufferMEMWB_Fase_Final memwbff(
	.inJump3(c62),
	.inRegW3(c40),
	.inMemReg3(c41),
	.clk(c1),
	.inMemRes(c51),
	.inALURes2(c47),
	.inRegMux2(c49),
	.inJAddress3(c63),
	.outJump3(c64),
	.outRegW3(c52),
	.outMemReg3(c53),
	.outMemRes(c54),
	.outALURes2(c55),
	.outRegMux2(c56),
	.outJAddress3(c65)
);

JumpAddressMux_Fase_Final jmuxff(
	.inAddress(c65),
	.inALURes(c2),
	.JSel(c64),
	.PCSource(c66)
);

MemRegMux_Fase_Final memrff(
	.inRes(c54),
	.inMem(c55),
	.mMemSel(c53),
	.mWrite(c57)
);

endmodule
