//-----------------------------------------------------------------------------
//
// Title       : Multiplier_24bit
// Design      : IEEE754 Floating point Multiplication
// Author      : fsmalki@outlook.sa
// Company     : HP Inc.
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\IEEE457_Floating_point_Multiplication\IEEE754 Floating point Multiplication\src\Multiplier_24bit.v
// Generated   : Thu Jun  8 10:47:03 2023
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
//{module {Multiplier_24bit}}
module Multiplier_24bit (
  input wire [22:0] man_a,
  input wire [22:0] man_b,
  output wire [47:0] product,
  output wire MSB_bit
);

	// Add hidden bit to MSB and mltiply
assign product = {1'b1,man_a} * {1'b1,man_b};
assign MSB_bit = product[47];

endmodule
