module alu_4bit_tb;
  reg [3:0] A, B;
  reg [2:0] S;
  wire [3:0] Y;
  
  alu_4bit dut (.A(A), .B(B), .S(S), .Y(Y));
   
   initial begin
   A=0; B=0; S=0;
   #10;
   A=4; B=2; S=0;
   #10;
   A=4; B=2; S=1;
   #10;
   A=4; B=2; S=2;
   #10;
   A=4; B=2; S=3;
   #10;
   A=4; B=2; S=4;
   #10;
   A=4; B=2; S=5;
   #10;
   A=4; B=2; S=6;
   #10;
   A=4; B=2; S=7;
   #10;
   A=2; B=0; S=7;
   #10;
   A=4; B=9; S=0;
   #10;
   $finish;
   end 
    initial begin
    $monitor("A=%d,  B=%d, S=%d,  Y=%d", A, B, S ,Y);
    end
endmodule    
  
