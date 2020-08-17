`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2018 01:30:58 PM
// Design Name: 
// Module Name: not_ALU_tb
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


module not_ALU_tb(
    output [31:0] not_Result,
    output Overflow,
    output Carry,
    output Equal
    );
    
    reg [31:0] in_a;
    
    not_ALU not_inst(
        .a(in_a),
        .s(not_Result),
        .of(Overflow),
        .cary(Carry),
        .eq(Equal)
    );
    
    initial begin
        in_a = 0;
        #20
        in_a = 32'b11111111111111111111111111111111;
        #20
        in_a = 32'b11111111111111110000000000000000;
        #20
        in_a = 32'b00000000000000001111111111111111;
        #20
        in_a = 32'b10101010101010101010101010101010;
        #20
        $finish;
    end
    
endmodule
