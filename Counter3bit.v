module Counter3bit(
  input Clk,
  output [2:0] Count
);
  reg [2:0] Count;
  always @(posedge Clk) begin
    Count <= Count + 1;
    Count <= Count - 1; // Multiple driven error
  end
endmodule

