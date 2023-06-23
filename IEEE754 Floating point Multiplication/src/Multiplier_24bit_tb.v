//-----------------------------------------------------------------------------
//
// Title       : Multiplier_24bit_tb
// Design      : IEEE754 Floating point Multiplication
// Author      : fsmalki@outlook.sa
// Company     : HP Inc.
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\IEEE457_Floating_point_Multiplication\IEEE754 Floating point Multiplication\src\Multiplier_24bit_tb.v
// Generated   : Thu Jun  8 13:56:47 2023
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
//{module {Multiplier_24bit_tb}}
module Multiplier_24bit_tb;

  // Inputs
  reg [22:0] man_a;
  reg [22:0] man_b;

  // Outputs
  wire [47:0] product;
  wire MSB_bit;

  // Instantiate the Multiplier_24bit module
  Multiplier_24bit dut (
    .man_a(man_a),
    .man_b(man_b),
    .product(product),
    .MSB_bit(MSB_bit)
  );

  // Clock signal
  reg clk;

  // Testbench stimulus
  initial begin
    // Initialize inputs
    man_a = 24'b110110101001001010110111;
    man_b = 24'b101101001010111100101100;

    // Toggle clock
    clk = 1'b0;
    forever #5 clk = ~clk;
  end

  // Monitor for checking the outputs
  always @(posedge clk) begin
    $display("man_a = %b", man_a);
    $display("man_b = %b", man_b);
    $display("product = %b", product);
    $display("MSB_bit = %b", MSB_bit);
    $display("---------------------------");
  end

endmodule