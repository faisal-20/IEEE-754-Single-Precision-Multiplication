//-----------------------------------------------------------------------------
//
// Title       : \\FloatingPoint_Format
// Design      : IEEE754 Floating point Multiplication
// Author      : fsmalki@outlook.sa
// Company     : HP Inc.
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\IEEE457_Floating_point_Multiplication\IEEE754 Floating point Multiplication\src\FloatingPoint Format.v
// Generated   : Thu Jun  8 09:37:50 2023
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
//{module {\\FloatingPoint_Format}}
module FloatingPoint_Format (
	input [31:0] Number,
	output sign,
	output [7:0] exponent,
	output [22:0] mantissa,
);
	assign sign = Number[31];
	assign exponent = Number[30:23];
	assign mantissa = Number [22:0];

endmodule
