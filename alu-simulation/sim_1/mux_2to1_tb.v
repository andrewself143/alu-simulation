`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2018 04:09:54 PM
// Design Name: 
// Module Name: mux_2to1_tb
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


module mux_2to1_tb(
    );
    
    parameter WIDTH = 32;
    
    reg sel;
    wire [WIDTH-1:0] a = 1;
    wire [WIDTH-1:0] b = -1;
    
    wire [WIDTH-1:0] mux_out;
    
    mux_2to1 #(.DATA_WIDTH(WIDTH)) underTest (
        .s(sel),
        .i0(a),
        .i1(b),
        .mux_out(mux_out)
    );
    
    initial begin
        sel = 0;
        #10;
        sel = 1;
        #10;
        sel = 0;
        #10;
        sel = 1;
        #10;
        sel = 0;
        #10;
        sel = 1;
        #10;
        sel = 0;
        #10;
        sel = 1;
        #10;
        sel = 0;
        #10;
        sel = 1;        
    end
    
endmodule
