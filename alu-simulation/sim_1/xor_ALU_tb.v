`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 03:10:47 PM
// Design Name: 
// Module Name: xor_ALU_tb
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


module xor_ALU_tb(
    output [31:0] xor_Result,
    output Equal,
    output Carry,
    output Overflow
    );
    
    reg [31:0] in_a;
    reg [31:0] in_b;
    
    xor_ALU xorMod(
        .a(in_a),
        .b(in_b),
        .s(xor_Result),
        .eq(Equal),
        .cary(Carry),
        .of(Overflow)
    );
    
    initial begin
        in_a = 0;
        in_b = 0;
        #20
        in_a = 32'b11111111111111111111111111111111;
        in_b = 32'b11111111111111111111111111111111;
        #20
        in_a = 32'b11111111111111110000000000000000;
        in_b = 32'b00000000000000001111111111111111;
        #20
        in_a = 32'b00000000000000000000000000000000;
        in_b = 32'b10101010101010101010101010101010;
        #20
        in_a = 32'b01010101010101010101010101010101;
        in_b = 32'b10101010101010101010101010101010;
        #20
        in_a = 32'b11111111111111111111111111111111;
        in_b = 0;
        #20
        $finish;
    end
endmodule
