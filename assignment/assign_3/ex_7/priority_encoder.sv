module priority_encoder (
  input [3:0] d,
  output reg [1:0] y,
  output reg valid
  );

  always@(*) begin
  valid =1;
  if(d[3] == 1)
   begin
    y = 2'b11;
   end

  else if(d[2] == 1)
   begin
    y = 2'b10;
   end

  else if(d[1] == 1)
   begin
    y = 2'b01;
   end

  else if(d[0] == 1)
   begin
    y = 2'b00;
   end

  else 
   begin
     y = 2'bxx;
     valid = 0;
   end

 end
endmodule



