module fsm_mealy_tb;
 reg in;
 reg clk, rst;
 wire Y;
 
 fsm_mealy dut( .in(in),
                . clk(clk),
                . rst(rst)
                .Y(Y)
                );
                
  always #10 clk = ~clk;               
  
  initial begin
   clk =0; rst=1; in =0;
   
   #10 rst =0;
   
   #10 in =1;
   
   #10 in =0;
   #10 in =1;
   #10 in =1;
   #10 in =1;
   #10 in =0;
   #10 in = 1;
   #10 in = 1;
   $finish;
   end
   
   initial begin
   $monitor(" in =%b , clk= %b, rst=%b, out=%b, current_state = %d", in,clk,rst,Y, dut .curr_state);
   end
   
endmodule
