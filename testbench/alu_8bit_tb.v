`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2025 16:10:47
// Design Name: 
// Module Name: alu_8bit_tb
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


module alu_8bit_tb();
reg[7:0] A,B;
reg[3:0] ALU_sel;
wire[7:0] ALU_result;

alu_8bit uut(A,B,ALU_sel,ALU_result);

initial
begin
ALU_sel=4'b0000;
A= 8'b0000_0000; B= 8'b1111_1111;
#10 A= 8'b1101_0101; B= 8'b0100_1110;
#10 ALU_sel = 4'b0001;
#10 ALU_sel = 4'b0010;
#10 ALU_sel = 4'b0011;
#10 ALU_sel = 4'b0100;
#10 ALU_sel = 4'b0101;
#10 ALU_sel = 4'b0110;
#10 ALU_sel = 4'b0111;

#10 ALU_sel = 4'b1000;
#10 ALU_sel = 4'b1001;
#10 ALU_sel = 4'b1010;
#10 ALU_sel = 4'b1011;
#10 ALU_sel = 4'b1100;
#10 ALU_sel = 4'b1101;
#10 ALU_sel = 4'b1110;
#10 ALU_sel = 4'b1111;




end
endmodule

