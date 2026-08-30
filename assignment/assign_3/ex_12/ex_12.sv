module gray_binary(
  input [3:0] B,
  output reg p,
  output reg [3:0] G
  );
  
   always@(*)begin
     G[3]= B[3];
     G[2]= B[2] ^ B[3];
     G[1]= B[1] ^ B[2];
     G[0]= B[0] ^ B[1];
     if(^G == 0)begin
      p=0;
      end
     else begin
      p=1;
    end 
  end  
endmodule      
