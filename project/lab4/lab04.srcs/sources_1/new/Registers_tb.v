`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/17 08:26:25
// Design Name: 
// Module Name: Registers_tb
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


module Registers_tb(

    );
    
    reg Clk;
    reg [25:21] readReg1;
    reg [20:16] readReg2;
    reg [4:0] writeReg;
    reg [31:0] writeData;
    reg regWrite;
    
    Registers registers(.Clk(Clk),.readReg1(readReg1), .readReg2(readReg2), .writeReg(writeReg), .writeData(writeData), .regWrite(regWrite));
    always #100 Clk = !Clk;
    
    initial begin
    // Initialization
    Clk = 0;
    readReg1 = 0;
    readReg2 = 0;
    regWrite = 0;
    writeReg = 0;
    writeData = 0;
    
    #285; // 285 ns
    regWrite = 1'b1;
    writeReg = 5'b10101;
    writeData = 32'b11111111111111110000000000000000;
    
    #200; // 485 ns
    writeReg = 5'b01010;
    writeData = 32'b0000000000000001111111111111111;
    
    #200 // 685 ns
    regWrite = 1'b0;
    writeReg = 5'b00000;
    writeData = 32'b000000000000000000000000000000;
    
    #50;// 735 ns
    readReg1 = 5'b10101;
    readReg2 = 5'b01010;
    
    end
    
endmodule
