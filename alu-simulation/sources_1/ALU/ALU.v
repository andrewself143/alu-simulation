`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 07:20:50 PM
// Design Name: 
// Module Name: ALU
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


/*
    OPCODES:
    0000 NOP
    0001 ADD/ADDI
    0010 SUB/SUBI
    0101 AND/ANDI
    0110 OR/ORI
    0111 NOT
    1000 XOR/XORI
    1001 SLL/SLLI
    1011 MOV/MOVI
*/

module ALU(
    input [31:0] OperandA,
    input [31:0] OperandB,
    input [3:0] ALUopsel,
    output [31:0] ALUresult,
    output Overflow,
    output Equal,
    output Carry
    );
    
    // utility wires
    wire zero_wire = 32'b00000000000000000000000000000000;
    wire undriven_wire = 1'bZ;
    wire [31:0] neg_OperandB = 0 - OperandB;
           
    
    // results of all ALU subfunctions
    wire [31:0] add_result;
    wire [31:0] sub_result;
    wire [31:0] and_result;
    wire [31:0] or_result;
    wire [31:0] not_result;
    wire [31:0] xor_result;
    wire [31:0] sll_result;
    
    // equal flag results from subfunctions
    wire [31:0] add_equal;
    wire [31:0] sub_equal;
    wire [31:0] and_equal;
    wire [31:0] or_equal;
    wire [31:0] not_equal;
    wire [31:0] xor_equal;
    wire [31:0] sll_equal;
    
    // carry flag results from subfunctions
    wire [31:0] add_carry;
    wire [31:0] sub_carry;
    wire [31:0] and_carry;
    wire [31:0] or_carry;
    wire [31:0] not_carry;
    wire [31:0] xor_carry;
    wire [31:0] sll_carry;
    
    
    // overflow flag results from subfunctions
    wire [31:0] add_overflow;
    wire [31:0] sub_overflow;
    wire [31:0] and_overflow;
    wire [31:0] or_overflow;
    wire [31:0] not_overflow;
    wire [31:0] xor_overflow;
    wire [31:0] sll_overflow;
    
    // opcode: 0001 Add
    adder add_inst (
        .a(OperandA),
        .b(OperandB),
        .s(add_result),
        .cary(add_carry),
        .eq(add_equal),
        .of(add_overflow)
    );
    
    // opcode: 0010 Subtract
    subtractor_ALU sub_inst (
        .a(OperandA),
        .b(OperandB),
        .s(sub_result),
        .cary(sub_carry),
        .eq(sub_equal),
        .of(sub_overflow)
    );
    
    // opcode: 0101 AND
    and_ALU and_inst (
        .a(OperandA),
        .b(OperandB),
        .s(and_result),
        .cary(and_carry),
        .eq(and_equal),
        .of(and_overflow)
    );
    
    // opcode: 0110 OR
    or_ALU or_inst (
        .a(OperandA),
        .b(OperandB),
        .s(or_result),
        .cary(or_carry),
        .eq(or_equal),
        .of(or_overflow)
    );

    // opcode: 1000 XOR
    xor_ALU xor_inst (
        .a(OperandA),
        .b(OperandB),
        .s(xor_result),
        .cary(xor_carry),
        .eq(xor_equal),
        .of(xor_overflow)
    );
    
    // opcode: 0111 NEGATION
    not_ALU not_inst (
        .a(OperandA),
        .s(not_result),
        .cary(not_carry),
        .eq(not_equal),
        .of(not_overflow)
    );

    // opcode: 1001 SHIFT LEFT LOGICAL
    sll_ALU sll_inst (
        .a(OperandA),
        .b(OperandB),
        .s(sll_result),
        .cary(sll_carry),
        .eq(sll_equal),
        .of(sll_overflow)
    );
    
    mux_9to1_32bit result_mux(
        .select(ALUopsel),
        .i0(zero_wire),
        .i1(add_result),
        .i2(sub_result),
        .i3(and_result),
        .i4(or_result),
        .i5(not_result),
        .i6(xor_result),
        .i7(sll_result),
        .i8(OperandB),
        .mux_out(ALUresult)
    );

    mux_9to1 equal_mux(
        .select(ALUopsel),
        .i0(undriven_wire),
        .i1(add_equal),
        .i2(sub_equal),
        .i3(and_equal),
        .i4(or_equal),
        .i5(not_equal),
        .i6(xor_equal),
        .i7(sll_equal),
        .i8(undriven_wire),
        .mux_out(Equal)
    );
    
    mux_9to1 carry_mux(
        .select(ALUopsel),
        .i0(undriven_wire),
        .i1(add_carry),
        .i2(sub_carry),
        .i3(and_carry),
        .i4(or_carry),
        .i5(not_carry),
        .i6(xor_carry),
        .i7(sll_carry),
        .i8(undriven_wire),
        .mux_out(Carry)
    );
    
    mux_9to1 overflow_mux(
        .select(ALUopsel),
        .i0(undriven_wire),
        .i1(add_overflow),
        .i2(sub_overflow),
        .i3(and_overflow),
        .i4(or_overflow),
        .i5(not_overflow),
        .i6(xor_overflow),
        .i7(sll_overflow),
        .i8(undriven_wire),
        .mux_out(Overflow)
    );
     
endmodule
