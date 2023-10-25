module ShiftRegister4bit(
  input [3:0] Data,
  input Shift,
  output [3:0] Output
);
  wire [3:0] Output;
  always @(posedge Shift) begin
    if (Shift)
      Output <= {Output[2:0], Data[0]};
    else
      Output <= Data;
  end
endmodule

