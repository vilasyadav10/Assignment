module alu_8bit_tb;
   reg [7:0] a,b;
   reg [1:0] op, o_op;
   reg [2:0] alu_op, bit_op;
   wire [15:0] y;
   
   all_op dut (.a(a), .b(b), .op(op), .al_op(alu_op), .bit_op(bit_op), .other_op(o_op), .y(y));
    
    initial begin
     a=0; b=0; op=0;  alu_op=0;
     #10;
     a=10; b=5; op=0;  alu_op=1;
     #10;
     a=11; b=6; op=0;  alu_op=6;
     #10;
     a=10; b=5; op=0;  alu_op=5;
     #10;
     a=49; b=10; op=0;  alu_op=4;
     #10;
     a=49; b=10; op=0;  alu_op=2;
     #10;
     a=49; b=10; op=0;  alu_op=3;
     #10;
     a=49; b=10; op=0;  alu_op=0;
     #10;
     a=49; b=10; op=0;  alu_op=7;
     #10;
     
     a=7; b=5;  op=1;  bit_op=0;
     #10;
     a=7; b=5;  op=1;  bit_op=1;
     #10;
     a=7; b=5;  op=1;  bit_op=2;
     #10;
     a=7; b=5;  op=1;  bit_op=3;
     #10;
     a=7; b=5;  op=1;  bit_op=4;
     #10;
     a=7; b=5;  op=1;  bit_op=5;
     #10;
     a=7; b=5;  op=1;  bit_op=6;
     #10;
     
     a=15; b=7;  op=2;  o_op=0;
     #10;
     a=15; b=7;  op=2;  o_op=1;
     #10;
     a=15; b=7;  op=2;  o_op=2;
     #10;
     a=15; b=7;  op=2;  o_op=3;
     #10;
     a=1; b=7;   op=2;   o_op=3;
     #10;
     a=7; b=7;   op=2;   o_op=3;
     #10;
     $finish;
     end
     
     initial begin 
     $monitor( " a=%d, b=%d, op=%d, alu_op=%d, bit_op=%d, other_op=%d, y=%d", a, b, op, alu_op, bit_op, o_op, y);
     end
  endmodule   
     
     
