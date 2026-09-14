module fsm_moore_tb;
 reg coin;
 reg clk, rst;
 wire dispense, change;
 
 fsm_seq dut( .coin(coin), 
              .clk(clk), 
              .rst(rst), 
              .dispense(dispense), 
              .change(change)
              
              );
              
   always #10 clk = ~clk;  
   initial begin
    clk =0; rst =1; coin=0;
    
    #10;
    rst =0;
    
    #10
    coin = 0;
    
    #10 
    coin = 1;
    
    #10
    coin =1;
    
    #10;
    coin =1;
    
    #10;
    coin=0;
    
    #10;
    coin =0;
    
    #10;
    coin = 1;
    
    #10;
    coin =1;
    
    #10;
    coin =0;
    #10;
    $finish;
    
   end
   
   initial begin
      $monitor("Time=%0t rst=%b coin=%b state=%d dispense=%b change=%b",
                 $time, rst, coin, dut.c_state, dispense, change);
    end
endmodule
