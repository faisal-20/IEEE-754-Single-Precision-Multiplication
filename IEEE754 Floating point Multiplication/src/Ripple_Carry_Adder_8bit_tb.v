//-----------------------------------------------------------------------------
//
// Title       : Ripple_Carry_Adder_8bit_tb
// Design      : IEEE754 Floating point Multiplication
// Author      : fsmalki@outlook.sa
// Company     : HP Inc.
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\IEEE457_Floating_point_Multiplication\IEEE754 Floating point Multiplication\src\Ripple_Carry_Adder_8bit_tb.v
// Generated   : Thu Jun  8 09:42:05 2023
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
//{module {Ripple_Carry_Adder_8bit_tb}}
module Ripple_Carry_Adder_8bit_tb ();
  reg [7:0] a;
  reg [7:0] b; 
  wire [7:0] sum;
  wire carry_out;

  Ripple_Carry_Adder_8bit dut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry_out(carry_out)
  );

  initial begin
    $display("Testing 8-bit adder");

    // Test case 1: a = 5, b = 10
    a = 8'b10001001;
    b = 8'b10000011;
    #10;
    $display("a = %d, b = %d, sum = %d, carry_out = %d", a, b, sum, carry_out);
    if ((sum === 8'b00010011) && (carry_out === 0))
      $display("Test case 1 passed");
    else
      $display("Test case 1 failed");

    // Test case 2: a = 255, b = 1 (carry-out test)
    a = 8'b11111111;
    b = 8'b00000001;
    #10;
    $display("a = %d, b = %d, sum = %d, carry_out = %d", a, b, sum, carry_out);
    if ((sum === 8'b00000000) && (carry_out === 1))
      $display("Test case 2 passed");
    else
      $display("Test case 2 failed");

    // Add more test cases as needed

    $finish;
  end

endmodule
