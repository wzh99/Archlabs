`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/17 10:00:38
// Design Name: 
// Module Name: Signext_tb
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


module Signext_tb(

    );
    
    reg [15:0] inst;
    
    Signext sext(.inst(inst));
    
    initial begin
    inst = 0;
    #100 inst = 1;
    #100 inst = -1;
    #100 inst = 2;
    #100 inst = -2;
    #100;
    end
    
endmodule
