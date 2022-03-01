`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:56:39 01/07/2022
// Design Name:   blink
// Module Name:   C:/iverilog/New folder/inqbeFPGAblink/tb_blink.v
// Project Name:  inqbeFPGAblink
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: blink
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_blink;

	// Inputs
	reg clk;

	// Outputs
	wire led;

	// Instantiate the Unit Under Test (UUT)
	blink uut (
		.clk(clk), 
		.led(led)
	);

initial begin
	clk = 0;
	end
	
always begin
	#10
	clk = ~clk;
	#100;
   end   
endmodule

