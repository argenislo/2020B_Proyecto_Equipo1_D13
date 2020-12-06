//1 - Declaracion del modulo
module ALUSrcMux_Fase_1(
	input [31:0]regData,
	input mALUSel,
	output reg [31:0]dataALU
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo

//Bloque secuencial
always @*
begin
	case(mALUSel)
	1'b0:
		dataALU = regData;
	default:
		dataALU = 32'bz;
	endcase
end

endmodule

