`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 08:08:41 PM
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb(
    output [31:0] ALU_out,
    output Equal_out,
    output Carry_out,
    output Overflow_out
    );
    
    reg [31:0] op_a;
    reg [31:0] op_b;
    reg [3:0] opsel;
    
    ALU ALU_inst(
        .OperandA(op_a),
        .OperandB(op_b),
        .ALUresult(ALU_out),
        .ALUopsel(opsel),
        .Equal(Equal_out),
        .Carry(Carry_out),
        .Overflow(Overflow_out)
    );
    
    initial begin
        op_a = 32'b00000000000000000000000000000001;
        op_b = 32'b00000000000000000000000000000001;
        opsel = 0;
        #20
        opsel = 1;
        #20
        opsel = 2;
        #20
        opsel = 3;
        #20
        opsel = 4;
        #20
        opsel = 5;
        #20
        opsel = 6;
        #20
        opsel = 7;
        #20
        opsel = 8;
        #20
        $finish;
    end
endmodule
