module alu_op (
  input [3:0] a,
  input [3:0] b,
  input [1:0] op,
  output reg [3:0] result,
  output  reg ZERO
  );

  always@(*) begin
  if(op == 2'b00)
   begin
    result = a + b;
   end

  else if(op == 2'b01)
   begin
    result = a - b;
   end

  else if(op == 2'b10)
   begin
     result = a & b;
   end

  else 
   begin
     result = a | b;
   end
 if(result == 4'b0000)begin
  ZERO = 1;
 end
 else 
  ZERO =0;

 end
endmodule



