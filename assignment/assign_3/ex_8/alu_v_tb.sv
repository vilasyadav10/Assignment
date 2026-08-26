module alu_op_tb;
 reg  [3:0] a,b;
 reg  [1:0] op;
 reg  [3:0] r;
 reg ZERO;

 alu_op dut (.a(a), .b(b), .op(op), .result(r), .ZERO(ZERO));

 initial begin
 
  a =1; b=0; op= 2'b00;
  #10
  a =1; b=0; op= 2'b01;
  #10
  a =1; b=0; op= 2'b10;
  #10
  a =1; b=0; op= 2'b11;
  #10
  a =0; b=0; op= 2'b00;
  #10
  a =0; b=0; op= 2'b01;
  #10
  a =0; b=0; op= 2'b10;
  #10
  a =0; b=0; op= 2'b11;
  #10
  a =1; b=1; op= 2'b01;
  #10
  a =1; b=1; op= 2'b10;
  #10
  a =1; b=1; op= 2'b11;
  #10
  a =1; b=0; op= 2'b10;
  #10;
  $finish;
  end
   
   initial begin
   $monitor("a=%d b=%d op=%d r=%d ZERO=%d", a,b,op,r,ZERO);
   end 
endmodule


