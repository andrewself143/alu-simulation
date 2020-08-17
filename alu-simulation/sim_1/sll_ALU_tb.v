`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 04:06:38 PM
// Design Name: 
// Module Name: sll_ALU_tb
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


module sll_ALU_tb(
    output [31:0] sll_Result,
    output Overflow,
    output Carry,
    output Equal
    );
    
    reg [31:0] in_a;
    reg [31:0] in_b;
    
    sll_ALU sll_inst(
        .a(in_a),
        .b(in_b),
        .s(sll_Result),
        .of(Overflow),
        .cary(Carry),
        .eq(Equal)
    );
    
    initial begin
        in_a = 0;
        in_b = 1;
        #20
        in_a = 32'b11111111111111111111111111111111;
        in_b = 1;
        #20
        in_a = 32'b11111111111111111111111111111110;
        in_b = 1;
        #20
        in_a = 32'b11111111111111111111111111111100;
        in_b = 1;
        #20
        in_a = 32'b11111111111111111111111111111000;
        in_b = 1;
        #20
        in_a = 32'b11111111111111110000000000000000;
        in_b = 10;
        #20
        in_a = 32'b00000000000000001111111111111111;
        in_b = 2;
        #20
        in_a = 32'b10101010101010101010101010101010;
        in_b = 32;
        #20
        $finish;
    end
    
endmodule
