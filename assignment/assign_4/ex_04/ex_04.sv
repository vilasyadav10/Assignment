module parameterised_register #(
 parameter WIDTH =8,
 parameter RESET_VALUE =0
)(
 input [WIDTH -1:0] d,
 input clk,reset,
 output reg [WIDTH -1:0] q
 );
 
 always @(posedge clk) begin
  if(reset)
    q <= RESET_VALUE;
    
  else
    q <= d;  
  end
  
endmodule 
