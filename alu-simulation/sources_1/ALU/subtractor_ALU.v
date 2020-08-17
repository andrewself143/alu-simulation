`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 02:21:55 PM
// Design Name: 
// Module Name: subtractor_ALU
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

module subtractor_ALU(
    input [31:0] a,
    input [31:0] b,
    output [31:0] s,
    output cary,
    output of,
    output eq
    );

    wire [32:0] intermediate_sum;
    wire [32:0] carry_sum;
    wire [31:0] b_sub;
    wire msb_a = a[31];
    wire msb_b = b[31];
    wire msb_s;

    assign b_sub = 0-b;

    assign eq = (a-b == 0);

    assign of = (a[31] == b_sub[31]) && (a[31] != s[31]);

    assign intermediate_sum = {a[31], a} + {b[31], b_sub};
    assign carry_sum = a + b_sub;
    assign s = carry_sum[31:0];
    assign cary = carry_sum[32];

endmodule
