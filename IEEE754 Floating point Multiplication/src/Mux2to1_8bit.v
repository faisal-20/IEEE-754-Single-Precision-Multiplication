//-----------------------------------------------------------------------------
//
// Title       : Mux_8bit
// Design      : IEEE754 Floating point Multiplication
// Author      : fsmalki@outlook.sa
// Company     : HP Inc.
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\IEEE457_Floating_point_Multiplication\IEEE754 Floating point Multiplication\src\Mux_8bit.v
// Generated   : Thu Jun  8 10:38:29 2023
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
//{module {Mux_8bit}}
module Mux2to1_8bit (
  input wire [7:0] data_in_0,
  input wire [7:0] data_in_1,
  input wire select,
  output wire [7:0] data_out
);
assign data_out = (select == 1'b0) ? data_in_0 : data_in_1;	  

endmodule
