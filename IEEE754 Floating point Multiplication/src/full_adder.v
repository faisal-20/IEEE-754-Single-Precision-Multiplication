//-----------------------------------------------------------------------------
//
// Title       : full_adder
// Design      : IEEE754 Floating point Multiplication
// Author      : fsmalki@outlook.sa
// Company     : HP Inc.
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\IEEE457_Floating_point_Multiplication\IEEE754 Floating point Multiplication\src\full_adder.v
// Generated   : Thu Jun  8 10:07:30 2023
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
//{module {full_adder}}
module full_adder ( a ,b ,cin ,sum ,cout );

// Inputs
  input a, b, cin;

  // Outputs
  output sum, cout;

  // Logic
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (cin & (a | b));

endmodule
