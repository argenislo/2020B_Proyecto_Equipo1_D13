//1 - Declaracion del modulo
module PC_Src_Mux(
	input mPCSel,
	input [31:0]pResult, bResult,
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
	1'b1:
		pSource = bResult;
	default:
		pSource = 32'bz;
	endcase
end

endmodule
