//1 - Declaracion del modulo
module BancoReg(
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
	banReg[0] = 32'd100;
	banReg[1] = 32'd338;
	banReg[2] = 32'd26;
	banReg[3] = 32'd813;
	banReg[4] = 32'd52;
	banReg[5] = 32'd949;
	banReg[6] = 32'd863;
	banReg[7] = 32'd711;
	banReg[8] = 32'd762;
	banReg[9] = 32'd943;
	banReg[10] = 32'd139;
	banReg[11] = 32'd360;
	banReg[12] = 32'd678;
	banReg[13] = 32'd443;
	banReg[14] = 32'd636;
	banReg[15] = 32'd444;
	banReg[16] = 32'd87;
	banReg[17] = 32'd83;
	banReg[18] = 32'd581;
	banReg[19] = 32'd124;
	banReg[20] = 32'd646;
	banReg[21] = 32'd40;
end

endmodule
