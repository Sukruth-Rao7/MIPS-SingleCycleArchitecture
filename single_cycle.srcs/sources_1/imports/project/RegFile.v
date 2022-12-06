module RegFile(clock, RegWrite, ReadReg1, 
                ReadReg2, WriteReg, WriteData, ReadData1, ReadData2);

	input clock;
	input RegWrite;
	input [4:0] ReadReg1, ReadReg2, WriteReg;
	input [31:0] WriteData;//WriteBack
	output [31:0] ReadData1, ReadData2;//Further goes to mux 2
	reg [31:0] reg_mem [0:31];//32 instructions with each instruction being 32 bit wide
	initial begin
		reg_mem[0] <= 0;reg_mem[1] <= 5;reg_mem[2] <= 3;reg_mem[3] <= 4;reg_mem[4] <= 6;
		reg_mem[5] <= 5;reg_mem[7] <= 10;reg_mem[8] <= 60;reg_mem[11] <= 8;reg_mem[16] <= 100;
	end
	assign ReadData1 = reg_mem[ReadReg1];
	assign ReadData2 = reg_mem[ReadReg2];
	always @(posedge clock) begin
		if (RegWrite == 1)
			reg_mem[WriteReg] = WriteData;
	end	
endmodule