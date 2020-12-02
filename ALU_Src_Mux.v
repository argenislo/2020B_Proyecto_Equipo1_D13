//1 - Declaracion del modulo
module ALU_Src_Mux(
	input [31:0]regData, signData,
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
	1'b1:
		dataALU = signData;
	default:
		dataALU = 32'bz;
	endcase
end

endmodule
