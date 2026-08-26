module wite_file_2;
 integer i;
 integer file;
 
  initial begin
   
   file = $fopen("write.txt","w");
 
    for( i=0; i<=5; i++)
      begin
       $fwrite(file, "%d\n", i);
       #10;
      end
      $finish;
   $fclose(file);
$display("Data successfully written to write.txt");
  end
endmodule

