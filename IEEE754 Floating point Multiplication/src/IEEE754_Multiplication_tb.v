module IEEE754_Multiplication_tb;
  
  reg [31:0] Number1;
  reg [31:0] Number2;
  wire [22:0] Mantissa;
  wire [7:0] Exponent;
  wire sign;

  IEEE754_Multiplication my_multiplier (
  .Number1(Number1),
  .Number2(Number2),
    .Mantissa(Mantissa),
    .Exponent(Exponent),
    .sign(sign)
  );

  initial begin
    // Case 1
    Number1 = 32'h44b5a000;
	Number2 = 32'h4199d70a;

    // Wait for a few time units
    #10;

    // Display the outputs
    $display("Mantissa: %b", Mantissa);
    $display("Exponent: %b", Exponent);
    $display("Sign: %b", sign);	
	
	
	   // Case 2
    Number1 = 32'b01000010111110100100000000000000;
	Number2 = 32'b01000001010000010000000000000000;

    // Wait for a few time units
    #10;

    // Display the outputs
    $display("Mantissa: %b", Mantissa);
    $display("Exponent: %b", Exponent);
    $display("Sign: %b", sign);
  end

endmodule