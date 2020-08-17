`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2018 10:08:35 AM
// Design Name: 
// Module Name: Sign_Extender
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


module Sign_Extender(
    input [14:0] num,
    output [31:0] num_ext
);
  
    assign num_ext = {{17{num[14]}}, num};

endmodule