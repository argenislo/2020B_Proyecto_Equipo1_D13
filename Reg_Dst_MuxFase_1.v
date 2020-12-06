//1 - Declaracion del modulo
module Reg_Dst_Mux(
	input [4:0]ins2,
	input mRegSel,
	output reg [4:0]insAddress
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo

//Bloque secuencial
always @*
begin
	case(mRegSel)
	1'b1:
		insAddress = ins2;
	default:
		insAddress = 5'bz;
	endcase
end

endmodule
