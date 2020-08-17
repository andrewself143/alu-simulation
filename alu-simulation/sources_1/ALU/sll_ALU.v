`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 03:42:28 PM
// Design Name: 
// Module Name: sll_ALU
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


module sll_ALU(
    input  [31:0] a,
    input  [31:0] b,
    output [31:0] s,
    output of,
    output cary,
    output eq
    );
    
    assign of = 1'bZ;
    assign cary = 1'bZ;
    assign eq = 1'bZ;
    
    assign s = a << b;
    
endmodule

