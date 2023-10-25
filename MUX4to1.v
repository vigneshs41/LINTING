module MUX4to1(
  input [3:0] D0, D1, D2, D3,
  input [1:0] Sel,
  output Y
);
  wire Y;
  always @(*) begin
    case (Sel)
      2'b00: Y = D0;
      2'b01: Y = D1;
      2'b10: Y = D2;
      2'b11: Y = D3;
    endcase
  end
endmodule

