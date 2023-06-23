//-----------------------------------------------------------------------------
//
// Title       : Correct_Adder_8bit
// Design      : IEEE754 Floating point Multiplication
// Author      : fsmalki@outlook.sa
// Company     : HP Inc.
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\IEEE457_Floating_point_Multiplication\IEEE754 Floating point Multiplication\src\Correct_Adder_8bit.v
// Generated   : Thu Jun  8 10:25:31 2023
// From        : interface description file
// By          : Itf2Vhdl ver. 1.22
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {Correct_Adder_8bit}}
module Correct_Adder_8bit (
	input wire [7:0] sum,
  	input wire carry,
	output wire [7:0] sum_out,
	);
	
	assign sum_out = (carry == 1) ? (sum - 8'b01111111) : sum ;
	
endmodule
