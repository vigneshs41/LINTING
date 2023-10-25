module Multiplier4x4(
  input [3:0] A, B,
  output [7:0] P
);
  wire [7:0] P;
  assign P = A * B;
endmodule

