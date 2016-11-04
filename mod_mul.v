`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:18:07 11/04/2016 
// Design Name: 
// Module Name:    mod_mul 
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
module mod_mul(


input clock,
input start,
input [3:0] multiplicand, 
input [3:0] multiplier,        
output reg [7:0] product,
output busy

    );

always@(posedge start)begin
	product = $signed(multiplicand) * $signed(multiplier);
end

endmodule
