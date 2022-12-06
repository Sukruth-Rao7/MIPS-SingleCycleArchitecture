`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2022 08:11:26 PM
// Design Name: 
// Module Name: reg_file_tb
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


module reg_file_tb();
reg clock, RegWrite;
wire ReadReg1, ReadReg2, WriteReg, WriteData, ReadData1, ReadData2;

RegFile DUT(clock, RegWrite, ReadReg1, ReadReg2, WriteReg, WriteData, ReadData1, ReadData2);
    
always @(posedge clock) begin
    $display($time, " dout='h%x", dut.register.Dout);
end

initial begin
    $monitor($time, " dout='%32b", dut.register.Dout);
end
endmodule
