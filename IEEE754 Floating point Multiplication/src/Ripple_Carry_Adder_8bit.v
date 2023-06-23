//-----------------------------------------------------------------------------
//
// Title       : Ripple_Carry_Adder_8bit
// Design      : IEEE754 Floating point Multiplication
// Author      : fsmalki@outlook.sa
// Company     : HP Inc.
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\IEEE457_Floating_point_Multiplication\IEEE754 Floating point Multiplication\src\Ripple_Carry_Adder_8bit.v
// Generated   : Thu Jun  8 09:40:44 2023
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
//{module {Ripple_Carry_Adder_8bit}}
module Ripple_Carry_Adder_8bit (  
  input wire [7:0] a,
  input wire [7:0] b,
  output wire [7:0] sum,
  output wire carry_out

);
  // ----------- Signal declarations -------- //
wire NET1062;
wire NET1075;
wire NET285;
wire NET364;
wire NET416;
wire NET432;
wire NET559;

// -------- Component instantiations -------//

full_adder U0
(
	.a(a[0]),
	.b(b[0]),
	.cin(0),
	.sum(sum[0]),
	.cout(NET1062)
);
full_adder U1
(
	.a(a[1]),
	.b(b[1]),
	.cin(NET1062),
	.sum(sum[1]),
	.cout(NET1075)
);



full_adder U2
(
	.a(a[2]),
	.b(b[2]),
	.cin(NET1075),
	.sum(sum[2]),
	.cout(NET285)
);



full_adder U3
(
	.a(a[3]),
	.b(b[3]),
	.cin(NET285),
	.sum(sum[3]),
	.cout(NET364)
);



full_adder U4
(
	.a(a[4]),
	.b(b[4]),
	.cin(NET364),
	.sum(sum[4]),
	.cout(NET416)
);



full_adder U5
(
	.a(a[5]),
	.b(b[5]),
	.cin(NET416),
	.sum(sum[5]),
	.cout(NET432)
);



full_adder U6
(
	.a(a[6]),
	.b(b[6]),
	.cin(NET432),
	.sum(sum[6]),
	.cout(NET559)
);



full_adder U7
(
	.a(a[7]),
	.b(b[7]),
	.cin(NET559),
	.sum(sum[7]),
	.cout(carry_out)
);


endmodule 
