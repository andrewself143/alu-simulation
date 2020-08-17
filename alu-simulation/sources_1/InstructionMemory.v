`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2018 04:05:09 PM
// Design Name: 
// Module Name: InstructionMemory
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


module InstructionMemory(
    //input clk,
    input [5:0] Addr,
    output [31:0] ReadData
);
    
//    reg [31:0] regfile [0:63];
    
//    initial begin
//        $readmemb("IM_Vals.mem", regfile);
//    end
    
//    always @(posedge clk) begin
//        ReadData = regfile[Addr];
//    end
    
    reg [31:0] regfile [0:63];
    
    initial begin
        $readmemb("IM_Vals.mem", regfile);
    end
    
    assign ReadData = regfile[Addr];
    
endmodule
    
