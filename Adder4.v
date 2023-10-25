module Adder4(
  input [3:0] A, B,
  output [3:0] Sum
);
  wire[3:0] Sum;
  assign Sum = A + B;
endmodule

