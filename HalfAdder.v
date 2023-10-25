module HalfAdder(
  input A, B,
  output Sum, Cout
);
  wire Sum, Cout;
  assign {Sum, Cout} = A + B; // Multiple driven error
endmodule

