module bcd_ex3_tb;
  reg [3:0] a;
  wire [3:0] y;

 bcd_ex3 dut (.BCD(a), .EX_3(y));

 initial begin
   
  a=0; 
  #10 a=1;
  #10 a=2;  
  #10 a=3;
  #10 a=4;
  #10 a=5;
  #10 a=6;
  #10 a=7;
  #10 a=8;
  #10 a=9;
  #10 a=10;
  #10 a=11;
  #10 a=12;
  #10 a=13;
  #10 a=14;
  #10 a=15; 
  $finish;
  end

   initial begin
   $monitor("a=%d y=%d", a,y);
   end 
 initial begin
   $monitor("a=%b =%b", a,y);
   end 
endmodule 
  

