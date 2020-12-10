//1 - Declaracion del modulo
module ALUControl_Fase_Final(
	input [5:0]Function,
	input [2:0]dataUC,
	output reg [2:0]Operacion
);

//2 - Declaracion de cables y registros

//3 - Cuerpo del modulo

//Bloques secuenciales
always @*
begin
	case(dataUC)
	3'b010:
		case(Function)
		6'b100000:           	//ADD
			Operacion = 3'b000;
		6'b100010:		//SUB
			Operacion = 3'b001;
		6'b100100:		//AND
			Operacion = 3'b010;
		6'b100101:		//OR
			Operacion = 3'b011;
		6'b101010:		//SLT
			Operacion = 3'b100;
		default:
			Operacion = 3'bz;
		endcase
	3'b000:
		Operacion = 3'b000;
	3'b111:
		Operacion = 3'b100;
	3'b001:
		Operacion = 3'b001;
	default:
		Operacion = 3'bz;
	endcase	
end

endmodule

