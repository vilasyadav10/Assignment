module fourbit_adder_tb;
 reg signed [3:0]a;
 reg signed [3:0]b;
 reg cin;
 wire signed [3:0]sum;
 wire cout;
 wire overflow;
 
fourbit_adder dut(.a(a), .b(b), .cin(cin), .sum(sum) , .cout(cout), .overflow(overflow));
    initial begin
      a = 4'b0111; b = 4'b0001; cin = 1'b0;
     #10 a = 4'b0101; b = 4'b0011; cin = 1'b0;
     #10 a = 4'b1000; b = 4'b1111; cin = 1'b0;
     #10 a = 4'b1100; b = 4'b1011; cin = 1'b0;
     #10 a = 4'b0011; b = 4'b0010; cin = 1'b0;
     #10 a = 4'b1101; b = 4'b0010; cin = 1'b0;
     #10 a = 4'b0001; b = 4'b0010; cin = 1'b0;
     #10 a = 4'b1000; b = 4'b1110; cin = 1'b1;
     #10 a = 4'b1000; b = 4'b1110; cin = 1'b1;
     #10 a = 4'b0111; b = 4'b0101; cin = 1'b0;
     #10 a = 4'b0111; b = 4'b0110; cin = 1'b1;
     
     #10; $finish;
    end
initial begin
 $monitor("a=%d,b=%d,cin=%d,sum=%d,cout=%d, overflow=%d",
          a,b,cin,sum,cout,overflow);
end
endmodule
