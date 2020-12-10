//1 - Declaracion del modulo
module ALU_Fase_Final(
	input [31:0]OP1, OP2,
	input [2:0]ALUSel,
	output reg [31:0]Res,
	output reg Z
);

//2 - Declaración de cables y registros

//3 - Cuerpo del modulo

//Bloques secuenciales
always @*
begin
	case(ALUSel)
	3'b000:
		begin
			Res = OP1 + OP2;	//ADD, LW y SW
			if(Res == 32'b0)
				Z = 1'b1;
			else
				Z = 1'b0;
		end
	3'b001:
		begin
			Res = OP1 - OP2;	//SUB y BEQ
			if(Res == 32'b0)
				Z = 1'b1;
			else
				Z = 1'b0;
		end
	3'b010:
		begin
			Res = OP1 & OP2;	//AND
			if(Res == 32'b0)
				Z = 1'b1;
			else
				Z = 1'b0;
		end
	3'b011:
		begin
			Res = OP1 | OP2;	//OR
			if(Res == 32'b0)
				Z = 1'b1;
			else
				Z = 1'b0;
		end
	3'b100:
		begin
			Res = OP1 < OP2;	//SLT y SLTI
			if(Res == 32'b0)
				Z = 1'b1;
			else
				Z = 1'b0;
		end
	default:
		begin
			Res = 32'bz;
			Z = 1'bz;
		end
	endcase
end

endmodule

