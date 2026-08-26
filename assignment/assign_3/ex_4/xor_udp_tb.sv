module xor_udp_tb;
 reg A, B;
 wire Y;
 xor_udp dut(.A(A), .B(B), .Y(Y));
 
 initial begin 
 A=0; B=0;
 #10;
 A=0; B=1;
 #10;
 A=1; B=0;
 #10;
 A=1; B=1;
 #10;
 $finish;
 end 
 initial begin 
   $monitor( "A=%d B=%d Y=%d", A, B, Y);
 end 
endmodule
