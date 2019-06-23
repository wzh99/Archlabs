`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/17 09:12:07
// Design Name: 
// Module Name: DataMemory_tb
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


module DataMemory_tb(

    );
    
    reg Clk;
    reg [31:0] address;
    reg [31:0] writeData;
    reg memWrite;
    reg memRead;
    
    DataMemory mem(.Clk(Clk), .address(address), .writeData(writeData), .memWrite(memWrite), .memRead(memRead));
    always #100 Clk = !Clk;
    
    initial begin
    // Initialization
    Clk = 0;
    address = 0;
    writeData = 0;
    memWrite = 0;
    memRead = 0;
    
    #185; // 185 ns
    memWrite = 1'b1;
    address = 7;
    writeData = 32'he0000000;
    
    #100; // 285 ns
    address = 6;
    writeData = 32'hffffffff;
    
    #185; // 470 ns
    memRead = 1'b1;
    memWrite = 1'b0;
    address = 7;
    
    #80; // 550 ns
    memWrite = 1'b1;
    address = 8;
    writeData = 32'haaaaaaaa;
    
    #80; // 630 ns
    address = 6;
    memWrite = 1'b0;
    memRead = 1'b1;
    
    end
    
    
endmodule
