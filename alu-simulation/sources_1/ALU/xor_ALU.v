`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2018 02:18:17 PM
// Design Name: 
// Module Name: xor_ALU
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


module xor_ALU(
    input [31:0] a,
    input [31:0] b,
    output [31:0] s,
    output eq,
    output cary,
    output of
    );
    
    assign eq = (a-b == 0);
    assign cary = 1'bZ;
    assign of = 1'bZ;
    
    assign s = a ^ b;
    
endmodule
