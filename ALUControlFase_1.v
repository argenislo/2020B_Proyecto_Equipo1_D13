//1 - Declaracion del modulo
module ALUControl(
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
		6'b000000:		//NOP
			Operacion = 3'b101;
		default:
			Operacion = 3'bz;
		endcase
	default:
		Operacion = 3'bz;
	endcase	
end

endmodule
