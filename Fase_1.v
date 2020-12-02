`timescale 1ns/1ns

//1 - Declaracion del modulo
module Fase_1();

//2 - Declaracion de cables y registros
wire [31:0]c1, c2, c3, c4, c12, c13, c14, c16, c19; 
wire c5, c6, c7, c8, c9, c17, c18;
wire [2:0]c10, c15;
wire [4:0]c11; 

//3 - Cuerpo del modulo

//Instancias
PC pc1(
	.muxSource(c1),
	.Address(c2)
);

InstructionMemory insmem1(
	.readAddress(c2),
	.Instruction(c3)
);

Add_PC addpc1(
	.pInfo(c2),
	.pAddRes(c4)
);

PC_Src_Mux pcmux1(
	.pResult(c4),
	.mPCSel(c18),
	.pSource(c1)
);

UnidadDeControl uc1(
	.Opcode(c3[31:26]),
	.RegDst(c5),
	.Branch(c6),
	.MemToReg(c7),
	.ALUOp(c10),
	.ALUSrc(c8),
	.RegisterWrite(c9)
);

Reg_Dst_Mux regmux1(
	.mRegSel(c5),
	.ins2(c3[15:11]),
	.insAddress(c11)
);

BancoReg banreg1(
	.RA1(c3[25:21]),
	.RA2(c3[20:16]),
	.AW(c11),
	.Di(c19),
	.RegWrite(c9),
	.DR1(c12),
	.DR2(c13)
);

ALU_Src_Mux alumux1(
	.regData(c13),
	.mALUSel(c8),
	.dataALU(c14)
);

ALUControl alucon1(
	.Function(c3[5:0]),
	.dataUC(c10),
	.Operacion(c15)
);

ALU alu1(
	.OP1(c12),
	.OP2(c14),
	.ALUSel(c15),
	.Res(c16),
	.Z(c17)
);

Branch_And andbra1(
	.bIn1(c6),
	.bIn2(c17),
	.bOut(c18)
);

Mux2_1_32 memmux1(
	.inRes(c16),
	.mMemSel(c7),
	.mWrite(c19)
);

endmodule
