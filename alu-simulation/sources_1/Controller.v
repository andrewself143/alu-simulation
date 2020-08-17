`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2018 01:41:00 PM
// Design Name: 
// Module Name: Controller
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


module Controller(
    input [31:0] Inst,
    output [3:0] ALUopsel,  // function
    output MUXsel1,         // ri
    output RegWrite,        // WE1 low only if NOP
    output [5:0] rs,          
    output [5:0] rd,
    output [5:0] rt,    
    output [14:0] imm       // rt + imm    
);
    assign MUXsel1 = Inst[31];
    assign ALUopsel = Inst[18 -: 4];
    assign rd = Inst[24 -: 6];
    assign rs = (ALUopsel == 4'b1001) ?  Inst[24 -: 6] : Inst[30 -: 6];
    assign rt = (ALUopsel == 4'b1001) || (ALUopsel == 4'b1011) ?  Inst[30 -: 6] : Inst[14 -: 6];
    assign imm = Inst[14 -: 15];

    assign RegWrite = (ALUopsel == 4'b0000) ? 0 : 1;     

endmodule



