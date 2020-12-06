//1 - Declaracion del modulo
module PCSrcMux_Fase_1(
	input mPCSel,
	input [31:0]pResult,
	output reg [31:0]pSource
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo

//Bloque secuencial
always @*
begin
	case(mPCSel)
	1'b0:
		pSource = pResult;
	default:
		pSource = 32'bz;
	endcase
end

endmodule

