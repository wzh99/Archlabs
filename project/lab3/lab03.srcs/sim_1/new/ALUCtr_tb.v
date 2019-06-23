`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/10 10:07:26
// Design Name: 
// Module Name: ALUCtr_tb
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


module ALUCtr_tb(

    );
    
    reg [5:0] Funct;
    reg [1:0] ALUOp;
    
    ALUCtr ctr(.Funct(Funct), .ALUOp(ALUOp));
    
    initial begin
    Funct = 0;
    ALUOp = 0;
    
    #100
    #100 Funct = 6'b000000; ALUOp = 2'b00;
    #100 ALUOp = 2'b01;
    #100 ALUOp = 2'b10;
    #100 Funct = 6'b000010;
    #100 Funct = 6'b000100;
    #100 Funct = 6'b000101;
    #100 Funct = 6'b001010;
    #100;
    
    #100
    #100 Funct = 6'b000000; ALUOp = 2'b00;
    #100 Funct = 6'bxxxxxx;
    #100 ALUOp = 2'bx1;
    #100 Funct = 6'bxx0000; ALUOp = 2'b1x;
    #100 Funct = 6'bxx0010;
    #100 Funct = 6'bxx0100;
    #100 Funct = 6'bxx0101;
    #100 Funct = 6'bxx1010;
    #100;
    
    end
    
endmodule
