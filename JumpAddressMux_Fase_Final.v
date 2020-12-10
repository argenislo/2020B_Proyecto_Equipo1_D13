//1 - Declaracion del modulo
module JumpAddressMux_Fase_Final(
	input [31:0]inAddress, inALURes,
	input JSel,
	output reg [31:0]PCSource
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo

//Bloque secuencial
always @*
begin
	case(JSel)
	1'b0:
		PCSource = inALURes;
	1'b1:
		PCSource = inAddress;
	endcase
end

endmodule
