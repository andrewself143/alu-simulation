`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2018 12:40:46 AM
// Design Name: 
// Module Name: RegFile_tb
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


module RegFile_tb(
    );
    
    reg [5:0] RA1;
    reg [5:0] RA2;
    reg [5:0] WA;
    reg [31:0] WD;
    reg WE1;
    reg CLK = 0;
    wire [31:0] RD1;
    wire [31:0] RD2;
    
    RegFile UnderTest (
        .RA1(RA1),
        .RA2(RA2),
        .WA(WA),
        .WD(WD),
        .WE1(WE1),
        .CLK(CLK),
        .RD1(RD1),
        .RD2(RD2)
    );
    
    always
        #5 CLK = !CLK;
        
    initial begin
        WA = 0;
        WD = $random % 32;
        WE1 = $random % 1;
        RA1 = 0;
        RA2 = 1;
        #10
        WA = 1;
        WD = $random % 32;
        WE1 = $random % 1;
        #10
        WA = 2;
        WD = $random % 32;
        WE1 = $random % 1;
        #10
        WA = 3;
        WD = $random % 32;
        WE1 = $random % 1;
        #10
        WA = 4;
        WD = $random % 32;
        WE1 = $random % 1;
        #10
        WA = 5;
        WD = $random % 32;
        WE1 = $random % 1;
        #10
        WA = 6;
        WD = $random % 32;
        WE1 = $random % 1;
        #10
        WA = 7;
        WD = $random % 32;
        WE1 = $random % 1;
        
        #10
        RA1 = 0;
        RA2 = 1;
        #10
        RA1 = 2;
        RA2 = 3;
        #10
        RA1 = 4;
        RA2 = 5;
        #10
        RA1 = 6;
        RA2 = 7;
    end
  
endmodule
