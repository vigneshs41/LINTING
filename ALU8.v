module ALU8(
  input [7:0] A, B,
  input [2:0] Control,
  output [7:0] Output
);
  wire[7:0] Output;
  always @(*) begin
    case (Control)
      3'b000: Output = A + B;
      3'b001: Output = A - B;
      3'b010: Output = A & B;
      3'b011: Output = A | B;
      // ...
    endcase
  end
endmodule

