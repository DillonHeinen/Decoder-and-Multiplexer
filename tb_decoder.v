`timescale 1ns / 1ps

module tb_decoder;
    reg up, left, right, enable;
    wire combo0, combo1, combo2, combo3, combo4, combo5, combo6, combo7;
    
    decoder tb1(.up(up), .left(left), .right(right), .enable(enable), .combo0(combo0),
    .combo1(combo1), .combo2(combo2), .combo3(combo3), .combo4(combo4), .combo5(combo5), .combo6(combo6), .combo7(combo7));
    
    initial begin
        up = 0; left = 0; right = 0; enable = 1;
        #10
        up = 0; left = 0; right = 1; enable = 1;
        #10
        up = 0; left = 1; right = 0; enable = 1;
        #10
        up = 0; left = 1; right = 1; enable = 1;
        #10
        up = 1; left = 0; right = 0; enable = 1;
        #10
        up = 1; left = 0; right = 1; enable = 1;
        #10
        up = 1; left = 1; right = 0; enable = 1;
        #10
        up = 1; left = 1; right = 1; enable = 1;
        #10
        up = 0; left = 0; right = 0; enable = 0;
        #10;
    end
    
endmodule
