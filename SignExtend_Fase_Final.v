//1 - Declaracion del modulo
module SignExtend_Fase_Final(
	input [15:0]inSign,
	output reg [31:0]outSign
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo

//Bloque secuencial
always @*
begin
	if(inSign[15:15] == 1'b1)
		outSign = {16'b1, inSign};
	else
	begin
		if(inSign[15:15] == 1'b0)
			outSign = {16'b0, inSign};
	end
end

endmodule

