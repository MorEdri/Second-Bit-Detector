`timescale 1ns / 1ps

//Design and verify a module which finds the second bit that equal to set from LSB for a N-bit vector. 
//Output should be produced in a single cycle
//Output must be one-hot or zero

module SecondBitFinder_TB;
parameter WIDTH = 3;
reg [WIDTH-1:0]vec_i;
wire [WIDTH-1:0]second_bit_o;

SecondBitFinder dut(.vec_i(vec_i), .second_bit_o(second_bit_o));
   initial begin
   vec_i = 3'b110; //return 100
   #20;
   vec_i = 3'b011;  //return 010
   #50;
   vec_i = 3'b000;  //return 000
   #50;
   vec_i = 3'b111;  //return 100
   #50;
   vec_i = 3'b100;  //return 000
   #50;
   vec_i = 3'b101;  //return 100
   #50;
   
   #200;
   $stop;
   end
endmodule
