`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2018 03:34:09 PM
// Design Name: 
// Module Name: incrementer_6bit_tb
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


module incrementer_6bit_tb(
        output [5:0] out_tb
    );
    
    reg [5:0] in_tb = 0;
    
    incrementer_6bit testinc (
        .in(in_tb),
        .out(out_tb)
    );
    
    initial begin
        #10
        in_tb = out_tb;
        #10
        in_tb = out_tb;
        #10
        in_tb = out_tb;
        #10
        in_tb = out_tb;
        #10
        in_tb = out_tb;
        #10
        $finish;
    end
    
endmodule
