`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2018 02:14:52 PM
// Design Name: 
// Module Name: Controller_tb
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


module Controller_tb(
);
    
    reg [31:0] in;
    wire [5:0] rs;
    wire [5:0] rt;
    wire [5:0] rd;
    wire [14:0] imm;
    wire [3:0] aluOp;
    wire ri;
    wire rw;
    
    Controller UnderTest (
        .Inst(in),
        .ALUopsel(aluOp),
        .MUXsel1(ri),
        .RegWrite(rw),
        .rs(rs),
        .rd(rd),
        .rt(rt),
        .imm(imm)
    );
 
    initial begin
        in = 32'b10000010000000001000000000010100;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b10000100000000001000000000001111;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b10000110000000001000000000000100;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b00000000000000000000000000000000;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b00001000000100001000001000000000;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b10001010000000010000000000010100;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b00001100000010010000001000000000;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b10010000001010101010101010101010;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b00000100000100101000001000000000;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b00000000000000000000000000000000;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b00010010001000111000000000000000;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b10010010000100110000000000000001;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b10000000010011001000000000000010;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b00000100010011011000000000000000;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b00001100000000111000000000000000;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b10000010000000001000000000000010;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b10000000000011001000000000011110;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b00000000000000000000000000000000;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b00001110001100001000001000000000;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b00001100001100001000110000000000;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b00000000000000000000000000000000;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b00001000000110110000101000000000;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b00001000010001000000010000000000;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b10001000001001000010101010101010;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b10000000010101011000000000000110;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b10000000000101011000000000000100;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm);
        in = 32'b00000100010101001001010000000000;
        #10
        $display ("Inst=%b\nRI=%b\nrs=%b\nrd=%b\nfunction=%b\nrt=%b\nimm=%b\n", in, ri, rs, rd, aluOp, rt, imm); 
    end
    
endmodule
