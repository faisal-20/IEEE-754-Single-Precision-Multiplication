//-----------------------------------------------------------------------------
//
// Title       : Correct_Adder_8bit_tb
// Design      : IEEE754 Floating point Multiplication
// Author      : fsmalki@outlook.sa
// Company     : HP Inc.
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\IEEE457_Floating_point_Multiplication\IEEE754 Floating point Multiplication\src\Correct_Adder_8bit_tb.v
// Generated   : Thu Jun  8 11:59:56 2023
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
//{module {Correct_Adder_8bit_tb}}
module Correct_Adder_8bit_tb;

  reg [7:0] sum;
  reg carry;
  wire [7:0] sum_out;

  Correct_Adder_8bit my_adder (
    .sum(sum),
    .carry(carry),
    .sum_out(sum_out)
  );

  initial begin
    // Initialize inputs
    sum = 8'b01010101;
    carry = 1;

    // Wait for a few time units
    #10;

    // Display the outputs
    $display("sum_out: %b", sum_out);
  end

endmodule