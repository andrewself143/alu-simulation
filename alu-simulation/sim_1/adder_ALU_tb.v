`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 01:11:46 PM
// Design Name: 
// Module Name: adder_ALU_tb
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


module adder_ALU_tb(
    output [31:0] adder_Result,
    output Overflow,
    output Equal,
    output Carry
    );
    
    reg [31:0] in_a;
    reg [31:0] in_b;
             
    adder adder_inst(
        .a(in_a),
        .b(in_b),
        .s(adder_Result),
        .of(Overflow),
        .eq(Equal),
        .cary(Carry)
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
        in_a = 5000;
        in_b = -5000;
        #20
        in_a = 15000;
        in_b = -5000;
        #20
        in_a = -2000000000;
        in_b = -2000000000;
        #20
        in_a = 2000000000;
        in_b = 2000000000;
        #20
        $finish;
    end
    
endmodule
