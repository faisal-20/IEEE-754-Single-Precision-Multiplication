//-----------------------------------------------------------------------------
//
// Title       : Rounding_48bit
// Design      : IEEE754 Floating point Multiplication
// Author      : fsmalki@outlook.sa
// Company     : HP Inc.
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\IEEE457_Floating_point_Multiplication\IEEE754 Floating point Multiplication\src\Rounding_48bit.v
// Generated   : Thu Jun  8 11:20:28 2023
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
//{module {Rounding_48bit}}
module Rounding_48bit (
  input wire [47:0] input_number,
  output wire [22:0] rounded_number
);
  reg [47:0] shifted_number;
  
  always @(*)
  begin
    if (input_number[46])
      shifted_number = input_number + 1; // Round up
    else
      shifted_number = input_number; // Round down
  end
  
  assign rounded_number = shifted_number[45:23];
endmodule
