module ex_14;

initial begin
  fork
    #10 $display(" Task1 ");
    #20 $display(" Task2 ");
    #30 $display(" Task3 ");
  join
    
    $display("All tasks are completed");
    $finish;
    end
endmodule
