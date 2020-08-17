`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 02:26:14 PM
// Design Name: 
// Module Name: subtractor_ALU_tb
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


module subtractor_ALU_tb(
    output [31:0] subtractor_Result,
    output Overflow,
    output Equal,
    output Carry
    );
    
    reg [31:0] in_a;
    reg [31:0] in_b;
    reg [31:0] in_b_flipped;
             
    subtractor_ALU sub_inst(
        .a(in_a),
        .b(in_b_flipped),
        .s(subtractor_Result),
        .of(Overflow),
        .eq(Equal),
        .cary(Carry)
    );
    
    initial begin
        in_a = 0;
        in_b = 0;
        in_b_flipped = 0-in_b;
        #20
        in_a = 32'b11111111111111111111111111111111;
        in_b = 32'b11111111111111111111111111111111;
                in_b_flipped = 0-in_b;
        #20
        in_a = 32'b11111111111111110000000000000000;
        in_b = 32'b00000000000000001111111111111111;
                in_b_flipped = 0-in_b;
        #20
        in_a = 32'b00000000000000000000000000000000;
        in_b = 32'b10101010101010101010101010101010;
                in_b_flipped = 0-in_b;
        #20
        in_a = 32'b01010101010101010101010101010101;
        in_b = 32'b10101010101010101010101010101010;
                in_b_flipped = 0-in_b;
        #20
        in_a = 32'b11111111111111111111111111111111;
        in_b = 0;
                in_b_flipped = 0-in_b;
        #20
        in_a = 5000;
        in_b = 5000;
                in_b_flipped = 0-in_b;
        #20
        in_a = 15000;
        in_b = -5000;
                in_b_flipped = 0-in_b;
        #20
        in_a = -2000000000;
        in_b = -2000000000;
                in_b_flipped = 0-in_b;
        #20
        in_a = 2000000000;
        in_b = 2000000000;
                in_b_flipped = 0-in_b;
        #20
        $finish;
    end
    
endmodule
