`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2018 10:31:32 AM
// Design Name: 
// Module Name: mux_2to1_32bit
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


module mux_2to1_32bit(
    input s,
    input [31:0] i0,
    input [31:0] i1,
    output reg [31:0] mux_out
);
    always @(s, i0, i1) begin
        if (!s) begin
            mux_out = i0;
        end
        else begin
           mux_out = i1;
        end
    end

endmodule
