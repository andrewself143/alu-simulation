`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2018 01:29:19 PM
// Design Name: 
// Module Name: not_ALU
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


module not_ALU(
    input  [31:0] a,
    output [31:0] s,
    output of,
    output cary,
    output eq
    );
    
    assign of = 1'bZ;
    assign cary = 1'bZ;
    assign eq = 1'bZ;
    
    assign s = ~a;
    
endmodule
