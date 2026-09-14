module mealy_seq(
 input in, 
 input clk, rst,
 output reg Y
 );
 
 parameter S0 = 2'b00,
           S1 = 2'b01,
           S2 = 2'b10,
           S3 = 2'b11;
           
 reg [1:0] curr_state, next_state;
 
 always@(posedge clk or posedge rst) begin
   if(rst)
      curr_state <= S0;
   else
      curr_state <= next_state;
      
 end
 
 always@(*) begin
  case(curr_state)
  
   S0: begin
        if(in == 1'b0)
          next_state = S0;
        else
          next_state = S1;
   end
   
   S1: begin
       if(in == 0)
         next_state = S0;
       else
          next_state = S2;
   end
   
   S2: begin
       if(in ==0)
        next_state = S3;
       else 
        next_state = S2;
   end     
       
   S3: begin 
       if(in == 0)
         next_state = S0;
       else 
         next_state = S1;
   end
   
   default: next_state =S0;
   
   endcase
 end
   
                   
   always@(*) begin
   if( in ==1 && curr_state == S3)
      Y =1;
   else 
      Y = 0;
   end
 endmodule        
        
         
