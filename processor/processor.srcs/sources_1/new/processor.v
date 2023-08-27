`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2022 18:43:20
// Design Name: 
// Module Name: processor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//32x32 register bank	
module regbank (rdData1, rdData2, wrData, sr1, sr2,dr,write,clk);
  input clk,write;
  input [31:0] wrData;
  input [4:0] sr1,sr2,dr;
  output [31:0] rdData1,rdData2;
  
  reg[31:0] regfile[0:31];
  
  assign rdData1 = regfile[sr1];
  assign rdData2 = regfile[sr2];

  always @(posedge clk)
    if (write) regfile[dr] <= wrData;
endmodule


