module magnitude_comparator_tb;
 reg [3:0] a;
 reg [3:0] b;
 wire a_lesser, a_greater, a_equal;
 
 magnitude_comparator dut(.a(a), .b(b), .a_lesser(a_lesser), .a_greater(a_greater), .a_equal(a_equal));
 
 initial begin
  a = 0; b=0;
  #10;
  a = 0; b=1;
  #10;
  a = 2; b=1;
  #10;
  a = 3; b=6;
  #10;
  a = 1; b=7;
  #10;
  a = 15; b=1;
  #10;
  a =11; b=13;
  #10;
  a = 15; b=15;
  #10;
  a = 14; b=2;
  #10;
  a = 3; b=3;
  #10;
  a = 9; b=1;
  #10;
  $finish;
  end
 
 initial begin 
  $monitor("a=%d  b=%d  a_lesser=%b a_greater=%b a_equal=%b ", a, b, a_lesser, a_greater, a_equal);
  end
 
endmodule  
