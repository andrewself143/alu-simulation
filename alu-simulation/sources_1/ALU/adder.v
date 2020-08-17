`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2018 01:04:27 PM
// Design Name: 
// Module Name: adder
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


module adder(
    input [31:0] a,
    input [31:0] b,
    output [31:0] s,
    output cary,
    output of,
    output eq
    );

    wire [32:0] intermediate_sum;
    wire [32:0] carry_sum;

    assign eq = (a-b == 0);
    
    assign intermediate_sum = {a[31], a} + {b[31], b};
    assign of = (intermediate_sum[32:31] == 2'b01) | (intermediate_sum[32:31] == 2'b10); //overflow | underflow
    assign carry_sum = a + b;
    assign s = carry_sum[31:0];
    assign cary = carry_sum[32];

endmodule
