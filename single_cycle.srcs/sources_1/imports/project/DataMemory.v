module DataMemory (clock, address, MemWrite, MemRead, WriteData, ReadData);
	input clock, MemWrite, MemRead;
	input [31:0] address, WriteData;
	output reg [31:0] ReadData;
	reg [31:0] Mem[0:127]; 
	initial begin
		Mem[0] = 5;
		Mem[1] = 6;
		Mem[2] = 7;
	end
	always @ (posedge clock) begin
		if (MemWrite == 1)
			Mem[address[4:0]] <= WriteData;
	end
	always @(negedge clock) begin
		if (MemRead == 1)
			ReadData <= Mem[address[4:0]];
	end	
endmodule








