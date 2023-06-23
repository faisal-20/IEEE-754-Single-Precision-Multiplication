//-----------------------------------------------------------------------------
//
// Title       : Add_1_to_Exponent
// Design      : IEEE754 Floating point Multiplication
// Author      : fsmalki@outlook.sa
// Company     : HP Inc.
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\IEEE457_Floating_point_Multiplication\IEEE754 Floating point Multiplication\src\Add_1_to_Exponent.v
// Generated   : Thu Jun  8 10:35:24 2023
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
//{module {Add_1_to_Exponent}}
module Add_1_to_Exponent (
	
	input wire [7:0] exponent,
	output wire [7:0] exponent_out,
	);
	
	assign exponent_out = exponent + 1'b1;
	
endmodule
