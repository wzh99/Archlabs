`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/17 09:05:23
// Design Name: 
// Module Name: DataMemory
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


module DataMemory(
    input Clk,
    input [31:0] address,
    input [31:0] writeData,
    input memWrite,
    input memRead,
    output [31:0] readData
    );
    
    reg [31:0] memFile[0:63];
    reg [31:0] readData;
    
    always @ (address)
    begin
        if (memRead && !memWrite)
            readData = memFile[address];
        else
            readData = 0;
    end        
    
    always @ (negedge Clk)
    begin
        if (memWrite)
            memFile[address] = writeData;
    end
        
endmodule
