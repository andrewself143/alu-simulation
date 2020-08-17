`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2018 10:10:44 AM
// Design Name: 
// Module Name: Sign_Ext_tb
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


module Sign_Extender_TB(
    output wire [31:0] num_ext_tb
);

    reg [14:0] num_tb;
    
    Sign_Extender SE(
        .num(num_tb),
        .num_ext(num_ext_tb)
    );
    
    initial begin
        num_tb = 0;
        #10
        num_tb = 15'b011111111111111;
        #10
        num_tb = 15'b100000000000000;
        #10
        num_tb = 15'b111111111111111;
        #10
        $finish;
    end

endmodule


