//1 - Declaracion del modulo
module Memoria_Fase_Final(
	input [31:0]Din, Dir,
	input Ew, Er,
	output reg [31:0]Dout
);

//2 - Declaracion de cables y registros
reg [31:0]bReg [0:31];

//3 - Cuerpo del modulo

//Bloque always
always @*
begin
	if(Ew == 1)
	begin
		bReg[Dir] = Din;
	end
	if(Er == 1)
	begin
		Dout = bReg[Dir];
	end
end

endmodule

