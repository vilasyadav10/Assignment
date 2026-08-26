module magnitude_comparator(
 input [3:0] a,
 input [3:0] b,
 output reg a_greater, a_lesser, a_equal
 );
 
 always@(*)
  begin 
   if(a >b) begin
    a_greater = 1;
    a_lesser = 0;
    a_equal = 0;
   end 
   
   else if (a == b) begin
    a_greater = 0;
    a_lesser = 0;
    a_equal = 1;
   end 
   
   else begin
    a_greater = 0;
    a_lesser = 1;
    a_equal = 0;
   end 
 
 end
   
endmodule
   
   
    
  
