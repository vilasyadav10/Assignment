module ex_13;

initial begin
 
  $display("Start at time %t", $time);
  #10 $display("Processing at time %t", $time);
  #10 $display("Done at time %t", $time);
  $finish;
  end
endmodule  
  
