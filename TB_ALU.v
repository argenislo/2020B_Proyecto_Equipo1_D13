`timescale 1ns/1ns

//1 - Declaracion del modulo
module TB_ALU();

//2 - Declaracion de cables y registros
reg [31:0]TOP1, TOP2;
reg [3:0]TALUSel;
wire [31:0]TRes;
wire TZ;

//Cuerpo del modulo

//Instancias
ALU test_ALU(
	.OP1(TOP1),
	.OP2(TOP2),
	.ALUSel(TALUSel),
	.Res(TRes),
	.Z(TZ)
);

initial
begin
	TOP1 = 32'd10;
	TOP2 = 32'd15;
	TALUSel = 3'b0;
	#100;
	TOP1 = 32'd10;
	TOP2 = 32'd15;
	TALUSel = 3'b001;
	#100;
	TOP1 = 32'd10;
	TOP2 = 32'd15;
	TALUSel = 3'b010;
	#100;
	TOP1 = 32'd10;
	TOP2 = 32'd15;
	TALUSel = 3'b011;
	#100;
	TOP1 = 32'd10;
	TOP2 = 32'd15;
	TALUSel = 3'b100;
	#100;
	TOP1 = 32'd10;
	TOP2 = 32'd15;
	TALUSel = 3'b101;
	#100;
	TOP1 = 32'd10;
	TOP2 = 32'd15;
	TALUSel = 3'b110;
	#100;
	TOP1 = 32'd10;
	TOP2 = 32'd15;
	TALUSel = 3'b111;
	#100;
end

endmodule
