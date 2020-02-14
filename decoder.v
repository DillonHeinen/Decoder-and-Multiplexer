`timescale 1ns / 1ps

module decoder(
    input up, left, right, enable,
    output combo0, combo1, combo2, combo3, combo4, combo5, combo6, combo7
    );
   
//   and c0(combo0, !up, !left, !right, enable);    // structural model
//   and c1(combo1, !up, !left, right, enable);
//   and c2(combo2, !up, left, !right, enable);
//   and c3(combo3, !up, left, right, enable);
//   and c4(combo4, up, !left, !right, enable);
//   and c5(combo5, up, !left, right, enable);
//   and c6(combo6, up, left, !right, enable);
//   and c7(combo7, up, left, right, enable);
    
    assign combo0 = !up & !left & !right & enable;    // dataflow model
    assign combo1 = !up & !left & right & enable;
    assign combo2 = !up & left & !right & enable;
    assign combo3 = !up & left & right & enable;
    assign combo4 = up & !left & !right & enable;
    assign combo5 = up & !left & right & enable;
    assign combo6 = up & left & !right & enable;
    assign combo7 = up & left & right & enable;

//    reg c0=0, c1=0, c2=0, c3=0, c4=0, c5=0, c6=0, c7=0;   // behavioral model
//    assign combo0 = c0;
//    assign combo1 = c1;
//    assign combo2 = c2;
//    assign combo3 = c3;
//    assign combo4 = c4;
//    assign combo5 = c5;
//    assign combo6 = c6;
//    assign combo7 = c7;
//    always @(*)
//    begin
//        case({up,left,right,enable})
//        4'b0001: begin
//                c0=1;
//                c1=0;
//                c2=0;
//                c3=0;
//                c4=0;
//                c5=0;
//                c6=0;
//                c7=0;
//                end
//        4'b0011: begin
//                c0=0;
//                c1=1;
//                c2=0;
//                c3=0;
//                c4=0;
//                c5=0;
//                c6=0;
//                c7=0;
//                end
//        4'b0101: begin
//                c0=0;
//                c1=0;
//                c2=1;
//                c3=0;
//                c4=0;
//                c5=0;
//                c6=0;
//                c7=0;
//                end
//        4'b0111: begin
//                c0=0;
//                c1=0;
//                c2=0;
//                c3=1;
//                c4=0;
//                c5=0;
//                c6=0;
//                c7=0;
//                end
//        4'b1001: begin
//                c0=0;
//                c1=0;
//                c2=0;
//                c3=0;
//                c4=1;
//                c5=0;
//                c6=0;
//                c7=0;
//                end
//        4'b1011: begin
//                c0=0;
//                c1=0;
//                c2=0;
//                c3=0;
//                c4=0;
//                c5=1;
//                c6=0;
//                c7=0;
//                end
//        4'b1101: begin
//                c0=0;
//                c1=0;
//                c2=0;
//                c3=0;
//                c4=0;
//                c5=0;
//                c6=1;
//                c7=0;
//                end
//        4'b1111: begin
//                c0=0;
//                c1=0;
//                c2=0;
//                c3=0;
//                c4=0;
//                c5=0;
//                c6=0;
//                c7=1;
//                end
//        default: begin
//                c0=0;
//                c1=0;
//                c2=0;
//                c3=0;
//                c4=0;
//                c5=0;
//                c6=0;
//                c7=0;
//                end
//        endcase
//    end
    
endmodule
