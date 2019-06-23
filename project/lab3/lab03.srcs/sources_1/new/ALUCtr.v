`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/10 09:56:09
// Design Name: 
// Module Name: ALUCtr
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


module ALUCtr(
    output [3:0] aluCtrOut,
    input [5:0] Funct,
    input [1:0] ALUOp
    );
    
    reg [3:0] aluCtrOut;
    
    always @({ALUOp, Funct})
    begin
        casex({ALUOp, Funct})
        8'b00xxxxxx: aluCtrOut = 4'b0010;
        8'b1xxx0000: aluCtrOut = 4'b0010;
        8'b1xxx0010: aluCtrOut = 4'b0110;
        8'b1xxx0100: aluCtrOut = 4'b0000;
        8'b1xxx0101: aluCtrOut = 4'b0001;
        8'b1xxx1010: aluCtrOut = 4'b0111;
        8'bx1xxxxxx: aluCtrOut = 4'b0110;
        default: aluCtrOut = 4'b0000;
        endcase
    end
        
endmodule
