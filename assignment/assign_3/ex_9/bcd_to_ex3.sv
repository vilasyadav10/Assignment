module bcd_ex3(
 input [3:0] BCD,
 output reg [3:0] EX_3
 );

 always@(*) begin

     if(BCD < 4'b1010)begin
       EX_3 = BCD + 4'b0011;
       end
 
     else begin
       EX_3 = 4'bxxxx;
      end
  end

endmodule 
   

