//1 - Declaracion del modulo
module MemRegMux_Fase_Final(
	input [31:0]inRes, inMem,
	input mMemSel,
	output reg [31:0]mWrite
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo

//Bloques secuenciales
always @*
begin
	case(mMemSel)
	1'b0:
		begin
			mWrite = inRes;
		end
	1'b1:
		begin
			mWrite = inMem;
		end
	default:
		begin
			mWrite = 32'bz;
		end
	endcase
end

endmodule

