module full_adder(
  input a, b, cin,
  output reg sum, cout
  );
  
  always@(*) begin
   sum = a ^ b ^ cin;
   cout = (a & b) | (b & cin) | (a & cin);
   
  end
endmodule 
  
   
module fourbit_adder(
  input  [3:0]a,
  input  [3:0]b,
  input cin, 
  output [3:0]sum,
  output cout,
  output reg overflow
  );
  
  wire c1, c2, c3;
  
  full_adder FA_0 (.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(c1));
  
  full_adder FA_1 (.a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]), .cout(c2));
 
  full_adder FA_2 (.a(a[2]), .b(b[2]), .cin(c2), .sum(sum[2]), .cout(c3));

  full_adder FA_3 (.a(a[3]), .b(b[3]), .cin(c3), .sum(sum[3]), .cout(cout));
  

 always @(*) begin
        overflow = c3 ^ cout;
    end
  
  endmodule
