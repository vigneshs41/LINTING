module MultipleDrivenExample(input A, input B, output Y);
  reg X;
  wire Z;

  // Multiple drivers for X
  always @(A or B)
    X <= A;
  
  always @(A or B)
    X <= B;
  
  // Valid assignment for Y
  always @(Z)
    Y = Z;
endmodule

