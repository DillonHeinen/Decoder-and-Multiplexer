`timescale 1ns / 1ps

module multiplexer(
    input select0, select1, up, right, down, left,
    output out
    );
    
    
//    wire w1, w2, w3, w4;    // structural model
//    and upSelect(w1, up, !select1, !select0);
//    and rightSelect(w2, right, !select1, select0);
//    and downSelect(w3, down, select1, !select0);
//    and leftSelect(w4, left, select1, select0);
//    or final(out, w1, w2, w3, w4);
    
    assign out = (up & !select1 & !select0) |   // dataflow model
                 (right & !select1 & select0) |
                 (down & select1 & !select0) | 
                 (left & select1 & select0);
                 
//    reg o = 0;  // behavioral model
//    assign out = o;
//    always @(*)
//    begin
//        case({left,down,right,up,select1,select0})
//        6'b000100: o=1;
//        6'b001001: o=1;
//        6'b010010: o=1;
//        6'b100011: o=1;
//        default: o=0;
//        endcase
//    end
    
endmodule
