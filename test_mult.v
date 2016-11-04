`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:30:08 11/04/2016
// Design Name:   module_multiplier
// Module Name:   C:/Users/Varnit Jain/p1/test_mult.v
// Project Name:  p1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: module_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mult;

	// Inputs
	reg clock;
	reg start;
	reg [3:0] multiplicand1;
	reg [3:0] multiplier1;

	// Outputs
	wire [7:0] product;
	wire busy;

	// Instantiate the Unit Under Test (UUT)
	module_multiplier uut (
		.clock(clock), 
		.start(start), 
		.multiplicand1(multiplicand1), 
		.multiplier1(multiplier1), 
		.product(product), 
		.busy(busy)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		start = 0;
		multiplicand1 = 3;
		multiplier1 = 5;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

