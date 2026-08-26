module wite_file_2;
 integer i;
 integer file;
 
  initial begin
   
   file = $fopen("monitor.txt","w");


    $fmonitor(file, "simulation time = %t, counter = %d", $time, i);

    for( i=0; i<=5; i++)
       #10;
      $finish;
   $fclose(file);
  end
endmodule

