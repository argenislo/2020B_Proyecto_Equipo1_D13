//1 - Declaracion del modulo
module ALU(
	input [31:0]OP1, OP2,
	input [3:0]ALUSel,
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
			Res = OP1 + OP2;	//ADD
			if(Res == 32'b0)
				Z = 1;
			else
				Z = 0;
		end
	3'b001:
		begin
			Res = OP1 - OP2;	//SUB
			if(Res == 32'b0)
				Z = 1;
			else
				Z = 0;
		end
	3'b010:
		begin
			Res = OP1 * OP2;	//MUL
			if(Res == 32'b0)
				Z = 1;
			else
				Z = 0;
		end
	3'b011:
		begin
			Res = OP1 / OP2;	//DIV
			if(Res == 32'b0)
				Z = 1;
			else
				Z = 0;
		end
	3'b100:
		begin
			Res = OP1 | OP2;	//OR
			if(Res == 32'b0)
				Z = 1;
			else
				Z = 0;
		end
	3'b101:
		begin
			Res = OP1 & OP2;	//AND
			if(Res == 32'b0)
				Z = 1;
			else
				Z = 0;
		end
	3'b110:
		begin
			Res = OP1 < OP2;	//SLT
			if(Res == 32'b0)
				Z = 1;
			else
				Z = 0;
		end
	default:
		begin
			Res = 32'bz;
			Z = 1'bz;
		end
	endcase
end

endmodule
