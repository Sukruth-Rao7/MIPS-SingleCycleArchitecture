`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2022 02:01:05 AM
// Design Name: 
// Module Name: tb_mips
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_mips(    );

reg clock, reset;
wire [31:0] PCin, PCout, Extend32,ALU_B,ShiftOut,ALUOut, Add_ALUOut, ReadData, WriteData_Reg, inst;
wire RegDst, RegWrite, ALUSrc, MemtoReg, MemRead, MemWrite, Branch,Zero, AndGateOut;
wire [1:0] ALUOp;
wire [4:0]  WriteReg;
wire [3:0] ALUCtl;
wire [31:0] ReadData1, ReadData2;

MipsCPU DUT(clock, reset, 
					PCin,PCout,
					inst,
					RegDst, RegWrite, ALUSrc, MemtoReg, MemRead, MemWrite, Branch,
					ALUOp,
					WriteReg,
					ReadData1, ReadData2,
					Extend32,
					ALU_B,
					ShiftOut,
					ALUCtl,
					Zero,
					ALUOut,
					Add_ALUOut,
					AndGateOut,
					ReadData,
					WriteData_Reg);
					
initial begin
clock = 1'b0;
reset = 1'b1;  #5;
reset = 1'b0;
end



always begin
#10 clock = ~clock; 
end
					

endmodule
