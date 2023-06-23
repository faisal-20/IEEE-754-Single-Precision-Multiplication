//-----------------------------------------------------------------------------
//
// Title       : Shift_right_1bit
// Design      : IEEE754 Floating point Multiplication
// Author      : fsmalki@outlook.sa
// Company     : HP Inc.
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\IEEE457_Floating_point_Multiplication\IEEE754 Floating point Multiplication\src\Shift_right_1bit.v
// Generated   : Thu Jun  8 11:17:54 2023
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
//{module {Shift_right_1bit}}
module Shift_right_1bit (
  input wire [47:0] input_,
  output wire [47:0] output_
);
  
  assign output_ = input_ >> 1;

endmodule
