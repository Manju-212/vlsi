`include "Recursive_Doubling_Adder_64bit.v"
module test_bench;
parameter  N = 64;
   reg [N - 1:0] A,B;
   reg [1:0] Cin;
   wire [N:0] Sum;
   wire Cout;

   Recursive_Doubling_Adder w1(A,B,Cin,Sum,Cout);
   initial begin
       #0 A = 64'b0001011101101111011001001101110001001001111101101011110100101110;B = 64'b1010100100010101100100101100001011101011000111011010010010110100;Cin = 2'b00;
       #10 A = 64'b0111011001011011101001000111001000000100011000011100001001101011;B = 64'b1001011111100010010011000110101001110001111100001100111100000111;Cin = 2'b11;
       #20 A = 64'b1001110001001001000000100000011011001001101000111010100111101000;B = 64'b0111111011010100101000011100010101000010101010000011011111111100;Cin = 2'b00;
       #30 A = 64'b1010010110111101001001001100100110011111101111110100001010101000;B = 64'b1110000100011110000111010001001110001000010101001100101110110000;Cin = 2'b11;
   end
   initial begin
       $monitor("\nA = %b\nB = %b\nCin = %b\nSum = %b\nCout = %b\n",A,B,Cin[0],Sum,Cout);
   end
endmodule