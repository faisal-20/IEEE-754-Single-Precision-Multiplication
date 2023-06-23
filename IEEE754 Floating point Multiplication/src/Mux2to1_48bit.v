module Mux2to1_48bit (
  input wire [47:0] data_in_0,
  input wire [47:0] data_in_1,
  input wire select,
  output wire [47:0] data_out
);
assign data_out = (select == 1'b0) ? data_in_0 : data_in_1; 

endmodule
