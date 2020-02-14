`timescale 1ns / 1ps

module tb_multiplexer;
    reg select0, select1, up, right, down, left;
    wire out;
    
    multiplexer tb1(.select0(select0), .select1(select1), .up(up), .right(right), .down(down), .left(left), .out(out));
    
    initial begin
    select1 = 0; select0 = 0; up = 0; right = 0; down = 0; left = 0;
    #10
    select1 = 0; select0 = 0; up = 1; right = 0; down = 0; left = 0;
    #10
    select1 = 0; select0 = 1; up = 0; right = 0; down = 0; left = 0;
    #10
    select1 = 0; select0 = 1; up = 0; right = 1; down = 0; left = 0;
    #10;
    select1 = 1; select0 = 0; up = 0; right = 0; down = 0; left = 0;
    #10
    select1 = 1; select0 = 0; up = 0; right = 0; down = 1; left = 0;
    #10
    select1 = 1; select0 = 1; up = 0; right = 0; down = 0; left = 0;
    #10
    select1 = 1; select0 = 1; up = 0; right = 0; down = 0; left = 1;
    #10
    select1 = 0; select0 = 0; up = 0; right = 0; down = 0; left = 0;
    #10;
    end
    
endmodule
