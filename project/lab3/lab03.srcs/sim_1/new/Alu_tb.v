`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/10 10:48:08
// Design Name: 
// Module Name: Alu_tb
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


module Alu_tb(

    );
    
reg [31:0] in1;
reg [31:0] in2;
reg [3:0] aluCtr;

Alu alu(.in1(in1), .in2(in2), .aluCtr(aluCtr));

initial begin

in1 = 0; in2 = 0; aluCtr = 4'b0000;
#100 in1 = 15; in2 = 10; 
#100 aluCtr = 4'b0001;
#100 aluCtr = 4'b0010;
#100 aluCtr = 4'b0110;
#100 in1 = 10; in2 = 15;
#100 aluCtr = 4'b0111; in1 = 15; in2 = 10;
#100 in1 = 10; in2 = 15;
#100 aluCtr = 4'b1100; in1 = 1; in2 = 1;
#100 in1 = 16;
#100;

end
    
endmodule
