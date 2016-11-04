`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:16:16 11/04/2016 
// Design Name: 
// Module Name:    module_multiplier 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module module_multiplier(

input clock,
input start,
input [3:0] multiplicand1, 
input [3:0] multiplier1,        
output [7:0] product,
output busy

);

wire [3:0] left_out1;
wire [4:0] right_out1;

wire [3:0] left_out2;
wire [4:0] right_out2;

wire [3:0] left_out3;
wire [4:0] right_out3;

wire [3:0] left_out4;
wire [4:0] right_out4;

Booth b1(
	.A(4'b0000),
	.multiplier(multiplier1),
	.multiplicand({multiplicand1,1'b0}),
	.A_left(left_out1),
	.q_right(right_out1)
);
Booth b2(
	.A(left_out1),
	.multiplier(multiplier1),
	.multiplicand(right_out1),
	.A_left(left_out2),
	.q_right(right_out2)
);

Booth b3(
	.A(left_out2),
	.multiplier(multiplier1),
	.multiplicand(right_out2),
	.A_left(left_out3),
	.q_right(right_out3)

);


Booth b4(
	.A(left_out3),
	.multiplier(multiplier1),
	.multiplicand(right_out3),
	.A_left(left_out4),
	.q_right(right_out4)
);


assign product = {left_out4,right_out4[4:1]};

endmodule
