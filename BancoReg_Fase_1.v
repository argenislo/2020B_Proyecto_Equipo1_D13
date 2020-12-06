//1 - Declaracion del modulo
module BancoReg_Fase_1(
	input [4:0]RA1, RA2, AW,
	input [31:0]Di,
	input RegWrite,
	output reg [31:0]DR1, DR2
);

//2 - Declaracion de cables y registros
reg [31:0]banReg [0:31];

//3 - Cuerpo del modulo

//Bloque always
always @*
begin
	if(RegWrite == 1)
		begin
			banReg[AW] = Di;
			DR1 = banReg[RA1];
			DR2 = banReg[RA2];

		end
	else
		begin
			DR1 = banReg[RA1];
			DR2 = banReg[RA2];
		end
end

//Datos
initial
begin
	$readmemb("D:\\TestF1_BReg.mem", banReg);
end

endmodule

