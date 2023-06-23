//-----------------------------------------------------------------------------
//
// Title       : Rounding_48bit_tb
// Design      : IEEE754 Floating point Multiplication
// Author      : fsmalki@outlook.sa
// Company     : HP Inc.
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\IEEE457_Floating_point_Multiplication\IEEE754 Floating point Multiplication\src\Rounding_48bit_tb.v
// Generated   : Thu Jun  8 13:51:11 2023
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
//{module {Rounding_48bit_tb}}
module Rounding_48bit_tb ();

reg [47:0] input_number;
  wire [22:0] rounded_number;
  
  Rounding_48bit dut (
    .input_number(input_number),
    .rounded_number(rounded_number)
  );
  
  initial begin
    // Test input
    input_number = 48'b101010101010101010101010101010101010101010101010;
    
    // Display input number
    $display("Input Number: %b", input_number);
    
    // Wait for rounding to take effect
    #1;
    
    // Display rounded number
    $display("Rounded Number: %b", rounded_number);		
	
	   // Test input
    input_number = 48'b100000000010101010101011111111101010101010101010;
    
    // Display input number
    $display("Input Number: %b", input_number);
    
    // Wait for rounding to take effect
    #1;
    
    // Display rounded number
    $display("Rounded Number: %b", rounded_number);
    
    // Finish simulation
    $finish;
  end
endmodule