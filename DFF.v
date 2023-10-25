module DFF(
  input D, 
  input Clk, 
  output Q
);
  reg Q;
  always @(posedge Clk)
    Q <= D;
endmodule

