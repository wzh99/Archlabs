`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/10 09:25:29
// Design Name: 
// Module Name: Ctr_tb
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


module Ctr_tb(

    );
    
    reg [5:0] opCode;
    
    Ctr ctr(.opCode(opCode));
    
    initial begin
    opCode = 0;
    
    #100
    #100 opCode = 6'b000000;
    
    #100 opCode = 6'b100011;
    
    #100 opCode = 6'b101011;
    
    #100 opCode = 6'b000100;
    
    #100 opCode = 6'b000010;
    #100 opCode = 6'b010101;
    #100;
    
    end
    
endmodule
