module file_write;
  integer file;
  integer a, b, c;
  
  initial begin
   
    a=10;
    b=20;
    c=30;
 
    file = $fopen("data.txt","w");
   
    if (file == 0) begin 
        $display("error: could not open file");
        $finish;
    end

  $fdisplay(file, "%d", a);
  $fdisplay(file, "%d", b);
  $fdisplay(file, "%d", c);  
 
  $fclose(file);

  $display("Data successfully written to data.txt");
  end
endmodule

