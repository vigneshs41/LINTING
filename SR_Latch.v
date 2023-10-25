module SR_Latch(
  input S, R, 
  output Q, Qbar
);
  reg Q, Qbar;
  always @(S, R)
    if (S && !R) Q = 1'b1;
    else if (!S && R) Q = 1'b0;
endmodule

