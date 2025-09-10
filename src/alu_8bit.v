`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2025 09:52:40
// Design Name: 
// Module Name: alu_8bit
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


module alu_8bit(input[7:0] A,B, input[3:0] ALU_sel, output[7:0]ALU_result);
reg[7:0] ALU_result;

always@(*) begin
case(ALU_sel)
4'b0000:ALU_result = A+B; //addition
4'b0001:ALU_result = A-B; //subtraction
4'b0010:ALU_result = A*B; //multiplication
4'b0011:ALU_result = A/B; //division
4'b0100:ALU_result = A<<2;//left shift
4'b0101:ALU_result = A>>2;//right shift
4'b0110:ALU_result = {A[6:0],A[7]};//rotate left
4'b0111:ALU_result = {A[0],A[7:1]};//rotate right

4'b1000:ALU_result = A & B;//bitwise and
4'b1001:ALU_result = A | B;//or
4'b1010:ALU_result = A^B;//xor
4'b1011:ALU_result = ~(A|B);//nor
4'b1100:ALU_result = ~(A&B);//nand
4'b1101:ALU_result = ~(A^B);//xnor
4'b1110:ALU_result = (A>B)?8'd1:8'd0;//greater comparison
4'b1111:ALU_result = (A==B)?8'd1:8'd0;//equal comparison
default:ALU_result=8'bX;
endcase
end
endmodule
