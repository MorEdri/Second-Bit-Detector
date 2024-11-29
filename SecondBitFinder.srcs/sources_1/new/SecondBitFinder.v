`timescale 1ns / 1ps

module SecondBitFinder #(
    parameter WIDTH = 3
    )(
        input wire [WIDTH-1:0] vec_i,
        output reg [WIDTH-1:0] second_bit_o
     );
     
     integer i;
     reg [1:0] counter_one;
     
     
      always @(*) begin
        counter_one = 2'd0;
        second_bit_o = 0;
        
        for (i = 0; i < WIDTH; i = i+1) begin
            if (vec_i[i] == 1) begin
                counter_one = counter_one + 2'd1;
                 if (counter_one == 2'd2) begin
                    second_bit_o = 1 << i; //return one hot s
                     counter_one = 2'd0;
                 end
               end
           end
        end
       
endmodule
