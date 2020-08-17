`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2018 04:23:35 PM
// Design Name: 
// Module Name: IM_PC_tb
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


module IM_PC_tb(
    output [31:0] inst
);

    reg clock = 0;
    reg [5:0] PC = 'b111111;

    InstructionMemory IM (
        .Addr(PC),
        .ReadData(inst),
        .clk(clock)
    );
    
    always begin
        #10 clock = ~clock;
    end
    
    always @(posedge clock) begin
        PC = PC + 1;
    end
    
    initial begin
        #6000
        $finish;
    end

endmodule
