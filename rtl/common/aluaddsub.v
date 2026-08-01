`timescale 1ns / 1ps

module aluaddsub(
input signed [31:0]A,B,
input sub_ctrl,
output signed [31:0] result,
output posovf,
output negovf
    );
   
   wire [31:0] B_eff;
   wire [32:0] sum_eff;
   
   
  assign B_eff= sub_ctrl?(~B):B;
  
  assign #3 sum_eff = {1'b0,A}+{1'b0,B_eff}+ sub_ctrl;
  
  assign result = sum_eff[31:0];
  
  assign posovf = ((!A[31]) & (!B_eff[31]) & result[31]);
  assign negovf = (A[31] & B_eff[31] & (!result[31]));
    
endmodule
