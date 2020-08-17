`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2018 01:12:05 PM
// Design Name: 
// Module Name: and_ALU_tb
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


module and_ALU_tb(
    output [31:0] and_Result,
    output Equal,
    output Carry,
    output Overflow
    );
    
    reg [31:0] in_a;
    reg [31:0] in_b;
    
    and_ALU andMod(
        .a(in_a),
        .b(in_b),
        .s(and_Result),
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
