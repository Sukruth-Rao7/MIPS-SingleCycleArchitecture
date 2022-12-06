module InstMem(clock, address, inst);

	input clock;
	input [31:0] address;
	//016D4022
//8D630008
//ADA90014
//222A0020
	output reg [31:0]	inst;
	
	reg [31:0] Mem [0:31]; //creating memory of 32 bits wide and 32 bits depth
	
	initial begin
		$readmemh("instruction.mem", Mem);//what is 0, 5 it is start end address
	end
	
	always @( posedge clock) begin
		inst <= Mem[address[31:2]];//As program counter is increased by 4 we need to macth with mem location which is incremented by 1
	end
endmodule