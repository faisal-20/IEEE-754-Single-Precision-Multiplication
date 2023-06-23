//-----------------------------------------------------------------------------
//
// Title       : 
// Design      : IEEE754 Floating point Multiplication
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\IEEE457_Floating_point_Multiplication\IEEE754 Floating point Multiplication\compile\IEEE754_Multiplication.v
// Generated   : Thu Jun  8 11:50:21 2023
// From        : C:\My_Designs\IEEE457_Floating_point_Multiplication\IEEE754 Floating point Multiplication\src\IEEE754_Multiplication.bde
// By          : Bde2Verilog ver. 2.01
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`ifdef _VCP
`else
`define library(a,b)
`endif


// ---------- Design Unit Header ---------- //
`timescale 1ps / 1ps

module IEEE754_Multiplication (Mantissa,Exponent,sign,Number1,Number2) ;

// ------------ Port declarations --------- //
output [22:0] Mantissa;
wire [22:0] Mantissa;
output [7:0] Exponent;
wire [7:0] Exponent;
output sign;
wire sign;
input [31:0] Number1;
wire [31:0] Number1;
input [31:0] Number2;
wire [31:0] Number2;

// ----------- Signal declarations -------- //
wire NET787;
wire NET803;
wire NET836;
wire NET865;
wire [22:0] BUS625;
wire [22:0] BUS640;
wire [7:0] BUS648;
wire [7:0] BUS656;
wire [47:0] BUS828;
wire [7:0] BUS832;
wire [7:0] BUS913;
wire [47:0] BUS929;
wire [7:0] BUS951;
wire [47:0] BUS962;

// -------- Component instantiations -------//

FloatingPoint_Format U1
(
	.Number(Number1),
	.sign(NET803),
	.exponent(BUS648),
	.mantissa(BUS625)
);



Mux2to1_48bit U10
(
	.data_in_0(BUS828),
	.data_in_1(BUS929),
	.select(NET865),
	.data_out(BUS962)
);



Rounding_48bit U11
(
	.input_number(BUS962),
	.rounded_number(Mantissa)
);



FloatingPoint_Format U2
(
	.Number(Number2),
	.sign(NET787),
	.exponent(BUS656),
	.mantissa(BUS640)
);



Ripple_Carry_Adder_8bit U3
(
	.a(BUS648),
	.b(BUS656),
	.sum(BUS832),
	.carry_out(NET836)
);



Multiplier1_24bit U4
(
	.man_a(BUS625),
	.man_b(BUS640),
	.product(BUS828),
	.MSB_bit(NET865)
);



Correct_Adder_8bit U5
(
	.sum(BUS832),
	.carry(NET836),
	.sum_out(BUS913)
);



Add_1_to_Exponent U6
(
	.exponent(BUS913),
	.exponent_out(BUS951)
);



assign sign = NET787 ^ NET803;


Shift_right_1bit U8
(
	.input_(BUS828),
	.output_(BUS929)
);



Mux2to1_8bit U9
(
	.data_in_0(BUS913),
	.data_in_1(BUS951),
	.select(NET865),
	.data_out(Exponent)
);



endmodule 
